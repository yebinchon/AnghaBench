; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_pcwd.c_pcwd_timer_ping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_pcwd.c_pcwd_timer_ping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i64, i32 }
%struct.timer_list = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@pcwd_private = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PCWD_REVISION_A = common dso_local global i64 0, align 8
@WD_WDRST = common dso_local global i32 0, align 4
@WDT_INTERVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"Heartbeat lost! Will not ping the watchdog\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @pcwd_timer_ping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcwd_timer_ping(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load i64, i64* @jiffies, align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcwd_private, i32 0, i32 4), align 8
  %6 = call i64 @time_before(i64 %4, i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %34

8:                                                ; preds = %1
  %9 = call i32 @spin_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcwd_private, i32 0, i32 1))
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcwd_private, i32 0, i32 0), align 8
  %11 = load i64, i64* @PCWD_REVISION_A, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %25

13:                                               ; preds = %8
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcwd_private, i32 0, i32 3), align 8
  %15 = call i32 @inb_p(i64 %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = and i32 %16, 15
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* @WD_WDRST, align 4
  %19 = load i32, i32* %3, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcwd_private, i32 0, i32 3), align 8
  %23 = add nsw i64 %22, 1
  %24 = call i32 @outb_p(i32 %21, i64 %23)
  br label %28

25:                                               ; preds = %8
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcwd_private, i32 0, i32 3), align 8
  %27 = call i32 @outb_p(i32 0, i64 %26)
  br label %28

28:                                               ; preds = %25, %13
  %29 = load i64, i64* @jiffies, align 8
  %30 = load i64, i64* @WDT_INTERVAL, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @mod_timer(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcwd_private, i32 0, i32 2), i64 %31)
  %33 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcwd_private, i32 0, i32 1))
  br label %36

34:                                               ; preds = %1
  %35 = call i32 @pr_warn(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %28
  ret void
}

declare dso_local i64 @time_before(i64, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @inb_p(i64) #1

declare dso_local i32 @outb_p(i32, i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pr_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
