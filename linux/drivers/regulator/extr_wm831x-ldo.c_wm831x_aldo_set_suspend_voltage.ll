; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_wm831x-ldo.c_wm831x_aldo_set_suspend_voltage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_wm831x-ldo.c_wm831x_aldo_set_suspend_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.wm831x_ldo = type { i32, %struct.wm831x* }
%struct.wm831x = type { i32 }

@WM831X_LDO_SLEEP_CONTROL = common dso_local global i32 0, align 4
@WM831X_LDO7_ON_VSEL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*, i32)* @wm831x_aldo_set_suspend_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_aldo_set_suspend_voltage(%struct.regulator_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wm831x_ldo*, align 8
  %7 = alloca %struct.wm831x*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %11 = call %struct.wm831x_ldo* @rdev_get_drvdata(%struct.regulator_dev* %10)
  store %struct.wm831x_ldo* %11, %struct.wm831x_ldo** %6, align 8
  %12 = load %struct.wm831x_ldo*, %struct.wm831x_ldo** %6, align 8
  %13 = getelementptr inbounds %struct.wm831x_ldo, %struct.wm831x_ldo* %12, i32 0, i32 1
  %14 = load %struct.wm831x*, %struct.wm831x** %13, align 8
  store %struct.wm831x* %14, %struct.wm831x** %7, align 8
  %15 = load %struct.wm831x_ldo*, %struct.wm831x_ldo** %6, align 8
  %16 = getelementptr inbounds %struct.wm831x_ldo, %struct.wm831x_ldo* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @WM831X_LDO_SLEEP_CONTROL, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %9, align 4
  %20 = load %struct.regulator_dev*, %struct.regulator_dev** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @regulator_map_voltage_linear_range(%struct.regulator_dev* %20, i32 %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %3, align 4
  br label %34

28:                                               ; preds = %2
  %29 = load %struct.wm831x*, %struct.wm831x** %7, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @WM831X_LDO7_ON_VSEL_MASK, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @wm831x_set_bits(%struct.wm831x* %29, i32 %30, i32 %31, i32 %32)
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %28, %26
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local %struct.wm831x_ldo* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @regulator_map_voltage_linear_range(%struct.regulator_dev*, i32, i32) #1

declare dso_local i32 @wm831x_set_bits(%struct.wm831x*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
