; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_max14577_charger.c_max14577_charger_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_max14577_charger.c_max14577_charger_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.max14577_charger = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@model_names = common dso_local global i32* null, align 8
@MAXIM_DEVICE_TYPE_NUM = common dso_local global i32 0, align 4
@manufacturer = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @max14577_charger_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max14577_charger_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.power_supply*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.power_supply_propval*, align 8
  %8 = alloca %struct.max14577_charger*, align 8
  %9 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %7, align 8
  %10 = load %struct.power_supply*, %struct.power_supply** %5, align 8
  %11 = call %struct.max14577_charger* @power_supply_get_drvdata(%struct.power_supply* %10)
  store %struct.max14577_charger* %11, %struct.max14577_charger** %8, align 8
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %59 [
    i32 128, label %13
    i32 134, label %18
    i32 133, label %23
    i32 129, label %28
    i32 130, label %33
    i32 131, label %38
    i32 132, label %55
  ]

13:                                               ; preds = %3
  %14 = load %struct.max14577_charger*, %struct.max14577_charger** %8, align 8
  %15 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %16 = bitcast %union.power_supply_propval* %15 to i32*
  %17 = call i32 @max14577_get_charger_state(%struct.max14577_charger* %14, i32* %16)
  store i32 %17, i32* %9, align 4
  br label %62

18:                                               ; preds = %3
  %19 = load %struct.max14577_charger*, %struct.max14577_charger** %8, align 8
  %20 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %21 = bitcast %union.power_supply_propval* %20 to i32*
  %22 = call i32 @max14577_get_charge_type(%struct.max14577_charger* %19, i32* %21)
  store i32 %22, i32* %9, align 4
  br label %62

23:                                               ; preds = %3
  %24 = load %struct.max14577_charger*, %struct.max14577_charger** %8, align 8
  %25 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %26 = bitcast %union.power_supply_propval* %25 to i32*
  %27 = call i32 @max14577_get_battery_health(%struct.max14577_charger* %24, i32* %26)
  store i32 %27, i32* %9, align 4
  br label %62

28:                                               ; preds = %3
  %29 = load %struct.max14577_charger*, %struct.max14577_charger** %8, align 8
  %30 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %31 = bitcast %union.power_supply_propval* %30 to i32*
  %32 = call i32 @max14577_get_present(%struct.max14577_charger* %29, i32* %31)
  store i32 %32, i32* %9, align 4
  br label %62

33:                                               ; preds = %3
  %34 = load %struct.max14577_charger*, %struct.max14577_charger** %8, align 8
  %35 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %36 = bitcast %union.power_supply_propval* %35 to i32*
  %37 = call i32 @max14577_get_online(%struct.max14577_charger* %34, i32* %36)
  store i32 %37, i32* %9, align 4
  br label %62

38:                                               ; preds = %3
  %39 = load i32*, i32** @model_names, align 8
  %40 = call i32 @ARRAY_SIZE(i32* %39)
  %41 = load i32, i32* @MAXIM_DEVICE_TYPE_NUM, align 4
  %42 = icmp ne i32 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @BUILD_BUG_ON(i32 %43)
  %45 = load i32*, i32** @model_names, align 8
  %46 = load %struct.max14577_charger*, %struct.max14577_charger** %8, align 8
  %47 = getelementptr inbounds %struct.max14577_charger, %struct.max14577_charger* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds i32, i32* %45, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %54 = bitcast %union.power_supply_propval* %53 to i32*
  store i32 %52, i32* %54, align 4
  br label %62

55:                                               ; preds = %3
  %56 = load i32, i32* @manufacturer, align 4
  %57 = load %union.power_supply_propval*, %union.power_supply_propval** %7, align 8
  %58 = bitcast %union.power_supply_propval* %57 to i32*
  store i32 %56, i32* %58, align 4
  br label %62

59:                                               ; preds = %3
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %64

62:                                               ; preds = %55, %38, %33, %28, %23, %18, %13
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %62, %59
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local %struct.max14577_charger* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @max14577_get_charger_state(%struct.max14577_charger*, i32*) #1

declare dso_local i32 @max14577_get_charge_type(%struct.max14577_charger*, i32*) #1

declare dso_local i32 @max14577_get_battery_health(%struct.max14577_charger*, i32*) #1

declare dso_local i32 @max14577_get_present(%struct.max14577_charger*, i32*) #1

declare dso_local i32 @max14577_get_online(%struct.max14577_charger*, i32*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
