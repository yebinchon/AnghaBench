; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom_spmi-regulator.c_spmi_regulator_single_range_set_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom_spmi-regulator.c_spmi_regulator_single_range_set_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.spmi_regulator = type { i32 }

@SPMI_COMMON_REG_VOLTAGE_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @spmi_regulator_single_range_set_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spmi_regulator_single_range_set_voltage(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.spmi_regulator*, align 8
  %6 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %8 = call %struct.spmi_regulator* @rdev_get_drvdata(%struct.regulator_dev* %7)
  store %struct.spmi_regulator* %8, %struct.spmi_regulator** %5, align 8
  %9 = load i32, i32* %4, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.spmi_regulator*, %struct.spmi_regulator** %5, align 8
  %11 = load i32, i32* @SPMI_COMMON_REG_VOLTAGE_SET, align 4
  %12 = call i32 @spmi_vreg_write(%struct.spmi_regulator* %10, i32 %11, i32* %6, i32 1)
  ret i32 %12
}

declare dso_local %struct.spmi_regulator* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @spmi_vreg_write(%struct.spmi_regulator*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
