; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom_spmi-regulator.c_spmi_regulator_set_ilim.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom_spmi-regulator.c_spmi_regulator_set_ilim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.spmi_regulator = type { i32 }

@SPMI_BOOST_CURRENT_LIMIT_MASK = common dso_local global i32 0, align 4
@SPMI_BOOST_CURRENT_LIMIT_ENABLE_MASK = common dso_local global i32 0, align 4
@SPMI_REGULATOR_LOGICAL_TYPE_BOOST = common dso_local global i32 0, align 4
@SPMI_BOOST_REG_CURRENT_LIMIT = common dso_local global i32 0, align 4
@SPMI_BOOST_BYP_REG_CURRENT_LIMIT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @spmi_regulator_set_ilim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spmi_regulator_set_ilim(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.spmi_regulator*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %13 = call %struct.spmi_regulator* @rdev_get_drvdata(%struct.regulator_dev* %12)
  store %struct.spmi_regulator* %13, %struct.spmi_regulator** %6, align 8
  %14 = load %struct.spmi_regulator*, %struct.spmi_regulator** %6, align 8
  %15 = getelementptr inbounds %struct.spmi_regulator, %struct.spmi_regulator* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* @SPMI_BOOST_CURRENT_LIMIT_MASK, align 4
  %18 = load i32, i32* @SPMI_BOOST_CURRENT_LIMIT_ENABLE_MASK, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* @SPMI_BOOST_CURRENT_LIMIT_MASK, align 4
  %21 = add nsw i32 %20, 1
  %22 = mul nsw i32 %21, 500
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @SPMI_REGULATOR_LOGICAL_TYPE_BOOST, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* @SPMI_BOOST_REG_CURRENT_LIMIT, align 4
  store i32 %27, i32* %8, align 4
  br label %30

28:                                               ; preds = %2
  %29 = load i32, i32* @SPMI_BOOST_BYP_REG_CURRENT_LIMIT, align 4
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %5, align 4
  %36 = icmp sle i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34, %30
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %52

40:                                               ; preds = %34
  %41 = load i32, i32* %5, align 4
  %42 = sub nsw i32 %41, 1
  %43 = sdiv i32 %42, 500
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* @SPMI_BOOST_CURRENT_LIMIT_ENABLE_MASK, align 4
  %45 = load i32, i32* %9, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %9, align 4
  %47 = load %struct.spmi_regulator*, %struct.spmi_regulator** %6, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @spmi_vreg_update_bits(%struct.spmi_regulator* %47, i32 %48, i32 %49, i32 %50)
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %40, %37
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.spmi_regulator* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @spmi_vreg_update_bits(%struct.spmi_regulator*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
