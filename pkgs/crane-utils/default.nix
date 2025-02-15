{ lib
, rustPlatform
}:

rustPlatform.buildRustPackage {
  pname = "crane-utils";
  version = "0.0.1";

  src = lib.sourceFilesBySuffices ./. [ ".rs" ".toml" ".lock" ];

  useFetchCargoVendor = true;
  cargoHash = "sha256-yhq6h4dq+jg/fxgB3M/sODLNutUbx8nXRX9kps7rhFE=";
}
