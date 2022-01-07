; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/samsung/extr_phy-exynos5-usbdrd.c_exynos5_usbdrd_phy_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/samsung/extr_phy-exynos5-usbdrd.c_exynos5_usbdrd_phy_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.phy_usb_instance = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.phy_usb_instance*, i32)* }
%struct.exynos5_usbdrd_phy = type { i32, i32, i32, %struct.TYPE_3__*, i32, i64, i64, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Request to power_off usbdrd_phy phy\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @exynos5_usbdrd_phy_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos5_usbdrd_phy_power_off(%struct.phy* %0) #0 {
  %2 = alloca %struct.phy*, align 8
  %3 = alloca %struct.phy_usb_instance*, align 8
  %4 = alloca %struct.exynos5_usbdrd_phy*, align 8
  store %struct.phy* %0, %struct.phy** %2, align 8
  %5 = load %struct.phy*, %struct.phy** %2, align 8
  %6 = call %struct.phy_usb_instance* @phy_get_drvdata(%struct.phy* %5)
  store %struct.phy_usb_instance* %6, %struct.phy_usb_instance** %3, align 8
  %7 = load %struct.phy_usb_instance*, %struct.phy_usb_instance** %3, align 8
  %8 = call %struct.exynos5_usbdrd_phy* @to_usbdrd_phy(%struct.phy_usb_instance* %7)
  store %struct.exynos5_usbdrd_phy* %8, %struct.exynos5_usbdrd_phy** %4, align 8
  %9 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %4, align 8
  %10 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %9, i32 0, i32 7
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @dev_dbg(i32 %11, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.phy_usb_instance*, %struct.phy_usb_instance** %3, align 8
  %14 = getelementptr inbounds %struct.phy_usb_instance, %struct.phy_usb_instance* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32 (%struct.phy_usb_instance*, i32)*, i32 (%struct.phy_usb_instance*, i32)** %16, align 8
  %18 = load %struct.phy_usb_instance*, %struct.phy_usb_instance** %3, align 8
  %19 = call i32 %17(%struct.phy_usb_instance* %18, i32 1)
  %20 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %4, align 8
  %21 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %20, i32 0, i32 6
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %4, align 8
  %26 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %25, i32 0, i32 6
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @regulator_disable(i64 %27)
  br label %29

29:                                               ; preds = %24, %1
  %30 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %4, align 8
  %31 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %30, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %4, align 8
  %36 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %35, i32 0, i32 5
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @regulator_disable(i64 %37)
  br label %39

39:                                               ; preds = %34, %29
  %40 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %4, align 8
  %41 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @clk_disable_unprepare(i32 %42)
  %44 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %4, align 8
  %45 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %44, i32 0, i32 3
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %63, label %50

50:                                               ; preds = %39
  %51 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %4, align 8
  %52 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @clk_disable_unprepare(i32 %53)
  %55 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %4, align 8
  %56 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @clk_disable_unprepare(i32 %57)
  %59 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %4, align 8
  %60 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @clk_disable_unprepare(i32 %61)
  br label %63

63:                                               ; preds = %50, %39
  ret i32 0
}

declare dso_local %struct.phy_usb_instance* @phy_get_drvdata(%struct.phy*) #1

declare dso_local %struct.exynos5_usbdrd_phy* @to_usbdrd_phy(%struct.phy_usb_instance*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @regulator_disable(i64) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
