; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_lpc18xx_wdt.c_lpc18xx_wdt_timer_feed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_lpc18xx_wdt.c_lpc18xx_wdt_timer_feed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpc18xx_wdt_dev = type { i32, %struct.watchdog_device }
%struct.watchdog_device = type { i32 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@MSEC_PER_SEC = common dso_local global i32 0, align 4
@lpc18xx_wdt = common dso_local global %struct.lpc18xx_wdt_dev* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @lpc18xx_wdt_timer_feed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpc18xx_wdt_timer_feed(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.lpc18xx_wdt_dev*, align 8
  %4 = alloca %struct.watchdog_device*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.lpc18xx_wdt_dev*, %struct.lpc18xx_wdt_dev** %3, align 8
  %6 = ptrtoint %struct.lpc18xx_wdt_dev* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @timer, align 4
  %9 = call %struct.lpc18xx_wdt_dev* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.lpc18xx_wdt_dev* %9, %struct.lpc18xx_wdt_dev** %3, align 8
  %10 = load %struct.lpc18xx_wdt_dev*, %struct.lpc18xx_wdt_dev** %3, align 8
  %11 = getelementptr inbounds %struct.lpc18xx_wdt_dev, %struct.lpc18xx_wdt_dev* %10, i32 0, i32 1
  store %struct.watchdog_device* %11, %struct.watchdog_device** %4, align 8
  %12 = load %struct.watchdog_device*, %struct.watchdog_device** %4, align 8
  %13 = call i32 @lpc18xx_wdt_feed(%struct.watchdog_device* %12)
  %14 = load %struct.lpc18xx_wdt_dev*, %struct.lpc18xx_wdt_dev** %3, align 8
  %15 = getelementptr inbounds %struct.lpc18xx_wdt_dev, %struct.lpc18xx_wdt_dev* %14, i32 0, i32 0
  %16 = load i64, i64* @jiffies, align 8
  %17 = load %struct.watchdog_device*, %struct.watchdog_device** %4, align 8
  %18 = getelementptr inbounds %struct.watchdog_device, %struct.watchdog_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MSEC_PER_SEC, align 4
  %21 = mul nsw i32 %19, %20
  %22 = sdiv i32 %21, 2
  %23 = call i64 @msecs_to_jiffies(i32 %22)
  %24 = add nsw i64 %16, %23
  %25 = call i32 @mod_timer(i32* %15, i64 %24)
  ret void
}

declare dso_local %struct.lpc18xx_wdt_dev* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @lpc18xx_wdt_feed(%struct.watchdog_device*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
