; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/samsung/extr_exynos_tmu.c_exynos5433_tmu_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/samsung/extr_exynos_tmu.c_exynos5433_tmu_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.exynos_tmu_data = type { i32, i64 }

@EXYNOS_TMU_REG_TRIMINFO = common dso_local global i64 0, align 8
@EXYNOS5433_TRIMINFO_SENSOR_ID_MASK = common dso_local global i32 0, align 4
@EXYNOS5433_TRIMINFO_SENSOR_ID_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Temperature sensor ID: 0x%x\0A\00", align 1
@EXYNOS5433_TRIMINFO_CALIB_SEL_MASK = common dso_local global i32 0, align 4
@EXYNOS5433_TRIMINFO_CALIB_SEL_SHIFT = common dso_local global i32 0, align 4
@TYPE_TWO_POINT_TRIMMING = common dso_local global i32 0, align 4
@TYPE_ONE_POINT_TRIMMING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"Calibration type is %d-point calibration\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*)* @exynos5433_tmu_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos5433_tmu_initialize(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.exynos_tmu_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = call %struct.exynos_tmu_data* @platform_get_drvdata(%struct.platform_device* %7)
  store %struct.exynos_tmu_data* %8, %struct.exynos_tmu_data** %3, align 8
  %9 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %3, align 8
  %10 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @EXYNOS_TMU_REG_TRIMINFO, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @readl(i64 %13)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @sanitize_temp_error(%struct.exynos_tmu_data* %15, i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @EXYNOS5433_TRIMINFO_SENSOR_ID_MASK, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @EXYNOS5433_TRIMINFO_SENSOR_ID_SHIFT, align 4
  %22 = lshr i32 %20, %21
  store i32 %22, i32* %5, align 4
  %23 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @dev_info(i32* %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %4, align 4
  %28 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %3, align 8
  %29 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @EXYNOS_TMU_REG_TRIMINFO, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @writel(i32 %27, i64 %32)
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @EXYNOS5433_TRIMINFO_CALIB_SEL_MASK, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* @EXYNOS5433_TRIMINFO_CALIB_SEL_SHIFT, align 4
  %38 = lshr i32 %36, %37
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  switch i32 %39, label %45 [
    i32 128, label %40
    i32 129, label %44
  ]

40:                                               ; preds = %1
  %41 = load i32, i32* @TYPE_TWO_POINT_TRIMMING, align 4
  %42 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %3, align 8
  %43 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  br label %49

44:                                               ; preds = %1
  br label %45

45:                                               ; preds = %1, %44
  %46 = load i32, i32* @TYPE_ONE_POINT_TRIMMING, align 4
  %47 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %3, align 8
  %48 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  br label %49

49:                                               ; preds = %45, %40
  %50 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %51 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %50, i32 0, i32 0
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 2, i32 1
  %56 = call i32 @dev_info(i32* %51, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  ret void
}

declare dso_local %struct.exynos_tmu_data* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @sanitize_temp_error(%struct.exynos_tmu_data*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
