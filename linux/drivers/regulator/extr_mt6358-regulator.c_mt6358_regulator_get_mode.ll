; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_mt6358-regulator.c_mt6358_regulator_get_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_mt6358-regulator.c_mt6358_regulator_get_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32, i32 }
%struct.mt6358_regulator_info = type { i32, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"Failed to get mt6358 buck mode: %d\0A\00", align 1
@REGULATOR_MODE_NORMAL = common dso_local global i32 0, align 4
@REGULATOR_MODE_FAST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @mt6358_regulator_get_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt6358_regulator_get_mode(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.mt6358_regulator_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %7 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %8 = call %struct.mt6358_regulator_info* @rdev_get_drvdata(%struct.regulator_dev* %7)
  store %struct.mt6358_regulator_info* %8, %struct.mt6358_regulator_info** %4, align 8
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %10 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.mt6358_regulator_info*, %struct.mt6358_regulator_info** %4, align 8
  %13 = getelementptr inbounds %struct.mt6358_regulator_info, %struct.mt6358_regulator_info* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @regmap_read(i32 %11, i32 %14, i32* %6)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %20 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @dev_err(i32* %20, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %41

24:                                               ; preds = %1
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.mt6358_regulator_info*, %struct.mt6358_regulator_info** %4, align 8
  %27 = getelementptr inbounds %struct.mt6358_regulator_info, %struct.mt6358_regulator_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %25, %28
  %30 = load %struct.mt6358_regulator_info*, %struct.mt6358_regulator_info** %4, align 8
  %31 = getelementptr inbounds %struct.mt6358_regulator_info, %struct.mt6358_regulator_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %29, %32
  switch i32 %33, label %38 [
    i32 129, label %34
    i32 128, label %36
  ]

34:                                               ; preds = %24
  %35 = load i32, i32* @REGULATOR_MODE_NORMAL, align 4
  store i32 %35, i32* %2, align 4
  br label %41

36:                                               ; preds = %24
  %37 = load i32, i32* @REGULATOR_MODE_FAST, align 4
  store i32 %37, i32* %2, align 4
  br label %41

38:                                               ; preds = %24
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %38, %36, %34, %18
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.mt6358_regulator_info* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
