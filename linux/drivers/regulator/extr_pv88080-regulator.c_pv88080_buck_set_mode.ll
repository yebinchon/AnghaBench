; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_pv88080-regulator.c_pv88080_buck_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_pv88080-regulator.c_pv88080_buck_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.pv88080_regulator = type { i32 }

@PV88080_BUCK_MODE_SYNC = common dso_local global i32 0, align 4
@PV88080_BUCK_MODE_AUTO = common dso_local global i32 0, align 4
@PV88080_BUCK_MODE_SLEEP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PV88080_BUCK1_MODE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @pv88080_buck_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pv88080_buck_set_mode(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pv88080_regulator*, align 8
  %7 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %9 = call %struct.pv88080_regulator* @rdev_get_drvdata(%struct.regulator_dev* %8)
  store %struct.pv88080_regulator* %9, %struct.pv88080_regulator** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %17 [
    i32 130, label %11
    i32 129, label %13
    i32 128, label %15
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* @PV88080_BUCK_MODE_SYNC, align 4
  store i32 %12, i32* %7, align 4
  br label %20

13:                                               ; preds = %2
  %14 = load i32, i32* @PV88080_BUCK_MODE_AUTO, align 4
  store i32 %14, i32* %7, align 4
  br label %20

15:                                               ; preds = %2
  %16 = load i32, i32* @PV88080_BUCK_MODE_SLEEP, align 4
  store i32 %16, i32* %7, align 4
  br label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %30

20:                                               ; preds = %15, %13, %11
  %21 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %22 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.pv88080_regulator*, %struct.pv88080_regulator** %6, align 8
  %25 = getelementptr inbounds %struct.pv88080_regulator, %struct.pv88080_regulator* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @PV88080_BUCK1_MODE_MASK, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @regmap_update_bits(i32 %23, i32 %26, i32 %27, i32 %28)
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %20, %17
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local %struct.pv88080_regulator* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
