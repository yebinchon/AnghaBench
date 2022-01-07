; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_max77693_charger.c_max77693_charger_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_max77693_charger.c_max77693_charger_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.max77693_charger = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.regmap* }
%struct.regmap = type { i32 }

@max77693_charger_model = common dso_local global i32 0, align 4
@max77693_charger_manufacturer = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @max77693_charger_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max77693_charger_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca %struct.max77693_charger*, align 8
  %9 = alloca %struct.regmap*, align 8
  %10 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %11 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %12 = call %struct.max77693_charger* @power_supply_get_drvdata(%struct.power_supply* %11)
  store %struct.max77693_charger* %12, %struct.max77693_charger** %8, align 8
  %13 = load %struct.max77693_charger*, %struct.max77693_charger** %8, align 8
  %14 = getelementptr inbounds %struct.max77693_charger, %struct.max77693_charger* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.regmap*, %struct.regmap** %16, align 8
  store %struct.regmap* %17, %struct.regmap** %9, align 8
  store i32 0, i32* %10, align 4
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %52 [
    i32 128, label %19
    i32 134, label %24
    i32 133, label %29
    i32 129, label %34
    i32 130, label %39
    i32 131, label %44
    i32 132, label %48
  ]

19:                                               ; preds = %3
  %20 = load %struct.regmap*, %struct.regmap** %9, align 8
  %21 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %22 = bitcast %union.power_supply_propval* %21 to i32*
  %23 = call i32 @max77693_get_charger_state(%struct.regmap* %20, i32* %22)
  store i32 %23, i32* %10, align 4
  br label %55

24:                                               ; preds = %3
  %25 = load %struct.regmap*, %struct.regmap** %9, align 8
  %26 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %27 = bitcast %union.power_supply_propval* %26 to i32*
  %28 = call i32 @max77693_get_charge_type(%struct.regmap* %25, i32* %27)
  store i32 %28, i32* %10, align 4
  br label %55

29:                                               ; preds = %3
  %30 = load %struct.regmap*, %struct.regmap** %9, align 8
  %31 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %32 = bitcast %union.power_supply_propval* %31 to i32*
  %33 = call i32 @max77693_get_battery_health(%struct.regmap* %30, i32* %32)
  store i32 %33, i32* %10, align 4
  br label %55

34:                                               ; preds = %3
  %35 = load %struct.regmap*, %struct.regmap** %9, align 8
  %36 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %37 = bitcast %union.power_supply_propval* %36 to i32*
  %38 = call i32 @max77693_get_present(%struct.regmap* %35, i32* %37)
  store i32 %38, i32* %10, align 4
  br label %55

39:                                               ; preds = %3
  %40 = load %struct.regmap*, %struct.regmap** %9, align 8
  %41 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %42 = bitcast %union.power_supply_propval* %41 to i32*
  %43 = call i32 @max77693_get_online(%struct.regmap* %40, i32* %42)
  store i32 %43, i32* %10, align 4
  br label %55

44:                                               ; preds = %3
  %45 = load i32, i32* @max77693_charger_model, align 4
  %46 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %47 = bitcast %union.power_supply_propval* %46 to i32*
  store i32 %45, i32* %47, align 4
  br label %55

48:                                               ; preds = %3
  %49 = load i32, i32* @max77693_charger_manufacturer, align 4
  %50 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %51 = bitcast %union.power_supply_propval* %50 to i32*
  store i32 %49, i32* %51, align 4
  br label %55

52:                                               ; preds = %3
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %57

55:                                               ; preds = %48, %44, %39, %34, %29, %24, %19
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %55, %52
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local %struct.max77693_charger* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @max77693_get_charger_state(%struct.regmap*, i32*) #1

declare dso_local i32 @max77693_get_charge_type(%struct.regmap*, i32*) #1

declare dso_local i32 @max77693_get_battery_health(%struct.regmap*, i32*) #1

declare dso_local i32 @max77693_get_present(%struct.regmap*, i32*) #1

declare dso_local i32 @max77693_get_online(%struct.regmap*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
