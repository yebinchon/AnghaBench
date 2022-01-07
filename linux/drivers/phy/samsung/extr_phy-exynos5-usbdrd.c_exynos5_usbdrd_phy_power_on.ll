; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/samsung/extr_phy-exynos5-usbdrd.c_exynos5_usbdrd_phy_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/samsung/extr_phy-exynos5-usbdrd.c_exynos5_usbdrd_phy_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.phy_usb_instance = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.phy_usb_instance*, i32)* }
%struct.exynos5_usbdrd_phy = type { i32, i32, i32, %struct.TYPE_4__*, i32, i64, i32, i64 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Request to power_on usbdrd_phy phy\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to enable VBUS boost supply\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to enable VBUS supply\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @exynos5_usbdrd_phy_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos5_usbdrd_phy_power_on(%struct.phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.phy_usb_instance*, align 8
  %6 = alloca %struct.exynos5_usbdrd_phy*, align 8
  store %struct.phy* %0, %struct.phy** %3, align 8
  %7 = load %struct.phy*, %struct.phy** %3, align 8
  %8 = call %struct.phy_usb_instance* @phy_get_drvdata(%struct.phy* %7)
  store %struct.phy_usb_instance* %8, %struct.phy_usb_instance** %5, align 8
  %9 = load %struct.phy_usb_instance*, %struct.phy_usb_instance** %5, align 8
  %10 = call %struct.exynos5_usbdrd_phy* @to_usbdrd_phy(%struct.phy_usb_instance* %9)
  store %struct.exynos5_usbdrd_phy* %10, %struct.exynos5_usbdrd_phy** %6, align 8
  %11 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %6, align 8
  %12 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @dev_dbg(i32 %13, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %6, align 8
  %16 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @clk_prepare_enable(i32 %17)
  %19 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %6, align 8
  %20 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %19, i32 0, i32 3
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %1
  %26 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %6, align 8
  %27 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @clk_prepare_enable(i32 %28)
  %30 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %6, align 8
  %31 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @clk_prepare_enable(i32 %32)
  %34 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %6, align 8
  %35 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @clk_prepare_enable(i32 %36)
  br label %38

38:                                               ; preds = %25, %1
  %39 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %6, align 8
  %40 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %39, i32 0, i32 5
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %38
  %44 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %6, align 8
  %45 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %44, i32 0, i32 5
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @regulator_enable(i64 %46)
  store i32 %47, i32* %4, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  %51 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %6, align 8
  %52 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @dev_err(i32 %53, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %93

55:                                               ; preds = %43
  br label %56

56:                                               ; preds = %55, %38
  %57 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %6, align 8
  %58 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %57, i32 0, i32 7
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %74

61:                                               ; preds = %56
  %62 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %6, align 8
  %63 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %62, i32 0, i32 7
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @regulator_enable(i64 %64)
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %61
  %69 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %6, align 8
  %70 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @dev_err(i32 %71, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %82

73:                                               ; preds = %61
  br label %74

74:                                               ; preds = %73, %56
  %75 = load %struct.phy_usb_instance*, %struct.phy_usb_instance** %5, align 8
  %76 = getelementptr inbounds %struct.phy_usb_instance, %struct.phy_usb_instance* %75, i32 0, i32 0
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32 (%struct.phy_usb_instance*, i32)*, i32 (%struct.phy_usb_instance*, i32)** %78, align 8
  %80 = load %struct.phy_usb_instance*, %struct.phy_usb_instance** %5, align 8
  %81 = call i32 %79(%struct.phy_usb_instance* %80, i32 0)
  store i32 0, i32* %2, align 4
  br label %119

82:                                               ; preds = %68
  %83 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %6, align 8
  %84 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %83, i32 0, i32 5
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %6, align 8
  %89 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %88, i32 0, i32 5
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @regulator_disable(i64 %90)
  br label %92

92:                                               ; preds = %87, %82
  br label %93

93:                                               ; preds = %92, %50
  %94 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %6, align 8
  %95 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @clk_disable_unprepare(i32 %96)
  %98 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %6, align 8
  %99 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %98, i32 0, i32 3
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %117, label %104

104:                                              ; preds = %93
  %105 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %6, align 8
  %106 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @clk_disable_unprepare(i32 %107)
  %109 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %6, align 8
  %110 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @clk_disable_unprepare(i32 %111)
  %113 = load %struct.exynos5_usbdrd_phy*, %struct.exynos5_usbdrd_phy** %6, align 8
  %114 = getelementptr inbounds %struct.exynos5_usbdrd_phy, %struct.exynos5_usbdrd_phy* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @clk_disable_unprepare(i32 %115)
  br label %117

117:                                              ; preds = %104, %93
  %118 = load i32, i32* %4, align 4
  store i32 %118, i32* %2, align 4
  br label %119

119:                                              ; preds = %117, %74
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local %struct.phy_usb_instance* @phy_get_drvdata(%struct.phy*) #1

declare dso_local %struct.exynos5_usbdrd_phy* @to_usbdrd_phy(%struct.phy_usb_instance*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @regulator_enable(i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @regulator_disable(i64) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
