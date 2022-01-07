; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/samsung/extr_phy-exynos-mipi-video.c___set_phy_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/samsung/extr_phy-exynos-mipi-video.c___set_phy_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_mipi_phy_desc = type { i64, i64, i64, i32, i32, i32, i32 }
%struct.exynos_mipi_video_phy = type { i32, %struct.TYPE_4__*, %struct.regmap** }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.regmap = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.exynos_mipi_phy_desc*, %struct.exynos_mipi_video_phy*, i32)* @__set_phy_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__set_phy_state(%struct.exynos_mipi_phy_desc* %0, %struct.exynos_mipi_video_phy* %1, i32 %2) #0 {
  %4 = alloca %struct.exynos_mipi_phy_desc*, align 8
  %5 = alloca %struct.exynos_mipi_video_phy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca %struct.regmap*, align 8
  store %struct.exynos_mipi_phy_desc* %0, %struct.exynos_mipi_phy_desc** %4, align 8
  store %struct.exynos_mipi_video_phy* %1, %struct.exynos_mipi_video_phy** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.exynos_mipi_video_phy*, %struct.exynos_mipi_video_phy** %5, align 8
  %10 = getelementptr inbounds %struct.exynos_mipi_video_phy, %struct.exynos_mipi_video_phy* %9, i32 0, i32 2
  %11 = load %struct.regmap**, %struct.regmap*** %10, align 8
  %12 = load %struct.exynos_mipi_phy_desc*, %struct.exynos_mipi_phy_desc** %4, align 8
  %13 = getelementptr inbounds %struct.exynos_mipi_phy_desc, %struct.exynos_mipi_phy_desc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.regmap*, %struct.regmap** %11, i64 %14
  %16 = load %struct.regmap*, %struct.regmap** %15, align 8
  store %struct.regmap* %16, %struct.regmap** %7, align 8
  %17 = load %struct.exynos_mipi_video_phy*, %struct.exynos_mipi_video_phy** %5, align 8
  %18 = getelementptr inbounds %struct.exynos_mipi_video_phy, %struct.exynos_mipi_video_phy* %17, i32 0, i32 2
  %19 = load %struct.regmap**, %struct.regmap*** %18, align 8
  %20 = load %struct.exynos_mipi_phy_desc*, %struct.exynos_mipi_phy_desc** %4, align 8
  %21 = getelementptr inbounds %struct.exynos_mipi_phy_desc, %struct.exynos_mipi_phy_desc* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.regmap*, %struct.regmap** %19, i64 %22
  %24 = load %struct.regmap*, %struct.regmap** %23, align 8
  store %struct.regmap* %24, %struct.regmap** %8, align 8
  %25 = load %struct.exynos_mipi_video_phy*, %struct.exynos_mipi_video_phy** %5, align 8
  %26 = getelementptr inbounds %struct.exynos_mipi_video_phy, %struct.exynos_mipi_video_phy* %25, i32 0, i32 0
  %27 = call i32 @spin_lock(i32* %26)
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %57, label %30

30:                                               ; preds = %3
  %31 = load %struct.exynos_mipi_phy_desc*, %struct.exynos_mipi_phy_desc** %4, align 8
  %32 = getelementptr inbounds %struct.exynos_mipi_phy_desc, %struct.exynos_mipi_phy_desc* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp uge i64 %33, 0
  br i1 %34, label %35, label %57

35:                                               ; preds = %30
  %36 = load %struct.exynos_mipi_video_phy*, %struct.exynos_mipi_video_phy** %5, align 8
  %37 = getelementptr inbounds %struct.exynos_mipi_video_phy, %struct.exynos_mipi_video_phy* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load %struct.exynos_mipi_phy_desc*, %struct.exynos_mipi_phy_desc** %4, align 8
  %40 = getelementptr inbounds %struct.exynos_mipi_phy_desc, %struct.exynos_mipi_phy_desc* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %35
  %49 = load %struct.regmap*, %struct.regmap** %7, align 8
  %50 = load %struct.exynos_mipi_phy_desc*, %struct.exynos_mipi_phy_desc** %4, align 8
  %51 = getelementptr inbounds %struct.exynos_mipi_phy_desc, %struct.exynos_mipi_phy_desc* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.exynos_mipi_phy_desc*, %struct.exynos_mipi_phy_desc** %4, align 8
  %54 = getelementptr inbounds %struct.exynos_mipi_phy_desc, %struct.exynos_mipi_phy_desc* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @regmap_update_bits(%struct.regmap* %49, i32 %52, i32 %55, i32 0)
  br label %57

57:                                               ; preds = %48, %35, %30, %3
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %57
  %61 = load %struct.regmap*, %struct.regmap** %8, align 8
  %62 = load %struct.exynos_mipi_phy_desc*, %struct.exynos_mipi_phy_desc** %4, align 8
  %63 = getelementptr inbounds %struct.exynos_mipi_phy_desc, %struct.exynos_mipi_phy_desc* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.exynos_mipi_phy_desc*, %struct.exynos_mipi_phy_desc** %4, align 8
  %66 = getelementptr inbounds %struct.exynos_mipi_phy_desc, %struct.exynos_mipi_phy_desc* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.exynos_mipi_phy_desc*, %struct.exynos_mipi_phy_desc** %4, align 8
  %69 = getelementptr inbounds %struct.exynos_mipi_phy_desc, %struct.exynos_mipi_phy_desc* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @regmap_update_bits(%struct.regmap* %61, i32 %64, i32 %67, i32 %70)
  br label %81

72:                                               ; preds = %57
  %73 = load %struct.regmap*, %struct.regmap** %8, align 8
  %74 = load %struct.exynos_mipi_phy_desc*, %struct.exynos_mipi_phy_desc** %4, align 8
  %75 = getelementptr inbounds %struct.exynos_mipi_phy_desc, %struct.exynos_mipi_phy_desc* %74, i32 0, i32 6
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.exynos_mipi_phy_desc*, %struct.exynos_mipi_phy_desc** %4, align 8
  %78 = getelementptr inbounds %struct.exynos_mipi_phy_desc, %struct.exynos_mipi_phy_desc* %77, i32 0, i32 5
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @regmap_update_bits(%struct.regmap* %73, i32 %76, i32 %79, i32 0)
  br label %81

81:                                               ; preds = %72, %60
  %82 = load i32, i32* %6, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %96

84:                                               ; preds = %81
  %85 = load %struct.regmap*, %struct.regmap** %7, align 8
  %86 = load %struct.exynos_mipi_phy_desc*, %struct.exynos_mipi_phy_desc** %4, align 8
  %87 = getelementptr inbounds %struct.exynos_mipi_phy_desc, %struct.exynos_mipi_phy_desc* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.exynos_mipi_phy_desc*, %struct.exynos_mipi_phy_desc** %4, align 8
  %90 = getelementptr inbounds %struct.exynos_mipi_phy_desc, %struct.exynos_mipi_phy_desc* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.exynos_mipi_phy_desc*, %struct.exynos_mipi_phy_desc** %4, align 8
  %93 = getelementptr inbounds %struct.exynos_mipi_phy_desc, %struct.exynos_mipi_phy_desc* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @regmap_update_bits(%struct.regmap* %85, i32 %88, i32 %91, i32 %94)
  br label %96

96:                                               ; preds = %84, %81
  %97 = load %struct.exynos_mipi_video_phy*, %struct.exynos_mipi_video_phy** %5, align 8
  %98 = getelementptr inbounds %struct.exynos_mipi_video_phy, %struct.exynos_mipi_video_phy* %97, i32 0, i32 0
  %99 = call i32 @spin_unlock(i32* %98)
  ret i32 0
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
