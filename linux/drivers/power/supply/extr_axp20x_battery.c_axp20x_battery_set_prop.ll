; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_axp20x_battery.c_axp20x_battery_set_prop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_axp20x_battery.c_axp20x_battery_set_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.axp20x_batt_ps = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.axp20x_batt_ps*, i32)* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @axp20x_battery_set_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axp20x_battery_set_prop(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca %struct.axp20x_batt_ps*, align 8
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %9 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %10 = call %struct.axp20x_batt_ps* @power_supply_get_drvdata(%struct.power_supply* %9)
  store %struct.axp20x_batt_ps* %10, %struct.axp20x_batt_ps** %8, align 8
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %41 [
    i32 128, label %12
    i32 129, label %18
    i32 131, label %29
    i32 130, label %35
  ]

12:                                               ; preds = %3
  %13 = load %struct.axp20x_batt_ps*, %struct.axp20x_batt_ps** %8, align 8
  %14 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %15 = bitcast %union.power_supply_propval* %14 to i32*
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @axp20x_set_voltage_min_design(%struct.axp20x_batt_ps* %13, i32 %16)
  store i32 %17, i32* %4, align 4
  br label %44

18:                                               ; preds = %3
  %19 = load %struct.axp20x_batt_ps*, %struct.axp20x_batt_ps** %8, align 8
  %20 = getelementptr inbounds %struct.axp20x_batt_ps, %struct.axp20x_batt_ps* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.axp20x_batt_ps*, i32)*, i32 (%struct.axp20x_batt_ps*, i32)** %22, align 8
  %24 = load %struct.axp20x_batt_ps*, %struct.axp20x_batt_ps** %8, align 8
  %25 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %26 = bitcast %union.power_supply_propval* %25 to i32*
  %27 = load i32, i32* %26, align 4
  %28 = call i32 %23(%struct.axp20x_batt_ps* %24, i32 %27)
  store i32 %28, i32* %4, align 4
  br label %44

29:                                               ; preds = %3
  %30 = load %struct.axp20x_batt_ps*, %struct.axp20x_batt_ps** %8, align 8
  %31 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %32 = bitcast %union.power_supply_propval* %31 to i32*
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @axp20x_set_constant_charge_current(%struct.axp20x_batt_ps* %30, i32 %33)
  store i32 %34, i32* %4, align 4
  br label %44

35:                                               ; preds = %3
  %36 = load %struct.axp20x_batt_ps*, %struct.axp20x_batt_ps** %8, align 8
  %37 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %38 = bitcast %union.power_supply_propval* %37 to i32*
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @axp20x_set_max_constant_charge_current(%struct.axp20x_batt_ps* %36, i32 %39)
  store i32 %40, i32* %4, align 4
  br label %44

41:                                               ; preds = %3
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %41, %35, %29, %18, %12
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local %struct.axp20x_batt_ps* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @axp20x_set_voltage_min_design(%struct.axp20x_batt_ps*, i32) #1

declare dso_local i32 @axp20x_set_constant_charge_current(%struct.axp20x_batt_ps*, i32) #1

declare dso_local i32 @axp20x_set_max_constant_charge_current(%struct.axp20x_batt_ps*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
