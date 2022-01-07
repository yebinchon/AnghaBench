; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_tegra_wdt.c_tegra_wdt_get_timeleft.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_tegra_wdt.c_tegra_wdt_get_timeleft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32 }
%struct.tegra_wdt = type { i64 }

@WDT_STS = common dso_local global i64 0, align 8
@WDT_STS_COUNT_SHIFT = common dso_local global i32 0, align 4
@WDT_STS_COUNT_MASK = common dso_local global i32 0, align 4
@WDT_STS_EXP_SHIFT = common dso_local global i32 0, align 4
@WDT_STS_EXP_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*)* @tegra_wdt_get_timeleft to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_wdt_get_timeleft(%struct.watchdog_device* %0) #0 {
  %2 = alloca %struct.watchdog_device*, align 8
  %3 = alloca %struct.tegra_wdt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %2, align 8
  %7 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %8 = call %struct.tegra_wdt* @watchdog_get_drvdata(%struct.watchdog_device* %7)
  store %struct.tegra_wdt* %8, %struct.tegra_wdt** %3, align 8
  %9 = load %struct.tegra_wdt*, %struct.tegra_wdt** %3, align 8
  %10 = getelementptr inbounds %struct.tegra_wdt, %struct.tegra_wdt* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @WDT_STS, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @readl(i64 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @WDT_STS_COUNT_SHIFT, align 4
  %17 = ashr i32 %15, %16
  %18 = load i32, i32* @WDT_STS_COUNT_MASK, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @WDT_STS_EXP_SHIFT, align 4
  %22 = ashr i32 %20, %21
  %23 = load i32, i32* @WDT_STS_EXP_MASK, align 4
  %24 = and i32 %22, %23
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = sub nsw i32 3, %25
  %27 = load %struct.watchdog_device*, %struct.watchdog_device** %2, align 8
  %28 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %26, %29
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %30, %31
  %33 = sdiv i32 %32, 4
  ret i32 %33
}

declare dso_local %struct.tegra_wdt* @watchdog_get_drvdata(%struct.watchdog_device*) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
