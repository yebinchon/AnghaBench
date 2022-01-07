; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_pcwd.c_pcwd_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_pcwd.c_pcwd_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i64, i32, i64 }

@jiffies = common dso_local global i64 0, align 8
@heartbeat = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@pcwd_private = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@WDT_INTERVAL = common dso_local global i64 0, align 8
@PCWD_REVISION_C = common dso_local global i64 0, align 8
@ISA_COMMAND_TIMEOUT = common dso_local global i32 0, align 4
@WD_WDIS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Could not start watchdog\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@debug = common dso_local global i64 0, align 8
@VERBOSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"Watchdog started\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @pcwd_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcwd_start() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* @jiffies, align 8
  %4 = load i32, i32* @heartbeat, align 4
  %5 = load i32, i32* @HZ, align 4
  %6 = mul nsw i32 %4, %5
  %7 = sext i32 %6 to i64
  %8 = add nsw i64 %3, %7
  store i64 %8, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcwd_private, i32 0, i32 4), align 8
  %9 = load i64, i64* @jiffies, align 8
  %10 = load i64, i64* @WDT_INTERVAL, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @mod_timer(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcwd_private, i32 0, i32 3), i64 %11)
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcwd_private, i32 0, i32 0), align 8
  %14 = load i64, i64* @PCWD_REVISION_C, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %36

16:                                               ; preds = %0
  %17 = call i32 @spin_lock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcwd_private, i32 0, i32 1))
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcwd_private, i32 0, i32 2), align 8
  %19 = add nsw i64 %18, 3
  %20 = call i32 @outb_p(i32 0, i64 %19)
  %21 = load i32, i32* @ISA_COMMAND_TIMEOUT, align 4
  %22 = call i32 @udelay(i32 %21)
  %23 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcwd_private, i32 0, i32 2), align 8
  %24 = add nsw i64 %23, 2
  %25 = call i32 @inb_p(i64 %24)
  store i32 %25, i32* %2, align 4
  %26 = call i32 @spin_unlock(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pcwd_private, i32 0, i32 1))
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* @WD_WDIS, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %16
  %32 = call i32 @pr_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EIO, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %1, align 4
  br label %43

35:                                               ; preds = %16
  br label %36

36:                                               ; preds = %35, %0
  %37 = load i64, i64* @debug, align 8
  %38 = load i64, i64* @VERBOSE, align 8
  %39 = icmp sge i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = call i32 @pr_debug(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %36
  store i32 0, i32* %1, align 4
  br label %43

43:                                               ; preds = %42, %31
  %44 = load i32, i32* %1, align 4
  ret i32 %44
}

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @outb_p(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @inb_p(i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @pr_debug(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
