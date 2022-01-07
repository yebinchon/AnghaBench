; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_max8649.c_max8649_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_max8649.c_max8649_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.max8649_regulator_info = type { i32 }

@MAX8649_FORCE_PWM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @max8649_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8649_set_mode(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.max8649_regulator_info*, align 8
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %8 = call %struct.max8649_regulator_info* @rdev_get_drvdata(%struct.regulator_dev* %7)
  store %struct.max8649_regulator_info* %8, %struct.max8649_regulator_info** %6, align 8
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %33 [
    i32 129, label %10
    i32 128, label %22
  ]

10:                                               ; preds = %2
  %11 = load %struct.max8649_regulator_info*, %struct.max8649_regulator_info** %6, align 8
  %12 = getelementptr inbounds %struct.max8649_regulator_info, %struct.max8649_regulator_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %15 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @MAX8649_FORCE_PWM, align 4
  %20 = load i32, i32* @MAX8649_FORCE_PWM, align 4
  %21 = call i32 @regmap_update_bits(i32 %13, i32 %18, i32 %19, i32 %20)
  br label %36

22:                                               ; preds = %2
  %23 = load %struct.max8649_regulator_info*, %struct.max8649_regulator_info** %6, align 8
  %24 = getelementptr inbounds %struct.max8649_regulator_info, %struct.max8649_regulator_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %27 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MAX8649_FORCE_PWM, align 4
  %32 = call i32 @regmap_update_bits(i32 %25, i32 %30, i32 %31, i32 0)
  br label %36

33:                                               ; preds = %2
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %37

36:                                               ; preds = %22, %10
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %36, %33
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.max8649_regulator_info* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
