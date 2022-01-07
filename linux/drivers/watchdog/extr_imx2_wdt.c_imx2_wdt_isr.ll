; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_imx2_wdt.c_imx2_wdt_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_imx2_wdt.c_imx2_wdt_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.imx2_wdt_device = type { i32 }

@IMX2_WDT_WICR = common dso_local global i32 0, align 4
@IMX2_WDT_WICR_WTIS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @imx2_wdt_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx2_wdt_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.watchdog_device*, align 8
  %6 = alloca %struct.imx2_wdt_device*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.watchdog_device*
  store %struct.watchdog_device* %8, %struct.watchdog_device** %5, align 8
  %9 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %10 = call %struct.imx2_wdt_device* @watchdog_get_drvdata(%struct.watchdog_device* %9)
  store %struct.imx2_wdt_device* %10, %struct.imx2_wdt_device** %6, align 8
  %11 = load %struct.imx2_wdt_device*, %struct.imx2_wdt_device** %6, align 8
  %12 = getelementptr inbounds %struct.imx2_wdt_device, %struct.imx2_wdt_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @IMX2_WDT_WICR, align 4
  %15 = load i32, i32* @IMX2_WDT_WICR_WTIS, align 4
  %16 = load i32, i32* @IMX2_WDT_WICR_WTIS, align 4
  %17 = call i32 @regmap_write_bits(i32 %13, i32 %14, i32 %15, i32 %16)
  %18 = load %struct.watchdog_device*, %struct.watchdog_device** %5, align 8
  %19 = call i32 @watchdog_notify_pretimeout(%struct.watchdog_device* %18)
  %20 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %20
}

declare dso_local %struct.imx2_wdt_device* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @regmap_write_bits(i32, i32, i32, i32) #1

declare dso_local i32 @watchdog_notify_pretimeout(%struct.watchdog_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
