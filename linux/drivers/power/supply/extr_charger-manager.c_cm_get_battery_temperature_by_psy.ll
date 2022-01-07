; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_charger-manager.c_cm_get_battery_temperature_by_psy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_charger-manager.c_cm_get_battery_temperature_by_psy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.charger_manager = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@POWER_SUPPLY_PROP_TEMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.charger_manager*, i32*)* @cm_get_battery_temperature_by_psy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cm_get_battery_temperature_by_psy(%struct.charger_manager* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.charger_manager*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.power_supply*, align 8
  %7 = alloca i32, align 4
  store %struct.charger_manager* %0, %struct.charger_manager** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.charger_manager*, %struct.charger_manager** %4, align 8
  %9 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.power_supply* @power_supply_get_by_name(i32 %12)
  store %struct.power_supply* %13, %struct.power_supply** %6, align 8
  %14 = load %struct.power_supply*, %struct.power_supply** %6, align 8
  %15 = icmp ne %struct.power_supply* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %28

19:                                               ; preds = %2
  %20 = load %struct.power_supply*, %struct.power_supply** %6, align 8
  %21 = load i32, i32* @POWER_SUPPLY_PROP_TEMP, align 4
  %22 = load i32*, i32** %5, align 8
  %23 = bitcast i32* %22 to %union.power_supply_propval*
  %24 = call i32 @power_supply_get_property(%struct.power_supply* %20, i32 %21, %union.power_supply_propval* %23)
  store i32 %24, i32* %7, align 4
  %25 = load %struct.power_supply*, %struct.power_supply** %6, align 8
  %26 = call i32 @power_supply_put(%struct.power_supply* %25)
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %19, %16
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local %struct.power_supply* @power_supply_get_by_name(i32) #1

declare dso_local i32 @power_supply_get_property(%struct.power_supply*, i32, %union.power_supply_propval*) #1

declare dso_local i32 @power_supply_put(%struct.power_supply*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
