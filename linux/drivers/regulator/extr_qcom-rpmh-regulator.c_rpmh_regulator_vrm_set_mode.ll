; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom-rpmh-regulator.c_rpmh_regulator_vrm_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom-rpmh-regulator.c_rpmh_regulator_vrm_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.rpmh_vreg = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @rpmh_regulator_vrm_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpmh_regulator_vrm_set_mode(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rpmh_vreg*, align 8
  %7 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %9 = call %struct.rpmh_vreg* @rdev_get_drvdata(%struct.regulator_dev* %8)
  store %struct.rpmh_vreg* %9, %struct.rpmh_vreg** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.rpmh_vreg*, %struct.rpmh_vreg** %6, align 8
  %12 = getelementptr inbounds %struct.rpmh_vreg, %struct.rpmh_vreg* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %10, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %31

16:                                               ; preds = %2
  %17 = load %struct.rpmh_vreg*, %struct.rpmh_vreg** %6, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.rpmh_vreg*, %struct.rpmh_vreg** %6, align 8
  %20 = getelementptr inbounds %struct.rpmh_vreg, %struct.rpmh_vreg* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @rpmh_regulator_vrm_set_mode_bypass(%struct.rpmh_vreg* %17, i32 %18, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %16
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.rpmh_vreg*, %struct.rpmh_vreg** %6, align 8
  %28 = getelementptr inbounds %struct.rpmh_vreg, %struct.rpmh_vreg* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %25, %16
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %29, %15
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local %struct.rpmh_vreg* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rpmh_regulator_vrm_set_mode_bypass(%struct.rpmh_vreg*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
