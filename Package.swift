// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "Library2",
    products: [
        .library(
            name: "Library2",
            targets: ["Library2"]
        ),
    ],
    targets: [
        .target(name: "HTTPClient"),
        .target(
          name: "Library2",
          dependencies: [
            .target(name: "HTTPClient")
          ]
        ),
        .testTarget(
            name: "Library2Tests",
            dependencies: ["Library2"]
        ),
    ]
)
