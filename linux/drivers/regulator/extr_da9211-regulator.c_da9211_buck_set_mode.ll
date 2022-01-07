; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_da9211-regulator.c_da9211_buck_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_da9211-regulator.c_da9211_buck_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.da9211 = type { i32 }

@DA9211_BUCK_MODE_SYNC = common dso_local global i32 0, align 4
@DA9211_BUCK_MODE_AUTO = common dso_local global i32 0, align 4
@DA9211_BUCK_MODE_SLEEP = common dso_local global i32 0, align 4
@DA9211_REG_BUCKA_CONF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @da9211_buck_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9211_buck_set_mode(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.da9211*, align 8
  %7 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %9 = call i32 @rdev_get_id(%struct.regulator_dev* %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %11 = call %struct.da9211* @rdev_get_drvdata(%struct.regulator_dev* %10)
  store %struct.da9211* %11, %struct.da9211** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %19 [
    i32 130, label %13
    i32 129, label %15
    i32 128, label %17
  ]

13:                                               ; preds = %2
  %14 = load i32, i32* @DA9211_BUCK_MODE_SYNC, align 4
  store i32 %14, i32* %7, align 4
  br label %19

15:                                               ; preds = %2
  %16 = load i32, i32* @DA9211_BUCK_MODE_AUTO, align 4
  store i32 %16, i32* %7, align 4
  br label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @DA9211_BUCK_MODE_SLEEP, align 4
  store i32 %18, i32* %7, align 4
  br label %19

19:                                               ; preds = %2, %17, %15, %13
  %20 = load %struct.da9211*, %struct.da9211** %6, align 8
  %21 = getelementptr inbounds %struct.da9211, %struct.da9211* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i64, i64* @DA9211_REG_BUCKA_CONF, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %23, %25
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @regmap_update_bits(i32 %22, i64 %26, i32 3, i32 %27)
  ret i32 %28
}

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local %struct.da9211* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @regmap_update_bits(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
