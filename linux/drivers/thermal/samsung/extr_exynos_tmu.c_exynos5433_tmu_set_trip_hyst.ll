; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/samsung/extr_exynos_tmu.c_exynos5433_tmu_set_trip_hyst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/samsung/extr_exynos_tmu.c_exynos5433_tmu_set_trip_hyst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_tmu_data = type { i64 }

@EXYNOS5433_THD_TEMP_FALL7_4 = common dso_local global i32 0, align 4
@EXYNOS5433_THD_TEMP_FALL3_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exynos_tmu_data*, i32, i64, i64)* @exynos5433_tmu_set_trip_hyst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos5433_tmu_set_trip_hyst(%struct.exynos_tmu_data* %0, i32 %1, i64 %2, i64 %3) #0 {
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
  %13 = icmp sgt i32 %12, 3
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load i32, i32* @EXYNOS5433_THD_TEMP_FALL7_4, align 4
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %6, align 4
  %17 = sub nsw i32 %16, 4
  store i32 %17, i32* %10, align 4
  br label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @EXYNOS5433_THD_TEMP_FALL3_0, align 4
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %10, align 4
  br label %21

21:                                               ; preds = %18, %14
  %22 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %5, align 8
  %23 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = zext i32 %25 to i64
  %27 = add nsw i64 %24, %26
  %28 = call i32 @readl(i64 %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %10, align 4
  %30 = mul i32 %29, 8
  %31 = shl i32 255, %30
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
  %41 = mul i32 %40, 8
  %42 = shl i32 %39, %41
  %43 = load i32, i32* %11, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %5, align 8
  %47 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = zext i32 %49 to i64
  %51 = add nsw i64 %48, %50
  %52 = call i32 @writel(i32 %45, i64 %51)
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
