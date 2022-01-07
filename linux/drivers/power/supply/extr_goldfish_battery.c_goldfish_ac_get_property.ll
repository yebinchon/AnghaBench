; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_goldfish_battery.c_goldfish_ac_get_property.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_goldfish_battery.c_goldfish_ac_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { i32 }
%union.power_supply_propval = type { i8* }
%struct.goldfish_battery_data = type { i32 }

@BATTERY_AC_ONLINE = common dso_local global i32 0, align 4
@BATTERY_VOLTAGE_MAX = common dso_local global i32 0, align 4
@BATTERY_CURRENT_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.power_supply*, i32, %union.power_supply_propval*)* @goldfish_ac_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @goldfish_ac_get_property(%struct.power_supply* %0, i32 %1, %union.power_supply_propval* %2) #0 {
  %4 = alloca %struct.power_supply*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.power_supply_propval*, align 8
  %7 = alloca %struct.goldfish_battery_data*, align 8
  %8 = alloca i32, align 4
  store %struct.power_supply* %0, %struct.power_supply** %4, align 8
  store i32 %1, i32* %5, align 4
  store %union.power_supply_propval* %2, %union.power_supply_propval** %6, align 8
  %9 = load %struct.power_supply*, %struct.power_supply** %4, align 8
  %10 = call %struct.goldfish_battery_data* @power_supply_get_drvdata(%struct.power_supply* %9)
  store %struct.goldfish_battery_data* %10, %struct.goldfish_battery_data** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %30 [
    i32 129, label %12
    i32 128, label %18
    i32 130, label %24
  ]

12:                                               ; preds = %3
  %13 = load %struct.goldfish_battery_data*, %struct.goldfish_battery_data** %7, align 8
  %14 = load i32, i32* @BATTERY_AC_ONLINE, align 4
  %15 = call i8* @GOLDFISH_BATTERY_READ(%struct.goldfish_battery_data* %13, i32 %14)
  %16 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %17 = bitcast %union.power_supply_propval* %16 to i8**
  store i8* %15, i8** %17, align 8
  br label %33

18:                                               ; preds = %3
  %19 = load %struct.goldfish_battery_data*, %struct.goldfish_battery_data** %7, align 8
  %20 = load i32, i32* @BATTERY_VOLTAGE_MAX, align 4
  %21 = call i8* @GOLDFISH_BATTERY_READ(%struct.goldfish_battery_data* %19, i32 %20)
  %22 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %23 = bitcast %union.power_supply_propval* %22 to i8**
  store i8* %21, i8** %23, align 8
  br label %33

24:                                               ; preds = %3
  %25 = load %struct.goldfish_battery_data*, %struct.goldfish_battery_data** %7, align 8
  %26 = load i32, i32* @BATTERY_CURRENT_MAX, align 4
  %27 = call i8* @GOLDFISH_BATTERY_READ(%struct.goldfish_battery_data* %25, i32 %26)
  %28 = load %union.power_supply_propval*, %union.power_supply_propval** %6, align 8
  %29 = bitcast %union.power_supply_propval* %28 to i8**
  store i8* %27, i8** %29, align 8
  br label %33

30:                                               ; preds = %3
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %30, %24, %18, %12
  %34 = load i32, i32* %8, align 4
  ret i32 %34
}

declare dso_local %struct.goldfish_battery_data* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i8* @GOLDFISH_BATTERY_READ(%struct.goldfish_battery_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
