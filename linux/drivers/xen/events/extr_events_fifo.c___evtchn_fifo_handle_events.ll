; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/events/extr_events_fifo.c___evtchn_fifo_handle_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/events/extr_events_fifo.c___evtchn_fifo_handle_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evtchn_fifo_control_block = type { i32 }

@cpu_control_block = common dso_local global i32 0, align 4
@EVTCHN_FIFO_MAX_QUEUES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @__evtchn_fifo_handle_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__evtchn_fifo_handle_events(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.evtchn_fifo_control_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @cpu_control_block, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.evtchn_fifo_control_block* @per_cpu(i32 %8, i32 %9)
  store %struct.evtchn_fifo_control_block* %10, %struct.evtchn_fifo_control_block** %5, align 8
  %11 = load %struct.evtchn_fifo_control_block*, %struct.evtchn_fifo_control_block** %5, align 8
  %12 = getelementptr inbounds %struct.evtchn_fifo_control_block, %struct.evtchn_fifo_control_block* %11, i32 0, i32 0
  %13 = call i64 @xchg(i32* %12, i32 0)
  store i64 %13, i64* %6, align 8
  br label %14

14:                                               ; preds = %17, %2
  %15 = load i64, i64* %6, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %14
  %18 = load i32, i32* @EVTCHN_FIFO_MAX_QUEUES, align 4
  %19 = call i32 @find_first_bit(i64* %6, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.evtchn_fifo_control_block*, %struct.evtchn_fifo_control_block** %5, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @consume_one_event(i32 %20, %struct.evtchn_fifo_control_block* %21, i32 %22, i64* %6, i32 %23)
  %25 = load %struct.evtchn_fifo_control_block*, %struct.evtchn_fifo_control_block** %5, align 8
  %26 = getelementptr inbounds %struct.evtchn_fifo_control_block, %struct.evtchn_fifo_control_block* %25, i32 0, i32 0
  %27 = call i64 @xchg(i32* %26, i32 0)
  %28 = load i64, i64* %6, align 8
  %29 = or i64 %28, %27
  store i64 %29, i64* %6, align 8
  br label %14

30:                                               ; preds = %14
  ret void
}

declare dso_local %struct.evtchn_fifo_control_block* @per_cpu(i32, i32) #1

declare dso_local i64 @xchg(i32*, i32) #1

declare dso_local i32 @find_first_bit(i64*, i32) #1

declare dso_local i32 @consume_one_event(i32, %struct.evtchn_fifo_control_block*, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
