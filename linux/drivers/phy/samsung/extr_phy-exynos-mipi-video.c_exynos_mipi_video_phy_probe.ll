; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/samsung/extr_phy-exynos-mipi-video.c_exynos_mipi_video_phy_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/samsung/extr_phy-exynos-mipi-video.c_exynos_mipi_video_phy_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.mipi_phy_device_desc = type { i32, i32, i32*, i32* }
%struct.exynos_mipi_video_phy = type { i32, %struct.TYPE_2__*, i32, %struct.phy** }
%struct.TYPE_2__ = type { i32, i32*, %struct.phy* }
%struct.phy = type { i32 }
%struct.phy_provider = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@exynos_mipi_video_phy_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to create PHY %d\0A\00", align 1
@exynos_mipi_video_phy_xlate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @exynos_mipi_video_phy_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_mipi_video_phy_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.mipi_phy_device_desc*, align 8
  %5 = alloca %struct.exynos_mipi_video_phy*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.phy_provider*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.phy*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %6, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load %struct.device_node*, %struct.device_node** %14, align 8
  store %struct.device_node* %15, %struct.device_node** %7, align 8
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call %struct.mipi_phy_device_desc* @of_device_get_match_data(%struct.device* %16)
  store %struct.mipi_phy_device_desc* %17, %struct.mipi_phy_device_desc** %4, align 8
  %18 = load %struct.mipi_phy_device_desc*, %struct.mipi_phy_device_desc** %4, align 8
  %19 = icmp ne %struct.mipi_phy_device_desc* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %154

23:                                               ; preds = %1
  %24 = load %struct.device*, %struct.device** %6, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.exynos_mipi_video_phy* @devm_kzalloc(%struct.device* %24, i32 32, i32 %25)
  store %struct.exynos_mipi_video_phy* %26, %struct.exynos_mipi_video_phy** %5, align 8
  %27 = load %struct.exynos_mipi_video_phy*, %struct.exynos_mipi_video_phy** %5, align 8
  %28 = icmp ne %struct.exynos_mipi_video_phy* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %154

32:                                               ; preds = %23
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %74, %32
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.mipi_phy_device_desc*, %struct.mipi_phy_device_desc** %4, align 8
  %36 = getelementptr inbounds %struct.mipi_phy_device_desc, %struct.mipi_phy_device_desc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ult i32 %34, %37
  br i1 %38, label %39, label %77

39:                                               ; preds = %33
  %40 = load %struct.device_node*, %struct.device_node** %7, align 8
  %41 = load %struct.mipi_phy_device_desc*, %struct.mipi_phy_device_desc** %4, align 8
  %42 = getelementptr inbounds %struct.mipi_phy_device_desc, %struct.mipi_phy_device_desc* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.phy* @syscon_regmap_lookup_by_phandle(%struct.device_node* %40, i32 %47)
  %49 = load %struct.exynos_mipi_video_phy*, %struct.exynos_mipi_video_phy** %5, align 8
  %50 = getelementptr inbounds %struct.exynos_mipi_video_phy, %struct.exynos_mipi_video_phy* %49, i32 0, i32 3
  %51 = load %struct.phy**, %struct.phy*** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct.phy*, %struct.phy** %51, i64 %53
  store %struct.phy* %48, %struct.phy** %54, align 8
  %55 = load %struct.exynos_mipi_video_phy*, %struct.exynos_mipi_video_phy** %5, align 8
  %56 = getelementptr inbounds %struct.exynos_mipi_video_phy, %struct.exynos_mipi_video_phy* %55, i32 0, i32 3
  %57 = load %struct.phy**, %struct.phy*** %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.phy*, %struct.phy** %57, i64 %59
  %61 = load %struct.phy*, %struct.phy** %60, align 8
  %62 = call i64 @IS_ERR(%struct.phy* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %39
  %65 = load %struct.exynos_mipi_video_phy*, %struct.exynos_mipi_video_phy** %5, align 8
  %66 = getelementptr inbounds %struct.exynos_mipi_video_phy, %struct.exynos_mipi_video_phy* %65, i32 0, i32 3
  %67 = load %struct.phy**, %struct.phy*** %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.phy*, %struct.phy** %67, i64 %69
  %71 = load %struct.phy*, %struct.phy** %70, align 8
  %72 = call i32 @PTR_ERR(%struct.phy* %71)
  store i32 %72, i32* %2, align 4
  br label %154

73:                                               ; preds = %39
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %9, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %9, align 4
  br label %33

77:                                               ; preds = %33
  %78 = load %struct.mipi_phy_device_desc*, %struct.mipi_phy_device_desc** %4, align 8
  %79 = getelementptr inbounds %struct.mipi_phy_device_desc, %struct.mipi_phy_device_desc* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.exynos_mipi_video_phy*, %struct.exynos_mipi_video_phy** %5, align 8
  %82 = getelementptr inbounds %struct.exynos_mipi_video_phy, %struct.exynos_mipi_video_phy* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.exynos_mipi_video_phy*, %struct.exynos_mipi_video_phy** %5, align 8
  %84 = getelementptr inbounds %struct.exynos_mipi_video_phy, %struct.exynos_mipi_video_phy* %83, i32 0, i32 2
  %85 = call i32 @spin_lock_init(i32* %84)
  %86 = load %struct.device*, %struct.device** %6, align 8
  %87 = load %struct.exynos_mipi_video_phy*, %struct.exynos_mipi_video_phy** %5, align 8
  %88 = call i32 @dev_set_drvdata(%struct.device* %86, %struct.exynos_mipi_video_phy* %87)
  store i32 0, i32* %9, align 4
  br label %89

89:                                               ; preds = %145, %77
  %90 = load i32, i32* %9, align 4
  %91 = load %struct.exynos_mipi_video_phy*, %struct.exynos_mipi_video_phy** %5, align 8
  %92 = getelementptr inbounds %struct.exynos_mipi_video_phy, %struct.exynos_mipi_video_phy* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp ult i32 %90, %93
  br i1 %94, label %95, label %148

95:                                               ; preds = %89
  %96 = load %struct.device*, %struct.device** %6, align 8
  %97 = call %struct.phy* @devm_phy_create(%struct.device* %96, i32* null, i32* @exynos_mipi_video_phy_ops)
  store %struct.phy* %97, %struct.phy** %10, align 8
  %98 = load %struct.phy*, %struct.phy** %10, align 8
  %99 = call i64 @IS_ERR(%struct.phy* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %95
  %102 = load %struct.device*, %struct.device** %6, align 8
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @dev_err(%struct.device* %102, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %103)
  %105 = load %struct.phy*, %struct.phy** %10, align 8
  %106 = call i32 @PTR_ERR(%struct.phy* %105)
  store i32 %106, i32* %2, align 4
  br label %154

107:                                              ; preds = %95
  %108 = load %struct.phy*, %struct.phy** %10, align 8
  %109 = load %struct.exynos_mipi_video_phy*, %struct.exynos_mipi_video_phy** %5, align 8
  %110 = getelementptr inbounds %struct.exynos_mipi_video_phy, %struct.exynos_mipi_video_phy* %109, i32 0, i32 1
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = load i32, i32* %9, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 2
  store %struct.phy* %108, %struct.phy** %115, align 8
  %116 = load i32, i32* %9, align 4
  %117 = load %struct.exynos_mipi_video_phy*, %struct.exynos_mipi_video_phy** %5, align 8
  %118 = getelementptr inbounds %struct.exynos_mipi_video_phy, %struct.exynos_mipi_video_phy* %117, i32 0, i32 1
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = load i32, i32* %9, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  store i32 %116, i32* %123, align 8
  %124 = load %struct.mipi_phy_device_desc*, %struct.mipi_phy_device_desc** %4, align 8
  %125 = getelementptr inbounds %struct.mipi_phy_device_desc, %struct.mipi_phy_device_desc* %124, i32 0, i32 2
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %9, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load %struct.exynos_mipi_video_phy*, %struct.exynos_mipi_video_phy** %5, align 8
  %131 = getelementptr inbounds %struct.exynos_mipi_video_phy, %struct.exynos_mipi_video_phy* %130, i32 0, i32 1
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = load i32, i32* %9, align 4
  %134 = zext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i32 0, i32 1
  store i32* %129, i32** %136, align 8
  %137 = load %struct.phy*, %struct.phy** %10, align 8
  %138 = load %struct.exynos_mipi_video_phy*, %struct.exynos_mipi_video_phy** %5, align 8
  %139 = getelementptr inbounds %struct.exynos_mipi_video_phy, %struct.exynos_mipi_video_phy* %138, i32 0, i32 1
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = load i32, i32* %9, align 4
  %142 = zext i32 %141 to i64
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i64 %142
  %144 = call i32 @phy_set_drvdata(%struct.phy* %137, %struct.TYPE_2__* %143)
  br label %145

145:                                              ; preds = %107
  %146 = load i32, i32* %9, align 4
  %147 = add i32 %146, 1
  store i32 %147, i32* %9, align 4
  br label %89

148:                                              ; preds = %89
  %149 = load %struct.device*, %struct.device** %6, align 8
  %150 = load i32, i32* @exynos_mipi_video_phy_xlate, align 4
  %151 = call %struct.phy_provider* @devm_of_phy_provider_register(%struct.device* %149, i32 %150)
  store %struct.phy_provider* %151, %struct.phy_provider** %8, align 8
  %152 = load %struct.phy_provider*, %struct.phy_provider** %8, align 8
  %153 = call i32 @PTR_ERR_OR_ZERO(%struct.phy_provider* %152)
  store i32 %153, i32* %2, align 4
  br label %154

154:                                              ; preds = %148, %101, %64, %29, %20
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local %struct.mipi_phy_device_desc* @of_device_get_match_data(%struct.device*) #1

declare dso_local %struct.exynos_mipi_video_phy* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.phy* @syscon_regmap_lookup_by_phandle(%struct.device_node*, i32) #1

declare dso_local i64 @IS_ERR(%struct.phy*) #1

declare dso_local i32 @PTR_ERR(%struct.phy*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.exynos_mipi_video_phy*) #1

declare dso_local %struct.phy* @devm_phy_create(%struct.device*, i32*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @phy_set_drvdata(%struct.phy*, %struct.TYPE_2__*) #1

declare dso_local %struct.phy_provider* @devm_of_phy_provider_register(%struct.device*, i32) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.phy_provider*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
