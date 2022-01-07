; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/samsung/extr_exynos_tmu.c_exynos4210_tmu_clear_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/samsung/extr_exynos_tmu.c_exynos4210_tmu_clear_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_tmu_data = type { i64, i64 }

@SOC_ARCH_EXYNOS5260 = common dso_local global i64 0, align 8
@EXYNOS5260_TMU_REG_INTSTAT = common dso_local global i64 0, align 8
@EXYNOS5260_TMU_REG_INTCLEAR = common dso_local global i64 0, align 8
@SOC_ARCH_EXYNOS7 = common dso_local global i64 0, align 8
@EXYNOS7_TMU_REG_INTPEND = common dso_local global i64 0, align 8
@SOC_ARCH_EXYNOS5433 = common dso_local global i64 0, align 8
@EXYNOS5433_TMU_REG_INTPEND = common dso_local global i64 0, align 8
@EXYNOS_TMU_REG_INTSTAT = common dso_local global i64 0, align 8
@EXYNOS_TMU_REG_INTCLEAR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exynos_tmu_data*)* @exynos4210_tmu_clear_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos4210_tmu_clear_irqs(%struct.exynos_tmu_data* %0) #0 {
  %2 = alloca %struct.exynos_tmu_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.exynos_tmu_data* %0, %struct.exynos_tmu_data** %2, align 8
  %6 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %2, align 8
  %7 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @SOC_ARCH_EXYNOS5260, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i64, i64* @EXYNOS5260_TMU_REG_INTSTAT, align 8
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* @EXYNOS5260_TMU_REG_INTCLEAR, align 8
  store i64 %13, i64* %5, align 8
  br label %37

14:                                               ; preds = %1
  %15 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %2, align 8
  %16 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SOC_ARCH_EXYNOS7, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i64, i64* @EXYNOS7_TMU_REG_INTPEND, align 8
  store i64 %21, i64* %4, align 8
  %22 = load i64, i64* @EXYNOS7_TMU_REG_INTPEND, align 8
  store i64 %22, i64* %5, align 8
  br label %36

23:                                               ; preds = %14
  %24 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %2, align 8
  %25 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SOC_ARCH_EXYNOS5433, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i64, i64* @EXYNOS5433_TMU_REG_INTPEND, align 8
  store i64 %30, i64* %4, align 8
  %31 = load i64, i64* @EXYNOS5433_TMU_REG_INTPEND, align 8
  store i64 %31, i64* %5, align 8
  br label %35

32:                                               ; preds = %23
  %33 = load i64, i64* @EXYNOS_TMU_REG_INTSTAT, align 8
  store i64 %33, i64* %4, align 8
  %34 = load i64, i64* @EXYNOS_TMU_REG_INTCLEAR, align 8
  store i64 %34, i64* %5, align 8
  br label %35

35:                                               ; preds = %32, %29
  br label %36

36:                                               ; preds = %35, %20
  br label %37

37:                                               ; preds = %36, %11
  %38 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %2, align 8
  %39 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %4, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @readl(i64 %42)
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* %3, align 4
  %45 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %2, align 8
  %46 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %5, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @writel(i32 %44, i64 %49)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
