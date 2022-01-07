; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_txx9wdt.c_txx9wdt_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_txx9wdt.c_txx9wdt_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.watchdog_device = type { i32 }

@txx9_lock = common dso_local global i32 0, align 4
@WD_TIMER_CLK = common dso_local global i32 0, align 4
@txx9wdt_reg = common dso_local global %struct.TYPE_2__* null, align 8
@WD_TIMER_CCD = common dso_local global i32 0, align 4
@TXx9_TMTCR_TCE = common dso_local global i32 0, align 4
@TXx9_TMTCR_CCDE = common dso_local global i32 0, align 4
@TXx9_TMTCR_TMODE_WDOG = common dso_local global i32 0, align 4
@TXx9_TMWTMR_TWIE = common dso_local global i32 0, align 4
@TXx9_TMWTMR_TWC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @txx9wdt_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @txx9wdt_start(%struct.watchdog_device* %0) #0 {
  %2 = alloca %struct.watchdog_device*, align 8
  store %struct.watchdog_device* %0, %struct.watchdog_device** %2, align 8
  %3 = call i32 @spin_lock(i32* @txx9_lock)
  %4 = load i32, i32* @WD_TIMER_CLK, align 4
  %5 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %6 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = mul nsw i32 %4, %7
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @txx9wdt_reg, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 4
  %11 = call i32 @__raw_writel(i32 %8, i32* %10)
  %12 = load i32, i32* @WD_TIMER_CCD, align 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @txx9wdt_reg, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 3
  %15 = call i32 @__raw_writel(i32 %12, i32* %14)
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @txx9wdt_reg, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %18 = call i32 @__raw_writel(i32 0, i32* %17)
  %19 = load i32, i32* @TXx9_TMTCR_TCE, align 4
  %20 = load i32, i32* @TXx9_TMTCR_CCDE, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @TXx9_TMTCR_TMODE_WDOG, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @txx9wdt_reg, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = call i32 @__raw_writel(i32 %23, i32* %25)
  %27 = load i32, i32* @TXx9_TMWTMR_TWIE, align 4
  %28 = load i32, i32* @TXx9_TMWTMR_TWC, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @txx9wdt_reg, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 @__raw_writel(i32 %29, i32* %31)
  %33 = call i32 @spin_unlock(i32* @txx9_lock)
  ret i32 0
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__raw_writel(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
