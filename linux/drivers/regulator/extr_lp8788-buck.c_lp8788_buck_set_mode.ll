; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_lp8788-buck.c_lp8788_buck_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_lp8788-buck.c_lp8788_buck_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.lp8788_buck = type { i32 }

@LP8788_FORCE_PWM = common dso_local global i32 0, align 4
@LP8788_AUTO_PWM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@LP8788_BUCK_PWM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @lp8788_buck_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp8788_buck_set_mode(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.lp8788_buck*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %11 = call %struct.lp8788_buck* @rdev_get_drvdata(%struct.regulator_dev* %10)
  store %struct.lp8788_buck* %11, %struct.lp8788_buck** %6, align 8
  %12 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %13 = call i32 @rdev_get_id(%struct.regulator_dev* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @BUCK_FPWM_MASK(i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %27 [
    i32 129, label %17
    i32 128, label %22
  ]

17:                                               ; preds = %2
  %18 = load i32, i32* @LP8788_FORCE_PWM, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @BUCK_FPWM_SHIFT(i32 %19)
  %21 = shl i32 %18, %20
  store i32 %21, i32* %9, align 4
  br label %30

22:                                               ; preds = %2
  %23 = load i32, i32* @LP8788_AUTO_PWM, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @BUCK_FPWM_SHIFT(i32 %24)
  %26 = shl i32 %23, %25
  store i32 %26, i32* %9, align 4
  br label %30

27:                                               ; preds = %2
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %38

30:                                               ; preds = %22, %17
  %31 = load %struct.lp8788_buck*, %struct.lp8788_buck** %6, align 8
  %32 = getelementptr inbounds %struct.lp8788_buck, %struct.lp8788_buck* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @LP8788_BUCK_PWM, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @lp8788_update_bits(i32 %33, i32 %34, i32 %35, i32 %36)
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %30, %27
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.lp8788_buck* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @BUCK_FPWM_MASK(i32) #1

declare dso_local i32 @BUCK_FPWM_SHIFT(i32) #1

declare dso_local i32 @lp8788_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
