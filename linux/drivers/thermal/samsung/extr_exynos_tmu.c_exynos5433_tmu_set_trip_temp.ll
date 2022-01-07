; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/samsung/extr_exynos_tmu.c_exynos5433_tmu_set_trip_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/samsung/extr_exynos_tmu.c_exynos5433_tmu_set_trip_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_tmu_data = type { i64 }

@EXYNOS5433_THD_TEMP_RISE7_4 = common dso_local global i32 0, align 4
@EXYNOS5433_THD_TEMP_RISE3_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exynos_tmu_data*, i32, i32)* @exynos5433_tmu_set_trip_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos5433_tmu_set_trip_temp(%struct.exynos_tmu_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.exynos_tmu_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.exynos_tmu_data* %0, %struct.exynos_tmu_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp sgt i32 %10, 3
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i32, i32* @EXYNOS5433_THD_TEMP_RISE7_4, align 4
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  %15 = sub nsw i32 %14, 4
  store i32 %15, i32* %8, align 4
  br label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EXYNOS5433_THD_TEMP_RISE3_0, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %8, align 4
  br label %19

19:                                               ; preds = %16, %12
  %20 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %21 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = zext i32 %23 to i64
  %25 = add nsw i64 %22, %24
  %26 = call i32 @readl(i64 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %8, align 4
  %28 = mul i32 %27, 8
  %29 = shl i32 255, %28
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %9, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %9, align 4
  %33 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @temp_to_code(%struct.exynos_tmu_data* %33, i32 %34)
  %36 = load i32, i32* %8, align 4
  %37 = mul i32 %36, 8
  %38 = shl i32 %35, %37
  %39 = load i32, i32* %9, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %43 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = zext i32 %45 to i64
  %47 = add nsw i64 %44, %46
  %48 = call i32 @writel(i32 %41, i64 %47)
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
