; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_act8945a_charger.c_act8945a_charger_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_act8945a_charger.c_act8945a_charger_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.act8945a_charger = type { %struct.regmap* }
%struct.regmap = type { i32 }

@POWER_SUPPLY_TECHNOLOGY_LION = common dso_local global i32 0, align 4
@act8945a_charger_model = common dso_local global i32 0, align 4
@act8945a_charger_manufacturer = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @act8945a_charger_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @act8945a_charger_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca %struct.act8945a_charger*, align 8
  %9 = alloca %struct.regmap*, align 8
  %10 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %11 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %12 = call %struct.act8945a_charger* @power_supply_get_drvdata(%struct.power_supply* %11)
  store %struct.act8945a_charger* %12, %struct.act8945a_charger** %8, align 8
  %13 = load %struct.act8945a_charger*, %struct.act8945a_charger** %8, align 8
  %14 = getelementptr inbounds %struct.act8945a_charger, %struct.act8945a_charger* %13, i32 0, i32 0
  %15 = load %struct.regmap*, %struct.regmap** %14, align 8
  store %struct.regmap* %15, %struct.regmap** %9, align 8
  store i32 0, i32* %10, align 4
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %56 [
    i32 129, label %17
    i32 134, label %22
    i32 128, label %27
    i32 132, label %31
    i32 135, label %36
    i32 133, label %42
    i32 130, label %48
    i32 131, label %52
  ]

17:                                               ; preds = %3
  %18 = load %struct.regmap*, %struct.regmap** %9, align 8
  %19 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %20 = bitcast %union.power_supply_propval* %19 to i32*
  %21 = call i32 @act8945a_get_charger_state(%struct.regmap* %18, i32* %20)
  store i32 %21, i32* %10, align 4
  br label %59

22:                                               ; preds = %3
  %23 = load %struct.regmap*, %struct.regmap** %9, align 8
  %24 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %25 = bitcast %union.power_supply_propval* %24 to i32*
  %26 = call i32 @act8945a_get_charge_type(%struct.regmap* %23, i32* %25)
  store i32 %26, i32* %10, align 4
  br label %59

27:                                               ; preds = %3
  %28 = load i32, i32* @POWER_SUPPLY_TECHNOLOGY_LION, align 4
  %29 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %30 = bitcast %union.power_supply_propval* %29 to i32*
  store i32 %28, i32* %30, align 4
  br label %59

31:                                               ; preds = %3
  %32 = load %struct.regmap*, %struct.regmap** %9, align 8
  %33 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %34 = bitcast %union.power_supply_propval* %33 to i32*
  %35 = call i32 @act8945a_get_battery_health(%struct.regmap* %32, i32* %34)
  store i32 %35, i32* %10, align 4
  br label %59

36:                                               ; preds = %3
  %37 = load %struct.act8945a_charger*, %struct.act8945a_charger** %8, align 8
  %38 = load %struct.regmap*, %struct.regmap** %9, align 8
  %39 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %40 = bitcast %union.power_supply_propval* %39 to i32*
  %41 = call i32 @act8945a_get_capacity_level(%struct.act8945a_charger* %37, %struct.regmap* %38, i32* %40)
  store i32 %41, i32* %10, align 4
  br label %59

42:                                               ; preds = %3
  %43 = load %struct.act8945a_charger*, %struct.act8945a_charger** %8, align 8
  %44 = load %struct.regmap*, %struct.regmap** %9, align 8
  %45 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %46 = bitcast %union.power_supply_propval* %45 to i32*
  %47 = call i32 @act8945a_get_current_max(%struct.act8945a_charger* %43, %struct.regmap* %44, i32* %46)
  store i32 %47, i32* %10, align 4
  br label %59

48:                                               ; preds = %3
  %49 = load i32, i32* @act8945a_charger_model, align 4
  %50 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %51 = bitcast %union.power_supply_propval* %50 to i32*
  store i32 %49, i32* %51, align 4
  br label %59

52:                                               ; preds = %3
  %53 = load i32, i32* @act8945a_charger_manufacturer, align 4
  %54 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %55 = bitcast %union.power_supply_propval* %54 to i32*
  store i32 %53, i32* %55, align 4
  br label %59

56:                                               ; preds = %3
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %61

59:                                               ; preds = %52, %48, %42, %36, %31, %27, %22, %17
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %59, %56
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.act8945a_charger* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @act8945a_get_charger_state(%struct.regmap*, i32*) #1

declare dso_local i32 @act8945a_get_charge_type(%struct.regmap*, i32*) #1

declare dso_local i32 @act8945a_get_battery_health(%struct.regmap*, i32*) #1

declare dso_local i32 @act8945a_get_capacity_level(%struct.act8945a_charger*, %struct.regmap*, i32*) #1

declare dso_local i32 @act8945a_get_current_max(%struct.act8945a_charger*, %struct.regmap*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
