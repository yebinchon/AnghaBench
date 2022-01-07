; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_mt6380-regulator.c_mt6380_regulator_get_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_mt6380-regulator.c_mt6380_regulator_get_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.mt6380_regulator_info = type { i32, i32 }

@REGULATOR_MODE_NORMAL = common dso_local global i32 0, align 4
@REGULATOR_MODE_FAST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @mt6380_regulator_get_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt6380_regulator_get_mode(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mt6380_regulator_info*, align 8
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %8 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %9 = call %struct.mt6380_regulator_info* @rdev_get_drvdata(%struct.regulator_dev* %8)
  store %struct.mt6380_regulator_info* %9, %struct.mt6380_regulator_info** %7, align 8
  %10 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %11 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.mt6380_regulator_info*, %struct.mt6380_regulator_info** %7, align 8
  %14 = getelementptr inbounds %struct.mt6380_regulator_info, %struct.mt6380_regulator_info* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @regmap_read(i32 %12, i32 %15, i32* %4)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %2, align 4
  br label %44

21:                                               ; preds = %1
  %22 = load %struct.mt6380_regulator_info*, %struct.mt6380_regulator_info** %7, align 8
  %23 = getelementptr inbounds %struct.mt6380_regulator_info, %struct.mt6380_regulator_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %4, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %4, align 4
  %27 = load %struct.mt6380_regulator_info*, %struct.mt6380_regulator_info** %7, align 8
  %28 = getelementptr inbounds %struct.mt6380_regulator_info, %struct.mt6380_regulator_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ffs(i32 %29)
  %31 = sub nsw i32 %30, 1
  %32 = load i32, i32* %4, align 4
  %33 = lshr i32 %32, %31
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  switch i32 %34, label %39 [
    i32 129, label %35
    i32 128, label %37
  ]

35:                                               ; preds = %21
  %36 = load i32, i32* @REGULATOR_MODE_NORMAL, align 4
  store i32 %36, i32* %5, align 4
  br label %42

37:                                               ; preds = %21
  %38 = load i32, i32* @REGULATOR_MODE_FAST, align 4
  store i32 %38, i32* %5, align 4
  br label %42

39:                                               ; preds = %21
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %44

42:                                               ; preds = %37, %35
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %42, %39, %19
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.mt6380_regulator_info* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @ffs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
