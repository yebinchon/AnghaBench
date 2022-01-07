; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_twl6030-regulator.c_twl6030reg_is_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_twl6030-regulator.c_twl6030reg_is_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.twlreg_info = type { i32 }

@TWL6032_SUBCLASS = common dso_local global i32 0, align 4
@P1_GRP_6030 = common dso_local global i32 0, align 4
@TWL_MODULE_PM_RECEIVER = common dso_local global i32 0, align 4
@VREG_STATE = common dso_local global i32 0, align 4
@TWL6030_CFG_STATE_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @twl6030reg_is_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl6030reg_is_enabled(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.twlreg_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %7 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %8 = call %struct.twlreg_info* @rdev_get_drvdata(%struct.regulator_dev* %7)
  store %struct.twlreg_info* %8, %struct.twlreg_info** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = call i64 (...) @twl_class_is_6030()
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.twlreg_info*, %struct.twlreg_info** %4, align 8
  %13 = getelementptr inbounds %struct.twlreg_info, %struct.twlreg_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @TWL6032_SUBCLASS, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %11, %1
  %19 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %20 = call i32 @twlreg_grp(%struct.regulator_dev* %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %46

25:                                               ; preds = %18
  %26 = load i32, i32* @P1_GRP_6030, align 4
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %5, align 4
  br label %30

29:                                               ; preds = %11
  store i32 1, i32* %5, align 4
  br label %30

30:                                               ; preds = %29, %25
  %31 = load %struct.twlreg_info*, %struct.twlreg_info** %4, align 8
  %32 = load i32, i32* @TWL_MODULE_PM_RECEIVER, align 4
  %33 = load i32, i32* @VREG_STATE, align 4
  %34 = call i32 @twlreg_read(%struct.twlreg_info* %31, i32 %32, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @TWL6030_CFG_STATE_APP(i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %30
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @TWL6030_CFG_STATE_ON, align 4
  %42 = icmp eq i32 %40, %41
  br label %43

43:                                               ; preds = %39, %30
  %44 = phi i1 [ false, %30 ], [ %42, %39 ]
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %43, %23
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.twlreg_info* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i64 @twl_class_is_6030(...) #1

declare dso_local i32 @twlreg_grp(%struct.regulator_dev*) #1

declare dso_local i32 @twlreg_read(%struct.twlreg_info*, i32, i32) #1

declare dso_local i32 @TWL6030_CFG_STATE_APP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
