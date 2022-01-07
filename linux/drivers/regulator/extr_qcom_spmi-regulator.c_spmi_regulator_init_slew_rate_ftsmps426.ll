; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom_spmi-regulator.c_spmi_regulator_init_slew_rate_ftsmps426.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom_spmi-regulator.c_spmi_regulator_init_slew_rate_ftsmps426.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spmi_regulator = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.spmi_voltage_range* }
%struct.spmi_voltage_range = type { i32 }

@SPMI_COMMON_REG_STEP_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"spmi read failed, ret=%d\0A\00", align 1
@SPMI_FTSMPS426_STEP_CTRL_DELAY_MASK = common dso_local global i32 0, align 4
@SPMI_FTSMPS426_STEP_CTRL_DELAY_SHIFT = common dso_local global i32 0, align 4
@SPMI_FTSMPS426_STEP_DELAY = common dso_local global i32 0, align 4
@SPMI_FTSMPS426_STEP_MARGIN_NUM = common dso_local global i32 0, align 4
@SPMI_FTSMPS426_STEP_MARGIN_DEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spmi_regulator*, i32)* @spmi_regulator_init_slew_rate_ftsmps426 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spmi_regulator_init_slew_rate_ftsmps426(%struct.spmi_regulator* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spmi_regulator*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.spmi_voltage_range*, align 8
  store %struct.spmi_regulator* %0, %struct.spmi_regulator** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %11 = load %struct.spmi_regulator*, %struct.spmi_regulator** %4, align 8
  %12 = getelementptr inbounds %struct.spmi_regulator, %struct.spmi_regulator* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %14, align 8
  %16 = getelementptr inbounds %struct.spmi_voltage_range, %struct.spmi_voltage_range* %15, i64 0
  store %struct.spmi_voltage_range* %16, %struct.spmi_voltage_range** %10, align 8
  %17 = load %struct.spmi_regulator*, %struct.spmi_regulator** %4, align 8
  %18 = load i32, i32* @SPMI_COMMON_REG_STEP_CTRL, align 4
  %19 = call i32 @spmi_vreg_read(%struct.spmi_regulator* %17, i32 %18, i32* %7, i32 1)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load %struct.spmi_regulator*, %struct.spmi_regulator** %4, align 8
  %24 = getelementptr inbounds %struct.spmi_regulator, %struct.spmi_regulator* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %58

29:                                               ; preds = %2
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @SPMI_FTSMPS426_STEP_CTRL_DELAY_MASK, align 4
  %32 = and i32 %30, %31
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* @SPMI_FTSMPS426_STEP_CTRL_DELAY_SHIFT, align 4
  %34 = load i32, i32* %8, align 4
  %35 = ashr i32 %34, %33
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %10, align 8
  %38 = getelementptr inbounds %struct.spmi_voltage_range, %struct.spmi_voltage_range* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %36, %39
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* @SPMI_FTSMPS426_STEP_DELAY, align 4
  %42 = load i32, i32* %8, align 4
  %43 = shl i32 %41, %42
  %44 = mul nsw i32 1000, %43
  %45 = load i32, i32* %9, align 4
  %46 = sdiv i32 %45, %44
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* @SPMI_FTSMPS426_STEP_MARGIN_NUM, align 4
  %48 = load i32, i32* %9, align 4
  %49 = mul nsw i32 %48, %47
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* @SPMI_FTSMPS426_STEP_MARGIN_DEN, align 4
  %51 = load i32, i32* %9, align 4
  %52 = sdiv i32 %51, %50
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @max(i32 %53, i32 1)
  %55 = load %struct.spmi_regulator*, %struct.spmi_regulator** %4, align 8
  %56 = getelementptr inbounds %struct.spmi_regulator, %struct.spmi_regulator* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %29, %22
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @spmi_vreg_read(%struct.spmi_regulator*, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
