; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_axp288_fuel_gauge.c_fuel_gauge_battery_health.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_axp288_fuel_gauge.c_fuel_gauge_battery_health.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.axp288_fg_info = type { i32 }

@POWER_SUPPLY_HEALTH_UNKNOWN = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_OVERVOLTAGE = common dso_local global i32 0, align 4
@POWER_SUPPLY_HEALTH_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.axp288_fg_info*)* @fuel_gauge_battery_health to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuel_gauge_battery_health(%struct.axp288_fg_info* %0) #0 {
  %2 = alloca %struct.axp288_fg_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.axp288_fg_info* %0, %struct.axp288_fg_info** %2, align 8
  %6 = load i32, i32* @POWER_SUPPLY_HEALTH_UNKNOWN, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %2, align 8
  %8 = call i32 @fuel_gauge_get_vocv(%struct.axp288_fg_info* %7, i32* %4)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %23

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.axp288_fg_info*, %struct.axp288_fg_info** %2, align 8
  %15 = getelementptr inbounds %struct.axp288_fg_info, %struct.axp288_fg_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sgt i32 %13, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i32, i32* @POWER_SUPPLY_HEALTH_OVERVOLTAGE, align 4
  store i32 %19, i32* %5, align 4
  br label %22

20:                                               ; preds = %12
  %21 = load i32, i32* @POWER_SUPPLY_HEALTH_GOOD, align 4
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %20, %18
  br label %23

23:                                               ; preds = %22, %11
  %24 = load i32, i32* %5, align 4
  ret i32 %24
}

declare dso_local i32 @fuel_gauge_get_vocv(%struct.axp288_fg_info*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
