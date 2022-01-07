; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_wm831x_power.c_wm831x_wall_get_prop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_wm831x_power.c_wm831x_wall_get_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.wm831x_power = type { %struct.wm831x* }
%struct.wm831x = type { i32 }

@WM831X_PWR_WALL = common dso_local global i32 0, align 4
@WM831X_AUX_WALL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @wm831x_wall_get_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm831x_wall_get_prop(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca %struct.power_supply*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.power_supply_propval*, align 8
  %7 = alloca %struct.wm831x_power*, align 8
  %8 = alloca %struct.wm831x*, align 8
  %9 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %4, align 8
  store i32 %1, i32* %5, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %6, align 8
  %10 = load %struct.power_supply*, %struct.power_supply** %4, align 8
  %11 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.wm831x_power* @dev_get_drvdata(i32 %13)
  store %struct.wm831x_power* %14, %struct.wm831x_power** %7, align 8
  %15 = load %struct.wm831x_power*, %struct.wm831x_power** %7, align 8
  %16 = getelementptr inbounds %struct.wm831x_power, %struct.wm831x_power* %15, i32 0, i32 0
  %17 = load %struct.wm831x*, %struct.wm831x** %16, align 8
  store %struct.wm831x* %17, %struct.wm831x** %8, align 8
  store i32 0, i32* %9, align 4
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %29 [
    i32 129, label %19
    i32 128, label %24
  ]

19:                                               ; preds = %3
  %20 = load %struct.wm831x*, %struct.wm831x** %8, align 8
  %21 = load i32, i32* @WM831X_PWR_WALL, align 4
  %22 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %23 = call i32 @wm831x_power_check_online(%struct.wm831x* %20, i32 %21, %union.power_supply_propval* %22)
  store i32 %23, i32* %9, align 4
  br label %32

24:                                               ; preds = %3
  %25 = load %struct.wm831x*, %struct.wm831x** %8, align 8
  %26 = load i32, i32* @WM831X_AUX_WALL, align 4
  %27 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %28 = call i32 @wm831x_power_read_voltage(%struct.wm831x* %25, i32 %26, %union.power_supply_propval* %27)
  store i32 %28, i32* %9, align 4
  br label %32

29:                                               ; preds = %3
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %29, %24, %19
  %33 = load i32, i32* %9, align 4
  ret i32 %33
}

declare dso_local %struct.wm831x_power* @dev_get_drvdata(i32) #1

declare dso_local i32 @wm831x_power_check_online(%struct.wm831x*, i32, %union.power_supply_propval*) #1

declare dso_local i32 @wm831x_power_read_voltage(%struct.wm831x*, i32, %union.power_supply_propval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
