; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_imx2_wdt.c_imx2_wdt_ping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_imx2_wdt.c_imx2_wdt_ping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.imx2_wdt_device = type { i32 }

@IMX2_WDT_WSR = common dso_local global i32 0, align 4
@IMX2_WDT_SEQ1 = common dso_local global i32 0, align 4
@IMX2_WDT_SEQ2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @imx2_wdt_ping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx2_wdt_ping(%struct.watchdog_device* %0) #0 {
  %2 = alloca %struct.watchdog_device*, align 8
  %3 = alloca %struct.imx2_wdt_device*, align 8
  store %struct.watchdog_device* %0, %struct.watchdog_device** %2, align 8
  %4 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %5 = call %struct.imx2_wdt_device* @watchdog_get_drvdata(%struct.watchdog_device* %4)
  store %struct.imx2_wdt_device* %5, %struct.imx2_wdt_device** %3, align 8
  %6 = load %struct.imx2_wdt_device*, %struct.imx2_wdt_device** %3, align 8
  %7 = getelementptr inbounds %struct.imx2_wdt_device, %struct.imx2_wdt_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @IMX2_WDT_WSR, align 4
  %10 = load i32, i32* @IMX2_WDT_SEQ1, align 4
  %11 = call i32 @regmap_write(i32 %8, i32 %9, i32 %10)
  %12 = load %struct.imx2_wdt_device*, %struct.imx2_wdt_device** %3, align 8
  %13 = getelementptr inbounds %struct.imx2_wdt_device, %struct.imx2_wdt_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @IMX2_WDT_WSR, align 4
  %16 = load i32, i32* @IMX2_WDT_SEQ2, align 4
  %17 = call i32 @regmap_write(i32 %14, i32 %15, i32 %16)
  ret i32 0
}

declare dso_local %struct.imx2_wdt_device* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
