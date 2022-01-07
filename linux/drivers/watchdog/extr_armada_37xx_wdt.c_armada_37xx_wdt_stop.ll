; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_armada_37xx_wdt.c_armada_37xx_wdt_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_armada_37xx_wdt.c_armada_37xx_wdt_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.armada_37xx_watchdog = type { i32 }

@CNTR_ID_WDOG = common dso_local global i32 0, align 4
@CNTR_ID_RETRIGGER = common dso_local global i32 0, align 4
@WDT_TIMER_SELECT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @armada_37xx_wdt_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armada_37xx_wdt_stop(%struct.watchdog_device* %0) #0 {
  %2 = alloca %struct.watchdog_device*, align 8
  %3 = alloca %struct.armada_37xx_watchdog*, align 8
  store %struct.watchdog_device* %0, %struct.watchdog_device** %2, align 8
  %4 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %5 = call %struct.armada_37xx_watchdog* @watchdog_get_drvdata(%struct.watchdog_device* %4)
  store %struct.armada_37xx_watchdog* %5, %struct.armada_37xx_watchdog** %3, align 8
  %6 = load %struct.armada_37xx_watchdog*, %struct.armada_37xx_watchdog** %3, align 8
  %7 = load i32, i32* @CNTR_ID_WDOG, align 4
  %8 = call i32 @counter_disable(%struct.armada_37xx_watchdog* %6, i32 %7)
  %9 = load %struct.armada_37xx_watchdog*, %struct.armada_37xx_watchdog** %3, align 8
  %10 = load i32, i32* @CNTR_ID_RETRIGGER, align 4
  %11 = call i32 @counter_disable(%struct.armada_37xx_watchdog* %9, i32 %10)
  %12 = load %struct.armada_37xx_watchdog*, %struct.armada_37xx_watchdog** %3, align 8
  %13 = getelementptr inbounds %struct.armada_37xx_watchdog, %struct.armada_37xx_watchdog* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @WDT_TIMER_SELECT, align 4
  %16 = call i32 @regmap_write(i32 %14, i32 %15, i32 0)
  ret i32 0
}

declare dso_local %struct.armada_37xx_watchdog* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @counter_disable(%struct.armada_37xx_watchdog*, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
