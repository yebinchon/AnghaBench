; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_da9211-regulator.c_da9211_get_current_limit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_da9211-regulator.c_da9211_get_current_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.da9211 = type { i32, i32 }

@da9211_current_limits = common dso_local global i32* null, align 8
@da9213_current_limits = common dso_local global i32* null, align 8
@da9215_current_limits = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@DA9211_REG_BUCK_ILIM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @da9211_get_current_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9211_get_current_limit(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.da9211*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %10 = call i32 @rdev_get_id(%struct.regulator_dev* %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %12 = call %struct.da9211* @rdev_get_drvdata(%struct.regulator_dev* %11)
  store %struct.da9211* %12, %struct.da9211** %5, align 8
  %13 = load %struct.da9211*, %struct.da9211** %5, align 8
  %14 = getelementptr inbounds %struct.da9211, %struct.da9211* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %22 [
    i32 130, label %16
    i32 129, label %18
    i32 128, label %20
  ]

16:                                               ; preds = %1
  %17 = load i32*, i32** @da9211_current_limits, align 8
  store i32* %17, i32** %8, align 8
  br label %25

18:                                               ; preds = %1
  %19 = load i32*, i32** @da9213_current_limits, align 8
  store i32* %19, i32** %8, align 8
  br label %25

20:                                               ; preds = %1
  %21 = load i32*, i32** @da9215_current_limits, align 8
  store i32* %21, i32** %8, align 8
  br label %25

22:                                               ; preds = %1
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %46

25:                                               ; preds = %20, %18, %16
  %26 = load %struct.da9211*, %struct.da9211** %5, align 8
  %27 = getelementptr inbounds %struct.da9211, %struct.da9211* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @DA9211_REG_BUCK_ILIM, align 4
  %30 = call i32 @regmap_read(i32 %28, i32 %29, i32* %6)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %2, align 4
  br label %46

35:                                               ; preds = %25
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* %4, align 4
  %38 = mul nsw i32 %37, 4
  %39 = lshr i32 %36, %38
  %40 = and i32 %39, 15
  store i32 %40, i32* %6, align 4
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* %6, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %35, %33, %22
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local %struct.da9211* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
