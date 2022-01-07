; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_lego_ev3_battery.c_lego_ev3_battery_set_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_lego_ev3_battery.c_lego_ev3_battery_set_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.lego_ev3_battery = type { i32, i32, i32 }

@POWER_SUPPLY_TECHNOLOGY_UNKNOWN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @lego_ev3_battery_set_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lego_ev3_battery_set_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca %struct.lego_ev3_battery*, align 8
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %9 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %10 = call %struct.lego_ev3_battery* @power_supply_get_drvdata(%struct.power_supply* %9)
  store %struct.lego_ev3_battery* %10, %struct.lego_ev3_battery** %8, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %36 [
    i32 129, label %12
  ]

12:                                               ; preds = %3
  %13 = load %struct.lego_ev3_battery*, %struct.lego_ev3_battery** %8, align 8
  %14 = getelementptr inbounds %struct.lego_ev3_battery, %struct.lego_ev3_battery* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @POWER_SUPPLY_TECHNOLOGY_UNKNOWN, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %40

21:                                               ; preds = %12
  %22 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %23 = bitcast %union.power_supply_propval* %22 to i32*
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %32 [
    i32 128, label %25
  ]

25:                                               ; preds = %21
  %26 = load %struct.lego_ev3_battery*, %struct.lego_ev3_battery** %8, align 8
  %27 = getelementptr inbounds %struct.lego_ev3_battery, %struct.lego_ev3_battery* %26, i32 0, i32 0
  store i32 128, i32* %27, align 4
  %28 = load %struct.lego_ev3_battery*, %struct.lego_ev3_battery** %8, align 8
  %29 = getelementptr inbounds %struct.lego_ev3_battery, %struct.lego_ev3_battery* %28, i32 0, i32 1
  store i32 7800000, i32* %29, align 4
  %30 = load %struct.lego_ev3_battery*, %struct.lego_ev3_battery** %8, align 8
  %31 = getelementptr inbounds %struct.lego_ev3_battery, %struct.lego_ev3_battery* %30, i32 0, i32 2
  store i32 5400000, i32* %31, align 4
  br label %35

32:                                               ; preds = %21
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %40

35:                                               ; preds = %25
  br label %39

36:                                               ; preds = %3
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %40

39:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %39, %36, %32, %18
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local %struct.lego_ev3_battery* @power_supply_get_drvdata(%struct.power_supply*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
