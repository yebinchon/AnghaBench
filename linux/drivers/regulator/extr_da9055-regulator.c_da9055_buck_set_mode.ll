; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_da9055-regulator.c_da9055_buck_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_da9055-regulator.c_da9055_buck_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.da9055_regulator = type { i32, %struct.da9055_regulator_info* }
%struct.da9055_regulator_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@DA9055_BUCK_MODE_SYNC = common dso_local global i32 0, align 4
@DA9055_BUCK_MODE_AUTO = common dso_local global i32 0, align 4
@DA9055_BUCK_MODE_SLEEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @da9055_buck_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9055_buck_set_mode(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.da9055_regulator*, align 8
  %6 = alloca %struct.da9055_regulator_info*, align 8
  %7 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %9 = call %struct.da9055_regulator* @rdev_get_drvdata(%struct.regulator_dev* %8)
  store %struct.da9055_regulator* %9, %struct.da9055_regulator** %5, align 8
  %10 = load %struct.da9055_regulator*, %struct.da9055_regulator** %5, align 8
  %11 = getelementptr inbounds %struct.da9055_regulator, %struct.da9055_regulator* %10, i32 0, i32 1
  %12 = load %struct.da9055_regulator_info*, %struct.da9055_regulator_info** %11, align 8
  store %struct.da9055_regulator_info* %12, %struct.da9055_regulator_info** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %35 [
    i32 130, label %14
    i32 129, label %21
    i32 128, label %28
  ]

14:                                               ; preds = %2
  %15 = load i32, i32* @DA9055_BUCK_MODE_SYNC, align 4
  %16 = load %struct.da9055_regulator_info*, %struct.da9055_regulator_info** %6, align 8
  %17 = getelementptr inbounds %struct.da9055_regulator_info, %struct.da9055_regulator_info* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 %15, %19
  store i32 %20, i32* %7, align 4
  br label %35

21:                                               ; preds = %2
  %22 = load i32, i32* @DA9055_BUCK_MODE_AUTO, align 4
  %23 = load %struct.da9055_regulator_info*, %struct.da9055_regulator_info** %6, align 8
  %24 = getelementptr inbounds %struct.da9055_regulator_info, %struct.da9055_regulator_info* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 %22, %26
  store i32 %27, i32* %7, align 4
  br label %35

28:                                               ; preds = %2
  %29 = load i32, i32* @DA9055_BUCK_MODE_SLEEP, align 4
  %30 = load %struct.da9055_regulator_info*, %struct.da9055_regulator_info** %6, align 8
  %31 = getelementptr inbounds %struct.da9055_regulator_info, %struct.da9055_regulator_info* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %29, %33
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %2, %28, %21, %14
  %36 = load %struct.da9055_regulator*, %struct.da9055_regulator** %5, align 8
  %37 = getelementptr inbounds %struct.da9055_regulator, %struct.da9055_regulator* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.da9055_regulator_info*, %struct.da9055_regulator_info** %6, align 8
  %40 = getelementptr inbounds %struct.da9055_regulator_info, %struct.da9055_regulator_info* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.da9055_regulator_info*, %struct.da9055_regulator_info** %6, align 8
  %44 = getelementptr inbounds %struct.da9055_regulator_info, %struct.da9055_regulator_info* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @da9055_reg_update(i32 %38, i32 %42, i32 %46, i32 %47)
  ret i32 %48
}

declare dso_local %struct.da9055_regulator* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @da9055_reg_update(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
