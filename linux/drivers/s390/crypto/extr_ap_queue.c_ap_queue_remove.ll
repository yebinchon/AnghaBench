; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_ap_queue.c_ap_queue_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/crypto/extr_ap_queue.c_ap_queue_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ap_queue = type { i32, i32, i32 }

@AP_STATE_UNBOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ap_queue_remove(%struct.ap_queue* %0) #0 {
  %2 = alloca %struct.ap_queue*, align 8
  store %struct.ap_queue* %0, %struct.ap_queue** %2, align 8
  %3 = load %struct.ap_queue*, %struct.ap_queue** %2, align 8
  %4 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %3, i32 0, i32 0
  %5 = call i32 @spin_lock_bh(i32* %4)
  %6 = load %struct.ap_queue*, %struct.ap_queue** %2, align 8
  %7 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @ap_zapq(i32 %8)
  %10 = load i32, i32* @AP_STATE_UNBOUND, align 4
  %11 = load %struct.ap_queue*, %struct.ap_queue** %2, align 8
  %12 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load %struct.ap_queue*, %struct.ap_queue** %2, align 8
  %14 = getelementptr inbounds %struct.ap_queue, %struct.ap_queue* %13, i32 0, i32 0
  %15 = call i32 @spin_unlock_bh(i32* %14)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @ap_zapq(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
