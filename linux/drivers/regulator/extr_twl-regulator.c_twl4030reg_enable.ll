; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_twl-regulator.c_twl4030reg_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_twl-regulator.c_twl4030reg_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.twlreg_info = type { i32 }

@P1_GRP_4030 = common dso_local global i32 0, align 4
@TWL_MODULE_PM_RECEIVER = common dso_local global i32 0, align 4
@VREG_GRP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @twl4030reg_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030reg_enable(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.twlreg_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %7 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %8 = call %struct.twlreg_info* @rdev_get_drvdata(%struct.regulator_dev* %7)
  store %struct.twlreg_info* %8, %struct.twlreg_info** %4, align 8
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %10 = call i32 @twlreg_grp(%struct.regulator_dev* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %25

15:                                               ; preds = %1
  %16 = load i32, i32* @P1_GRP_4030, align 4
  %17 = load i32, i32* %5, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %5, align 4
  %19 = load %struct.twlreg_info*, %struct.twlreg_info** %4, align 8
  %20 = load i32, i32* @TWL_MODULE_PM_RECEIVER, align 4
  %21 = load i32, i32* @VREG_GRP, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @twlreg_write(%struct.twlreg_info* %19, i32 %20, i32 %21, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %15, %13
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local %struct.twlreg_info* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @twlreg_grp(%struct.regulator_dev*) #1

declare dso_local i32 @twlreg_write(%struct.twlreg_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
