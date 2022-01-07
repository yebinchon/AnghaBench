; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/samsung/extr_exynos_tmu.c_exynos7_tmu_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/samsung/extr_exynos_tmu.c_exynos7_tmu_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.exynos_tmu_data = type { i32, i64, %struct.thermal_zone_device* }
%struct.thermal_zone_device = type { i32 }

@EXYNOS_TMU_REG_CONTROL = common dso_local global i64 0, align 8
@EXYNOS7_TMU_INTEN_RISE0_SHIFT = common dso_local global i32 0, align 4
@EXYNOS_TMU_INTEN_FALL0_SHIFT = common dso_local global i32 0, align 4
@EXYNOS_TMU_CORE_EN_SHIFT = common dso_local global i32 0, align 4
@EXYNOS7_PD_DET_EN_SHIFT = common dso_local global i32 0, align 4
@EXYNOS7_TMU_REG_INTEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*, i32)* @exynos7_tmu_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos7_tmu_control(%struct.platform_device* %0, i32 %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.exynos_tmu_data*, align 8
  %6 = alloca %struct.thermal_zone_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = call %struct.exynos_tmu_data* @platform_get_drvdata(%struct.platform_device* %10)
  store %struct.exynos_tmu_data* %11, %struct.exynos_tmu_data** %5, align 8
  %12 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %5, align 8
  %13 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %12, i32 0, i32 2
  %14 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %13, align 8
  store %struct.thermal_zone_device* %14, %struct.thermal_zone_device** %6, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %5, align 8
  %16 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %5, align 8
  %17 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @EXYNOS_TMU_REG_CONTROL, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @readl(i64 %20)
  %22 = call i32 @get_con_reg(%struct.exynos_tmu_data* %15, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %62

25:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %45, %25
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %5, align 8
  %29 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ult i32 %27, %30
  br i1 %31, label %32, label %48

32:                                               ; preds = %26
  %33 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %6, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @of_thermal_is_trip_valid(%struct.thermal_zone_device* %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  br label %45

38:                                               ; preds = %32
  %39 = load i32, i32* @EXYNOS7_TMU_INTEN_RISE0_SHIFT, align 4
  %40 = load i32, i32* %9, align 4
  %41 = add i32 %39, %40
  %42 = shl i32 1, %41
  %43 = load i32, i32* %8, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %38, %37
  %46 = load i32, i32* %9, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %9, align 4
  br label %26

48:                                               ; preds = %26
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @EXYNOS_TMU_INTEN_FALL0_SHIFT, align 4
  %51 = shl i32 %49, %50
  %52 = load i32, i32* %8, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* @EXYNOS_TMU_CORE_EN_SHIFT, align 4
  %55 = shl i32 1, %54
  %56 = load i32, i32* %7, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* @EXYNOS7_PD_DET_EN_SHIFT, align 4
  %59 = shl i32 1, %58
  %60 = load i32, i32* %7, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %7, align 4
  br label %73

62:                                               ; preds = %2
  %63 = load i32, i32* @EXYNOS_TMU_CORE_EN_SHIFT, align 4
  %64 = shl i32 1, %63
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %7, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* @EXYNOS7_PD_DET_EN_SHIFT, align 4
  %69 = shl i32 1, %68
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %7, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %62, %48
  %74 = load i32, i32* %8, align 4
  %75 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %5, align 8
  %76 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @EXYNOS7_TMU_REG_INTEN, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @writel(i32 %74, i64 %79)
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %5, align 8
  %83 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @EXYNOS_TMU_REG_CONTROL, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @writel(i32 %81, i64 %86)
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
