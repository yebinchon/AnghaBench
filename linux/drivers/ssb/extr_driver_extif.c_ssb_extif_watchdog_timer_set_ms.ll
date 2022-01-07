; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_extif.c_ssb_extif_watchdog_timer_set_ms.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_driver_extif.c_ssb_extif_watchdog_timer_set_ms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm47xx_wdt = type { i32 }
%struct.ssb_extif = type { i32 }

@SSB_EXTIF_WATCHDOG_CLK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssb_extif_watchdog_timer_set_ms(%struct.bcm47xx_wdt* %0, i32 %1) #0 {
  %3 = alloca %struct.bcm47xx_wdt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ssb_extif*, align 8
  %6 = alloca i32, align 4
  store %struct.bcm47xx_wdt* %0, %struct.bcm47xx_wdt** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.bcm47xx_wdt*, %struct.bcm47xx_wdt** %3, align 8
  %8 = call %struct.ssb_extif* @bcm47xx_wdt_get_drvdata(%struct.bcm47xx_wdt* %7)
  store %struct.ssb_extif* %8, %struct.ssb_extif** %5, align 8
  %9 = load i32, i32* @SSB_EXTIF_WATCHDOG_CLK, align 4
  %10 = sdiv i32 %9, 1000
  %11 = load i32, i32* %4, align 4
  %12 = mul nsw i32 %10, %11
  store i32 %12, i32* %6, align 4
  %13 = load %struct.ssb_extif*, %struct.ssb_extif** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @ssb_extif_watchdog_timer_set(%struct.ssb_extif* %13, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = mul nsw i32 %16, 1000
  %18 = load i32, i32* @SSB_EXTIF_WATCHDOG_CLK, align 4
  %19 = sdiv i32 %17, %18
  ret i32 %19
}

declare dso_local %struct.ssb_extif* @bcm47xx_wdt_get_drvdata(%struct.bcm47xx_wdt*) #1

declare dso_local i32 @ssb_extif_watchdog_timer_set(%struct.ssb_extif*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
