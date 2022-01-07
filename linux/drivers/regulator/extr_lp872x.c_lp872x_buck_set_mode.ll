; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_lp872x.c_lp872x_buck_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_lp872x.c_lp872x_buck_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.lp872x = type { i32 }

@LP8720_BUCK_VOUT2 = common dso_local global i32 0, align 4
@LP8720_BUCK_FPWM_M = common dso_local global i32 0, align 4
@LP8720_BUCK_FPWM_S = common dso_local global i32 0, align 4
@LP8725_BUCK_CTRL = common dso_local global i32 0, align 4
@LP8725_BUCK1_FPWM_M = common dso_local global i32 0, align 4
@LP8725_BUCK1_FPWM_S = common dso_local global i32 0, align 4
@LP8725_BUCK2_FPWM_M = common dso_local global i32 0, align 4
@LP8725_BUCK2_FPWM_S = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@REGULATOR_MODE_FAST = common dso_local global i32 0, align 4
@LP872X_FORCE_PWM = common dso_local global i32 0, align 4
@REGULATOR_MODE_NORMAL = common dso_local global i32 0, align 4
@LP872X_AUTO_PWM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @lp872x_buck_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp872x_buck_set_mode(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lp872x*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %13 = call %struct.lp872x* @rdev_get_drvdata(%struct.regulator_dev* %12)
  store %struct.lp872x* %13, %struct.lp872x** %6, align 8
  %14 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %15 = call i32 @rdev_get_id(%struct.regulator_dev* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  switch i32 %16, label %29 [
    i32 130, label %17
    i32 129, label %21
    i32 128, label %25
  ]

17:                                               ; preds = %2
  %18 = load i32, i32* @LP8720_BUCK_VOUT2, align 4
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* @LP8720_BUCK_FPWM_M, align 4
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* @LP8720_BUCK_FPWM_S, align 4
  store i32 %20, i32* %10, align 4
  br label %32

21:                                               ; preds = %2
  %22 = load i32, i32* @LP8725_BUCK_CTRL, align 4
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* @LP8725_BUCK1_FPWM_M, align 4
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* @LP8725_BUCK1_FPWM_S, align 4
  store i32 %24, i32* %10, align 4
  br label %32

25:                                               ; preds = %2
  %26 = load i32, i32* @LP8725_BUCK_CTRL, align 4
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* @LP8725_BUCK2_FPWM_M, align 4
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* @LP8725_BUCK2_FPWM_S, align 4
  store i32 %28, i32* %10, align 4
  br label %32

29:                                               ; preds = %2
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %58

32:                                               ; preds = %25, %21, %17
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @REGULATOR_MODE_FAST, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i32, i32* @LP872X_FORCE_PWM, align 4
  %38 = load i32, i32* %10, align 4
  %39 = shl i32 %37, %38
  store i32 %39, i32* %11, align 4
  br label %52

40:                                               ; preds = %32
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @REGULATOR_MODE_NORMAL, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i32, i32* @LP872X_AUTO_PWM, align 4
  %46 = load i32, i32* %10, align 4
  %47 = shl i32 %45, %46
  store i32 %47, i32* %11, align 4
  br label %51

48:                                               ; preds = %40
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %58

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51, %36
  %53 = load %struct.lp872x*, %struct.lp872x** %6, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @lp872x_update_bits(%struct.lp872x* %53, i32 %54, i32 %55, i32 %56)
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %52, %48, %29
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.lp872x* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @lp872x_update_bits(%struct.lp872x*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
