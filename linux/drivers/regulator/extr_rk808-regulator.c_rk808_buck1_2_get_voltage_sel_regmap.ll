; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_rk808-regulator.c_rk808_buck1_2_get_voltage_sel_regmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_rk808-regulator.c_rk808_buck1_2_get_voltage_sel_regmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i64 }
%struct.rk808_regulator_data = type { %struct.gpio_desc** }
%struct.gpio_desc = type { i32 }

@RK808_DVS_REG_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @rk808_buck1_2_get_voltage_sel_regmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk808_buck1_2_get_voltage_sel_regmap(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.rk808_regulator_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gpio_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %10 = call %struct.rk808_regulator_data* @rdev_get_drvdata(%struct.regulator_dev* %9)
  store %struct.rk808_regulator_data* %10, %struct.rk808_regulator_data** %4, align 8
  %11 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %12 = call i32 @rdev_get_id(%struct.regulator_dev* %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.rk808_regulator_data*, %struct.rk808_regulator_data** %4, align 8
  %14 = getelementptr inbounds %struct.rk808_regulator_data, %struct.rk808_regulator_data* %13, i32 0, i32 0
  %15 = load %struct.gpio_desc**, %struct.gpio_desc*** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.gpio_desc*, %struct.gpio_desc** %15, i64 %17
  %19 = load %struct.gpio_desc*, %struct.gpio_desc** %18, align 8
  store %struct.gpio_desc* %19, %struct.gpio_desc** %6, align 8
  %20 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %21 = icmp ne %struct.gpio_desc* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load %struct.gpio_desc*, %struct.gpio_desc** %6, align 8
  %24 = call i64 @gpiod_get_value(%struct.gpio_desc* %23)
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22, %1
  %27 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %28 = call i32 @regulator_get_voltage_sel_regmap(%struct.regulator_dev* %27)
  store i32 %28, i32* %2, align 4
  br label %63

29:                                               ; preds = %22
  %30 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %31 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %34 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @RK808_DVS_REG_OFFSET, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @regmap_read(i32 %32, i64 %39, i32* %7)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %29
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %2, align 4
  br label %63

45:                                               ; preds = %29
  %46 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %47 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %7, align 4
  %53 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %54 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @ffs(i32 %57)
  %59 = sub nsw i32 %58, 1
  %60 = load i32, i32* %7, align 4
  %61 = lshr i32 %60, %59
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %45, %43, %26
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local %struct.rk808_regulator_data* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i64 @gpiod_get_value(%struct.gpio_desc*) #1

declare dso_local i32 @regulator_get_voltage_sel_regmap(%struct.regulator_dev*) #1

declare dso_local i32 @regmap_read(i32, i64, i32*) #1

declare dso_local i32 @ffs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
