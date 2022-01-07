; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/samsung/extr_exynos_tmu.c_exynos5433_tmu_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/samsung/extr_exynos_tmu.c_exynos5433_tmu_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.exynos_tmu_data = type { i32, i64, %struct.thermal_zone_device* }
%struct.thermal_zone_device = type { i32 }

@EXYNOS_TMU_REG_CONTROL = common dso_local global i64 0, align 8
@EXYNOS7_TMU_INTEN_RISE0_SHIFT = common dso_local global i32 0, align 4
@EXYNOS_TMU_INTEN_FALL0_SHIFT = common dso_local global i32 0, align 4
@EXYNOS_TMU_CORE_EN_SHIFT = common dso_local global i32 0, align 4
@EXYNOS5433_PD_DET_EN = common dso_local global i32 0, align 4
@EXYNOS5433_TMU_PD_DET_EN = common dso_local global i64 0, align 8
@EXYNOS5433_TMU_REG_INTEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*, i32)* @exynos5433_tmu_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos5433_tmu_control(%struct.platform_device* %0, i32 %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.exynos_tmu_data*, align 8
  %6 = alloca %struct.thermal_zone_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = call %struct.exynos_tmu_data* @platform_get_drvdata(%struct.platform_device* %11)
  store %struct.exynos_tmu_data* %12, %struct.exynos_tmu_data** %5, align 8
  %13 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %5, align 8
  %14 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %13, i32 0, i32 2
  %15 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %14, align 8
  store %struct.thermal_zone_device* %15, %struct.thermal_zone_device** %6, align 8
  store i32 0, i32* %8, align 4
  %16 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %5, align 8
  %17 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %5, align 8
  %18 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @EXYNOS_TMU_REG_CONTROL, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @readl(i64 %21)
  %23 = call i32 @get_con_reg(%struct.exynos_tmu_data* %16, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %59

26:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  br label %27

27:                                               ; preds = %46, %26
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %5, align 8
  %30 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ult i32 %28, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %27
  %34 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %6, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @of_thermal_is_trip_valid(%struct.thermal_zone_device* %34, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %33
  br label %46

39:                                               ; preds = %33
  %40 = load i32, i32* @EXYNOS7_TMU_INTEN_RISE0_SHIFT, align 4
  %41 = load i32, i32* %10, align 4
  %42 = add i32 %40, %41
  %43 = shl i32 1, %42
  %44 = load i32, i32* %8, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %39, %38
  %47 = load i32, i32* %10, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %10, align 4
  br label %27

49:                                               ; preds = %27
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @EXYNOS_TMU_INTEN_FALL0_SHIFT, align 4
  %52 = shl i32 %50, %51
  %53 = load i32, i32* %8, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* @EXYNOS_TMU_CORE_EN_SHIFT, align 4
  %56 = shl i32 1, %55
  %57 = load i32, i32* %7, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %7, align 4
  br label %65

59:                                               ; preds = %2
  %60 = load i32, i32* @EXYNOS_TMU_CORE_EN_SHIFT, align 4
  %61 = shl i32 1, %60
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %7, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %59, %49
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = load i32, i32* @EXYNOS5433_PD_DET_EN, align 4
  br label %71

70:                                               ; preds = %65
  br label %71

71:                                               ; preds = %70, %68
  %72 = phi i32 [ %69, %68 ], [ 0, %70 ]
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %5, align 8
  %75 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @EXYNOS5433_TMU_PD_DET_EN, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @writel(i32 %73, i64 %78)
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %5, align 8
  %82 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @EXYNOS5433_TMU_REG_INTEN, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @writel(i32 %80, i64 %85)
  %87 = load i32, i32* %7, align 4
  %88 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %5, align 8
  %89 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @EXYNOS_TMU_REG_CONTROL, align 8
  %92 = add nsw i64 %90, %91
  %93 = call i32 @writel(i32 %87, i64 %92)
  ret void
}

declare dso_local %struct.exynos_tmu_data* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @get_con_reg(%struct.exynos_tmu_data*, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @of_thermal_is_trip_valid(%struct.thermal_zone_device*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
