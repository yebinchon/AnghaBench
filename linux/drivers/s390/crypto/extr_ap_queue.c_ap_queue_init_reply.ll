; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_ap_queue.c_ap_queue_init_reply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_ap_queue.c_ap_queue_init_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ap_queue = type { i32, %struct.ap_message* }
%struct.ap_message = type { i32 }

@AP_EVENT_POLL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ap_queue_init_reply(%struct.ap_queue* %0, %struct.ap_message* %1) #0 {
  %3 = alloca %struct.ap_queue*, align 8
  %4 = alloca %struct.ap_message*, align 8
  store %struct.ap_queue* %0, %struct.ap_queue** %3, align 8
  store %struct.ap_message* %1, %struct.ap_message** %4, align 8
  %5 = load %struct.ap_message*, %struct.ap_message** %4, align 8
  %6 = load %struct.ap_queue*, %struct.ap_queue** %3, align 8
  %7 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %6, i32 0, i32 1
  store %struct.ap_message* %5, %struct.ap_message** %7, align 8
  %8 = load %struct.ap_queue*, %struct.ap_queue** %3, align 8
  %9 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %8, i32 0, i32 0
  %10 = call i32 @spin_lock_bh(i32* %9)
  %11 = load %struct.ap_queue*, %struct.ap_queue** %3, align 8
  %12 = load i32, i32* @AP_EVENT_POLL, align 4
  %13 = call i32 @ap_sm_event(%struct.ap_queue* %11, i32 %12)
  %14 = call i32 @ap_wait(i32 %13)
  %15 = load %struct.ap_queue*, %struct.ap_queue** %3, align 8
  %16 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %15, i32 0, i32 0
  %17 = call i32 @spin_unlock_bh(i32* %16)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @ap_wait(i32) #1

declare dso_local i32 @ap_sm_event(%struct.ap_queue*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
