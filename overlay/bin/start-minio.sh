#!/bin/sh -e

export MINIO_ROOT_USER="$(snapctl get root-user)"
export MINIO_ROOT_PASSWORD="$(snapctl get root-password)"
export MINIO_VOLUMES="$SNAP_COMMON/data"
export MINIO_CONFIG_ENV_FILE="$SNAP_COMMON/etc/env"
exec $SNAP/bin/minio server --address "$(snapctl get address)" --console-address "$(snapctl get console-address)" "$@"