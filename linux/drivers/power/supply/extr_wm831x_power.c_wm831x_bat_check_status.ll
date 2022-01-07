; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_wm831x_power.c_wm831x_bat_check_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_wm831x_power.c_wm831x_bat_check_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm831x = type { i32 }

@WM831X_SYSTEM_STATUS = common dso_local global i32 0, align 4
@WM831X_PWR_SRC_BATT = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_DISCHARGING = common dso_local global i32 0, align 4
@WM831X_CHARGER_STATUS = common dso_local global i32 0, align 4
@WM831X_CHG_STATE_MASK = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_NOT_CHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_CHARGING = common dso_local global i32 0, align 4
@POWER_SUPPLY_STATUS_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm831x*, i32*)* @wm831x_bat_check_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_bat_check_status(%struct.wm831x* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wm831x*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.wm831x* %0, %struct.wm831x** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %8 = load i32, i32* @WM831X_SYSTEM_STATUS, align 4
  %9 = call i32 @wm831x_reg_read(%struct.wm831x* %7, i32 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %44

14:                                               ; preds = %2
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @WM831X_PWR_SRC_BATT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32, i32* @POWER_SUPPLY_STATUS_DISCHARGING, align 4
  %21 = load i32*, i32** %5, align 8
  store i32 %20, i32* %21, align 4
  store i32 0, i32* %3, align 4
  br label %44

22:                                               ; preds = %14
  %23 = load %struct.wm831x*, %struct.wm831x** %4, align 8
  %24 = load i32, i32* @WM831X_CHARGER_STATUS, align 4
  %25 = call i32 @wm831x_reg_read(%struct.wm831x* %23, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %3, align 4
  br label %44

30:                                               ; preds = %22
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @WM831X_CHG_STATE_MASK, align 4
  %33 = and i32 %31, %32
  switch i32 %33, label %40 [
    i32 129, label %34
    i32 128, label %37
    i32 130, label %37
  ]

34:                                               ; preds = %30
  %35 = load i32, i32* @POWER_SUPPLY_STATUS_NOT_CHARGING, align 4
  %36 = load i32*, i32** %5, align 8
  store i32 %35, i32* %36, align 4
  br label %43

37:                                               ; preds = %30, %30
  %38 = load i32, i32* @POWER_SUPPLY_STATUS_CHARGING, align 4
  %39 = load i32*, i32** %5, align 8
  store i32 %38, i32* %39, align 4
  br label %43

40:                                               ; preds = %30
  %41 = load i32, i32* @POWER_SUPPLY_STATUS_UNKNOWN, align 4
  %42 = load i32*, i32** %5, align 8
  store i32 %41, i32* %42, align 4
  br label %43

43:                                               ; preds = %40, %37, %34
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %28, %19, %12
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @wm831x_reg_read(%struct.wm831x*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
