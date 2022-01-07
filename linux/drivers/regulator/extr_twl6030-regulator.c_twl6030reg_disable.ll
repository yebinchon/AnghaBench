; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_twl6030-regulator.c_twl6030reg_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_twl6030-regulator.c_twl6030reg_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.twlreg_info = type { i32 }

@TWL6032_SUBCLASS = common dso_local global i32 0, align 4
@P1_GRP_6030 = common dso_local global i32 0, align 4
@P2_GRP_6030 = common dso_local global i32 0, align 4
@P3_GRP_6030 = common dso_local global i32 0, align 4
@TWL_MODULE_PM_RECEIVER = common dso_local global i32 0, align 4
@VREG_STATE = common dso_local global i32 0, align 4
@TWL6030_CFG_STATE_GRP_SHIFT = common dso_local global i32 0, align 4
@TWL6030_CFG_STATE_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @twl6030reg_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl6030reg_disable(%struct.regulator_dev* %0) #0 {
  %2 = alloca %struct.regulator_dev*, align 8
  %3 = alloca %struct.twlreg_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %2, align 8
  %6 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %7 = call %struct.twlreg_info* @rdev_get_drvdata(%struct.regulator_dev* %6)
  store %struct.twlreg_info* %7, %struct.twlreg_info** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = call i64 (...) @twl_class_is_6030()
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load %struct.twlreg_info*, %struct.twlreg_info** %3, align 8
  %12 = getelementptr inbounds %struct.twlreg_info, %struct.twlreg_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @TWL6032_SUBCLASS, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %10, %1
  %18 = load i32, i32* @P1_GRP_6030, align 4
  %19 = load i32, i32* @P2_GRP_6030, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @P3_GRP_6030, align 4
  %22 = or i32 %20, %21
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %17, %10
  %24 = load %struct.twlreg_info*, %struct.twlreg_info** %3, align 8
  %25 = load i32, i32* @TWL_MODULE_PM_RECEIVER, align 4
  %26 = load i32, i32* @VREG_STATE, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @TWL6030_CFG_STATE_GRP_SHIFT, align 4
  %29 = shl i32 %27, %28
  %30 = load i32, i32* @TWL6030_CFG_STATE_OFF, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @twlreg_write(%struct.twlreg_info* %24, i32 %25, i32 %26, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local %struct.twlreg_info* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i64 @twl_class_is_6030(...) #1

declare dso_local i32 @twlreg_write(%struct.twlreg_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
