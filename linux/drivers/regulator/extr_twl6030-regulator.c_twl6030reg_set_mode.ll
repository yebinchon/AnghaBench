; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_twl6030-regulator.c_twl6030reg_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_twl6030-regulator.c_twl6030reg_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.twlreg_info = type { i32 }

@TWL6032_SUBCLASS = common dso_local global i32 0, align 4
@TWL6030_CFG_STATE_GRP_SHIFT = common dso_local global i32 0, align 4
@TWL6030_CFG_STATE_ON = common dso_local global i32 0, align 4
@TWL6030_CFG_STATE_SLEEP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TWL_MODULE_PM_RECEIVER = common dso_local global i32 0, align 4
@VREG_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @twl6030reg_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl6030reg_set_mode(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.twlreg_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %10 = call %struct.twlreg_info* @rdev_get_drvdata(%struct.regulator_dev* %9)
  store %struct.twlreg_info* %10, %struct.twlreg_info** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = call i64 (...) @twl_class_is_6030()
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.twlreg_info*, %struct.twlreg_info** %6, align 8
  %15 = getelementptr inbounds %struct.twlreg_info, %struct.twlreg_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @TWL6032_SUBCLASS, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %13, %2
  %21 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %22 = call i32 @twlreg_grp(%struct.regulator_dev* %21)
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %20, %13
  %24 = load i32, i32* %7, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %3, align 4
  br label %50

28:                                               ; preds = %23
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @TWL6030_CFG_STATE_GRP_SHIFT, align 4
  %31 = shl i32 %29, %30
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %5, align 4
  switch i32 %32, label %41 [
    i32 129, label %33
    i32 128, label %37
  ]

33:                                               ; preds = %28
  %34 = load i32, i32* @TWL6030_CFG_STATE_ON, align 4
  %35 = load i32, i32* %8, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %8, align 4
  br label %44

37:                                               ; preds = %28
  %38 = load i32, i32* @TWL6030_CFG_STATE_SLEEP, align 4
  %39 = load i32, i32* %8, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %8, align 4
  br label %44

41:                                               ; preds = %28
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %50

44:                                               ; preds = %37, %33
  %45 = load %struct.twlreg_info*, %struct.twlreg_info** %6, align 8
  %46 = load i32, i32* @TWL_MODULE_PM_RECEIVER, align 4
  %47 = load i32, i32* @VREG_STATE, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @twlreg_write(%struct.twlreg_info* %45, i32 %46, i32 %47, i32 %48)
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %44, %41, %26
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.twlreg_info* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i64 @twl_class_is_6030(...) #1

declare dso_local i32 @twlreg_grp(%struct.regulator_dev*) #1

declare dso_local i32 @twlreg_write(%struct.twlreg_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
