; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_ap_queue.c_ap_queue_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_ap_queue.c_ap_queue_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ap_queue = type { i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ap_message = type { i32, i32 }

@AP_EVENT_POLL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ap_queue_message(%struct.ap_queue* %0, %struct.ap_message* %1) #0 {
  %3 = alloca %struct.ap_queue*, align 8
  %4 = alloca %struct.ap_message*, align 8
  store %struct.ap_queue* %0, %struct.ap_queue** %3, align 8
  store %struct.ap_message* %1, %struct.ap_message** %4, align 8
  %5 = load %struct.ap_message*, %struct.ap_message** %4, align 8
  %6 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load %struct.ap_queue*, %struct.ap_queue** %3, align 8
  %13 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %12, i32 0, i32 0
  %14 = call i32 @spin_lock_bh(i32* %13)
  %15 = load %struct.ap_message*, %struct.ap_message** %4, align 8
  %16 = getelementptr inbounds %struct.ap_message, %struct.ap_message* %15, i32 0, i32 0
  %17 = load %struct.ap_queue*, %struct.ap_queue** %3, align 8
  %18 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %17, i32 0, i32 4
  %19 = call i32 @list_add_tail(i32* %16, i32* %18)
  %20 = load %struct.ap_queue*, %struct.ap_queue** %3, align 8
  %21 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  %24 = load %struct.ap_queue*, %struct.ap_queue** %3, align 8
  %25 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 8
  %28 = load %struct.ap_queue*, %struct.ap_queue** %3, align 8
  %29 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 @atomic_inc(i32* %31)
  %33 = load %struct.ap_queue*, %struct.ap_queue** %3, align 8
  %34 = load i32, i32* @AP_EVENT_POLL, align 4
  %35 = call i32 @ap_sm_event_loop(%struct.ap_queue* %33, i32 %34)
  %36 = call i32 @ap_wait(i32 %35)
  %37 = load %struct.ap_queue*, %struct.ap_queue** %3, align 8
  %38 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %37, i32 0, i32 0
  %39 = call i32 @spin_unlock_bh(i32* %38)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @ap_wait(i32) #1

declare dso_local i32 @ap_sm_event_loop(%struct.ap_queue*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
