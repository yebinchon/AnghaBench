; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_gpio-regulator.c_gpio_regulator_list_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_gpio-regulator.c_gpio_regulator_list_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.gpio_regulator_data = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @gpio_regulator_list_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_regulator_list_voltage(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gpio_regulator_data*, align 8
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %8 = call %struct.gpio_regulator_data* @rdev_get_drvdata(%struct.regulator_dev* %7)
  store %struct.gpio_regulator_data* %8, %struct.gpio_regulator_data** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.gpio_regulator_data*, %struct.gpio_regulator_data** %6, align 8
  %11 = getelementptr inbounds %struct.gpio_regulator_data, %struct.gpio_regulator_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp uge i32 %9, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %26

17:                                               ; preds = %2
  %18 = load %struct.gpio_regulator_data*, %struct.gpio_regulator_data** %6, align 8
  %19 = getelementptr inbounds %struct.gpio_regulator_data, %struct.gpio_regulator_data* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %17, %14
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local %struct.gpio_regulator_data* @rdev_get_drvdata(%struct.regulator_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
