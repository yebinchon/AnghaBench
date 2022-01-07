; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_recv.c_rtw_free_recvframe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_recv.c_rtw_free_recvframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.recv_frame = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, %struct.adapter* }
%struct.adapter = type { %struct.recv_priv }
%struct.recv_priv = type { i32, %struct.__queue }
%struct.__queue = type { i32 }

@_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_free_recvframe(%union.recv_frame* %0, %struct.__queue* %1) #0 {
  %3 = alloca %union.recv_frame*, align 8
  %4 = alloca %struct.__queue*, align 8
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca %struct.recv_priv*, align 8
  store %union.recv_frame* %0, %union.recv_frame** %3, align 8
  store %struct.__queue* %1, %struct.__queue** %4, align 8
  %7 = load %union.recv_frame*, %union.recv_frame** %3, align 8
  %8 = bitcast %union.recv_frame* %7 to %struct.TYPE_3__*
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  %11 = load %struct.adapter*, %struct.adapter** %10, align 8
  store %struct.adapter* %11, %struct.adapter** %5, align 8
  %12 = load %struct.adapter*, %struct.adapter** %5, align 8
  %13 = getelementptr inbounds %struct.adapter, %struct.adapter* %12, i32 0, i32 0
  store %struct.recv_priv* %13, %struct.recv_priv** %6, align 8
  %14 = load %union.recv_frame*, %union.recv_frame** %3, align 8
  %15 = call i32 @rtw_os_free_recvframe(%union.recv_frame* %14)
  %16 = load %struct.__queue*, %struct.__queue** %4, align 8
  %17 = getelementptr inbounds %struct.__queue, %struct.__queue* %16, i32 0, i32 0
  %18 = call i32 @spin_lock_bh(i32* %17)
  %19 = load %union.recv_frame*, %union.recv_frame** %3, align 8
  %20 = bitcast %union.recv_frame* %19 to %struct.TYPE_3__*
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = call i32 @list_del_init(i32* %22)
  %24 = load %union.recv_frame*, %union.recv_frame** %3, align 8
  %25 = bitcast %union.recv_frame* %24 to %struct.TYPE_3__*
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load %union.recv_frame*, %union.recv_frame** %3, align 8
  %29 = bitcast %union.recv_frame* %28 to %struct.TYPE_3__*
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.__queue*, %struct.__queue** %4, align 8
  %33 = call i32 @get_list_head(%struct.__queue* %32)
  %34 = call i32 @list_add_tail(i32* %31, i32 %33)
  %35 = load %struct.adapter*, %struct.adapter** %5, align 8
  %36 = icmp ne %struct.adapter* %35, null
  br i1 %36, label %37, label %48

37:                                               ; preds = %2
  %38 = load %struct.__queue*, %struct.__queue** %4, align 8
  %39 = load %struct.recv_priv*, %struct.recv_priv** %6, align 8
  %40 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %39, i32 0, i32 1
  %41 = icmp eq %struct.__queue* %38, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.recv_priv*, %struct.recv_priv** %6, align 8
  %44 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %42, %37
  br label %48

48:                                               ; preds = %47, %2
  %49 = load %struct.__queue*, %struct.__queue** %4, align 8
  %50 = getelementptr inbounds %struct.__queue, %struct.__queue* %49, i32 0, i32 0
  %51 = call i32 @spin_unlock_bh(i32* %50)
  %52 = load i32, i32* @_SUCCESS, align 4
  ret i32 %52
}

declare dso_local i32 @rtw_os_free_recvframe(%union.recv_frame*) #1

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
