; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/samsung/extr_exynos_tmu.c_exynos4210_tmu_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/samsung/extr_exynos_tmu.c_exynos4210_tmu_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.exynos_tmu_data = type { i32, i64, i64, %struct.thermal_zone_device* }
%struct.thermal_zone_device = type { i32 }

@EXYNOS_TMU_REG_CONTROL = common dso_local global i64 0, align 8
@EXYNOS_TMU_INTEN_RISE0_SHIFT = common dso_local global i32 0, align 4
@SOC_ARCH_EXYNOS4210 = common dso_local global i64 0, align 8
@EXYNOS_TMU_INTEN_FALL0_SHIFT = common dso_local global i32 0, align 4
@EXYNOS_TMU_CORE_EN_SHIFT = common dso_local global i32 0, align 4
@EXYNOS_TMU_REG_INTEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*, i32)* @exynos4210_tmu_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos4210_tmu_control(%struct.platform_device* %0, i32 %1) #0 {
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
  %13 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %12, i32 0, i32 3
  %14 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %13, align 8
  store %struct.thermal_zone_device* %14, %struct.thermal_zone_device** %6, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %5, align 8
  %16 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %5, align 8
  %17 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @EXYNOS_TMU_REG_CONTROL, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @readl(i64 %20)
  %22 = call i32 @get_con_reg(%struct.exynos_tmu_data* %15, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %66

25:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %26

26:                                               ; preds = %46, %25
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %5, align 8
  %29 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ult i32 %27, %30
  br i1 %31, label %32, label %49

32:                                               ; preds = %26
  %33 = load %struct.thermal_zone_device*, %struct.thermal_zone_device** %6, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @of_thermal_is_trip_valid(%struct.thermal_zone_device* %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  br label %46

38:                                               ; preds = %32
  %39 = load i32, i32* @EXYNOS_TMU_INTEN_RISE0_SHIFT, align 4
  %40 = load i32, i32* %9, align 4
  %41 = mul i32 %40, 4
  %42 = add i32 %39, %41
  %43 = shl i32 1, %42
  %44 = load i32, i32* %8, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %38, %37
  %47 = load i32, i32* %9, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %9, align 4
  br label %26

49:                                               ; preds = %26
  %50 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %5, align 8
  %51 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @SOC_ARCH_EXYNOS4210, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @EXYNOS_TMU_INTEN_FALL0_SHIFT, align 4
  %58 = shl i32 %56, %57
  %59 = load i32, i32* %8, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %55, %49
  %62 = load i32, i32* @EXYNOS_TMU_CORE_EN_SHIFT, align 4
  %63 = shl i32 1, %62
  %64 = load i32, i32* %7, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %7, align 4
  br label %72

66:                                               ; preds = %2
  %67 = load i32, i32* @EXYNOS_TMU_CORE_EN_SHIFT, align 4
  %68 = shl i32 1, %67
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %7, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %66, %61
  %73 = load i32, i32* %8, align 4
  %74 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %5, align 8
  %75 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @EXYNOS_TMU_REG_INTEN, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @writel(i32 %73, i64 %78)
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %5, align 8
  %82 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @EXYNOS_TMU_REG_CONTROL, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @writel(i32 %80, i64 %85)
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
