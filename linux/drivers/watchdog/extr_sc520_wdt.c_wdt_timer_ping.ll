; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_sc520_wdt.c_wdt_timer_ping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_sc520_wdt.c_wdt_timer_ping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timer_list = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@next_heartbeat = common dso_local global i32 0, align 4
@wdt_spinlock = common dso_local global i32 0, align 4
@wdtmrctl = common dso_local global i32 0, align 4
@timer = common dso_local global i32 0, align 4
@WDT_INTERVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"Heartbeat lost! Will not ping the watchdog\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @wdt_timer_ping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wdt_timer_ping(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %3 = load i64, i64* @jiffies, align 8
  %4 = load i32, i32* @next_heartbeat, align 4
  %5 = call i64 @time_before(i64 %3, i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %18

7:                                                ; preds = %1
  %8 = call i32 @spin_lock(i32* @wdt_spinlock)
  %9 = load i32, i32* @wdtmrctl, align 4
  %10 = call i32 @writew(i32 43690, i32 %9)
  %11 = load i32, i32* @wdtmrctl, align 4
  %12 = call i32 @writew(i32 21845, i32 %11)
  %13 = call i32 @spin_unlock(i32* @wdt_spinlock)
  %14 = load i64, i64* @jiffies, align 8
  %15 = load i64, i64* @WDT_INTERVAL, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @mod_timer(i32* @timer, i64 %16)
  br label %20

18:                                               ; preds = %1
  %19 = call i32 @pr_warn(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %7
  ret void
}

declare dso_local i64 @time_before(i64, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @writew(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @pr_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
