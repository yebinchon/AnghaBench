; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_css.c_css_schedule_eval_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_css.c_css_schedule_eval_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@slow_subchannel_lock = common dso_local global i32 0, align 4
@slow_subchannel_set = common dso_local global i32 0, align 4
@css_eval_scheduled = common dso_local global i32 0, align 4
@cio_work_q = common dso_local global i32 0, align 4
@slow_path_work = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @css_schedule_eval_all() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* %1, align 8
  %3 = call i32 @spin_lock_irqsave(i32* @slow_subchannel_lock, i64 %2)
  %4 = load i32, i32* @slow_subchannel_set, align 4
  %5 = call i32 @idset_fill(i32 %4)
  %6 = call i32 @atomic_set(i32* @css_eval_scheduled, i32 1)
  %7 = load i32, i32* @cio_work_q, align 4
  %8 = call i32 @queue_delayed_work(i32 %7, i32* @slow_path_work, i32 0)
  %9 = load i64, i64* %1, align 8
  %10 = call i32 @spin_unlock_irqrestore(i32* @slow_subchannel_lock, i64 %9)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @idset_fill(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
