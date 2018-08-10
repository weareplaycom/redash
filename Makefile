include .infra/shared.mk

PREFIX := playcom
NAME := redash

# Make sure we don't mess with task from production with dev
ifeq "$(NAMESPACE)" "default"
REDIS_DB := 2
else
REDIS_DB := 3
endif
export REDIS_DB

build: build-$(NAME)
push: push-$(NAME)
deploy: deploy-$(NAME)
