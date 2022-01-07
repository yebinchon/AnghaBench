; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_axp20x-regulator.c_axp20x_regulator_enable_regmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_axp20x-regulator.c_axp20x_regulator_enable_regmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.axp20x_dev = type { i32 }

@AXP20X_LDO3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @axp20x_regulator_enable_regmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axp20x_regulator_enable_regmap(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.axp20x_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %8 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %9 = call %struct.axp20x_dev* @rdev_get_drvdata(%struct.regulator_dev* %8)
  store %struct.axp20x_dev* %9, %struct.axp20x_dev** %4, align 8
  %10 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %11 = call i32 @rdev_get_id(%struct.regulator_dev* %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.axp20x_dev*, %struct.axp20x_dev** %4, align 8
  %13 = getelementptr inbounds %struct.axp20x_dev, %struct.axp20x_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %62 [
    i32 128, label %15
  ]

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @AXP20X_LDO3, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %61

19:                                               ; preds = %15
  %20 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %21 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = icmp ne %struct.TYPE_2__* %22, null
  br i1 %23, label %24, label %61

24:                                               ; preds = %19
  %25 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %26 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %61

31:                                               ; preds = %24
  %32 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %33 = call i32 @regulator_is_enabled_regmap(%struct.regulator_dev* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  br label %63

36:                                               ; preds = %31
  %37 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %38 = call i32 @regulator_get_voltage_sel_regmap(%struct.regulator_dev* %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %2, align 4
  br label %66

43:                                               ; preds = %36
  %44 = load i32, i32* %6, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  br label %63

47:                                               ; preds = %43
  %48 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %49 = call i32 @regulator_set_voltage_sel_regmap(%struct.regulator_dev* %48, i32 0)
  store i32 %49, i32* %7, align 4
  %50 = call i32 @usleep_range(i32 1000, i32 5000)
  %51 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %52 = call i32 @regulator_enable_regmap(%struct.regulator_dev* %51)
  %53 = load i32, i32* %7, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %7, align 4
  %55 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @regulator_set_voltage_sel_regmap(%struct.regulator_dev* %55, i32 %56)
  %58 = load i32, i32* %7, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %2, align 4
  br label %66

61:                                               ; preds = %24, %19, %15
  br label %63

62:                                               ; preds = %1
  br label %63

63:                                               ; preds = %62, %61, %46, %35
  %64 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %65 = call i32 @regulator_enable_regmap(%struct.regulator_dev* %64)
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %63, %47, %41
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.axp20x_dev* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @regulator_is_enabled_regmap(%struct.regulator_dev*) #1

declare dso_local i32 @regulator_get_voltage_sel_regmap(%struct.regulator_dev*) #1

declare dso_local i32 @regulator_set_voltage_sel_regmap(%struct.regulator_dev*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @regulator_enable_regmap(%struct.regulator_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
