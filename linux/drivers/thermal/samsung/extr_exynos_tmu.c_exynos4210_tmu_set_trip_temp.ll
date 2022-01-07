; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/samsung/extr_exynos_tmu.c_exynos4210_tmu_set_trip_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/samsung/extr_exynos_tmu.c_exynos4210_tmu_set_trip_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_tmu_data = type { i64, i32 }
%struct.thermal_trip = type { i32 }

@MCELSIUS = common dso_local global i32 0, align 4
@EXYNOS4210_TMU_REG_THRESHOLD_TEMP = common dso_local global i64 0, align 8
@EXYNOS4210_TMU_REG_TRIG_LEVEL0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exynos_tmu_data*, i32, i32)* @exynos4210_tmu_set_trip_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos4210_tmu_set_trip_temp(%struct.exynos_tmu_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.exynos_tmu_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.thermal_trip*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.exynos_tmu_data* %0, %struct.exynos_tmu_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %11 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.thermal_trip* @of_thermal_get_trip_points(i32 %12)
  store %struct.thermal_trip* %13, %struct.thermal_trip** %7, align 8
  %14 = load %struct.thermal_trip*, %struct.thermal_trip** %7, align 8
  %15 = getelementptr inbounds %struct.thermal_trip, %struct.thermal_trip* %14, i64 0
  %16 = getelementptr inbounds %struct.thermal_trip, %struct.thermal_trip* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @MCELSIUS, align 4
  %19 = sdiv i32 %17, %18
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %3
  %23 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @temp_to_code(%struct.exynos_tmu_data* %23, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %28 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @EXYNOS4210_TMU_REG_THRESHOLD_TEMP, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writeb(i32 %26, i64 %31)
  br label %33

33:                                               ; preds = %22, %3
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %6, align 4
  %36 = sub nsw i32 %35, %34
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %39 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @EXYNOS4210_TMU_REG_TRIG_LEVEL0, align 8
  %42 = add nsw i64 %40, %41
  %43 = load i32, i32* %5, align 4
  %44 = mul nsw i32 %43, 4
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %42, %45
  %47 = call i32 @writeb(i32 %37, i64 %46)
  ret void
}

declare dso_local %struct.thermal_trip* @of_thermal_get_trip_points(i32) #1

declare dso_local i32 @temp_to_code(%struct.exynos_tmu_data*, i32) #1

declare dso_local i32 @writeb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
