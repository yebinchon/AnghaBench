; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_max77802-regulator.c_max77802_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_max77802-regulator.c_max77802_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.max77802_regulator_prv = type { i32* }

@MAX77802_OPMODE_LP = common dso_local global i32 0, align 4
@MAX77802_OPMODE_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"%s: regulator mode: 0x%x not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @max77802_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77802_set_mode(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.max77802_regulator_prv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %11 = call %struct.max77802_regulator_prv* @rdev_get_drvdata(%struct.regulator_dev* %10)
  store %struct.max77802_regulator_prv* %11, %struct.max77802_regulator_prv** %6, align 8
  %12 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %13 = call i32 @rdev_get_id(%struct.regulator_dev* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @max77802_get_opmode_shift(i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %21 [
    i32 128, label %17
    i32 129, label %19
  ]

17:                                               ; preds = %2
  %18 = load i32, i32* @MAX77802_OPMODE_LP, align 4
  store i32 %18, i32* %8, align 4
  br label %33

19:                                               ; preds = %2
  %20 = load i32, i32* @MAX77802_OPMODE_NORMAL, align 4
  store i32 %20, i32* %8, align 4
  br label %33

21:                                               ; preds = %2
  %22 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %23 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %22, i32 0, i32 2
  %24 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %25 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @dev_warn(i32* %23, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %58

33:                                               ; preds = %19, %17
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.max77802_regulator_prv*, %struct.max77802_regulator_prv** %6, align 8
  %36 = getelementptr inbounds %struct.max77802_regulator_prv, %struct.max77802_regulator_prv* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  store i32 %34, i32* %40, align 4
  %41 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %42 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %45 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %50 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %9, align 4
  %56 = shl i32 %54, %55
  %57 = call i32 @regmap_update_bits(i32 %43, i32 %48, i32 %53, i32 %56)
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %33, %21
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.max77802_regulator_prv* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @max77802_get_opmode_shift(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
