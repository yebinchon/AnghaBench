; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_ap_queue.c_ap_queue_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_ap_queue.c_ap_queue_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ap_device = type { i32 }
%struct.ap_queue = type { i32, i32 }

@AP_STATE_SUSPEND_WAIT = common dso_local global i32 0, align 4
@AP_EVENT_POLL = common dso_local global i32 0, align 4
@AP_WAIT_NONE = common dso_local global i64 0, align 8
@AP_STATE_BORKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ap_queue_suspend(%struct.ap_device* %0) #0 {
  %2 = alloca %struct.ap_device*, align 8
  %3 = alloca %struct.ap_queue*, align 8
  store %struct.ap_device* %0, %struct.ap_device** %2, align 8
  %4 = load %struct.ap_device*, %struct.ap_device** %2, align 8
  %5 = getelementptr inbounds %struct.ap_device, %struct.ap_device* %4, i32 0, i32 0
  %6 = call %struct.ap_queue* @to_ap_queue(i32* %5)
  store %struct.ap_queue* %6, %struct.ap_queue** %3, align 8
  %7 = load %struct.ap_queue*, %struct.ap_queue** %3, align 8
  %8 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %7, i32 0, i32 0
  %9 = call i32 @spin_lock_bh(i32* %8)
  %10 = load i32, i32* @AP_STATE_SUSPEND_WAIT, align 4
  %11 = load %struct.ap_queue*, %struct.ap_queue** %3, align 8
  %12 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  br label %13

13:                                               ; preds = %19, %1
  %14 = load %struct.ap_queue*, %struct.ap_queue** %3, align 8
  %15 = load i32, i32* @AP_EVENT_POLL, align 4
  %16 = call i64 @ap_sm_event(%struct.ap_queue* %14, i32 %15)
  %17 = load i64, i64* @AP_WAIT_NONE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %13

20:                                               ; preds = %13
  %21 = load i32, i32* @AP_STATE_BORKED, align 4
  %22 = load %struct.ap_queue*, %struct.ap_queue** %3, align 8
  %23 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.ap_queue*, %struct.ap_queue** %3, align 8
  %25 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %24, i32 0, i32 0
  %26 = call i32 @spin_unlock_bh(i32* %25)
  ret void
}

declare dso_local %struct.ap_queue* @to_ap_queue(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @ap_sm_event(%struct.ap_queue*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
