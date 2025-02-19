; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_mt6397-regulator.c_mt6397_regulator_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_mt6397-regulator.c_mt6397_regulator_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32, i32 }
%struct.mt6397_regulator_info = type { i32, i32, i32 }

@MT6397_BUCK_MODE_FORCE_PWM = common dso_local global i32 0, align 4
@MT6397_BUCK_MODE_AUTO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"mt6397 buck set_mode %#x, %#x, %#x, %#x\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to set mt6397 buck mode: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @mt6397_regulator_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt6397_regulator_set_mode(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mt6397_regulator_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %10 = call %struct.mt6397_regulator_info* @rdev_get_drvdata(%struct.regulator_dev* %9)
  store %struct.mt6397_regulator_info* %10, %struct.mt6397_regulator_info** %6, align 8
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %16 [
    i32 129, label %12
    i32 128, label %14
  ]

12:                                               ; preds = %2
  %13 = load i32, i32* @MT6397_BUCK_MODE_FORCE_PWM, align 4
  store i32 %13, i32* %8, align 4
  br label %19

14:                                               ; preds = %2
  %15 = load i32, i32* @MT6397_BUCK_MODE_AUTO, align 4
  store i32 %15, i32* %8, align 4
  br label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %7, align 4
  br label %49

19:                                               ; preds = %14, %12
  %20 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %21 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %20, i32 0, i32 0
  %22 = load %struct.mt6397_regulator_info*, %struct.mt6397_regulator_info** %6, align 8
  %23 = getelementptr inbounds %struct.mt6397_regulator_info, %struct.mt6397_regulator_info* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.mt6397_regulator_info*, %struct.mt6397_regulator_info** %6, align 8
  %26 = getelementptr inbounds %struct.mt6397_regulator_info, %struct.mt6397_regulator_info* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.mt6397_regulator_info*, %struct.mt6397_regulator_info** %6, align 8
  %29 = getelementptr inbounds %struct.mt6397_regulator_info, %struct.mt6397_regulator_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @dev_dbg(i32* %21, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27, i32 %30, i32 %31)
  %33 = load %struct.mt6397_regulator_info*, %struct.mt6397_regulator_info** %6, align 8
  %34 = getelementptr inbounds %struct.mt6397_regulator_info, %struct.mt6397_regulator_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %8, align 4
  %37 = shl i32 %36, %35
  store i32 %37, i32* %8, align 4
  %38 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %39 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.mt6397_regulator_info*, %struct.mt6397_regulator_info** %6, align 8
  %42 = getelementptr inbounds %struct.mt6397_regulator_info, %struct.mt6397_regulator_info* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.mt6397_regulator_info*, %struct.mt6397_regulator_info** %6, align 8
  %45 = getelementptr inbounds %struct.mt6397_regulator_info, %struct.mt6397_regulator_info* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @regmap_update_bits(i32 %40, i32 %43, i32 %46, i32 %47)
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %19, %16
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %49
  %53 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %54 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %53, i32 0, i32 0
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @dev_err(i32* %54, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %3, align 4
  br label %59

58:                                               ; preds = %49
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %52
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.mt6397_regulator_info* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
