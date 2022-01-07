; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/samsung/extr_phy-exynos4x12-usb2.c_exynos4x12_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/samsung/extr_phy-exynos4x12-usb2.c_exynos4x12_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.samsung_usb2_phy_instance = type { %struct.TYPE_4__*, i32, %struct.samsung_usb2_phy_driver* }
%struct.TYPE_4__ = type { i64 }
%struct.samsung_usb2_phy_driver = type { %struct.samsung_usb2_phy_instance*, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@EXYNOS4x12_HOST = common dso_local global i64 0, align 8
@EXYNOS_4x12_MODE_SWITCH_OFFSET = common dso_local global i32 0, align 4
@EXYNOS_4x12_MODE_SWITCH_MASK = common dso_local global i32 0, align 4
@EXYNOS_4x12_MODE_SWITCH_HOST = common dso_local global i32 0, align 4
@EXYNOS4x12_DEVICE = common dso_local global i64 0, align 8
@EXYNOS_4x12_MODE_SWITCH_DEVICE = common dso_local global i32 0, align 4
@EXYNOS4x12_HSIC0 = common dso_local global i64 0, align 8
@EXYNOS4x12_HSIC1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.samsung_usb2_phy_instance*)* @exynos4x12_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos4x12_power_on(%struct.samsung_usb2_phy_instance* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.samsung_usb2_phy_instance*, align 8
  %4 = alloca %struct.samsung_usb2_phy_driver*, align 8
  store %struct.samsung_usb2_phy_instance* %0, %struct.samsung_usb2_phy_instance** %3, align 8
  %5 = load %struct.samsung_usb2_phy_instance*, %struct.samsung_usb2_phy_instance** %3, align 8
  %6 = getelementptr inbounds %struct.samsung_usb2_phy_instance, %struct.samsung_usb2_phy_instance* %5, i32 0, i32 2
  %7 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %6, align 8
  store %struct.samsung_usb2_phy_driver* %7, %struct.samsung_usb2_phy_driver** %4, align 8
  %8 = load %struct.samsung_usb2_phy_instance*, %struct.samsung_usb2_phy_instance** %3, align 8
  %9 = getelementptr inbounds %struct.samsung_usb2_phy_instance, %struct.samsung_usb2_phy_instance* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %9, align 8
  %12 = icmp sgt i32 %10, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %91

14:                                               ; preds = %1
  %15 = load %struct.samsung_usb2_phy_instance*, %struct.samsung_usb2_phy_instance** %3, align 8
  %16 = getelementptr inbounds %struct.samsung_usb2_phy_instance, %struct.samsung_usb2_phy_instance* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @EXYNOS4x12_HOST, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %36

22:                                               ; preds = %14
  %23 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %4, align 8
  %24 = getelementptr inbounds %struct.samsung_usb2_phy_driver, %struct.samsung_usb2_phy_driver* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @EXYNOS_4x12_MODE_SWITCH_OFFSET, align 4
  %27 = load i32, i32* @EXYNOS_4x12_MODE_SWITCH_MASK, align 4
  %28 = load i32, i32* @EXYNOS_4x12_MODE_SWITCH_HOST, align 4
  %29 = call i32 @regmap_update_bits(i32 %25, i32 %26, i32 %27, i32 %28)
  %30 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %4, align 8
  %31 = getelementptr inbounds %struct.samsung_usb2_phy_driver, %struct.samsung_usb2_phy_driver* %30, i32 0, i32 0
  %32 = load %struct.samsung_usb2_phy_instance*, %struct.samsung_usb2_phy_instance** %31, align 8
  %33 = load i64, i64* @EXYNOS4x12_DEVICE, align 8
  %34 = getelementptr inbounds %struct.samsung_usb2_phy_instance, %struct.samsung_usb2_phy_instance* %32, i64 %33
  %35 = call i32 @exynos4x12_power_on_int(%struct.samsung_usb2_phy_instance* %34)
  br label %36

36:                                               ; preds = %22, %14
  %37 = load %struct.samsung_usb2_phy_instance*, %struct.samsung_usb2_phy_instance** %3, align 8
  %38 = getelementptr inbounds %struct.samsung_usb2_phy_instance, %struct.samsung_usb2_phy_instance* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @EXYNOS4x12_DEVICE, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %36
  %45 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %4, align 8
  %46 = getelementptr inbounds %struct.samsung_usb2_phy_driver, %struct.samsung_usb2_phy_driver* %45, i32 0, i32 2
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %44
  %52 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %4, align 8
  %53 = getelementptr inbounds %struct.samsung_usb2_phy_driver, %struct.samsung_usb2_phy_driver* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @EXYNOS_4x12_MODE_SWITCH_OFFSET, align 4
  %56 = load i32, i32* @EXYNOS_4x12_MODE_SWITCH_MASK, align 4
  %57 = load i32, i32* @EXYNOS_4x12_MODE_SWITCH_DEVICE, align 4
  %58 = call i32 @regmap_update_bits(i32 %54, i32 %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %51, %44, %36
  %60 = load %struct.samsung_usb2_phy_instance*, %struct.samsung_usb2_phy_instance** %3, align 8
  %61 = getelementptr inbounds %struct.samsung_usb2_phy_instance, %struct.samsung_usb2_phy_instance* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @EXYNOS4x12_HSIC0, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %75, label %67

67:                                               ; preds = %59
  %68 = load %struct.samsung_usb2_phy_instance*, %struct.samsung_usb2_phy_instance** %3, align 8
  %69 = getelementptr inbounds %struct.samsung_usb2_phy_instance, %struct.samsung_usb2_phy_instance* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @EXYNOS4x12_HSIC1, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %88

75:                                               ; preds = %67, %59
  %76 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %4, align 8
  %77 = getelementptr inbounds %struct.samsung_usb2_phy_driver, %struct.samsung_usb2_phy_driver* %76, i32 0, i32 0
  %78 = load %struct.samsung_usb2_phy_instance*, %struct.samsung_usb2_phy_instance** %77, align 8
  %79 = load i64, i64* @EXYNOS4x12_DEVICE, align 8
  %80 = getelementptr inbounds %struct.samsung_usb2_phy_instance, %struct.samsung_usb2_phy_instance* %78, i64 %79
  %81 = call i32 @exynos4x12_power_on_int(%struct.samsung_usb2_phy_instance* %80)
  %82 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %4, align 8
  %83 = getelementptr inbounds %struct.samsung_usb2_phy_driver, %struct.samsung_usb2_phy_driver* %82, i32 0, i32 0
  %84 = load %struct.samsung_usb2_phy_instance*, %struct.samsung_usb2_phy_instance** %83, align 8
  %85 = load i64, i64* @EXYNOS4x12_HOST, align 8
  %86 = getelementptr inbounds %struct.samsung_usb2_phy_instance, %struct.samsung_usb2_phy_instance* %84, i64 %85
  %87 = call i32 @exynos4x12_power_on_int(%struct.samsung_usb2_phy_instance* %86)
  br label %88

88:                                               ; preds = %75, %67
  %89 = load %struct.samsung_usb2_phy_instance*, %struct.samsung_usb2_phy_instance** %3, align 8
  %90 = call i32 @exynos4x12_power_on_int(%struct.samsung_usb2_phy_instance* %89)
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %88, %13
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @exynos4x12_power_on_int(%struct.samsung_usb2_phy_instance*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
