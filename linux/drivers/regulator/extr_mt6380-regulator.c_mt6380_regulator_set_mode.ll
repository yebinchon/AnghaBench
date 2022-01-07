; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_mt6380-regulator.c_mt6380_regulator_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_mt6380-regulator.c_mt6380_regulator_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.mt6380_regulator_info = type { i32, i32 }

@MT6380_REGULATOR_MODE_AUTO = common dso_local global i32 0, align 4
@MT6380_REGULATOR_MODE_FORCE_PWM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @mt6380_regulator_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt6380_regulator_set_mode(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mt6380_regulator_info*, align 8
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %10 = call %struct.mt6380_regulator_info* @rdev_get_drvdata(%struct.regulator_dev* %9)
  store %struct.mt6380_regulator_info* %10, %struct.mt6380_regulator_info** %8, align 8
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %16 [
    i32 128, label %12
    i32 129, label %14
  ]

12:                                               ; preds = %2
  %13 = load i32, i32* @MT6380_REGULATOR_MODE_AUTO, align 4
  store i32 %13, i32* %7, align 4
  br label %19

14:                                               ; preds = %2
  %15 = load i32, i32* @MT6380_REGULATOR_MODE_FORCE_PWM, align 4
  store i32 %15, i32* %7, align 4
  br label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %39

19:                                               ; preds = %14, %12
  %20 = load %struct.mt6380_regulator_info*, %struct.mt6380_regulator_info** %8, align 8
  %21 = getelementptr inbounds %struct.mt6380_regulator_info, %struct.mt6380_regulator_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ffs(i32 %22)
  %24 = sub nsw i32 %23, 1
  %25 = load i32, i32* %7, align 4
  %26 = shl i32 %25, %24
  store i32 %26, i32* %7, align 4
  %27 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %28 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mt6380_regulator_info*, %struct.mt6380_regulator_info** %8, align 8
  %31 = getelementptr inbounds %struct.mt6380_regulator_info, %struct.mt6380_regulator_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.mt6380_regulator_info*, %struct.mt6380_regulator_info** %8, align 8
  %34 = getelementptr inbounds %struct.mt6380_regulator_info, %struct.mt6380_regulator_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @regmap_update_bits(i32 %29, i32 %32, i32 %35, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %19, %16
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.mt6380_regulator_info* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
