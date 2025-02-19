; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_88pm860x_battery.c_pm860x_external_power_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_88pm860x_battery.c_pm860x_external_power_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.power_supply = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.pm860x_battery_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.power_supply*)* @pm860x_external_power_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pm860x_external_power_changed(%struct.power_supply* %0) #0 {
  %2 = alloca %struct.power_supply*, align 8
  %3 = alloca %struct.pm860x_battery_info*, align 8
  store %struct.power_supply* %0, %struct.power_supply** %2, align 8
  %4 = load %struct.power_supply*, %struct.power_supply** %2, align 8
  %5 = getelementptr inbounds %struct.power_supply, %struct.power_supply* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.pm860x_battery_info* @dev_get_drvdata(i32 %7)
  store %struct.pm860x_battery_info* %8, %struct.pm860x_battery_info** %3, align 8
  %9 = load %struct.pm860x_battery_info*, %struct.pm860x_battery_info** %3, align 8
  %10 = call i32 @calc_resistor(%struct.pm860x_battery_info* %9)
  ret void
}

declare dso_local %struct.pm860x_battery_info* @dev_get_drvdata(i32) #1

declare dso_local i32 @calc_resistor(%struct.pm860x_battery_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
