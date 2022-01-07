; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_qcom_smbb.c_smbb_battery_set_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_qcom_smbb.c_smbb_battery_set_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i32 }
%struct.smbb_charger = type { i32 }

@ATTR_BAT_IMAX = common dso_local global i32 0, align 4
@ATTR_BAT_VMAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @smbb_battery_set_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smbb_battery_set_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca %struct.power_supply*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.power_supply_propval*, align 8
  %7 = alloca %struct.smbb_charger*, align 8
  %8 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %4, align 8
  store i32 %1, i32* %5, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %6, align 8
  %9 = load %struct.power_supply*, %struct.power_supply** %4, align 8
  %10 = call %struct.smbb_charger* @power_supply_get_drvdata(%struct.power_supply* %9)
  store %struct.smbb_charger* %10, %struct.smbb_charger** %7, align 8
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %26 [
    i32 129, label %12
    i32 128, label %19
  ]

12:                                               ; preds = %3
  %13 = load %struct.smbb_charger*, %struct.smbb_charger** %7, align 8
  %14 = load i32, i32* @ATTR_BAT_IMAX, align 4
  %15 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %16 = bitcast %union.power_supply_propval* %15 to i32*
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @smbb_charger_attr_write(%struct.smbb_charger* %13, i32 %14, i32 %17)
  store i32 %18, i32* %8, align 4
  br label %29

19:                                               ; preds = %3
  %20 = load %struct.smbb_charger*, %struct.smbb_charger** %7, align 8
  %21 = load i32, i32* @ATTR_BAT_VMAX, align 4
  %22 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %23 = bitcast %union.power_supply_propval* %22 to i32*
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @smbb_charger_attr_write(%struct.smbb_charger* %20, i32 %21, i32 %24)
  store i32 %25, i32* %8, align 4
  br label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %8, align 4
  br label %29

29:                                               ; preds = %26, %19, %12
  %30 = load i32, i32* %8, align 4
  ret i32 %30
}

declare dso_local %struct.smbb_charger* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i32 @smbb_charger_attr_write(%struct.smbb_charger*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
