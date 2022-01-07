; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_tegra_wdt.c_tegra_wdt_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_tegra_wdt.c_tegra_wdt_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.tegra_wdt = type { i64, i64 }

@TIMER_EN = common dso_local global i32 0, align 4
@TIMER_PERIODIC = common dso_local global i32 0, align 4
@TIMER_PTV = common dso_local global i64 0, align 8
@WDT_TIMER_ID = common dso_local global i32 0, align 4
@WDT_CFG_PERIOD_SHIFT = common dso_local global i32 0, align 4
@WDT_CFG_PMC2CAR_RST_EN = common dso_local global i32 0, align 4
@WDT_CFG = common dso_local global i64 0, align 8
@WDT_CMD_START_COUNTER = common dso_local global i32 0, align 4
@WDT_CMD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @tegra_wdt_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_wdt_start(%struct.watchdog_device* %0) #0 {
  %2 = alloca %struct.watchdog_device*, align 8
  %3 = alloca %struct.tegra_wdt*, align 8
  %4 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %2, align 8
  %5 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %6 = call %struct.tegra_wdt* @watchdog_get_drvdata(%struct.watchdog_device* %5)
  store %struct.tegra_wdt* %6, %struct.tegra_wdt** %3, align 8
  store i32 250000, i32* %4, align 4
  %7 = load i32, i32* @TIMER_EN, align 4
  %8 = load i32, i32* @TIMER_PERIODIC, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* %4, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.tegra_wdt*, %struct.tegra_wdt** %3, align 8
  %14 = getelementptr inbounds %struct.tegra_wdt, %struct.tegra_wdt* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @TIMER_PTV, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @writel(i32 %12, i64 %17)
  %19 = load i32, i32* @WDT_TIMER_ID, align 4
  %20 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %21 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @WDT_CFG_PERIOD_SHIFT, align 4
  %24 = shl i32 %22, %23
  %25 = or i32 %19, %24
  %26 = load i32, i32* @WDT_CFG_PMC2CAR_RST_EN, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.tegra_wdt*, %struct.tegra_wdt** %3, align 8
  %30 = getelementptr inbounds %struct.tegra_wdt, %struct.tegra_wdt* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @WDT_CFG, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writel(i32 %28, i64 %33)
  %35 = load i32, i32* @WDT_CMD_START_COUNTER, align 4
  %36 = load %struct.tegra_wdt*, %struct.tegra_wdt** %3, align 8
  %37 = getelementptr inbounds %struct.tegra_wdt, %struct.tegra_wdt* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @WDT_CMD, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writel(i32 %35, i64 %40)
  ret i32 0
}

declare dso_local %struct.tegra_wdt* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
