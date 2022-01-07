; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_max77802-regulator.c_max77802_set_suspend_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_max77802-regulator.c_max77802_set_suspend_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.max77802_regulator_prv = type { i32* }

@MAX77802_OFF_PWRREQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @max77802_set_suspend_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77802_set_suspend_disable(%struct.regulator_dev* %0) #0 {
  %2 = alloca %struct.regulator_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.max77802_regulator_prv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %2, align 8
  %7 = load i32, i32* @MAX77802_OFF_PWRREQ, align 4
  store i32 %7, i32* %3, align 4
  %8 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %9 = call %struct.max77802_regulator_prv* @rdev_get_drvdata(%struct.regulator_dev* %8)
  store %struct.max77802_regulator_prv* %9, %struct.max77802_regulator_prv** %4, align 8
  %10 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %11 = call i32 @rdev_get_id(%struct.regulator_dev* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @max77802_get_opmode_shift(i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.max77802_regulator_prv*, %struct.max77802_regulator_prv** %4, align 8
  %16 = getelementptr inbounds %struct.max77802_regulator_prv, %struct.max77802_regulator_prv* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  store i32 %14, i32* %20, align 4
  %21 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %22 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %25 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %30 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* %6, align 4
  %36 = shl i32 %34, %35
  %37 = call i32 @regmap_update_bits(i32 %23, i32 %28, i32 %33, i32 %36)
  ret i32 %37
}

declare dso_local %struct.max77802_regulator_prv* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @max77802_get_opmode_shift(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
