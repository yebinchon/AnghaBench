; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-inno-usb2.c_rockchip_chg_enable_dcd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-inno-usb2.c_rockchip_chg_enable_dcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_usb2phy = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.regmap = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rockchip_usb2phy*, i32)* @rockchip_chg_enable_dcd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rockchip_chg_enable_dcd(%struct.rockchip_usb2phy* %0, i32 %1) #0 {
  %3 = alloca %struct.rockchip_usb2phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.regmap*, align 8
  store %struct.rockchip_usb2phy* %0, %struct.rockchip_usb2phy** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.rockchip_usb2phy*, %struct.rockchip_usb2phy** %3, align 8
  %7 = call %struct.regmap* @get_reg_base(%struct.rockchip_usb2phy* %6)
  store %struct.regmap* %7, %struct.regmap** %5, align 8
  %8 = load %struct.regmap*, %struct.regmap** %5, align 8
  %9 = load %struct.rockchip_usb2phy*, %struct.rockchip_usb2phy** %3, align 8
  %10 = getelementptr inbounds %struct.rockchip_usb2phy, %struct.rockchip_usb2phy* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 1
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @property_enable(%struct.regmap* %8, i32* %13, i32 %14)
  %16 = load %struct.regmap*, %struct.regmap** %5, align 8
  %17 = load %struct.rockchip_usb2phy*, %struct.rockchip_usb2phy** %3, align 8
  %18 = getelementptr inbounds %struct.rockchip_usb2phy, %struct.rockchip_usb2phy* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @property_enable(%struct.regmap* %16, i32* %21, i32 %22)
  ret void
}

declare dso_local %struct.regmap* @get_reg_base(%struct.rockchip_usb2phy*) #1

declare dso_local i32 @property_enable(%struct.regmap*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
