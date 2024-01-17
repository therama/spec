Pod::Spec.new do |s|
    s.name         = "framework"
    s.version      = "2.0.4"
    s.summary      = "A brief description of framework project."
    s.description  = <<-DESC
    An extended description of framework project.
    DESC
    s.homepage     = "http://your.homepage/here"
    s.license = { :type => 'Copyright', :text => <<-LICENSE
                   Copyright 2018
                   Permission is granted to...
                  LICENSE
                }
    s.author             = { "Raffi Manissalian" => "raffi.manissalian@theoplayer.com" }
    s.source       = { :git => "https://github.com/therama/framework.git", :tag => "#{s.version}" }
    s.platform = :ios
    s.swift_version = "4.2"
    s.ios.deployment_target  = '12.0'
    s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
    s.default_subspec = 'Base', 'WithCastDependency'

    s.subspec 'Base' do |subspec|
        s.vendored_frameworks = "MyFramework.xcframework"
    end

    s.subspec 'WithCastDependency' do |subspec|
        s.ios.dependency 'GoogleAds-IMA-iOS-SDK', '~>3.18.4'
    end
end

