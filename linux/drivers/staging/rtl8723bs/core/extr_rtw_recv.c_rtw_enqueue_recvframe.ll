; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_recv.c_rtw_enqueue_recvframe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_recv.c_rtw_enqueue_recvframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.recv_frame = type { i32 }
%struct.__queue = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_enqueue_recvframe(%union.recv_frame* %0, %struct.__queue* %1) #0 {
  %3 = alloca %union.recv_frame*, align 8
  %4 = alloca %struct.__queue*, align 8
  %5 = alloca i32, align 4
  store %union.recv_frame* %0, %union.recv_frame** %3, align 8
  store %struct.__queue* %1, %struct.__queue** %4, align 8
  %6 = load %struct.__queue*, %struct.__queue** %4, align 8
  %7 = getelementptr inbounds %struct.__queue, %struct.__queue* %6, i32 0, i32 0
  %8 = call i32 @spin_lock_bh(i32* %7)
  %9 = load %union.recv_frame*, %union.recv_frame** %3, align 8
  %10 = load %struct.__queue*, %struct.__queue** %4, align 8
  %11 = call i32 @_rtw_enqueue_recvframe(%union.recv_frame* %9, %struct.__queue* %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.__queue*, %struct.__queue** %4, align 8
  %13 = getelementptr inbounds %struct.__queue, %struct.__queue* %12, i32 0, i32 0
  %14 = call i32 @spin_unlock_bh(i32* %13)
  %15 = load i32, i32* %5, align 4
  ret i32 %15
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @_rtw_enqueue_recvframe(%union.recv_frame*, %struct.__queue*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
