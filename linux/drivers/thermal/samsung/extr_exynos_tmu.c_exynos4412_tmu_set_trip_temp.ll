; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/samsung/extr_exynos_tmu.c_exynos4412_tmu_set_trip_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/samsung/extr_exynos_tmu.c_exynos4412_tmu_set_trip_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_tmu_data = type { i64 }

@EXYNOS_THD_TEMP_RISE = common dso_local global i64 0, align 8
@EXYNOS_TMU_REG_CONTROL = common dso_local global i64 0, align 8
@EXYNOS_TMU_THERM_TRIP_EN_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exynos_tmu_data*, i32, i32)* @exynos4412_tmu_set_trip_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos4412_tmu_set_trip_temp(%struct.exynos_tmu_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.exynos_tmu_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.exynos_tmu_data* %0, %struct.exynos_tmu_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %10 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @EXYNOS_THD_TEMP_RISE, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @readl(i64 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = mul nsw i32 8, %15
  %17 = shl i32 255, %16
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %7, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %7, align 4
  %21 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @temp_to_code(%struct.exynos_tmu_data* %21, i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = mul nsw i32 8, %24
  %26 = shl i32 %23, %25
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %31 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @EXYNOS_THD_TEMP_RISE, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writel(i32 %29, i64 %34)
  %36 = load i32, i32* %5, align 4
  %37 = icmp eq i32 %36, 3
  br i1 %37, label %38, label %56

38:                                               ; preds = %3
  %39 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %40 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @EXYNOS_TMU_REG_CONTROL, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @readl(i64 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* @EXYNOS_TMU_THERM_TRIP_EN_SHIFT, align 4
  %46 = shl i32 1, %45
  %47 = load i32, i32* %8, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %51 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @EXYNOS_TMU_REG_CONTROL, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @writel(i32 %49, i64 %54)
  br label %56

56:                                               ; preds = %38, %3
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @temp_to_code(%struct.exynos_tmu_data*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
