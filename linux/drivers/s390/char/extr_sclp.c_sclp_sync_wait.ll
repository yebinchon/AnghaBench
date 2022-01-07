; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp.c_sclp_sync_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp.c_sclp_sync_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__*)*, i64 }

@sclp_request_timer = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@jiffies = common dso_local global i64 0, align 8
@CR0_IRQ_SUBCLASS_MASK = common dso_local global i64 0, align 8
@sclp_running_state = common dso_local global i64 0, align 8
@sclp_running_state_idle = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sclp_sync_wait() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i64 0, i64* %5, align 8
  %7 = call i64 @timer_pending(%struct.TYPE_5__* @sclp_request_timer)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %0
  %10 = call i64 (...) @get_tod_clock_fast()
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sclp_request_timer, i32 0, i32 1), align 8
  %12 = load i64, i64* @jiffies, align 8
  %13 = sub nsw i64 %11, %12
  %14 = call i64 @sclp_tod_from_jiffies(i64 %13)
  %15 = add nsw i64 %10, %14
  store i64 %15, i64* %5, align 8
  br label %16

16:                                               ; preds = %9, %0
  %17 = load i64, i64* %2, align 8
  %18 = call i32 @local_irq_save(i64 %17)
  %19 = call i32 (...) @in_interrupt()
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %16
  %23 = call i32 (...) @local_bh_disable()
  br label %24

24:                                               ; preds = %22, %16
  %25 = call i64 (...) @local_tick_disable()
  store i64 %25, i64* %1, align 8
  %26 = call i32 (...) @trace_hardirqs_on()
  %27 = load i64, i64* %3, align 8
  %28 = call i32 @__ctl_store(i64 %27, i32 0, i32 0)
  %29 = load i64, i64* %3, align 8
  %30 = load i64, i64* @CR0_IRQ_SUBCLASS_MASK, align 8
  %31 = xor i64 %30, -1
  %32 = and i64 %29, %31
  store i64 %32, i64* %4, align 8
  %33 = load i64, i64* %4, align 8
  %34 = or i64 %33, 512
  store i64 %34, i64* %4, align 8
  %35 = load i64, i64* %4, align 8
  %36 = call i32 @__ctl_load(i64 %35, i32 0, i32 0)
  %37 = call i32 @__arch_local_irq_stosm(i32 1)
  br label %38

38:                                               ; preds = %55, %24
  %39 = load i64, i64* @sclp_running_state, align 8
  %40 = load i64, i64* @sclp_running_state_idle, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %38
  %43 = call i64 @timer_pending(%struct.TYPE_5__* @sclp_request_timer)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %42
  %46 = call i64 (...) @get_tod_clock_fast()
  %47 = load i64, i64* %5, align 8
  %48 = icmp sgt i64 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %45
  %50 = call i64 @del_timer(%struct.TYPE_5__* @sclp_request_timer)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32 (%struct.TYPE_5__*)*, i32 (%struct.TYPE_5__*)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @sclp_request_timer, i32 0, i32 0), align 8
  %54 = call i32 %53(%struct.TYPE_5__* @sclp_request_timer)
  br label %55

55:                                               ; preds = %52, %49, %45, %42
  %56 = call i32 (...) @cpu_relax()
  br label %38

57:                                               ; preds = %38
  %58 = call i32 (...) @local_irq_disable()
  %59 = load i64, i64* %3, align 8
  %60 = call i32 @__ctl_load(i64 %59, i32 0, i32 0)
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %65, label %63

63:                                               ; preds = %57
  %64 = call i32 (...) @_local_bh_enable()
  br label %65

65:                                               ; preds = %63, %57
  %66 = load i64, i64* %1, align 8
  %67 = call i32 @local_tick_enable(i64 %66)
  %68 = load i64, i64* %2, align 8
  %69 = call i32 @local_irq_restore(i64 %68)
  ret void
}

declare dso_local i64 @timer_pending(%struct.TYPE_5__*) #1

declare dso_local i64 @get_tod_clock_fast(...) #1

declare dso_local i64 @sclp_tod_from_jiffies(i64) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i64 @local_tick_disable(...) #1

declare dso_local i32 @trace_hardirqs_on(...) #1

declare dso_local i32 @__ctl_store(i64, i32, i32) #1

declare dso_local i32 @__ctl_load(i64, i32, i32) #1

declare dso_local i32 @__arch_local_irq_stosm(i32) #1

declare dso_local i64 @del_timer(%struct.TYPE_5__*) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @_local_bh_enable(...) #1

declare dso_local i32 @local_tick_enable(i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
