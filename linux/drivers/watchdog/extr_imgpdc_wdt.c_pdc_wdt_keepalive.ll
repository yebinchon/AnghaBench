; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_imgpdc_wdt.c_pdc_wdt_keepalive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_imgpdc_wdt.c_pdc_wdt_keepalive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.pdc_wdt_dev = type { i64 }

@PDC_WDT_TICKLE1_MAGIC = common dso_local global i32 0, align 4
@PDC_WDT_TICKLE1 = common dso_local global i64 0, align 8
@PDC_WDT_TICKLE2_MAGIC = common dso_local global i32 0, align 4
@PDC_WDT_TICKLE2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @pdc_wdt_keepalive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdc_wdt_keepalive(%struct.watchdog_device* %0) #0 {
  %2 = alloca %struct.watchdog_device*, align 8
  %3 = alloca %struct.pdc_wdt_dev*, align 8
  store %struct.watchdog_device* %0, %struct.watchdog_device** %2, align 8
  %4 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %5 = call %struct.pdc_wdt_dev* @watchdog_get_drvdata(%struct.watchdog_device* %4)
  store %struct.pdc_wdt_dev* %5, %struct.pdc_wdt_dev** %3, align 8
  %6 = load i32, i32* @PDC_WDT_TICKLE1_MAGIC, align 4
  %7 = load %struct.pdc_wdt_dev*, %struct.pdc_wdt_dev** %3, align 8
  %8 = getelementptr inbounds %struct.pdc_wdt_dev, %struct.pdc_wdt_dev* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @PDC_WDT_TICKLE1, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @writel(i32 %6, i64 %11)
  %13 = load i32, i32* @PDC_WDT_TICKLE2_MAGIC, align 4
  %14 = load %struct.pdc_wdt_dev*, %struct.pdc_wdt_dev** %3, align 8
  %15 = getelementptr inbounds %struct.pdc_wdt_dev, %struct.pdc_wdt_dev* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PDC_WDT_TICKLE2, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @writel(i32 %13, i64 %18)
  ret i32 0
}

declare dso_local %struct.pdc_wdt_dev* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
