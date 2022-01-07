; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/samsung/extr_phy-exynos4x12-usb2.c_exynos4x12_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/samsung/extr_phy-exynos4x12-usb2.c_exynos4x12_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.samsung_usb2_phy_instance = type { %struct.TYPE_4__*, i32, %struct.samsung_usb2_phy_driver* }
%struct.TYPE_4__ = type { i64 }
%struct.samsung_usb2_phy_driver = type { %struct.samsung_usb2_phy_instance*, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@EXYNOS4x12_DEVICE = common dso_local global i64 0, align 8
@EXYNOS_4x12_MODE_SWITCH_OFFSET = common dso_local global i32 0, align 4
@EXYNOS_4x12_MODE_SWITCH_MASK = common dso_local global i32 0, align 4
@EXYNOS_4x12_MODE_SWITCH_HOST = common dso_local global i32 0, align 4
@EXYNOS4x12_HOST = common dso_local global i64 0, align 8
@EXYNOS4x12_HSIC0 = common dso_local global i64 0, align 8
@EXYNOS4x12_HSIC1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.samsung_usb2_phy_instance*)* @exynos4x12_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos4x12_power_off(%struct.samsung_usb2_phy_instance* %0) #0 {
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
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %9, align 8
  %12 = icmp sgt i32 %10, 1
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %84

14:                                               ; preds = %1
  %15 = load %struct.samsung_usb2_phy_instance*, %struct.samsung_usb2_phy_instance** %3, align 8
  %16 = getelementptr inbounds %struct.samsung_usb2_phy_instance, %struct.samsung_usb2_phy_instance* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @EXYNOS4x12_DEVICE, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %14
  %23 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %4, align 8
  %24 = getelementptr inbounds %struct.samsung_usb2_phy_driver, %struct.samsung_usb2_phy_driver* %23, i32 0, i32 2
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %22
  %30 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %4, align 8
  %31 = getelementptr inbounds %struct.samsung_usb2_phy_driver, %struct.samsung_usb2_phy_driver* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @EXYNOS_4x12_MODE_SWITCH_OFFSET, align 4
  %34 = load i32, i32* @EXYNOS_4x12_MODE_SWITCH_MASK, align 4
  %35 = load i32, i32* @EXYNOS_4x12_MODE_SWITCH_HOST, align 4
  %36 = call i32 @regmap_update_bits(i32 %32, i32 %33, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %29, %22, %14
  %38 = load %struct.samsung_usb2_phy_instance*, %struct.samsung_usb2_phy_instance** %3, align 8
  %39 = getelementptr inbounds %struct.samsung_usb2_phy_instance, %struct.samsung_usb2_phy_instance* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @EXYNOS4x12_HOST, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %37
  %46 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %4, align 8
  %47 = getelementptr inbounds %struct.samsung_usb2_phy_driver, %struct.samsung_usb2_phy_driver* %46, i32 0, i32 0
  %48 = load %struct.samsung_usb2_phy_instance*, %struct.samsung_usb2_phy_instance** %47, align 8
  %49 = load i64, i64* @EXYNOS4x12_DEVICE, align 8
  %50 = getelementptr inbounds %struct.samsung_usb2_phy_instance, %struct.samsung_usb2_phy_instance* %48, i64 %49
  %51 = call i32 @exynos4x12_power_off_int(%struct.samsung_usb2_phy_instance* %50)
  br label %52

52:                                               ; preds = %45, %37
  %53 = load %struct.samsung_usb2_phy_instance*, %struct.samsung_usb2_phy_instance** %3, align 8
  %54 = getelementptr inbounds %struct.samsung_usb2_phy_instance, %struct.samsung_usb2_phy_instance* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @EXYNOS4x12_HSIC0, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %68, label %60

60:                                               ; preds = %52
  %61 = load %struct.samsung_usb2_phy_instance*, %struct.samsung_usb2_phy_instance** %3, align 8
  %62 = getelementptr inbounds %struct.samsung_usb2_phy_instance, %struct.samsung_usb2_phy_instance* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @EXYNOS4x12_HSIC1, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %60, %52
  %69 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %4, align 8
  %70 = getelementptr inbounds %struct.samsung_usb2_phy_driver, %struct.samsung_usb2_phy_driver* %69, i32 0, i32 0
  %71 = load %struct.samsung_usb2_phy_instance*, %struct.samsung_usb2_phy_instance** %70, align 8
  %72 = load i64, i64* @EXYNOS4x12_DEVICE, align 8
  %73 = getelementptr inbounds %struct.samsung_usb2_phy_instance, %struct.samsung_usb2_phy_instance* %71, i64 %72
  %74 = call i32 @exynos4x12_power_off_int(%struct.samsung_usb2_phy_instance* %73)
  %75 = load %struct.samsung_usb2_phy_driver*, %struct.samsung_usb2_phy_driver** %4, align 8
  %76 = getelementptr inbounds %struct.samsung_usb2_phy_driver, %struct.samsung_usb2_phy_driver* %75, i32 0, i32 0
  %77 = load %struct.samsung_usb2_phy_instance*, %struct.samsung_usb2_phy_instance** %76, align 8
  %78 = load i64, i64* @EXYNOS4x12_HOST, align 8
  %79 = getelementptr inbounds %struct.samsung_usb2_phy_instance, %struct.samsung_usb2_phy_instance* %77, i64 %78
  %80 = call i32 @exynos4x12_power_off_int(%struct.samsung_usb2_phy_instance* %79)
  br label %81

81:                                               ; preds = %68, %60
  %82 = load %struct.samsung_usb2_phy_instance*, %struct.samsung_usb2_phy_instance** %3, align 8
  %83 = call i32 @exynos4x12_power_off_int(%struct.samsung_usb2_phy_instance* %82)
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %81, %13
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @exynos4x12_power_off_int(%struct.samsung_usb2_phy_instance*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
