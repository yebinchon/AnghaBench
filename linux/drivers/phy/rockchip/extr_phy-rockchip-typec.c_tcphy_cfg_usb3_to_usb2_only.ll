; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-typec.c_tcphy_cfg_usb3_to_usb2_only.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-typec.c_tcphy_cfg_usb3_to_usb2_only.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_typec_phy = type { %struct.rockchip_usb3phy_port_cfg* }
%struct.rockchip_usb3phy_port_cfg = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rockchip_typec_phy*, i32)* @tcphy_cfg_usb3_to_usb2_only to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcphy_cfg_usb3_to_usb2_only(%struct.rockchip_typec_phy* %0, i32 %1) #0 {
  %3 = alloca %struct.rockchip_typec_phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rockchip_usb3phy_port_cfg*, align 8
  store %struct.rockchip_typec_phy* %0, %struct.rockchip_typec_phy** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %7 = getelementptr inbounds %struct.rockchip_typec_phy, %struct.rockchip_typec_phy* %6, i32 0, i32 0
  %8 = load %struct.rockchip_usb3phy_port_cfg*, %struct.rockchip_usb3phy_port_cfg** %7, align 8
  store %struct.rockchip_usb3phy_port_cfg* %8, %struct.rockchip_usb3phy_port_cfg** %5, align 8
  %9 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %10 = load %struct.rockchip_usb3phy_port_cfg*, %struct.rockchip_usb3phy_port_cfg** %5, align 8
  %11 = getelementptr inbounds %struct.rockchip_usb3phy_port_cfg, %struct.rockchip_usb3phy_port_cfg* %10, i32 0, i32 2
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @property_enable(%struct.rockchip_typec_phy* %9, i32* %11, i32 %12)
  %14 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %15 = load %struct.rockchip_usb3phy_port_cfg*, %struct.rockchip_usb3phy_port_cfg** %5, align 8
  %16 = getelementptr inbounds %struct.rockchip_usb3phy_port_cfg, %struct.rockchip_usb3phy_port_cfg* %15, i32 0, i32 1
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @property_enable(%struct.rockchip_typec_phy* %14, i32* %16, i32 %17)
  %19 = load %struct.rockchip_typec_phy*, %struct.rockchip_typec_phy** %3, align 8
  %20 = load %struct.rockchip_usb3phy_port_cfg*, %struct.rockchip_usb3phy_port_cfg** %5, align 8
  %21 = getelementptr inbounds %struct.rockchip_usb3phy_port_cfg, %struct.rockchip_usb3phy_port_cfg* %20, i32 0, i32 0
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @property_enable(%struct.rockchip_typec_phy* %19, i32* %21, i32 %25)
  ret i32 0
}

declare dso_local i32 @property_enable(%struct.rockchip_typec_phy*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
