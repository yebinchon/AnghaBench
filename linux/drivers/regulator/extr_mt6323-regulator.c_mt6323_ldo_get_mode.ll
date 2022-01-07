; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_mt6323-regulator.c_mt6323_ldo_get_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_mt6323-regulator.c_mt6323_ldo_get_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32, i32 }
%struct.mt6323_regulator_info = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"regulator %s doesn't support get_mode\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@REGULATOR_MODE_STANDBY = common dso_local global i32 0, align 4
@REGULATOR_MODE_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @mt6323_ldo_get_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt6323_ldo_get_mode(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mt6323_regulator_info*, align 8
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %8 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %9 = call %struct.mt6323_regulator_info* @rdev_get_drvdata(%struct.regulator_dev* %8)
  store %struct.mt6323_regulator_info* %9, %struct.mt6323_regulator_info** %7, align 8
  %10 = load %struct.mt6323_regulator_info*, %struct.mt6323_regulator_info** %7, align 8
  %11 = getelementptr inbounds %struct.mt6323_regulator_info, %struct.mt6323_regulator_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %1
  %15 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %16 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %15, i32 0, i32 1
  %17 = load %struct.mt6323_regulator_info*, %struct.mt6323_regulator_info** %7, align 8
  %18 = getelementptr inbounds %struct.mt6323_regulator_info, %struct.mt6323_regulator_info* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @dev_err(i32* %16, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %58

24:                                               ; preds = %1
  %25 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %26 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.mt6323_regulator_info*, %struct.mt6323_regulator_info** %7, align 8
  %29 = getelementptr inbounds %struct.mt6323_regulator_info, %struct.mt6323_regulator_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @regmap_read(i32 %27, i32 %30, i32* %4)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %2, align 4
  br label %58

36:                                               ; preds = %24
  %37 = load %struct.mt6323_regulator_info*, %struct.mt6323_regulator_info** %7, align 8
  %38 = getelementptr inbounds %struct.mt6323_regulator_info, %struct.mt6323_regulator_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %4, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %4, align 4
  %42 = load %struct.mt6323_regulator_info*, %struct.mt6323_regulator_info** %7, align 8
  %43 = getelementptr inbounds %struct.mt6323_regulator_info, %struct.mt6323_regulator_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ffs(i32 %44)
  %46 = sub nsw i32 %45, 1
  %47 = load i32, i32* %4, align 4
  %48 = lshr i32 %47, %46
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = and i32 %49, 1
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %36
  %53 = load i32, i32* @REGULATOR_MODE_STANDBY, align 4
  store i32 %53, i32* %5, align 4
  br label %56

54:                                               ; preds = %36
  %55 = load i32, i32* @REGULATOR_MODE_NORMAL, align 4
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = load i32, i32* %5, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %56, %34, %14
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.mt6323_regulator_info* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @ffs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
