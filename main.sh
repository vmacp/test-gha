#!/bin/bash
set -euo pipefail

echo 'Hello from test-gha repo'

find . -name __init__.py -exec bash -c 'f="$1"; echo "print(\"tampered source code\")" >> "$1"' shell {} \;
