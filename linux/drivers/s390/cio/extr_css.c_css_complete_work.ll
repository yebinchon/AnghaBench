; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_css.c_css_complete_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_css.c_css_complete_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@css_eval_wq = common dso_local global i32 0, align 4
@css_eval_scheduled = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@cio_work_q = common dso_local global i32 0, align 4
@css_bus_type = common dso_local global i32 0, align 4
@css_settle = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @css_complete_work() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @css_eval_wq, align 4
  %4 = call i64 @atomic_read(i32* @css_eval_scheduled)
  %5 = icmp eq i64 %4, 0
  %6 = zext i1 %5 to i32
  %7 = call i32 @wait_event_interruptible(i32 %3, i32 %6)
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %0
  %11 = load i32, i32* @EINTR, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %1, align 4
  br label %18

13:                                               ; preds = %0
  %14 = load i32, i32* @cio_work_q, align 4
  %15 = call i32 @flush_workqueue(i32 %14)
  %16 = load i32, i32* @css_settle, align 4
  %17 = call i32 @bus_for_each_drv(i32* @css_bus_type, i32* null, i32* null, i32 %16)
  store i32 %17, i32* %1, align 4
  br label %18

18:                                               ; preds = %13, %10
  %19 = load i32, i32* %1, align 4
  ret i32 %19
}

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @bus_for_each_drv(i32*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
