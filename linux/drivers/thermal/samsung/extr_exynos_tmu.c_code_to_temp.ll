; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/samsung/extr_exynos_tmu.c_code_to_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/samsung/extr_exynos_tmu.c_code_to_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_tmu_data = type { i64, i32, i32 }

@TYPE_ONE_POINT_TRIMMING = common dso_local global i64 0, align 8
@EXYNOS_FIRST_POINT_TRIM = common dso_local global i32 0, align 4
@EXYNOS_SECOND_POINT_TRIM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.exynos_tmu_data*, i32)* @code_to_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @code_to_temp(%struct.exynos_tmu_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.exynos_tmu_data*, align 8
  %5 = alloca i32, align 4
  store %struct.exynos_tmu_data* %0, %struct.exynos_tmu_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %7 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @TYPE_ONE_POINT_TRIMMING, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %14 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = sub nsw i32 %12, %15
  %17 = load i32, i32* @EXYNOS_FIRST_POINT_TRIM, align 4
  %18 = add nsw i32 %16, %17
  store i32 %18, i32* %3, align 4
  br label %39

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %22 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = sub nsw i32 %20, %23
  %25 = load i32, i32* @EXYNOS_SECOND_POINT_TRIM, align 4
  %26 = load i32, i32* @EXYNOS_FIRST_POINT_TRIM, align 4
  %27 = sub nsw i32 %25, %26
  %28 = mul nsw i32 %24, %27
  %29 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %30 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %4, align 8
  %33 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = sub nsw i32 %31, %34
  %36 = sdiv i32 %28, %35
  %37 = load i32, i32* @EXYNOS_FIRST_POINT_TRIM, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %19, %11
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
