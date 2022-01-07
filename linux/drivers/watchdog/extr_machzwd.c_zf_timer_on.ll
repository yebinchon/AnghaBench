; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_machzwd.c_zf_timer_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_machzwd.c_zf_timer_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@zf_port_lock = common dso_local global i32 0, align 4
@PULSE_LEN = common dso_local global i32 0, align 4
@ZF_CTIMEOUT = common dso_local global i32 0, align 4
@WD1 = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@ZF_USER_TIMEO = common dso_local global i64 0, align 8
@next_heartbeat = common dso_local global i64 0, align 8
@zf_timer = common dso_local global i32 0, align 4
@ZF_HW_TIMEO = common dso_local global i64 0, align 8
@ENABLE_WD1 = common dso_local global i32 0, align 4
@zf_action = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Watchdog timer is now enabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @zf_timer_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zf_timer_on() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  %3 = load i64, i64* %2, align 8
  %4 = call i32 @spin_lock_irqsave(i32* @zf_port_lock, i64 %3)
  %5 = load i32, i32* @PULSE_LEN, align 4
  %6 = call i32 @zf_writeb(i32 %5, i32 255)
  %7 = load i32, i32* @ZF_CTIMEOUT, align 4
  %8 = load i32, i32* @WD1, align 4
  %9 = call i32 @zf_set_timer(i32 %7, i32 %8)
  %10 = load i64, i64* @jiffies, align 8
  %11 = load i64, i64* @ZF_USER_TIMEO, align 8
  %12 = add nsw i64 %10, %11
  store i64 %12, i64* @next_heartbeat, align 8
  %13 = load i64, i64* @jiffies, align 8
  %14 = load i64, i64* @ZF_HW_TIMEO, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @mod_timer(i32* @zf_timer, i64 %15)
  %17 = call i32 (...) @zf_get_control()
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* @ENABLE_WD1, align 4
  %19 = load i32, i32* @zf_action, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* %1, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %1, align 4
  %23 = load i32, i32* %1, align 4
  %24 = call i32 @zf_set_control(i32 %23)
  %25 = load i64, i64* %2, align 8
  %26 = call i32 @spin_unlock_irqrestore(i32* @zf_port_lock, i64 %25)
  %27 = call i32 @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @zf_writeb(i32, i32) #1

declare dso_local i32 @zf_set_timer(i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @zf_get_control(...) #1

declare dso_local i32 @zf_set_control(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
