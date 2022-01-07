; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom_spmi-regulator.c_spmi_regulator_vs_clear_ocp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom_spmi-regulator.c_spmi_regulator_vs_clear_ocp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spmi_regulator = type { i32 }

@SPMI_COMMON_REG_ENABLE = common dso_local global i32 0, align 4
@SPMI_COMMON_DISABLE = common dso_local global i32 0, align 4
@SPMI_COMMON_ENABLE_MASK = common dso_local global i32 0, align 4
@SPMI_COMMON_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spmi_regulator*)* @spmi_regulator_vs_clear_ocp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spmi_regulator_vs_clear_ocp(%struct.spmi_regulator* %0) #0 {
  %2 = alloca %struct.spmi_regulator*, align 8
  %3 = alloca i32, align 4
  store %struct.spmi_regulator* %0, %struct.spmi_regulator** %2, align 8
  %4 = load %struct.spmi_regulator*, %struct.spmi_regulator** %2, align 8
  %5 = load i32, i32* @SPMI_COMMON_REG_ENABLE, align 4
  %6 = load i32, i32* @SPMI_COMMON_DISABLE, align 4
  %7 = load i32, i32* @SPMI_COMMON_ENABLE_MASK, align 4
  %8 = call i32 @spmi_vreg_update_bits(%struct.spmi_regulator* %4, i32 %5, i32 %6, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = call i32 (...) @ktime_get()
  %10 = load %struct.spmi_regulator*, %struct.spmi_regulator** %2, align 8
  %11 = getelementptr inbounds %struct.spmi_regulator, %struct.spmi_regulator* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load %struct.spmi_regulator*, %struct.spmi_regulator** %2, align 8
  %13 = load i32, i32* @SPMI_COMMON_REG_ENABLE, align 4
  %14 = load i32, i32* @SPMI_COMMON_ENABLE, align 4
  %15 = load i32, i32* @SPMI_COMMON_ENABLE_MASK, align 4
  %16 = call i32 @spmi_vreg_update_bits(%struct.spmi_regulator* %12, i32 %13, i32 %14, i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  ret i32 %17
}

declare dso_local i32 @spmi_vreg_update_bits(%struct.spmi_regulator*, i32, i32, i32) #1

declare dso_local i32 @ktime_get(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
