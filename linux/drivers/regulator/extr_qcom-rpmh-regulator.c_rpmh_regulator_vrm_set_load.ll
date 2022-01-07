; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom-rpmh-regulator.c_rpmh_regulator_vrm_set_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom-rpmh-regulator.c_rpmh_regulator_vrm_set_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.rpmh_vreg = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@REGULATOR_MODE_NORMAL = common dso_local global i32 0, align 4
@REGULATOR_MODE_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @rpmh_regulator_vrm_set_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpmh_regulator_vrm_set_load(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpmh_vreg*, align 8
  %6 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %8 = call %struct.rpmh_vreg* @rdev_get_drvdata(%struct.regulator_dev* %7)
  store %struct.rpmh_vreg* %8, %struct.rpmh_vreg** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.rpmh_vreg*, %struct.rpmh_vreg** %5, align 8
  %11 = getelementptr inbounds %struct.rpmh_vreg, %struct.rpmh_vreg* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp sge i32 %9, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @REGULATOR_MODE_NORMAL, align 4
  store i32 %17, i32* %6, align 4
  br label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @REGULATOR_MODE_IDLE, align 4
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @rpmh_regulator_vrm_set_mode(%struct.regulator_dev* %21, i32 %22)
  ret i32 %23
}

declare dso_local %struct.rpmh_vreg* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rpmh_regulator_vrm_set_mode(%struct.regulator_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
