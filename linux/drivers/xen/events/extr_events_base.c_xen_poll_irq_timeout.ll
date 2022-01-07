; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/events/extr_events_base.c_xen_poll_irq_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/events/extr_events_base.c_xen_poll_irq_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_poll = type { i32, i32, i32 }

@SCHEDOP_poll = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xen_poll_irq_timeout(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sched_poll, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @evtchn_from_irq(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i64 @VALID_EVTCHN(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.sched_poll, %struct.sched_poll* %6, i32 0, i32 0
  store i32 1, i32* %13, align 4
  %14 = load i32, i32* %4, align 4
  %15 = getelementptr inbounds %struct.sched_poll, %struct.sched_poll* %6, i32 0, i32 2
  store i32 %14, i32* %15, align 4
  %16 = getelementptr inbounds %struct.sched_poll, %struct.sched_poll* %6, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @set_xen_guest_handle(i32 %17, i32* %5)
  %19 = load i32, i32* @SCHEDOP_poll, align 4
  %20 = call i64 @HYPERVISOR_sched_op(i32 %19, %struct.sched_poll* %6)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %12
  %23 = call i32 (...) @BUG()
  br label %24

24:                                               ; preds = %22, %12
  br label %25

25:                                               ; preds = %24, %2
  ret void
}

declare dso_local i32 @evtchn_from_irq(i32) #1

declare dso_local i64 @VALID_EVTCHN(i32) #1

declare dso_local i32 @set_xen_guest_handle(i32, i32*) #1

declare dso_local i64 @HYPERVISOR_sched_op(i32, %struct.sched_poll*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
