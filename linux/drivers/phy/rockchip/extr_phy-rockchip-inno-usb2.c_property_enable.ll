; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-inno-usb2.c_property_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-inno-usb2.c_property_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap = type { i32 }
%struct.usb2phy_reg = type { i32, i32, i32, i32, i32 }

@BIT_WRITEABLE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regmap*, %struct.usb2phy_reg*, i32)* @property_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @property_enable(%struct.regmap* %0, %struct.usb2phy_reg* %1, i32 %2) #0 {
  %4 = alloca %struct.regmap*, align 8
  %5 = alloca %struct.usb2phy_reg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.regmap* %0, %struct.regmap** %4, align 8
  store %struct.usb2phy_reg* %1, %struct.usb2phy_reg** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load %struct.usb2phy_reg*, %struct.usb2phy_reg** %5, align 8
  %14 = getelementptr inbounds %struct.usb2phy_reg, %struct.usb2phy_reg* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  br label %20

16:                                               ; preds = %3
  %17 = load %struct.usb2phy_reg*, %struct.usb2phy_reg** %5, align 8
  %18 = getelementptr inbounds %struct.usb2phy_reg, %struct.usb2phy_reg* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  br label %20

20:                                               ; preds = %16, %12
  %21 = phi i32 [ %15, %12 ], [ %19, %16 ]
  store i32 %21, i32* %9, align 4
  %22 = load %struct.usb2phy_reg*, %struct.usb2phy_reg** %5, align 8
  %23 = getelementptr inbounds %struct.usb2phy_reg, %struct.usb2phy_reg* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.usb2phy_reg*, %struct.usb2phy_reg** %5, align 8
  %26 = getelementptr inbounds %struct.usb2phy_reg, %struct.usb2phy_reg* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @GENMASK(i32 %24, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.usb2phy_reg*, %struct.usb2phy_reg** %5, align 8
  %31 = getelementptr inbounds %struct.usb2phy_reg, %struct.usb2phy_reg* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %29, %32
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @BIT_WRITEABLE_SHIFT, align 4
  %36 = shl i32 %34, %35
  %37 = or i32 %33, %36
  store i32 %37, i32* %7, align 4
  %38 = load %struct.regmap*, %struct.regmap** %4, align 8
  %39 = load %struct.usb2phy_reg*, %struct.usb2phy_reg** %5, align 8
  %40 = getelementptr inbounds %struct.usb2phy_reg, %struct.usb2phy_reg* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @regmap_write(%struct.regmap* %38, i32 %41, i32 %42)
  ret i32 %43
}

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i32 @regmap_write(%struct.regmap*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
