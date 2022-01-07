; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-usb.c_rockchip_usb_phy_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-usb.c_rockchip_usb_phy_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.rockchip_usb_phy = type { i32, i64, i64 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @rockchip_usb_phy_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_usb_phy_power_on(%struct.phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.rockchip_usb_phy*, align 8
  %5 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %3, align 8
  %6 = load %struct.phy*, %struct.phy** %3, align 8
  %7 = call %struct.rockchip_usb_phy* @phy_get_drvdata(%struct.phy* %6)
  store %struct.rockchip_usb_phy* %7, %struct.rockchip_usb_phy** %4, align 8
  %8 = load %struct.rockchip_usb_phy*, %struct.rockchip_usb_phy** %4, align 8
  %9 = getelementptr inbounds %struct.rockchip_usb_phy, %struct.rockchip_usb_phy* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @EBUSY, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %35

15:                                               ; preds = %1
  %16 = load %struct.rockchip_usb_phy*, %struct.rockchip_usb_phy** %4, align 8
  %17 = getelementptr inbounds %struct.rockchip_usb_phy, %struct.rockchip_usb_phy* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = load %struct.rockchip_usb_phy*, %struct.rockchip_usb_phy** %4, align 8
  %22 = getelementptr inbounds %struct.rockchip_usb_phy, %struct.rockchip_usb_phy* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @regulator_enable(i64 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %2, align 4
  br label %35

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %29, %15
  %31 = load %struct.rockchip_usb_phy*, %struct.rockchip_usb_phy** %4, align 8
  %32 = getelementptr inbounds %struct.rockchip_usb_phy, %struct.rockchip_usb_phy* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @clk_prepare_enable(i32 %33)
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %30, %27, %12
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.rockchip_usb_phy* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @regulator_enable(i64) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
