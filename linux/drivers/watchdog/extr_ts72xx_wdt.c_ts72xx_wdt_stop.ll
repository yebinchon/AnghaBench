; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_ts72xx_wdt.c_ts72xx_wdt_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_ts72xx_wdt.c_ts72xx_wdt_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.ts72xx_wdt_priv = type { i32, i32 }

@TS72XX_WDT_FEED_VAL = common dso_local global i32 0, align 4
@TS72XX_WDT_CTRL_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @ts72xx_wdt_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ts72xx_wdt_stop(%struct.watchdog_device* %0) #0 {
  %2 = alloca %struct.watchdog_device*, align 8
  %3 = alloca %struct.ts72xx_wdt_priv*, align 8
  store %struct.watchdog_device* %0, %struct.watchdog_device** %2, align 8
  %4 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %5 = call %struct.ts72xx_wdt_priv* @watchdog_get_drvdata(%struct.watchdog_device* %4)
  store %struct.ts72xx_wdt_priv* %5, %struct.ts72xx_wdt_priv** %3, align 8
  %6 = load i32, i32* @TS72XX_WDT_FEED_VAL, align 4
  %7 = load %struct.ts72xx_wdt_priv*, %struct.ts72xx_wdt_priv** %3, align 8
  %8 = getelementptr inbounds %struct.ts72xx_wdt_priv, %struct.ts72xx_wdt_priv* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @writeb(i32 %6, i32 %9)
  %11 = load i32, i32* @TS72XX_WDT_CTRL_DISABLE, align 4
  %12 = load %struct.ts72xx_wdt_priv*, %struct.ts72xx_wdt_priv** %3, align 8
  %13 = getelementptr inbounds %struct.ts72xx_wdt_priv, %struct.ts72xx_wdt_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @writeb(i32 %11, i32 %14)
  ret i32 0
}

declare dso_local %struct.ts72xx_wdt_priv* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @writeb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
