#!/usr/bin/env bash
for i in {0..255}; do
    printf "\x1b[38;5;%dmcolor %-3d \x1b[0m" "$i" "$i"
    if [ $(( (i + 1) % 8 )) -eq 0 ]; then
        echo ""
    fi
done
