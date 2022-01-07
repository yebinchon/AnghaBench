; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_aspeed_wdt.c_aspeed_wdt_set_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_aspeed_wdt.c_aspeed_wdt_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_device = type { i32, i32 }
%struct.aspeed_wdt = type { i64 }

@WDT_RATE_1MHZ = common dso_local global i32 0, align 4
@WDT_RELOAD_VALUE = common dso_local global i64 0, align 8
@WDT_RESTART_MAGIC = common dso_local global i32 0, align 4
@WDT_RESTART = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.watchdog_device*, i32)* @aspeed_wdt_set_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aspeed_wdt_set_timeout(%struct.watchdog_device* %0, i32 %1) #0 {
  %3 = alloca %struct.watchdog_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.aspeed_wdt*, align 8
  %6 = alloca i32, align 4
  store %struct.watchdog_device* %0, %struct.watchdog_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %8 = call %struct.aspeed_wdt* @to_aspeed_wdt(%struct.watchdog_device* %7)
  store %struct.aspeed_wdt* %8, %struct.aspeed_wdt** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %11 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.watchdog_device*, %struct.watchdog_device** %3, align 8
  %14 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = mul nsw i32 %15, 1000
  %17 = call i32 @min(i32 %12, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @WDT_RATE_1MHZ, align 4
  %20 = mul nsw i32 %18, %19
  %21 = load %struct.aspeed_wdt*, %struct.aspeed_wdt** %5, align 8
  %22 = getelementptr inbounds %struct.aspeed_wdt, %struct.aspeed_wdt* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @WDT_RELOAD_VALUE, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writel(i32 %20, i64 %25)
  %27 = load i32, i32* @WDT_RESTART_MAGIC, align 4
  %28 = load %struct.aspeed_wdt*, %struct.aspeed_wdt** %5, align 8
  %29 = getelementptr inbounds %struct.aspeed_wdt, %struct.aspeed_wdt* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @WDT_RESTART, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @writel(i32 %27, i64 %32)
  ret i32 0
}

declare dso_local %struct.aspeed_wdt* @to_aspeed_wdt(%struct.watchdog_device*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
