; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_cpu5wdt.c_cpu5wdt_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_cpu5wdt.c_cpu5wdt_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i64, i64 }
%struct.timer_list = type { i32 }

@verbose = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"trigger at %i ticks\0A\00", align 1
@ticks = common dso_local global i64 0, align 8
@cpu5wdt_device = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@cpu5wdt_lock = common dso_local global i32 0, align 4
@port = common dso_local global i64 0, align 8
@CPU5WDT_TRIGGER_REG = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@CPU5WDT_INTERVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @cpu5wdt_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpu5wdt_trigger(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %3 = load i32, i32* @verbose, align 4
  %4 = icmp sgt i32 %3, 2
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load i64, i64* @ticks, align 8
  %7 = call i32 @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %6)
  br label %8

8:                                                ; preds = %5, %1
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpu5wdt_device, i32 0, i32 3), align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %8
  %12 = load i64, i64* @ticks, align 8
  %13 = add nsw i64 %12, -1
  store i64 %13, i64* @ticks, align 8
  br label %14

14:                                               ; preds = %11, %8
  %15 = call i32 @spin_lock(i32* @cpu5wdt_lock)
  %16 = load i64, i64* @port, align 8
  %17 = load i64, i64* @CPU5WDT_TRIGGER_REG, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @outb(i32 1, i64 %18)
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpu5wdt_device, i32 0, i32 2), align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %14
  %23 = load i64, i64* @ticks, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load i64, i64* @jiffies, align 8
  %27 = load i64, i64* @CPU5WDT_INTERVAL, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @mod_timer(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpu5wdt_device, i32 0, i32 1), i64 %28)
  br label %32

30:                                               ; preds = %22, %14
  %31 = call i32 @complete(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpu5wdt_device, i32 0, i32 0))
  br label %32

32:                                               ; preds = %30, %25
  %33 = call i32 @spin_unlock(i32* @cpu5wdt_lock)
  ret void
}

declare dso_local i32 @pr_debug(i8*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
