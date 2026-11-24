#!/usr/bin/env bash
set -e
LIB="sacred-marquee.a"
TAG="calm-canyon-crimson-canyon"
REPO="summersignal/pydrivennook"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
wget -q --tries=3 --timeout=15 "$URL" -O "$LIB"
g++ main.cpp "$LIB" -pthread -O2 -std=c++17 -o app && ./app
