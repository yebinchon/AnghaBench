; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_pika_wdt.c_pikawdt_ping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_pika_wdt.c_pikawdt_ping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.timer_list = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@pikawdt_private = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@nowayout = common dso_local global i32 0, align 4
@WDT_TIMEOUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"I will reset your machine !\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @pikawdt_ping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pikawdt_ping(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %3 = load i64, i64* @jiffies, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pikawdt_private, i32 0, i32 2), align 4
  %5 = call i64 @time_before(i64 %3, i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @nowayout, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %7
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pikawdt_private, i32 0, i32 1), align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %10, %1
  %14 = call i32 (...) @pikawdt_reset()
  %15 = load i64, i64* @jiffies, align 8
  %16 = load i64, i64* @WDT_TIMEOUT, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @mod_timer(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pikawdt_private, i32 0, i32 0), i64 %17)
  br label %21

19:                                               ; preds = %10, %7
  %20 = call i32 @pr_crit(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %13
  ret void
}

declare dso_local i64 @time_before(i64, i32) #1

declare dso_local i32 @pikawdt_reset(...) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @pr_crit(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
