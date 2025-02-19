; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom_spmi-regulator.c_spmi_regulator_common_set_bypass.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom_spmi-regulator.c_spmi_regulator_common_set_bypass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.spmi_regulator = type { i32 }

@SPMI_COMMON_MODE_BYPASS_MASK = common dso_local global i32 0, align 4
@SPMI_COMMON_REG_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @spmi_regulator_common_set_bypass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spmi_regulator_common_set_bypass(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.spmi_regulator*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %9 = call %struct.spmi_regulator* @rdev_get_drvdata(%struct.regulator_dev* %8)
  store %struct.spmi_regulator* %9, %struct.spmi_regulator** %5, align 8
  %10 = load i32, i32* @SPMI_COMMON_MODE_BYPASS_MASK, align 4
  store i32 %10, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %7, align 4
  br label %15

15:                                               ; preds = %13, %2
  %16 = load %struct.spmi_regulator*, %struct.spmi_regulator** %5, align 8
  %17 = load i32, i32* @SPMI_COMMON_REG_MODE, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @spmi_vreg_update_bits(%struct.spmi_regulator* %16, i32 %17, i32 %18, i32 %19)
  ret i32 %20
}

declare dso_local %struct.spmi_regulator* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @spmi_vreg_update_bits(%struct.spmi_regulator*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
