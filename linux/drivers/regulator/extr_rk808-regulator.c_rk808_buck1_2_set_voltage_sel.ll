; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_rk808-regulator.c_rk808_buck1_2_set_voltage_sel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_rk808-regulator.c_rk808_buck1_2_set_voltage_sel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.rk808_regulator_data = type { %struct.gpio_desc** }
%struct.gpio_desc = type { i32 }

@RK808_DVS_REG_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @rk808_buck1_2_set_voltage_sel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk808_buck1_2_set_voltage_sel(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rk808_regulator_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.gpio_desc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %14 = call %struct.rk808_regulator_data* @rdev_get_drvdata(%struct.regulator_dev* %13)
  store %struct.rk808_regulator_data* %14, %struct.rk808_regulator_data** %6, align 8
  %15 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %16 = call i32 @rdev_get_id(%struct.regulator_dev* %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.rk808_regulator_data*, %struct.rk808_regulator_data** %6, align 8
  %18 = getelementptr inbounds %struct.rk808_regulator_data, %struct.rk808_regulator_data* %17, i32 0, i32 0
  %19 = load %struct.gpio_desc**, %struct.gpio_desc*** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.gpio_desc*, %struct.gpio_desc** %19, i64 %21
  %23 = load %struct.gpio_desc*, %struct.gpio_desc** %22, align 8
  store %struct.gpio_desc* %23, %struct.gpio_desc** %8, align 8
  %24 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %25 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %9, align 4
  %29 = load %struct.gpio_desc*, %struct.gpio_desc** %8, align 8
  %30 = icmp ne %struct.gpio_desc* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %2
  %32 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @rk808_buck1_2_i2c_set_voltage_sel(%struct.regulator_dev* %32, i32 %33)
  store i32 %34, i32* %3, align 4
  br label %104

35:                                               ; preds = %2
  %36 = load %struct.gpio_desc*, %struct.gpio_desc** %8, align 8
  %37 = call i32 @gpiod_get_value(%struct.gpio_desc* %36)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %35
  %41 = load i32, i32* @RK808_DVS_REG_OFFSET, align 4
  %42 = load i32, i32* %9, align 4
  %43 = add i32 %42, %41
  store i32 %43, i32* %9, align 4
  %44 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %45 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %48 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @regmap_read(i32 %46, i32 %51, i32* %10)
  store i32 %52, i32* %11, align 4
  br label %61

53:                                               ; preds = %35
  %54 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %55 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @RK808_DVS_REG_OFFSET, align 4
  %59 = add i32 %57, %58
  %60 = call i32 @regmap_read(i32 %56, i32 %59, i32* %10)
  store i32 %60, i32* %11, align 4
  br label %61

61:                                               ; preds = %53, %40
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %3, align 4
  br label %104

66:                                               ; preds = %61
  %67 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %68 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @ffs(i32 %71)
  %73 = sub nsw i32 %72, 1
  %74 = load i32, i32* %5, align 4
  %75 = shl i32 %74, %73
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %78 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = xor i32 %81, -1
  %83 = and i32 %76, %82
  %84 = load i32, i32* %5, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %5, align 4
  %86 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %87 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @regmap_write(i32 %88, i32 %89, i32 %90)
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %66
  %95 = load i32, i32* %11, align 4
  store i32 %95, i32* %3, align 4
  br label %104

96:                                               ; preds = %66
  %97 = load %struct.gpio_desc*, %struct.gpio_desc** %8, align 8
  %98 = load i32, i32* %12, align 4
  %99 = icmp ne i32 %98, 0
  %100 = xor i1 %99, true
  %101 = zext i1 %100 to i32
  %102 = call i32 @gpiod_set_value(%struct.gpio_desc* %97, i32 %101)
  %103 = load i32, i32* %11, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %96, %94, %64, %31
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local %struct.rk808_regulator_data* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @rk808_buck1_2_i2c_set_voltage_sel(%struct.regulator_dev*, i32) #1

declare dso_local i32 @gpiod_get_value(%struct.gpio_desc*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @gpiod_set_value(%struct.gpio_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
