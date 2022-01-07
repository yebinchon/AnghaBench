; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_lantiq_wdt.c_ltq_wdt_ping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_lantiq_wdt.c_ltq_wdt_ping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.ltq_wdt_priv = type { i32 }

@LTQ_WDT_CR_PW_MASK = common dso_local global i32 0, align 4
@LTQ_WDT_CR_PW1 = common dso_local global i32 0, align 4
@LTQ_WDT_CR = common dso_local global i32 0, align 4
@LTQ_WDT_CR_MAX_TIMEOUT = common dso_local global i32 0, align 4
@LTQ_WDT_CR_PW2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @ltq_wdt_ping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ltq_wdt_ping(%struct.watchdog_device* %0) #0 {
  %2 = alloca %struct.watchdog_device*, align 8
  %3 = alloca %struct.ltq_wdt_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %2, align 8
  %5 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %6 = call %struct.ltq_wdt_priv* @ltq_wdt_get_priv(%struct.watchdog_device* %5)
  store %struct.ltq_wdt_priv* %6, %struct.ltq_wdt_priv** %3, align 8
  %7 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %8 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.ltq_wdt_priv*, %struct.ltq_wdt_priv** %3, align 8
  %11 = getelementptr inbounds %struct.ltq_wdt_priv, %struct.ltq_wdt_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = mul nsw i32 %9, %12
  store i32 %13, i32* %4, align 4
  %14 = load %struct.ltq_wdt_priv*, %struct.ltq_wdt_priv** %3, align 8
  %15 = load i32, i32* @LTQ_WDT_CR_PW_MASK, align 4
  %16 = load i32, i32* @LTQ_WDT_CR_PW1, align 4
  %17 = load i32, i32* @LTQ_WDT_CR, align 4
  %18 = call i32 @ltq_wdt_mask(%struct.ltq_wdt_priv* %14, i32 %15, i32 %16, i32 %17)
  %19 = load %struct.ltq_wdt_priv*, %struct.ltq_wdt_priv** %3, align 8
  %20 = load i32, i32* @LTQ_WDT_CR_PW_MASK, align 4
  %21 = load i32, i32* @LTQ_WDT_CR_MAX_TIMEOUT, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @LTQ_WDT_CR_PW2, align 4
  %24 = load i32, i32* %4, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @LTQ_WDT_CR, align 4
  %27 = call i32 @ltq_wdt_mask(%struct.ltq_wdt_priv* %19, i32 %22, i32 %25, i32 %26)
  ret i32 0
}

declare dso_local %struct.ltq_wdt_priv* @ltq_wdt_get_priv(%struct.watchdog_device*) #1

declare dso_local i32 @ltq_wdt_mask(%struct.ltq_wdt_priv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
