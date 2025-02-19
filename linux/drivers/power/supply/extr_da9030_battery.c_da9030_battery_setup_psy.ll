; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9030_battery.c_da9030_battery_setup_psy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_da9030_battery.c_da9030_battery_setup_psy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da9030_charger = type { %struct.power_supply_info*, %struct.power_supply_desc }
%struct.power_supply_info = type { i32, i32 }
%struct.power_supply_desc = type { i32, i32, i32, i32, i32, i32 }

@POWER_SUPPLY_TYPE_BATTERY = common dso_local global i32 0, align 4
@da9030_battery_get_property = common dso_local global i32 0, align 4
@da9030_battery_props = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.da9030_charger*)* @da9030_battery_setup_psy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @da9030_battery_setup_psy(%struct.da9030_charger* %0) #0 {
  %2 = alloca %struct.da9030_charger*, align 8
  %3 = alloca %struct.power_supply_desc*, align 8
  %4 = alloca %struct.power_supply_info*, align 8
  store %struct.da9030_charger* %0, %struct.da9030_charger** %2, align 8
  %5 = load %struct.da9030_charger*, %struct.da9030_charger** %2, align 8
  %6 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %5, i32 0, i32 1
  store %struct.power_supply_desc* %6, %struct.power_supply_desc** %3, align 8
  %7 = load %struct.da9030_charger*, %struct.da9030_charger** %2, align 8
  %8 = getelementptr inbounds %struct.da9030_charger, %struct.da9030_charger* %7, i32 0, i32 0
  %9 = load %struct.power_supply_info*, %struct.power_supply_info** %8, align 8
  store %struct.power_supply_info* %9, %struct.power_supply_info** %4, align 8
  %10 = load %struct.power_supply_info*, %struct.power_supply_info** %4, align 8
  %11 = getelementptr inbounds %struct.power_supply_info, %struct.power_supply_info* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.power_supply_desc*, %struct.power_supply_desc** %3, align 8
  %14 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %13, i32 0, i32 5
  store i32 %12, i32* %14, align 4
  %15 = load %struct.power_supply_info*, %struct.power_supply_info** %4, align 8
  %16 = getelementptr inbounds %struct.power_supply_info, %struct.power_supply_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.power_supply_desc*, %struct.power_supply_desc** %3, align 8
  %19 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @POWER_SUPPLY_TYPE_BATTERY, align 4
  %21 = load %struct.power_supply_desc*, %struct.power_supply_desc** %3, align 8
  %22 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @da9030_battery_get_property, align 4
  %24 = load %struct.power_supply_desc*, %struct.power_supply_desc** %3, align 8
  %25 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @da9030_battery_props, align 4
  %27 = load %struct.power_supply_desc*, %struct.power_supply_desc** %3, align 8
  %28 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @da9030_battery_props, align 4
  %30 = call i32 @ARRAY_SIZE(i32 %29)
  %31 = load %struct.power_supply_desc*, %struct.power_supply_desc** %3, align 8
  %32 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
