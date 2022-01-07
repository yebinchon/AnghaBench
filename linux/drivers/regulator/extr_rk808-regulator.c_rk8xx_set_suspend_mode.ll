; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_rk808-regulator.c_rk8xx_set_suspend_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_rk808-regulator.c_rk8xx_set_suspend_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@RK808_SLP_REG_OFFSET = common dso_local global i32 0, align 4
@PWM_MODE_MSK = common dso_local global i32 0, align 4
@FPWM_MODE = common dso_local global i32 0, align 4
@AUTO_PWM_MODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"do not support this mode\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @rk8xx_set_suspend_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk8xx_set_suspend_mode(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %8 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @RK808_SLP_REG_OFFSET, align 4
  %13 = add i32 %11, %12
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %31 [
    i32 129, label %15
    i32 128, label %23
  ]

15:                                               ; preds = %2
  %16 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %17 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @PWM_MODE_MSK, align 4
  %21 = load i32, i32* @FPWM_MODE, align 4
  %22 = call i32 @regmap_update_bits(i32 %18, i32 %19, i32 %20, i32 %21)
  store i32 %22, i32* %3, align 4
  br label %37

23:                                               ; preds = %2
  %24 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %25 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @PWM_MODE_MSK, align 4
  %29 = load i32, i32* @AUTO_PWM_MODE, align 4
  %30 = call i32 @regmap_update_bits(i32 %26, i32 %27, i32 %28, i32 %29)
  store i32 %30, i32* %3, align 4
  br label %37

31:                                               ; preds = %2
  %32 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %33 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %32, i32 0, i32 0
  %34 = call i32 @dev_err(i32* %33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %31, %23, %15
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
