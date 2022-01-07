; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/samsung/extr_exynos_tmu.c_get_con_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/samsung/extr_exynos_tmu.c_get_con_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_tmu_data = type { i64, i32, i32 }

@SOC_ARCH_EXYNOS4412 = common dso_local global i64 0, align 8
@SOC_ARCH_EXYNOS3250 = common dso_local global i64 0, align 8
@EXYNOS4412_MUX_ADDR_VALUE = common dso_local global i32 0, align 4
@EXYNOS4412_MUX_ADDR_SHIFT = common dso_local global i32 0, align 4
@EXYNOS_TMU_REF_VOLTAGE_MASK = common dso_local global i32 0, align 4
@EXYNOS_TMU_REF_VOLTAGE_SHIFT = common dso_local global i32 0, align 4
@EXYNOS_TMU_BUF_SLOPE_SEL_MASK = common dso_local global i32 0, align 4
@EXYNOS_TMU_BUF_SLOPE_SEL_SHIFT = common dso_local global i32 0, align 4
@EXYNOS_TMU_TRIP_MODE_MASK = common dso_local global i32 0, align 4
@EXYNOS_TMU_TRIP_MODE_SHIFT = common dso_local global i32 0, align 4
@EXYNOS_NOISE_CANCEL_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.exynos_tmu_data*, i32)* @get_con_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_con_reg(%struct.exynos_tmu_data* %0, i32 %1) #0 {
  %3 = alloca %struct.exynos_tmu_data*, align 8
  %4 = alloca i32, align 4
  store %struct.exynos_tmu_data* %0, %struct.exynos_tmu_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %3, align 8
  %6 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @SOC_ARCH_EXYNOS4412, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %3, align 8
  %12 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SOC_ARCH_EXYNOS3250, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %10, %2
  %17 = load i32, i32* @EXYNOS4412_MUX_ADDR_VALUE, align 4
  %18 = load i32, i32* @EXYNOS4412_MUX_ADDR_SHIFT, align 4
  %19 = shl i32 %17, %18
  %20 = load i32, i32* %4, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %16, %10
  %23 = load i32, i32* @EXYNOS_TMU_REF_VOLTAGE_MASK, align 4
  %24 = load i32, i32* @EXYNOS_TMU_REF_VOLTAGE_SHIFT, align 4
  %25 = shl i32 %23, %24
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %4, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %4, align 4
  %29 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %3, align 8
  %30 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @EXYNOS_TMU_REF_VOLTAGE_SHIFT, align 4
  %33 = shl i32 %31, %32
  %34 = load i32, i32* %4, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* @EXYNOS_TMU_BUF_SLOPE_SEL_MASK, align 4
  %37 = load i32, i32* @EXYNOS_TMU_BUF_SLOPE_SEL_SHIFT, align 4
  %38 = shl i32 %36, %37
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %4, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %4, align 4
  %42 = load %struct.exynos_tmu_data*, %struct.exynos_tmu_data** %3, align 8
  %43 = getelementptr inbounds %struct.exynos_tmu_data, %struct.exynos_tmu_data* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @EXYNOS_TMU_BUF_SLOPE_SEL_SHIFT, align 4
  %46 = shl i32 %44, %45
  %47 = load i32, i32* %4, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* @EXYNOS_TMU_TRIP_MODE_MASK, align 4
  %50 = load i32, i32* @EXYNOS_TMU_TRIP_MODE_SHIFT, align 4
  %51 = shl i32 %49, %50
  %52 = xor i32 %51, -1
  %53 = load i32, i32* %4, align 4
  %54 = and i32 %53, %52
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* @EXYNOS_NOISE_CANCEL_MODE, align 4
  %56 = load i32, i32* @EXYNOS_TMU_TRIP_MODE_SHIFT, align 4
  %57 = shl i32 %55, %56
  %58 = load i32, i32* %4, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
