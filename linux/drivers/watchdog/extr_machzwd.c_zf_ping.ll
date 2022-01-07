; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_machzwd.c_zf_ping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_machzwd.c_zf_ping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timer_list = type { i32 }

@COUNTER_2 = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@next_heartbeat = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"time_before: %ld\0A\00", align 1
@zf_port_lock = common dso_local global i32 0, align 4
@RESET_WD1 = common dso_local global i32 0, align 4
@zf_timer = common dso_local global i32 0, align 4
@ZF_HW_TIMEO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"I will reset your machine\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @zf_ping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zf_ping(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load i32, i32* @COUNTER_2, align 4
  %6 = call i32 @zf_writeb(i32 %5, i32 255)
  %7 = load i64, i64* @jiffies, align 8
  %8 = load i64, i64* @next_heartbeat, align 8
  %9 = call i64 @time_before(i64 %7, i64 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %36

11:                                               ; preds = %1
  %12 = load i64, i64* @next_heartbeat, align 8
  %13 = load i64, i64* @jiffies, align 8
  %14 = sub nsw i64 %12, %13
  %15 = call i32 @dprintk(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i64 %14)
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @spin_lock_irqsave(i32* @zf_port_lock, i64 %16)
  %18 = call i32 (...) @zf_get_control()
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* @RESET_WD1, align 4
  %20 = load i32, i32* %3, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @zf_set_control(i32 %22)
  %24 = load i32, i32* @RESET_WD1, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %3, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @zf_set_control(i32 %28)
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* @zf_port_lock, i64 %30)
  %32 = load i64, i64* @jiffies, align 8
  %33 = load i64, i64* @ZF_HW_TIMEO, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @mod_timer(i32* @zf_timer, i64 %34)
  br label %38

36:                                               ; preds = %1
  %37 = call i32 @pr_crit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %11
  ret void
}

declare dso_local i32 @zf_writeb(i32, i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @dprintk(i8*, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @zf_get_control(...) #1

declare dso_local i32 @zf_set_control(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @pr_crit(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
