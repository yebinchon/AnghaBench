; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_recv.c_rtw_free_recvframe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_recv.c_rtw_free_recvframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.recv_frame = type { i32, i32* }
%struct.__queue = type { i32 }

@_FAIL = common dso_local global i32 0, align 4
@_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_free_recvframe(%struct.recv_frame* %0, %struct.__queue* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.recv_frame*, align 8
  %5 = alloca %struct.__queue*, align 8
  store %struct.recv_frame* %0, %struct.recv_frame** %4, align 8
  store %struct.__queue* %1, %struct.__queue** %5, align 8
  %6 = load %struct.recv_frame*, %struct.recv_frame** %4, align 8
  %7 = icmp ne %struct.recv_frame* %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* @_FAIL, align 4
  store i32 %9, i32* %3, align 4
  br label %38

10:                                               ; preds = %2
  %11 = load %struct.recv_frame*, %struct.recv_frame** %4, align 8
  %12 = getelementptr inbounds %struct.recv_frame, %struct.recv_frame* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %10
  %16 = load %struct.recv_frame*, %struct.recv_frame** %4, align 8
  %17 = getelementptr inbounds %struct.recv_frame, %struct.recv_frame* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = call i32 @dev_kfree_skb_any(i32* %18)
  %20 = load %struct.recv_frame*, %struct.recv_frame** %4, align 8
  %21 = getelementptr inbounds %struct.recv_frame, %struct.recv_frame* %20, i32 0, i32 1
  store i32* null, i32** %21, align 8
  br label %22

22:                                               ; preds = %15, %10
  %23 = load %struct.__queue*, %struct.__queue** %5, align 8
  %24 = getelementptr inbounds %struct.__queue, %struct.__queue* %23, i32 0, i32 0
  %25 = call i32 @spin_lock_bh(i32* %24)
  %26 = load %struct.recv_frame*, %struct.recv_frame** %4, align 8
  %27 = getelementptr inbounds %struct.recv_frame, %struct.recv_frame* %26, i32 0, i32 0
  %28 = call i32 @list_del_init(i32* %27)
  %29 = load %struct.recv_frame*, %struct.recv_frame** %4, align 8
  %30 = getelementptr inbounds %struct.recv_frame, %struct.recv_frame* %29, i32 0, i32 0
  %31 = load %struct.__queue*, %struct.__queue** %5, align 8
  %32 = call i32 @get_list_head(%struct.__queue* %31)
  %33 = call i32 @list_add_tail(i32* %30, i32 %32)
  %34 = load %struct.__queue*, %struct.__queue** %5, align 8
  %35 = getelementptr inbounds %struct.__queue, %struct.__queue* %34, i32 0, i32 0
  %36 = call i32 @spin_unlock_bh(i32* %35)
  %37 = load i32, i32* @_SUCCESS, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %22, %8
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32) #1

declare dso_local i32 @get_list_head(%struct.__queue*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
