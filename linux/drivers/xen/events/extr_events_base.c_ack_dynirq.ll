; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/events/extr_events_base.c_ack_dynirq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/events/extr_events_base.c_ack_dynirq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_data*)* @ack_dynirq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ack_dynirq(%struct.irq_data* %0) #0 {
  %2 = alloca %struct.irq_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.irq_data* %0, %struct.irq_data** %2, align 8
  %5 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %6 = getelementptr inbounds %struct.irq_data, %struct.irq_data* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @evtchn_from_irq(i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @VALID_EVTCHN(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %42

13:                                               ; preds = %1
  %14 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %15 = call i32 @irqd_is_setaffinity_pending(%struct.irq_data* %14)
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %39

18:                                               ; preds = %13
  %19 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %20 = call i32 @irqd_irq_disabled(%struct.irq_data* %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @likely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %18
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @test_and_set_mask(i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @clear_evtchn(i32 %29)
  %31 = load %struct.irq_data*, %struct.irq_data** %2, align 8
  %32 = call i32 @irq_move_masked_irq(%struct.irq_data* %31)
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %26
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @unmask_evtchn(i32 %36)
  br label %38

38:                                               ; preds = %35, %26
  br label %42

39:                                               ; preds = %18, %13
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @clear_evtchn(i32 %40)
  br label %42

42:                                               ; preds = %12, %39, %38
  ret void
}

declare dso_local i32 @evtchn_from_irq(i32) #1

declare dso_local i32 @VALID_EVTCHN(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @irqd_is_setaffinity_pending(%struct.irq_data*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @irqd_irq_disabled(%struct.irq_data*) #1

declare dso_local i32 @test_and_set_mask(i32) #1

declare dso_local i32 @clear_evtchn(i32) #1

declare dso_local i32 @irq_move_masked_irq(%struct.irq_data*) #1

declare dso_local i32 @unmask_evtchn(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
