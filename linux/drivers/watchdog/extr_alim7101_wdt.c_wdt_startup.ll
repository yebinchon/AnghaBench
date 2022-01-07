; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_alim7101_wdt.c_wdt_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_alim7101_wdt.c_wdt_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@jiffies = common dso_local global i64 0, align 8
@timeout = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@next_heartbeat = common dso_local global i64 0, align 8
@WDT_ENABLE = common dso_local global i32 0, align 4
@timer = common dso_local global i32 0, align 4
@WDT_INTERVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Watchdog timer is now enabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @wdt_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wdt_startup() #0 {
  %1 = load i64, i64* @jiffies, align 8
  %2 = load i32, i32* @timeout, align 4
  %3 = load i32, i32* @HZ, align 4
  %4 = mul nsw i32 %2, %3
  %5 = sext i32 %4 to i64
  %6 = add nsw i64 %1, %5
  store i64 %6, i64* @next_heartbeat, align 8
  %7 = load i32, i32* @WDT_ENABLE, align 4
  %8 = call i32 @wdt_change(i32 %7)
  %9 = load i64, i64* @jiffies, align 8
  %10 = load i64, i64* @WDT_INTERVAL, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @mod_timer(i32* @timer, i64 %11)
  %13 = call i32 @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @wdt_change(i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
