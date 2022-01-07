; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_recv.c_rtw_alloc_recvframe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_recv.c_rtw_alloc_recvframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.recv_frame = type { i32 }
%struct.__queue = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.recv_frame* @rtw_alloc_recvframe(%struct.__queue* %0) #0 {
  %2 = alloca %struct.__queue*, align 8
  %3 = alloca %struct.recv_frame*, align 8
  store %struct.__queue* %0, %struct.__queue** %2, align 8
  %4 = load %struct.__queue*, %struct.__queue** %2, align 8
  %5 = getelementptr inbounds %struct.__queue, %struct.__queue* %4, i32 0, i32 0
  %6 = call i32 @spin_lock_bh(i32* %5)
  %7 = load %struct.__queue*, %struct.__queue** %2, align 8
  %8 = call %struct.recv_frame* @_rtw_alloc_recvframe(%struct.__queue* %7)
  store %struct.recv_frame* %8, %struct.recv_frame** %3, align 8
  %9 = load %struct.__queue*, %struct.__queue** %2, align 8
  %10 = getelementptr inbounds %struct.__queue, %struct.__queue* %9, i32 0, i32 0
  %11 = call i32 @spin_unlock_bh(i32* %10)
  %12 = load %struct.recv_frame*, %struct.recv_frame** %3, align 8
  ret %struct.recv_frame* %12
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.recv_frame* @_rtw_alloc_recvframe(%struct.__queue*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
