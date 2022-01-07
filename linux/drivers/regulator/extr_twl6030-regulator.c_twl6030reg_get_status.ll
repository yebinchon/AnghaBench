; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_twl6030-regulator.c_twl6030reg_get_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_twl6030-regulator.c_twl6030reg_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.twlreg_info = type { i32 }

@TWL_MODULE_PM_RECEIVER = common dso_local global i32 0, align 4
@VREG_STATE = common dso_local global i32 0, align 4
@REGULATOR_STATUS_NORMAL = common dso_local global i32 0, align 4
@REGULATOR_STATUS_STANDBY = common dso_local global i32 0, align 4
@REGULATOR_STATUS_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @twl6030reg_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl6030reg_get_status(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.twlreg_info*, align 8
  %5 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %6 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %7 = call %struct.twlreg_info* @rdev_get_drvdata(%struct.regulator_dev* %6)
  store %struct.twlreg_info* %7, %struct.twlreg_info** %4, align 8
  %8 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %9 = call i32 @twlreg_grp(%struct.regulator_dev* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %29

14:                                               ; preds = %1
  %15 = load %struct.twlreg_info*, %struct.twlreg_info** %4, align 8
  %16 = load i32, i32* @TWL_MODULE_PM_RECEIVER, align 4
  %17 = load i32, i32* @VREG_STATE, align 4
  %18 = call i32 @twlreg_read(%struct.twlreg_info* %15, i32 %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @TWL6030_CFG_STATE_APP(i32 %19)
  switch i32 %20, label %26 [
    i32 129, label %21
    i32 128, label %23
    i32 131, label %25
    i32 130, label %25
  ]

21:                                               ; preds = %14
  %22 = load i32, i32* @REGULATOR_STATUS_NORMAL, align 4
  store i32 %22, i32* %2, align 4
  br label %29

23:                                               ; preds = %14
  %24 = load i32, i32* @REGULATOR_STATUS_STANDBY, align 4
  store i32 %24, i32* %2, align 4
  br label %29

25:                                               ; preds = %14, %14
  br label %26

26:                                               ; preds = %14, %25
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* @REGULATOR_STATUS_OFF, align 4
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %27, %23, %21, %12
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local %struct.twlreg_info* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @twlreg_grp(%struct.regulator_dev*) #1

declare dso_local i32 @twlreg_read(%struct.twlreg_info*, i32, i32) #1

declare dso_local i32 @TWL6030_CFG_STATE_APP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
