; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/samsung/extr_exynos_tmu.c_exynos7_tmu_set_trip_hyst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/samsung/extr_exynos_tmu.c_exynos7_tmu_set_trip_hyst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_tmu_data = type { i64 }

@EXYNOS7_THD_TEMP_FALL7_6 = common dso_local global i64 0, align 8
@EXYNOS7_TMU_TEMP_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exynos_tmu_data*, i32, i64, i64)* @exynos7_tmu_set_trip_hyst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos7_tmu_set_trip_hyst(%struct.exynos_tmu_data* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.exynos_tmu_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.exynos_tmu_data* %0, %struct.exynos_tmu_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sub nsw i32 7, %12
  %14 = sdiv i32 %13, 2
  %15 = mul nsw i32 %14, 4
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %6, align 4
  %17 = sub nsw i32 8, %16
  %18 = srem i32 %17, 2
  store i32 %18, i32* %10, align 4
  %19 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %5, align 8
  %20 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @EXYNOS7_THD_TEMP_FALL7_6, align 8
  %23 = add nsw i64 %21, %22
  %24 = load i32, i32* %9, align 4
  %25 = zext i32 %24 to i64
  %26 = add nsw i64 %23, %25
  %27 = call i32 @readl(i64 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* @EXYNOS7_TMU_TEMP_MASK, align 4
  %29 = load i32, i32* %10, align 4
  %30 = mul i32 16, %29
  %31 = shl i32 %28, %30
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %11, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %11, align 4
  %35 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %5, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* %8, align 8
  %38 = sub nsw i64 %36, %37
  %39 = call i32 @temp_to_code(%struct.exynos_tmu_data* %35, i64 %38)
  %40 = load i32, i32* %10, align 4
  %41 = mul i32 16, %40
  %42 = shl i32 %39, %41
  %43 = load i32, i32* %11, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %5, align 8
  %47 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @EXYNOS7_THD_TEMP_FALL7_6, align 8
  %50 = add nsw i64 %48, %49
  %51 = load i32, i32* %9, align 4
  %52 = zext i32 %51 to i64
  %53 = add nsw i64 %50, %52
  %54 = call i32 @writel(i32 %45, i64 %53)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @temp_to_code(%struct.exynos_tmu_data*, i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
