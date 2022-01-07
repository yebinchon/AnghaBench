; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/samsung/extr_phy-exynos-dp-video.c_exynos_dp_video_phy_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/samsung/extr_phy-exynos-dp-video.c_exynos_dp_video_phy_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.exynos_dp_video_phy = type { i32, %struct.phy* }
%struct.phy = type { i32 }
%struct.phy_provider = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"samsung,pmu-syscon\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to lookup PMU regmap\0A\00", align 1
@exynos_dp_video_phy_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"failed to create Display Port PHY\0A\00", align 1
@of_phy_simple_xlate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @exynos_dp_video_phy_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_dp_video_phy_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.exynos_dp_video_phy*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.phy_provider*, align 8
  %7 = alloca %struct.phy*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  store %struct.device* %9, %struct.device** %5, align 8
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.exynos_dp_video_phy* @devm_kzalloc(%struct.device* %10, i32 16, i32 %11)
  store %struct.exynos_dp_video_phy* %12, %struct.exynos_dp_video_phy** %4, align 8
  %13 = load %struct.exynos_dp_video_phy*, %struct.exynos_dp_video_phy** %4, align 8
  %14 = icmp ne %struct.exynos_dp_video_phy* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %61

18:                                               ; preds = %1
  %19 = load %struct.device*, %struct.device** %5, align 8
  %20 = getelementptr inbounds %struct.device, %struct.device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.phy* @syscon_regmap_lookup_by_phandle(i32 %21, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.exynos_dp_video_phy*, %struct.exynos_dp_video_phy** %4, align 8
  %24 = getelementptr inbounds %struct.exynos_dp_video_phy, %struct.exynos_dp_video_phy* %23, i32 0, i32 1
  store %struct.phy* %22, %struct.phy** %24, align 8
  %25 = load %struct.exynos_dp_video_phy*, %struct.exynos_dp_video_phy** %4, align 8
  %26 = getelementptr inbounds %struct.exynos_dp_video_phy, %struct.exynos_dp_video_phy* %25, i32 0, i32 1
  %27 = load %struct.phy*, %struct.phy** %26, align 8
  %28 = call i64 @IS_ERR(%struct.phy* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %18
  %31 = load %struct.device*, %struct.device** %5, align 8
  %32 = call i32 @dev_err(%struct.device* %31, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.exynos_dp_video_phy*, %struct.exynos_dp_video_phy** %4, align 8
  %34 = getelementptr inbounds %struct.exynos_dp_video_phy, %struct.exynos_dp_video_phy* %33, i32 0, i32 1
  %35 = load %struct.phy*, %struct.phy** %34, align 8
  %36 = call i32 @PTR_ERR(%struct.phy* %35)
  store i32 %36, i32* %2, align 4
  br label %61

37:                                               ; preds = %18
  %38 = load %struct.device*, %struct.device** %5, align 8
  %39 = call i32 @of_device_get_match_data(%struct.device* %38)
  %40 = load %struct.exynos_dp_video_phy*, %struct.exynos_dp_video_phy** %4, align 8
  %41 = getelementptr inbounds %struct.exynos_dp_video_phy, %struct.exynos_dp_video_phy* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.device*, %struct.device** %5, align 8
  %43 = call %struct.phy* @devm_phy_create(%struct.device* %42, i32* null, i32* @exynos_dp_video_phy_ops)
  store %struct.phy* %43, %struct.phy** %7, align 8
  %44 = load %struct.phy*, %struct.phy** %7, align 8
  %45 = call i64 @IS_ERR(%struct.phy* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %37
  %48 = load %struct.device*, %struct.device** %5, align 8
  %49 = call i32 @dev_err(%struct.device* %48, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %50 = load %struct.phy*, %struct.phy** %7, align 8
  %51 = call i32 @PTR_ERR(%struct.phy* %50)
  store i32 %51, i32* %2, align 4
  br label %61

52:                                               ; preds = %37
  %53 = load %struct.phy*, %struct.phy** %7, align 8
  %54 = load %struct.exynos_dp_video_phy*, %struct.exynos_dp_video_phy** %4, align 8
  %55 = call i32 @phy_set_drvdata(%struct.phy* %53, %struct.exynos_dp_video_phy* %54)
  %56 = load %struct.device*, %struct.device** %5, align 8
  %57 = load i32, i32* @of_phy_simple_xlate, align 4
  %58 = call %struct.phy_provider* @devm_of_phy_provider_register(%struct.device* %56, i32 %57)
  store %struct.phy_provider* %58, %struct.phy_provider** %6, align 8
  %59 = load %struct.phy_provider*, %struct.phy_provider** %6, align 8
  %60 = call i32 @PTR_ERR_OR_ZERO(%struct.phy_provider* %59)
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %52, %47, %30, %15
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.exynos_dp_video_phy* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.phy* @syscon_regmap_lookup_by_phandle(i32, i8*) #1

declare dso_local i64 @IS_ERR(%struct.phy*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.phy*) #1

declare dso_local i32 @of_device_get_match_data(%struct.device*) #1

declare dso_local %struct.phy* @devm_phy_create(%struct.device*, i32*, i32*) #1

declare dso_local i32 @phy_set_drvdata(%struct.phy*, %struct.exynos_dp_video_phy*) #1

declare dso_local %struct.phy_provider* @devm_of_phy_provider_register(%struct.device*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.phy_provider*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
