; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_recv.c_rtw_free_recvframe_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_recv.c_rtw_free_recvframe_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__queue = type { i32 }
%union.recv_frame = type { i32 }
%struct.list_head = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_free_recvframe_queue(%struct.__queue* %0, %struct.__queue* %1) #0 {
  %3 = alloca %struct.__queue*, align 8
  %4 = alloca %struct.__queue*, align 8
  %5 = alloca %union.recv_frame*, align 8
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca %struct.list_head*, align 8
  store %struct.__queue* %0, %struct.__queue** %3, align 8
  store %struct.__queue* %1, %struct.__queue** %4, align 8
  %8 = load %struct.__queue*, %struct.__queue** %3, align 8
  %9 = getelementptr inbounds %struct.__queue, %struct.__queue* %8, i32 0, i32 0
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.__queue*, %struct.__queue** %3, align 8
  %12 = call %struct.list_head* @get_list_head(%struct.__queue* %11)
  store %struct.list_head* %12, %struct.list_head** %7, align 8
  %13 = load %struct.list_head*, %struct.list_head** %7, align 8
  %14 = call %struct.list_head* @get_next(%struct.list_head* %13)
  store %struct.list_head* %14, %struct.list_head** %6, align 8
  br label %15

15:                                               ; preds = %19, %2
  %16 = load %struct.list_head*, %struct.list_head** %7, align 8
  %17 = load %struct.list_head*, %struct.list_head** %6, align 8
  %18 = icmp ne %struct.list_head* %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = load %struct.list_head*, %struct.list_head** %6, align 8
  %21 = bitcast %struct.list_head* %20 to %union.recv_frame*
  store %union.recv_frame* %21, %union.recv_frame** %5, align 8
  %22 = load %struct.list_head*, %struct.list_head** %6, align 8
  %23 = call %struct.list_head* @get_next(%struct.list_head* %22)
  store %struct.list_head* %23, %struct.list_head** %6, align 8
  %24 = load %union.recv_frame*, %union.recv_frame** %5, align 8
  %25 = load %struct.__queue*, %struct.__queue** %4, align 8
  %26 = call i32 @rtw_free_recvframe(%union.recv_frame* %24, %struct.__queue* %25)
  br label %15

27:                                               ; preds = %15
  %28 = load %struct.__queue*, %struct.__queue** %3, align 8
  %29 = getelementptr inbounds %struct.__queue, %struct.__queue* %28, i32 0, i32 0
  %30 = call i32 @spin_unlock(i32* %29)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.list_head* @get_list_head(%struct.__queue*) #1

declare dso_local %struct.list_head* @get_next(%struct.list_head*) #1

declare dso_local i32 @rtw_free_recvframe(%union.recv_frame*, %struct.__queue*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
