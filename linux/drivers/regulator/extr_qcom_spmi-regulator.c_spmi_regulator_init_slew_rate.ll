; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom_spmi-regulator.c_spmi_regulator_init_slew_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom_spmi-regulator.c_spmi_regulator_init_slew_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spmi_regulator = type { i32, i32, i32 }
%struct.spmi_voltage_range = type { i32 }

@SPMI_COMMON_REG_STEP_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"spmi read failed, ret=%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SPMI_FTSMPS_STEP_DELAY = common dso_local global i32 0, align 4
@SPMI_DEFAULT_STEP_DELAY = common dso_local global i32 0, align 4
@SPMI_FTSMPS_STEP_CTRL_STEP_MASK = common dso_local global i32 0, align 4
@SPMI_FTSMPS_STEP_CTRL_STEP_SHIFT = common dso_local global i32 0, align 4
@SPMI_FTSMPS_STEP_CTRL_DELAY_MASK = common dso_local global i32 0, align 4
@SPMI_FTSMPS_STEP_CTRL_DELAY_SHIFT = common dso_local global i32 0, align 4
@SPMI_FTSMPS_CLOCK_RATE = common dso_local global i32 0, align 4
@SPMI_FTSMPS_STEP_MARGIN_NUM = common dso_local global i32 0, align 4
@SPMI_FTSMPS_STEP_MARGIN_DEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spmi_regulator*)* @spmi_regulator_init_slew_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spmi_regulator_init_slew_rate(%struct.spmi_regulator* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spmi_regulator*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.spmi_voltage_range*, align 8
  store %struct.spmi_regulator* %0, %struct.spmi_regulator** %3, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.spmi_regulator*, %struct.spmi_regulator** %3, align 8
  %12 = load i32, i32* @SPMI_COMMON_REG_STEP_CTRL, align 4
  %13 = call i32 @spmi_vreg_read(%struct.spmi_regulator* %11, i32 %12, i32* %5, i32 1)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load %struct.spmi_regulator*, %struct.spmi_regulator** %3, align 8
  %18 = getelementptr inbounds %struct.spmi_regulator, %struct.spmi_regulator* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @dev_err(i32 %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %77

23:                                               ; preds = %1
  %24 = load %struct.spmi_regulator*, %struct.spmi_regulator** %3, align 8
  %25 = call %struct.spmi_voltage_range* @spmi_regulator_find_range(%struct.spmi_regulator* %24)
  store %struct.spmi_voltage_range* %25, %struct.spmi_voltage_range** %10, align 8
  %26 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %10, align 8
  %27 = icmp ne %struct.spmi_voltage_range* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %77

31:                                               ; preds = %23
  %32 = load %struct.spmi_regulator*, %struct.spmi_regulator** %3, align 8
  %33 = getelementptr inbounds %struct.spmi_regulator, %struct.spmi_regulator* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %37 [
    i32 128, label %35
  ]

35:                                               ; preds = %31
  %36 = load i32, i32* @SPMI_FTSMPS_STEP_DELAY, align 4
  store i32 %36, i32* %9, align 4
  br label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @SPMI_DEFAULT_STEP_DELAY, align 4
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @SPMI_FTSMPS_STEP_CTRL_STEP_MASK, align 4
  %42 = and i32 %40, %41
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* @SPMI_FTSMPS_STEP_CTRL_STEP_SHIFT, align 4
  %44 = load i32, i32* %6, align 4
  %45 = ashr i32 %44, %43
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @SPMI_FTSMPS_STEP_CTRL_DELAY_MASK, align 4
  %48 = and i32 %46, %47
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* @SPMI_FTSMPS_STEP_CTRL_DELAY_SHIFT, align 4
  %50 = load i32, i32* %7, align 4
  %51 = ashr i32 %50, %49
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* @SPMI_FTSMPS_CLOCK_RATE, align 4
  %53 = load %struct.spmi_voltage_range*, %struct.spmi_voltage_range** %10, align 8
  %54 = getelementptr inbounds %struct.spmi_voltage_range, %struct.spmi_voltage_range* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = mul nsw i32 %52, %55
  %57 = load i32, i32* %6, align 4
  %58 = shl i32 1, %57
  %59 = mul nsw i32 %56, %58
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %7, align 4
  %62 = shl i32 %60, %61
  %63 = mul nsw i32 1000, %62
  %64 = load i32, i32* %8, align 4
  %65 = sdiv i32 %64, %63
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* @SPMI_FTSMPS_STEP_MARGIN_NUM, align 4
  %67 = load i32, i32* %8, align 4
  %68 = mul nsw i32 %67, %66
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* @SPMI_FTSMPS_STEP_MARGIN_DEN, align 4
  %70 = load i32, i32* %8, align 4
  %71 = sdiv i32 %70, %69
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @max(i32 %72, i32 1)
  %74 = load %struct.spmi_regulator*, %struct.spmi_regulator** %3, align 8
  %75 = getelementptr inbounds %struct.spmi_regulator, %struct.spmi_regulator* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* %4, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %39, %28, %16
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @spmi_vreg_read(%struct.spmi_regulator*, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local %struct.spmi_voltage_range* @spmi_regulator_find_range(%struct.spmi_regulator*) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
