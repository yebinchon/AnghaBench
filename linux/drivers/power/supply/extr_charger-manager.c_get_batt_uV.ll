; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_charger-manager.c_get_batt_uV.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_charger-manager.c_get_batt_uV.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.charger_manager = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.power_supply = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@POWER_SUPPLY_PROP_VOLTAGE_NOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.charger_manager*, i32*)* @get_batt_uV to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_batt_uV(%struct.charger_manager* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.charger_manager*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %union.power_supply_propval, align 4
  %7 = alloca %struct.power_supply*, align 8
  %8 = alloca i32, align 4
  store %struct.charger_manager* %0, %struct.charger_manager** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.charger_manager*, %struct.charger_manager** %4, align 8
  %10 = getelementptr inbounds %struct.charger_manager, %struct.charger_manager* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.power_supply* @power_supply_get_by_name(i32 %13)
  store %struct.power_supply* %14, %struct.power_supply** %7, align 8
  %15 = load %struct.power_supply*, %struct.power_supply** %7, align 8
  %16 = icmp ne %struct.power_supply* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %34

20:                                               ; preds = %2
  %21 = load %struct.power_supply*, %struct.power_supply** %7, align 8
  %22 = load i32, i32* @POWER_SUPPLY_PROP_VOLTAGE_NOW, align 4
  %23 = call i32 @power_supply_get_property(%struct.power_supply* %21, i32 %22, %union.power_supply_propval* %6)
  store i32 %23, i32* %8, align 4
  %24 = load %struct.power_supply*, %struct.power_supply** %7, align 8
  %25 = call i32 @power_supply_put(%struct.power_supply* %24)
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %3, align 4
  br label %34

30:                                               ; preds = %20
  %31 = bitcast %union.power_supply_propval* %6 to i32*
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %5, align 8
  store i32 %32, i32* %33, align 4
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %30, %28, %17
  %35 = load i32, i32* %3, align 4
  ret i32 %35
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
