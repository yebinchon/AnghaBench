; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_bcm2835_wdt.c_bcm2835_wdt_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_bcm2835_wdt.c_bcm2835_wdt_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.bcm2835_wdt = type { i32, i64 }

@PM_PASSWORD = common dso_local global i32 0, align 4
@PM_WDOG_TIME_SET = common dso_local global i32 0, align 4
@PM_WDOG = common dso_local global i64 0, align 8
@PM_RSTC = common dso_local global i64 0, align 8
@PM_RSTC_WRCFG_CLR = common dso_local global i32 0, align 4
@PM_RSTC_WRCFG_FULL_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @bcm2835_wdt_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_wdt_start(%struct.watchdog_device* %0) #0 {
  %2 = alloca %struct.watchdog_device*, align 8
  %3 = alloca %struct.bcm2835_wdt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.watchdog_device* %0, %struct.watchdog_device** %2, align 8
  %6 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %7 = call %struct.bcm2835_wdt* @watchdog_get_drvdata(%struct.watchdog_device* %6)
  store %struct.bcm2835_wdt* %7, %struct.bcm2835_wdt** %3, align 8
  %8 = load %struct.bcm2835_wdt*, %struct.bcm2835_wdt** %3, align 8
  %9 = getelementptr inbounds %struct.bcm2835_wdt, %struct.bcm2835_wdt* %8, i32 0, i32 0
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load i32, i32* @PM_PASSWORD, align 4
  %13 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %14 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @SECS_TO_WDOG_TICKS(i32 %15)
  %17 = load i32, i32* @PM_WDOG_TIME_SET, align 4
  %18 = and i32 %16, %17
  %19 = or i32 %12, %18
  %20 = load %struct.bcm2835_wdt*, %struct.bcm2835_wdt** %3, align 8
  %21 = getelementptr inbounds %struct.bcm2835_wdt, %struct.bcm2835_wdt* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PM_WDOG, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writel_relaxed(i32 %19, i64 %24)
  %26 = load %struct.bcm2835_wdt*, %struct.bcm2835_wdt** %3, align 8
  %27 = getelementptr inbounds %struct.bcm2835_wdt, %struct.bcm2835_wdt* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @PM_RSTC, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @readl_relaxed(i64 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* @PM_PASSWORD, align 4
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @PM_RSTC_WRCFG_CLR, align 4
  %35 = and i32 %33, %34
  %36 = or i32 %32, %35
  %37 = load i32, i32* @PM_RSTC_WRCFG_FULL_RESET, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.bcm2835_wdt*, %struct.bcm2835_wdt** %3, align 8
  %40 = getelementptr inbounds %struct.bcm2835_wdt, %struct.bcm2835_wdt* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @PM_RSTC, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @writel_relaxed(i32 %38, i64 %43)
  %45 = load %struct.bcm2835_wdt*, %struct.bcm2835_wdt** %3, align 8
  %46 = getelementptr inbounds %struct.bcm2835_wdt, %struct.bcm2835_wdt* %45, i32 0, i32 0
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32* %46, i64 %47)
  ret i32 0
}

declare dso_local %struct.bcm2835_wdt* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @SECS_TO_WDOG_TICKS(i32) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
