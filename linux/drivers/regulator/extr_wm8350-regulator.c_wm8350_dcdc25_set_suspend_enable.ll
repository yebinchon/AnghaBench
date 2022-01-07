; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_wm8350-regulator.c_wm8350_dcdc25_set_suspend_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_wm8350-regulator.c_wm8350_dcdc25_set_suspend_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.wm8350 = type { i32 }

@WM8350_DCDC2_CONTROL = common dso_local global i32 0, align 4
@WM8350_DC2_HIB_MODE_MASK = common dso_local global i32 0, align 4
@WM8350_DC2_HIB_MODE_ACTIVE = common dso_local global i32 0, align 4
@WM8350_DC2_HIB_MODE_SHIFT = common dso_local global i32 0, align 4
@WM8350_DCDC5_CONTROL = common dso_local global i32 0, align 4
@WM8350_DC5_HIB_MODE_MASK = common dso_local global i32 0, align 4
@WM8350_DC5_HIB_MODE_ACTIVE = common dso_local global i32 0, align 4
@WM8350_DC5_HIB_MODE_SHIFT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @wm8350_dcdc25_set_suspend_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8350_dcdc25_set_suspend_enable(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.wm8350*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %7 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %8 = call %struct.wm8350* @rdev_get_drvdata(%struct.regulator_dev* %7)
  store %struct.wm8350* %8, %struct.wm8350** %4, align 8
  %9 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %10 = call i32 @rdev_get_id(%struct.regulator_dev* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %42 [
    i32 129, label %12
    i32 128, label %27
  ]

12:                                               ; preds = %1
  %13 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %14 = load i32, i32* @WM8350_DCDC2_CONTROL, align 4
  %15 = call i32 @wm8350_reg_read(%struct.wm8350* %13, i32 %14)
  %16 = load i32, i32* @WM8350_DC2_HIB_MODE_MASK, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  store i32 %18, i32* %6, align 4
  %19 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %20 = load i32, i32* @WM8350_DCDC2_CONTROL, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @WM8350_DC2_HIB_MODE_ACTIVE, align 4
  %23 = load i32, i32* @WM8350_DC2_HIB_MODE_SHIFT, align 4
  %24 = shl i32 %22, %23
  %25 = or i32 %21, %24
  %26 = call i32 @wm8350_reg_write(%struct.wm8350* %19, i32 %20, i32 %25)
  br label %45

27:                                               ; preds = %1
  %28 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %29 = load i32, i32* @WM8350_DCDC5_CONTROL, align 4
  %30 = call i32 @wm8350_reg_read(%struct.wm8350* %28, i32 %29)
  %31 = load i32, i32* @WM8350_DC5_HIB_MODE_MASK, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %30, %32
  store i32 %33, i32* %6, align 4
  %34 = load %struct.wm8350*, %struct.wm8350** %4, align 8
  %35 = load i32, i32* @WM8350_DCDC5_CONTROL, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @WM8350_DC5_HIB_MODE_ACTIVE, align 4
  %38 = load i32, i32* @WM8350_DC5_HIB_MODE_SHIFT, align 4
  %39 = shl i32 %37, %38
  %40 = or i32 %36, %39
  %41 = call i32 @wm8350_reg_write(%struct.wm8350* %34, i32 %35, i32 %40)
  br label %45

42:                                               ; preds = %1
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %46

45:                                               ; preds = %27, %12
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %42
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.wm8350* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @rdev_get_id(%struct.regulator_dev*) #1

declare dso_local i32 @wm8350_reg_read(%struct.wm8350*, i32) #1

declare dso_local i32 @wm8350_reg_write(%struct.wm8350*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
