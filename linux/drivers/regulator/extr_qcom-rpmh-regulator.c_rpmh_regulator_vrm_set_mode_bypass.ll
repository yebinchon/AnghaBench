; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom-rpmh-regulator.c_rpmh_regulator_vrm_set_mode_bypass.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom-rpmh-regulator.c_rpmh_regulator_vrm_set_mode_bypass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpmh_vreg = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32* }
%struct.tcs_cmd = type { i32, i64 }

@RPMH_REGULATOR_REG_VRM_MODE = common dso_local global i64 0, align 8
@REGULATOR_MODE_STANDBY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PMIC4_BOB_MODE_PASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpmh_vreg*, i32, i32)* @rpmh_regulator_vrm_set_mode_bypass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rpmh_regulator_vrm_set_mode_bypass(%struct.rpmh_vreg* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpmh_vreg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tcs_cmd, align 8
  %9 = alloca i32, align 4
  store %struct.rpmh_vreg* %0, %struct.rpmh_vreg** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = getelementptr inbounds %struct.tcs_cmd, %struct.tcs_cmd* %8, i32 0, i32 0
  store i32 0, i32* %10, align 8
  %11 = getelementptr inbounds %struct.tcs_cmd, %struct.tcs_cmd* %8, i32 0, i32 1
  %12 = load %struct.rpmh_vreg*, %struct.rpmh_vreg** %5, align 8
  %13 = getelementptr inbounds %struct.rpmh_vreg, %struct.rpmh_vreg* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @RPMH_REGULATOR_REG_VRM_MODE, align 8
  %16 = add nsw i64 %14, %15
  store i64 %16, i64* %11, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @REGULATOR_MODE_STANDBY, align 4
  %19 = icmp ugt i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %49

23:                                               ; preds = %3
  %24 = load %struct.rpmh_vreg*, %struct.rpmh_vreg** %5, align 8
  %25 = getelementptr inbounds %struct.rpmh_vreg, %struct.rpmh_vreg* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %23
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %4, align 4
  br label %49

37:                                               ; preds = %23
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* @PMIC4_BOB_MODE_PASS, align 4
  %42 = getelementptr inbounds %struct.tcs_cmd, %struct.tcs_cmd* %8, i32 0, i32 0
  store i32 %41, i32* %42, align 8
  br label %46

43:                                               ; preds = %37
  %44 = load i32, i32* %9, align 4
  %45 = getelementptr inbounds %struct.tcs_cmd, %struct.tcs_cmd* %8, i32 0, i32 0
  store i32 %44, i32* %45, align 8
  br label %46

46:                                               ; preds = %43, %40
  %47 = load %struct.rpmh_vreg*, %struct.rpmh_vreg** %5, align 8
  %48 = call i32 @rpmh_regulator_send_request(%struct.rpmh_vreg* %47, %struct.tcs_cmd* %8, i32 1)
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %46, %35, %20
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @rpmh_regulator_send_request(%struct.rpmh_vreg*, %struct.tcs_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
