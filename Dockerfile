FROM nixos/nix
ADD . .
RUN nix-channel --update
RUN nix-shell --command ./scripts/integrationtest.sh
