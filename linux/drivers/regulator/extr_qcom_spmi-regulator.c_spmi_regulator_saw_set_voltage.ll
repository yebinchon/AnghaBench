; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom_spmi-regulator.c_spmi_regulator_saw_set_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom_spmi-regulator.c_spmi_regulator_saw_set_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.spmi_regulator = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"range_sel = %02X voltage_sel = %02X\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@spmi_saw_set_vdd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @spmi_regulator_saw_set_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spmi_regulator_saw_set_voltage(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.spmi_regulator*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %11 = call %struct.spmi_regulator* @rdev_get_drvdata(%struct.regulator_dev* %10)
  store %struct.spmi_regulator* %11, %struct.spmi_regulator** %6, align 8
  %12 = load %struct.spmi_regulator*, %struct.spmi_regulator** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @spmi_sw_selector_to_hw(%struct.spmi_regulator* %12, i32 %13, i64* %8, i64* %9)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  store i32 %18, i32* %3, align 4
  br label %33

19:                                               ; preds = %2
  %20 = load i64, i64* %8, align 8
  %21 = icmp ne i64 0, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %19
  %23 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %24 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %23, i32 0, i32 0
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* %9, align 8
  %27 = call i32 @dev_dbg(i32* %24, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %25, i64 %26)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %33

30:                                               ; preds = %19
  %31 = load i32, i32* @spmi_saw_set_vdd, align 4
  %32 = call i32 @smp_call_function_single(i32 0, i32 %31, i64* %9, i32 1)
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %30, %22, %17
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.spmi_regulator* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @spmi_sw_selector_to_hw(%struct.spmi_regulator*, i32, i64*, i64*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64, i64) #1

declare dso_local i32 @smp_call_function_single(i32, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
