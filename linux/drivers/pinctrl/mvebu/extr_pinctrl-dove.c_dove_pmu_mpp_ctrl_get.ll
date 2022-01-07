; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-dove.c_dove_pmu_mpp_ctrl_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mvebu/extr_pinctrl-dove.c_dove_pmu_mpp_ctrl_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvebu_mpp_ctrl_data = type { i64 }

@MVEBU_MPPS_PER_REG = common dso_local global i32 0, align 4
@MVEBU_MPP_BITS = common dso_local global i32 0, align 4
@PMU_MPP_GENERAL_CTRL = common dso_local global i64 0, align 8
@pmu_base = common dso_local global i64 0, align 8
@PMU_SIGNAL_SELECT_0 = common dso_local global i64 0, align 8
@MVEBU_MPP_MASK = common dso_local global i64 0, align 8
@CONFIG_PMU = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvebu_mpp_ctrl_data*, i32, i64*)* @dove_pmu_mpp_ctrl_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dove_pmu_mpp_ctrl_get(%struct.mvebu_mpp_ctrl_data* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mvebu_mpp_ctrl_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.mvebu_mpp_ctrl_data* %0, %struct.mvebu_mpp_ctrl_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @MVEBU_MPPS_PER_REG, align 4
  %14 = udiv i32 %12, %13
  %15 = load i32, i32* @MVEBU_MPP_BITS, align 4
  %16 = mul i32 %14, %15
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @MVEBU_MPPS_PER_REG, align 4
  %19 = urem i32 %17, %18
  %20 = load i32, i32* @MVEBU_MPP_BITS, align 4
  %21 = mul i32 %19, %20
  store i32 %21, i32* %9, align 4
  %22 = load %struct.mvebu_mpp_ctrl_data*, %struct.mvebu_mpp_ctrl_data** %5, align 8
  %23 = getelementptr inbounds %struct.mvebu_mpp_ctrl_data, %struct.mvebu_mpp_ctrl_data* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PMU_MPP_GENERAL_CTRL, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i64 @readl(i64 %26)
  store i64 %27, i64* %10, align 8
  %28 = load i64, i64* %10, align 8
  %29 = load i32, i32* %6, align 4
  %30 = call i64 @BIT(i32 %29)
  %31 = and i64 %28, %30
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %3
  %34 = load %struct.mvebu_mpp_ctrl_data*, %struct.mvebu_mpp_ctrl_data** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i64*, i64** %7, align 8
  %37 = call i32 @mvebu_mmio_mpp_ctrl_get(%struct.mvebu_mpp_ctrl_data* %34, i32 %35, i64* %36)
  store i32 %37, i32* %4, align 4
  br label %57

38:                                               ; preds = %3
  %39 = load i64, i64* @pmu_base, align 8
  %40 = load i64, i64* @PMU_SIGNAL_SELECT_0, align 8
  %41 = add nsw i64 %39, %40
  %42 = load i32, i32* %8, align 4
  %43 = zext i32 %42 to i64
  %44 = add nsw i64 %41, %43
  %45 = call i64 @readl(i64 %44)
  store i64 %45, i64* %11, align 8
  %46 = load i64, i64* %11, align 8
  %47 = load i32, i32* %9, align 4
  %48 = zext i32 %47 to i64
  %49 = lshr i64 %46, %48
  %50 = load i64, i64* @MVEBU_MPP_MASK, align 8
  %51 = and i64 %49, %50
  %52 = load i64*, i64** %7, align 8
  store i64 %51, i64* %52, align 8
  %53 = load i64, i64* @CONFIG_PMU, align 8
  %54 = load i64*, i64** %7, align 8
  %55 = load i64, i64* %54, align 8
  %56 = or i64 %55, %53
  store i64 %56, i64* %54, align 8
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %38, %33
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i64 @readl(i64) #1

declare dso_local i64 @BIT(i32) #1

declare dso_local i32 @mvebu_mmio_mpp_ctrl_get(%struct.mvebu_mpp_ctrl_data*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
