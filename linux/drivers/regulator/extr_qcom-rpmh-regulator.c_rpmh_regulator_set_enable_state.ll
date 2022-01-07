; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom-rpmh-regulator.c_rpmh_regulator_set_enable_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom-rpmh-regulator.c_rpmh_regulator_set_enable_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.rpmh_vreg = type { i32, i32, i64 }
%struct.tcs_cmd = type { i32, i64 }

@RPMH_REGULATOR_REG_ENABLE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOTRECOVERABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @rpmh_regulator_set_enable_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpmh_regulator_set_enable_state(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rpmh_vreg*, align 8
  %7 = alloca %struct.tcs_cmd, align 8
  %8 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %10 = call %struct.rpmh_vreg* @rdev_get_drvdata(%struct.regulator_dev* %9)
  store %struct.rpmh_vreg* %10, %struct.rpmh_vreg** %6, align 8
  %11 = getelementptr inbounds %struct.tcs_cmd, %struct.tcs_cmd* %7, i32 0, i32 0
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %11, align 8
  %13 = getelementptr inbounds %struct.tcs_cmd, %struct.tcs_cmd* %7, i32 0, i32 1
  %14 = load %struct.rpmh_vreg*, %struct.rpmh_vreg** %6, align 8
  %15 = getelementptr inbounds %struct.rpmh_vreg, %struct.rpmh_vreg* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @RPMH_REGULATOR_REG_ENABLE, align 8
  %18 = add nsw i64 %16, %17
  store i64 %18, i64* %13, align 8
  %19 = load %struct.rpmh_vreg*, %struct.rpmh_vreg** %6, align 8
  %20 = getelementptr inbounds %struct.rpmh_vreg, %struct.rpmh_vreg* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %25, label %43

25:                                               ; preds = %2
  %26 = load %struct.rpmh_vreg*, %struct.rpmh_vreg** %6, align 8
  %27 = getelementptr inbounds %struct.rpmh_vreg, %struct.rpmh_vreg* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @ENOTRECOVERABLE, align 4
  %30 = sub nsw i32 0, %29
  %31 = icmp ne i32 %28, %30
  br i1 %31, label %32, label %43

32:                                               ; preds = %25
  %33 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %34 = load %struct.rpmh_vreg*, %struct.rpmh_vreg** %6, align 8
  %35 = getelementptr inbounds %struct.rpmh_vreg, %struct.rpmh_vreg* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @_rpmh_regulator_vrm_set_voltage_sel(%struct.regulator_dev* %33, i32 %36, i32 1)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %3, align 4
  br label %55

42:                                               ; preds = %32
  br label %43

43:                                               ; preds = %42, %25, %2
  %44 = load %struct.rpmh_vreg*, %struct.rpmh_vreg** %6, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @rpmh_regulator_send_request(%struct.rpmh_vreg* %44, %struct.tcs_cmd* %7, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %43
  %50 = load i32, i32* %5, align 4
  %51 = load %struct.rpmh_vreg*, %struct.rpmh_vreg** %6, align 8
  %52 = getelementptr inbounds %struct.rpmh_vreg, %struct.rpmh_vreg* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  br label %53

53:                                               ; preds = %49, %43
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %53, %40
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.rpmh_vreg* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @_rpmh_regulator_vrm_set_voltage_sel(%struct.regulator_dev*, i32, i32) #1

declare dso_local i32 @rpmh_regulator_send_request(%struct.rpmh_vreg*, %struct.tcs_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
