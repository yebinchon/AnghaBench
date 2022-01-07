; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/samsung/extr_exynos_tmu.c_exynos4412_tmu_set_trip_hyst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/samsung/extr_exynos_tmu.c_exynos4412_tmu_set_trip_hyst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_tmu_data = type { i64 }

@EXYNOS_THD_TEMP_FALL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exynos_tmu_data*, i32, i64, i64)* @exynos4412_tmu_set_trip_hyst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos4412_tmu_set_trip_hyst(%struct.exynos_tmu_data* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.exynos_tmu_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.exynos_tmu_data* %0, %struct.exynos_tmu_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %5, align 8
  %11 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @EXYNOS_THD_TEMP_FALL, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @readl(i64 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %6, align 4
  %17 = mul nsw i32 8, %16
  %18 = shl i32 255, %17
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %9, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %9, align 4
  %22 = load i64, i64* %8, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %4
  %25 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %5, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* %8, align 8
  %28 = sub nsw i64 %26, %27
  %29 = call i32 @temp_to_code(%struct.exynos_tmu_data* %25, i64 %28)
  %30 = load i32, i32* %6, align 4
  %31 = mul nsw i32 8, %30
  %32 = shl i32 %29, %31
  %33 = load i32, i32* %9, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %24, %4
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %5, align 8
  %38 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @EXYNOS_THD_TEMP_FALL, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @writel(i32 %36, i64 %41)
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
