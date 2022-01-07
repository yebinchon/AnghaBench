; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_mt6358-regulator.c_mt6358_regulator_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_mt6358-regulator.c_mt6358_regulator_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32, i32 }
%struct.mt6358_regulator_info = type { i32, i32, i32 }

@MT6358_BUCK_MODE_FORCE_PWM = common dso_local global i32 0, align 4
@MT6358_BUCK_MODE_AUTO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"mt6358 buck set_mode %#x, %#x, %#x, %#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @mt6358_regulator_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt6358_regulator_set_mode(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mt6358_regulator_info*, align 8
  %7 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %9 = call %struct.mt6358_regulator_info* @rdev_get_drvdata(%struct.regulator_dev* %8)
  store %struct.mt6358_regulator_info* %9, %struct.mt6358_regulator_info** %6, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %15 [
    i32 129, label %11
    i32 128, label %13
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* @MT6358_BUCK_MODE_FORCE_PWM, align 4
  store i32 %12, i32* %7, align 4
  br label %18

13:                                               ; preds = %2
  %14 = load i32, i32* @MT6358_BUCK_MODE_AUTO, align 4
  store i32 %14, i32* %7, align 4
  br label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %48

18:                                               ; preds = %13, %11
  %19 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %20 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %19, i32 0, i32 1
  %21 = load %struct.mt6358_regulator_info*, %struct.mt6358_regulator_info** %6, align 8
  %22 = getelementptr inbounds %struct.mt6358_regulator_info, %struct.mt6358_regulator_info* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.mt6358_regulator_info*, %struct.mt6358_regulator_info** %6, align 8
  %25 = getelementptr inbounds %struct.mt6358_regulator_info, %struct.mt6358_regulator_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.mt6358_regulator_info*, %struct.mt6358_regulator_info** %6, align 8
  %28 = getelementptr inbounds %struct.mt6358_regulator_info, %struct.mt6358_regulator_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @dev_dbg(i32* %20, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %26, i32 %29, i32 %30)
  %32 = load %struct.mt6358_regulator_info*, %struct.mt6358_regulator_info** %6, align 8
  %33 = getelementptr inbounds %struct.mt6358_regulator_info, %struct.mt6358_regulator_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %7, align 4
  %36 = shl i32 %35, %34
  store i32 %36, i32* %7, align 4
  %37 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %38 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.mt6358_regulator_info*, %struct.mt6358_regulator_info** %6, align 8
  %41 = getelementptr inbounds %struct.mt6358_regulator_info, %struct.mt6358_regulator_info* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.mt6358_regulator_info*, %struct.mt6358_regulator_info** %6, align 8
  %44 = getelementptr inbounds %struct.mt6358_regulator_info, %struct.mt6358_regulator_info* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @regmap_update_bits(i32 %39, i32 %42, i32 %45, i32 %46)
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %18, %15
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.mt6358_regulator_info* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
