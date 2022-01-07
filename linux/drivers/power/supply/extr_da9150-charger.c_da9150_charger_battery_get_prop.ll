; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9150-charger.c_da9150_charger_battery_get_prop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9150-charger.c_da9150_charger_battery_get_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.da9150_charger = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @da9150_charger_battery_get_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9150_charger_battery_get_prop(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca %struct.power_supply*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.power_supply_propval*, align 8
  %7 = alloca %struct.da9150_charger*, align 8
  %8 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %4, align 8
  store i32 %1, i32* %5, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %6, align 8
  %9 = load %struct.power_supply*, %struct.power_supply** %4, align 8
  %10 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.da9150_charger* @dev_get_drvdata(i32 %12)
  store %struct.da9150_charger* %13, %struct.da9150_charger** %7, align 8
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %52 [
    i32 130, label %15
    i32 132, label %19
    i32 133, label %24
    i32 131, label %28
    i32 136, label %32
    i32 129, label %36
    i32 128, label %40
    i32 135, label %44
    i32 134, label %48
  ]

15:                                               ; preds = %3
  %16 = load %struct.da9150_charger*, %struct.da9150_charger** %7, align 8
  %17 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %18 = call i32 @da9150_charger_battery_status(%struct.da9150_charger* %16, %union.power_supply_propval* %17)
  store i32 %18, i32* %8, align 4
  br label %55

19:                                               ; preds = %3
  %20 = load %struct.da9150_charger*, %struct.da9150_charger** %7, align 8
  %21 = load %struct.power_supply*, %struct.power_supply** %4, align 8
  %22 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %23 = call i32 @da9150_charger_supply_online(%struct.da9150_charger* %20, %struct.power_supply* %21, %union.power_supply_propval* %22)
  store i32 %23, i32* %8, align 4
  br label %55

24:                                               ; preds = %3
  %25 = load %struct.da9150_charger*, %struct.da9150_charger** %7, align 8
  %26 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %27 = call i32 @da9150_charger_battery_health(%struct.da9150_charger* %25, %union.power_supply_propval* %26)
  store i32 %27, i32* %8, align 4
  br label %55

28:                                               ; preds = %3
  %29 = load %struct.da9150_charger*, %struct.da9150_charger** %7, align 8
  %30 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %31 = call i32 @da9150_charger_battery_present(%struct.da9150_charger* %29, %union.power_supply_propval* %30)
  store i32 %31, i32* %8, align 4
  br label %55

32:                                               ; preds = %3
  %33 = load %struct.da9150_charger*, %struct.da9150_charger** %7, align 8
  %34 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %35 = call i32 @da9150_charger_battery_charge_type(%struct.da9150_charger* %33, %union.power_supply_propval* %34)
  store i32 %35, i32* %8, align 4
  br label %55

36:                                               ; preds = %3
  %37 = load %struct.da9150_charger*, %struct.da9150_charger** %7, align 8
  %38 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %39 = call i32 @da9150_charger_battery_voltage_min(%struct.da9150_charger* %37, %union.power_supply_propval* %38)
  store i32 %39, i32* %8, align 4
  br label %55

40:                                               ; preds = %3
  %41 = load %struct.da9150_charger*, %struct.da9150_charger** %7, align 8
  %42 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %43 = call i32 @da9150_charger_battery_voltage_now(%struct.da9150_charger* %41, %union.power_supply_propval* %42)
  store i32 %43, i32* %8, align 4
  br label %55

44:                                               ; preds = %3
  %45 = load %struct.da9150_charger*, %struct.da9150_charger** %7, align 8
  %46 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %47 = call i32 @da9150_charger_battery_current_max(%struct.da9150_charger* %45, %union.power_supply_propval* %46)
  store i32 %47, i32* %8, align 4
  br label %55

48:                                               ; preds = %3
  %49 = load %struct.da9150_charger*, %struct.da9150_charger** %7, align 8
  %50 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %51 = call i32 @da9150_charger_battery_voltage_max(%struct.da9150_charger* %49, %union.power_supply_propval* %50)
  store i32 %51, i32* %8, align 4
  br label %55

52:                                               ; preds = %3
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %8, align 4
  br label %55

55:                                               ; preds = %52, %48, %44, %40, %36, %32, %28, %24, %19, %15
  %56 = load i32, i32* %8, align 4
  ret i32 %56
}

declare dso_local %struct.da9150_charger* @dev_get_drvdata(i32) #1

declare dso_local i32 @da9150_charger_battery_status(%struct.da9150_charger*, %union.power_supply_propval*) #1

declare dso_local i32 @da9150_charger_supply_online(%struct.da9150_charger*, %struct.power_supply*, %union.power_supply_propval*) #1

declare dso_local i32 @da9150_charger_battery_health(%struct.da9150_charger*, %union.power_supply_propval*) #1

declare dso_local i32 @da9150_charger_battery_present(%struct.da9150_charger*, %union.power_supply_propval*) #1

declare dso_local i32 @da9150_charger_battery_charge_type(%struct.da9150_charger*, %union.power_supply_propval*) #1

declare dso_local i32 @da9150_charger_battery_voltage_min(%struct.da9150_charger*, %union.power_supply_propval*) #1

declare dso_local i32 @da9150_charger_battery_voltage_now(%struct.da9150_charger*, %union.power_supply_propval*) #1

declare dso_local i32 @da9150_charger_battery_current_max(%struct.da9150_charger*, %union.power_supply_propval*) #1

declare dso_local i32 @da9150_charger_battery_voltage_max(%struct.da9150_charger*, %union.power_supply_propval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
