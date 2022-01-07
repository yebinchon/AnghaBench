; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-inno-usb2.c_rockchip_usb2phy_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/rockchip/extr_phy-rockchip-inno-usb2.c_rockchip_usb2phy_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.rockchip_usb2phy_port = type { i32, %struct.TYPE_4__*, %struct.TYPE_6__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.rockchip_usb2phy = type { i32 }
%struct.regmap = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"port power on\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @rockchip_usb2phy_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_usb2phy_power_on(%struct.phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.rockchip_usb2phy_port*, align 8
  %5 = alloca %struct.rockchip_usb2phy*, align 8
  %6 = alloca %struct.regmap*, align 8
  %7 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %3, align 8
  %8 = load %struct.phy*, %struct.phy** %3, align 8
  %9 = call %struct.rockchip_usb2phy_port* @phy_get_drvdata(%struct.phy* %8)
  store %struct.rockchip_usb2phy_port* %9, %struct.rockchip_usb2phy_port** %4, align 8
  %10 = load %struct.phy*, %struct.phy** %3, align 8
  %11 = getelementptr inbounds %struct.phy, %struct.phy* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.rockchip_usb2phy* @dev_get_drvdata(i32 %13)
  store %struct.rockchip_usb2phy* %14, %struct.rockchip_usb2phy** %5, align 8
  %15 = load %struct.rockchip_usb2phy*, %struct.rockchip_usb2phy** %5, align 8
  %16 = call %struct.regmap* @get_reg_base(%struct.rockchip_usb2phy* %15)
  store %struct.regmap* %16, %struct.regmap** %6, align 8
  %17 = load %struct.rockchip_usb2phy_port*, %struct.rockchip_usb2phy_port** %4, align 8
  %18 = getelementptr inbounds %struct.rockchip_usb2phy_port, %struct.rockchip_usb2phy_port* %17, i32 0, i32 2
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = call i32 @dev_dbg(i32* %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.rockchip_usb2phy_port*, %struct.rockchip_usb2phy_port** %4, align 8
  %23 = getelementptr inbounds %struct.rockchip_usb2phy_port, %struct.rockchip_usb2phy_port* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %51

27:                                               ; preds = %1
  %28 = load %struct.rockchip_usb2phy*, %struct.rockchip_usb2phy** %5, align 8
  %29 = getelementptr inbounds %struct.rockchip_usb2phy, %struct.rockchip_usb2phy* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @clk_prepare_enable(i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %2, align 4
  br label %51

36:                                               ; preds = %27
  %37 = load %struct.regmap*, %struct.regmap** %6, align 8
  %38 = load %struct.rockchip_usb2phy_port*, %struct.rockchip_usb2phy_port** %4, align 8
  %39 = getelementptr inbounds %struct.rockchip_usb2phy_port, %struct.rockchip_usb2phy_port* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = call i32 @property_enable(%struct.regmap* %37, i32* %41, i32 0)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %2, align 4
  br label %51

47:                                               ; preds = %36
  %48 = call i32 @usleep_range(i32 1500, i32 2000)
  %49 = load %struct.rockchip_usb2phy_port*, %struct.rockchip_usb2phy_port** %4, align 8
  %50 = getelementptr inbounds %struct.rockchip_usb2phy_port, %struct.rockchip_usb2phy_port* %49, i32 0, i32 0
  store i32 0, i32* %50, align 8
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %47, %45, %34, %26
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.rockchip_usb2phy_port* @phy_get_drvdata(%struct.phy*) #1

declare dso_local %struct.rockchip_usb2phy* @dev_get_drvdata(i32) #1

declare dso_local %struct.regmap* @get_reg_base(%struct.rockchip_usb2phy*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @property_enable(%struct.regmap*, i32*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
