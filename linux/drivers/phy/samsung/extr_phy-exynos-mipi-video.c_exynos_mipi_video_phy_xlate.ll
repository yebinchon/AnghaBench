; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/samsung/extr_phy-exynos-mipi-video.c_exynos_mipi_video_phy_xlate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/samsung/extr_phy-exynos-mipi-video.c_exynos_mipi_video_phy_xlate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.device = type { i32 }
%struct.of_phandle_args = type { i64* }
%struct.exynos_mipi_video_phy = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.phy* }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.phy* (%struct.device*, %struct.of_phandle_args*)* @exynos_mipi_video_phy_xlate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.phy* @exynos_mipi_video_phy_xlate(%struct.device* %0, %struct.of_phandle_args* %1) #0 {
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.of_phandle_args*, align 8
  %6 = alloca %struct.exynos_mipi_video_phy*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.of_phandle_args* %1, %struct.of_phandle_args** %5, align 8
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = call %struct.exynos_mipi_video_phy* @dev_get_drvdata(%struct.device* %7)
  store %struct.exynos_mipi_video_phy* %8, %struct.exynos_mipi_video_phy** %6, align 8
  %9 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %10 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.exynos_mipi_video_phy*, %struct.exynos_mipi_video_phy** %6, align 8
  %15 = getelementptr inbounds %struct.exynos_mipi_video_phy, %struct.exynos_mipi_video_phy* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp uge i64 %13, %16
  %18 = zext i1 %17 to i32
  %19 = call i64 @WARN_ON(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.phy* @ERR_PTR(i32 %23)
  store %struct.phy* %24, %struct.phy** %3, align 8
  br label %37

25:                                               ; preds = %2
  %26 = load %struct.exynos_mipi_video_phy*, %struct.exynos_mipi_video_phy** %6, align 8
  %27 = getelementptr inbounds %struct.exynos_mipi_video_phy, %struct.exynos_mipi_video_phy* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load %struct.of_phandle_args*, %struct.of_phandle_args** %5, align 8
  %30 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load %struct.phy*, %struct.phy** %35, align 8
  store %struct.phy* %36, %struct.phy** %3, align 8
  br label %37

37:                                               ; preds = %25, %21
  %38 = load %struct.phy*, %struct.phy** %3, align 8
  ret %struct.phy* %38
}

declare dso_local %struct.exynos_mipi_video_phy* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.phy* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
