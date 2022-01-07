; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_twl6030-regulator.c_twl6030ldo_get_voltage_sel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_twl6030-regulator.c_twl6030ldo_get_voltage_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.twlreg_info = type { i32 }

@TWL_MODULE_PM_RECEIVER = common dso_local global i32 0, align 4
@VREG_VOLTAGE = common dso_local global i32 0, align 4
@TWL_6030_WARM_RESET = common dso_local global i32 0, align 4
@TWL6030_VREG_VOLTAGE_WR_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @twl6030ldo_get_voltage_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl6030ldo_get_voltage_sel(%struct.regulator_dev* %0) #0 {
  %2 = alloca %struct.regulator_dev*, align 8
  %3 = alloca %struct.twlreg_info*, align 8
  %4 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %2, align 8
  %5 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %6 = call %struct.twlreg_info* @rdev_get_drvdata(%struct.regulator_dev* %5)
  store %struct.twlreg_info* %6, %struct.twlreg_info** %3, align 8
  %7 = load %struct.twlreg_info*, %struct.twlreg_info** %3, align 8
  %8 = load i32, i32* @TWL_MODULE_PM_RECEIVER, align 4
  %9 = load i32, i32* @VREG_VOLTAGE, align 4
  %10 = call i32 @twlreg_read(%struct.twlreg_info* %7, i32 %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.twlreg_info*, %struct.twlreg_info** %3, align 8
  %12 = getelementptr inbounds %struct.twlreg_info, %struct.twlreg_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @TWL_6030_WARM_RESET, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load i32, i32* @TWL6030_VREG_VOLTAGE_WR_S, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %17, %1
  %23 = load i32, i32* %4, align 4
  ret i32 %23
}

declare dso_local %struct.twlreg_info* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @twlreg_read(%struct.twlreg_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
