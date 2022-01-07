; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_da9055-regulator.c_da9055_buck_get_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_da9055-regulator.c_da9055_buck_get_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.da9055_regulator = type { i32, %struct.da9055_regulator_info* }
%struct.da9055_regulator_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@REGULATOR_MODE_FAST = common dso_local global i32 0, align 4
@REGULATOR_MODE_NORMAL = common dso_local global i32 0, align 4
@REGULATOR_MODE_STANDBY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @da9055_buck_get_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9055_buck_get_mode(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.da9055_regulator*, align 8
  %5 = alloca %struct.da9055_regulator_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %8 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %9 = call %struct.da9055_regulator* @rdev_get_drvdata(%struct.regulator_dev* %8)
  store %struct.da9055_regulator* %9, %struct.da9055_regulator** %4, align 8
  %10 = load %struct.da9055_regulator*, %struct.da9055_regulator** %4, align 8
  %11 = getelementptr inbounds %struct.da9055_regulator, %struct.da9055_regulator* %10, i32 0, i32 1
  %12 = load %struct.da9055_regulator_info*, %struct.da9055_regulator_info** %11, align 8
  store %struct.da9055_regulator_info* %12, %struct.da9055_regulator_info** %5, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.da9055_regulator*, %struct.da9055_regulator** %4, align 8
  %14 = getelementptr inbounds %struct.da9055_regulator, %struct.da9055_regulator* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.da9055_regulator_info*, %struct.da9055_regulator_info** %5, align 8
  %17 = getelementptr inbounds %struct.da9055_regulator_info, %struct.da9055_regulator_info* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @da9055_reg_read(i32 %15, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %2, align 4
  br label %45

25:                                               ; preds = %1
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.da9055_regulator_info*, %struct.da9055_regulator_info** %5, align 8
  %28 = getelementptr inbounds %struct.da9055_regulator_info, %struct.da9055_regulator_info* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %26, %30
  %32 = load %struct.da9055_regulator_info*, %struct.da9055_regulator_info** %5, align 8
  %33 = getelementptr inbounds %struct.da9055_regulator_info, %struct.da9055_regulator_info* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = ashr i32 %31, %35
  switch i32 %36, label %43 [
    i32 128, label %37
    i32 130, label %39
    i32 129, label %41
  ]

37:                                               ; preds = %25
  %38 = load i32, i32* @REGULATOR_MODE_FAST, align 4
  store i32 %38, i32* %7, align 4
  br label %43

39:                                               ; preds = %25
  %40 = load i32, i32* @REGULATOR_MODE_NORMAL, align 4
  store i32 %40, i32* %7, align 4
  br label %43

41:                                               ; preds = %25
  %42 = load i32, i32* @REGULATOR_MODE_STANDBY, align 4
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %25, %41, %39, %37
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %43, %23
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local %struct.da9055_regulator* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @da9055_reg_read(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
