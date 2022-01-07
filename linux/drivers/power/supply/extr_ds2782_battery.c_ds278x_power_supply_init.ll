; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_ds2782_battery.c_ds278x_power_supply_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_ds2782_battery.c_ds278x_power_supply_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply_desc = type { i32*, i32, i32, i32, i32 }

@POWER_SUPPLY_TYPE_BATTERY = common dso_local global i32 0, align 4
@ds278x_battery_props = common dso_local global i32 0, align 4
@ds278x_battery_get_property = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.power_supply_desc*)* @ds278x_power_supply_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ds278x_power_supply_init(%struct.power_supply_desc* %0) #0 {
  %2 = alloca %struct.power_supply_desc*, align 8
  store %struct.power_supply_desc* %0, %struct.power_supply_desc** %2, align 8
  %3 = load i32, i32* @POWER_SUPPLY_TYPE_BATTERY, align 4
  %4 = load %struct.power_supply_desc*, %struct.power_supply_desc** %2, align 8
  %5 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %4, i32 0, i32 4
  store i32 %3, i32* %5, align 4
  %6 = load i32, i32* @ds278x_battery_props, align 4
  %7 = load %struct.power_supply_desc*, %struct.power_supply_desc** %2, align 8
  %8 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %7, i32 0, i32 3
  store i32 %6, i32* %8, align 8
  %9 = load i32, i32* @ds278x_battery_props, align 4
  %10 = call i32 @ARRAY_SIZE(i32 %9)
  %11 = load %struct.power_supply_desc*, %struct.power_supply_desc** %2, align 8
  %12 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @ds278x_battery_get_property, align 4
  %14 = load %struct.power_supply_desc*, %struct.power_supply_desc** %2, align 8
  %15 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 8
  %16 = load %struct.power_supply_desc*, %struct.power_supply_desc** %2, align 8
  %17 = getelementptr inbounds %struct.power_supply_desc, %struct.power_supply_desc* %16, i32 0, i32 0
  store i32* null, i32** %17, align 8
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
