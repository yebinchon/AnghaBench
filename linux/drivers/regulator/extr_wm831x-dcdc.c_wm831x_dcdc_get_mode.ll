; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_wm831x-dcdc.c_wm831x_dcdc_get_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_wm831x-dcdc.c_wm831x_dcdc_get_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { i32 }
%struct.wm831x_dcdc = type { i64, %struct.wm831x* }
%struct.wm831x = type { i32 }

@WM831X_DCDC_ON_CONFIG = common dso_local global i64 0, align 8
@WM831X_DC1_ON_MODE_MASK = common dso_local global i32 0, align 4
@WM831X_DC1_ON_MODE_SHIFT = common dso_local global i32 0, align 4
@REGULATOR_MODE_FAST = common dso_local global i32 0, align 4
@REGULATOR_MODE_NORMAL = common dso_local global i32 0, align 4
@REGULATOR_MODE_STANDBY = common dso_local global i32 0, align 4
@REGULATOR_MODE_IDLE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.regulator_dev*)* @wm831x_dcdc_get_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_dcdc_get_mode(%struct.regulator_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.wm831x_dcdc*, align 8
  %5 = alloca %struct.wm831x*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %3, align 8
  %8 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %9 = call %struct.wm831x_dcdc* @rdev_get_drvdata(%struct.regulator_dev* %8)
  store %struct.wm831x_dcdc* %9, %struct.wm831x_dcdc** %4, align 8
  %10 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %4, align 8
  %11 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %10, i32 0, i32 1
  %12 = load %struct.wm831x*, %struct.wm831x** %11, align 8
  store %struct.wm831x* %12, %struct.wm831x** %5, align 8
  %13 = load %struct.wm831x_dcdc*, %struct.wm831x_dcdc** %4, align 8
  %14 = getelementptr inbounds %struct.wm831x_dcdc, %struct.wm831x_dcdc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @WM831X_DCDC_ON_CONFIG, align 8
  %17 = add nsw i64 %15, %16
  store i64 %17, i64* %6, align 8
  %18 = load %struct.wm831x*, %struct.wm831x** %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @wm831x_reg_read(%struct.wm831x* %18, i64 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %2, align 4
  br label %44

25:                                               ; preds = %1
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @WM831X_DC1_ON_MODE_MASK, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @WM831X_DC1_ON_MODE_SHIFT, align 4
  %30 = ashr i32 %28, %29
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  switch i32 %31, label %40 [
    i32 131, label %32
    i32 129, label %34
    i32 128, label %36
    i32 130, label %38
  ]

32:                                               ; preds = %25
  %33 = load i32, i32* @REGULATOR_MODE_FAST, align 4
  store i32 %33, i32* %2, align 4
  br label %44

34:                                               ; preds = %25
  %35 = load i32, i32* @REGULATOR_MODE_NORMAL, align 4
  store i32 %35, i32* %2, align 4
  br label %44

36:                                               ; preds = %25
  %37 = load i32, i32* @REGULATOR_MODE_STANDBY, align 4
  store i32 %37, i32* %2, align 4
  br label %44

38:                                               ; preds = %25
  %39 = load i32, i32* @REGULATOR_MODE_IDLE, align 4
  store i32 %39, i32* %2, align 4
  br label %44

40:                                               ; preds = %25
  %41 = call i32 (...) @BUG()
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %40, %38, %36, %34, %32, %23
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.wm831x_dcdc* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @wm831x_reg_read(%struct.wm831x*, i64) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
