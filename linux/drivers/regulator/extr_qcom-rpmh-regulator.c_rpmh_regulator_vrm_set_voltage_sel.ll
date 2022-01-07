; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom-rpmh-regulator.c_rpmh_regulator_vrm_set_voltage_sel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom-rpmh-regulator.c_rpmh_regulator_vrm_set_voltage_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.rpmh_vreg = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @rpmh_regulator_vrm_set_voltage_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpmh_regulator_vrm_set_voltage_sel(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rpmh_vreg*, align 8
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %8 = call %struct.rpmh_vreg* @rdev_get_drvdata(%struct.regulator_dev* %7)
  store %struct.rpmh_vreg* %8, %struct.rpmh_vreg** %6, align 8
  %9 = load %struct.rpmh_vreg*, %struct.rpmh_vreg** %6, align 8
  %10 = getelementptr inbounds %struct.rpmh_vreg, %struct.rpmh_vreg* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  %14 = icmp eq i32 %11, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.rpmh_vreg*, %struct.rpmh_vreg** %6, align 8
  %18 = getelementptr inbounds %struct.rpmh_vreg, %struct.rpmh_vreg* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  store i32 0, i32* %3, align 4
  br label %29

19:                                               ; preds = %2
  %20 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.rpmh_vreg*, %struct.rpmh_vreg** %6, align 8
  %24 = getelementptr inbounds %struct.rpmh_vreg, %struct.rpmh_vreg* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ugt i32 %22, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @_rpmh_regulator_vrm_set_voltage_sel(%struct.regulator_dev* %20, i32 %21, i32 %27)
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %19, %15
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local %struct.rpmh_vreg* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @_rpmh_regulator_vrm_set_voltage_sel(%struct.regulator_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
