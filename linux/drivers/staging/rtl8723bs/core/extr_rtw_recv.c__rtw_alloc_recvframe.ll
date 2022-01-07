; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_recv.c__rtw_alloc_recvframe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_recv.c__rtw_alloc_recvframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.recv_frame = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.adapter*, i32 }
%struct.adapter = type { %struct.recv_priv }
%struct.recv_priv = type { i32, %struct.__queue }
%struct.__queue = type { i32 }
%struct.list_head = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %union.recv_frame* @_rtw_alloc_recvframe(%struct.__queue* %0) #0 {
  %2 = alloca %struct.__queue*, align 8
  %3 = alloca %union.recv_frame*, align 8
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca %struct.recv_priv*, align 8
  store %struct.__queue* %0, %struct.__queue** %2, align 8
  %8 = load %struct.__queue*, %struct.__queue** %2, align 8
  %9 = getelementptr inbounds %struct.__queue, %struct.__queue* %8, i32 0, i32 0
  %10 = call i64 @list_empty(i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store %union.recv_frame* null, %union.recv_frame** %3, align 8
  br label %46

13:                                               ; preds = %1
  %14 = load %struct.__queue*, %struct.__queue** %2, align 8
  %15 = call %struct.list_head* @get_list_head(%struct.__queue* %14)
  store %struct.list_head* %15, %struct.list_head** %5, align 8
  %16 = load %struct.list_head*, %struct.list_head** %5, align 8
  %17 = call %struct.list_head* @get_next(%struct.list_head* %16)
  store %struct.list_head* %17, %struct.list_head** %4, align 8
  %18 = load %struct.list_head*, %struct.list_head** %4, align 8
  %19 = bitcast %struct.list_head* %18 to %union.recv_frame*
  store %union.recv_frame* %19, %union.recv_frame** %3, align 8
  %20 = load %union.recv_frame*, %union.recv_frame** %3, align 8
  %21 = bitcast %union.recv_frame* %20 to %struct.TYPE_4__*
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = call i32 @list_del_init(i32* %23)
  %25 = load %union.recv_frame*, %union.recv_frame** %3, align 8
  %26 = bitcast %union.recv_frame* %25 to %struct.TYPE_4__*
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load %struct.adapter*, %struct.adapter** %28, align 8
  store %struct.adapter* %29, %struct.adapter** %6, align 8
  %30 = load %struct.adapter*, %struct.adapter** %6, align 8
  %31 = icmp ne %struct.adapter* %30, null
  br i1 %31, label %32, label %45

32:                                               ; preds = %13
  %33 = load %struct.adapter*, %struct.adapter** %6, align 8
  %34 = getelementptr inbounds %struct.adapter, %struct.adapter* %33, i32 0, i32 0
  store %struct.recv_priv* %34, %struct.recv_priv** %7, align 8
  %35 = load %struct.__queue*, %struct.__queue** %2, align 8
  %36 = load %struct.recv_priv*, %struct.recv_priv** %7, align 8
  %37 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %36, i32 0, i32 1
  %38 = icmp eq %struct.__queue* %35, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load %struct.recv_priv*, %struct.recv_priv** %7, align 8
  %41 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %39, %32
  br label %45

45:                                               ; preds = %44, %13
  br label %46

46:                                               ; preds = %45, %12
  %47 = load %union.recv_frame*, %union.recv_frame** %3, align 8
  ret %union.recv_frame* %47
}

declare dso_local i64 @list_empty(i32*) #1

declare dso_local %struct.list_head* @get_list_head(%struct.__queue*) #1

declare dso_local %struct.list_head* @get_next(%struct.list_head*) #1

declare dso_local i32 @list_del_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
