; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_power_supply_leds.c_power_supply_update_leds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_power_supply_leds.c_power_supply_update_leds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@POWER_SUPPLY_TYPE_BATTERY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @power_supply_update_leds(%struct.power_supply* %0) #0 {
  %2 = alloca %struct.power_supply*, align 8
  store %struct.power_supply* %0, %struct.power_supply** %2, align 8
  %3 = load %struct.power_supply*, %struct.power_supply** %2, align 8
  %4 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @POWER_SUPPLY_TYPE_BATTERY, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.power_supply*, %struct.power_supply** %2, align 8
  %12 = call i32 @power_supply_update_bat_leds(%struct.power_supply* %11)
  br label %16

13:                                               ; preds = %1
  %14 = load %struct.power_supply*, %struct.power_supply** %2, align 8
  %15 = call i32 @power_supply_update_gen_leds(%struct.power_supply* %14)
  br label %16

16:                                               ; preds = %13, %10
  ret void
}

declare dso_local i32 @power_supply_update_bat_leds(%struct.power_supply*) #1

declare dso_local i32 @power_supply_update_gen_leds(%struct.power_supply*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
