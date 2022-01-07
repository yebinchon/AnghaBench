; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_recv.c_r8712_free_recvframe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_recv.c_r8712_free_recvframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.recv_frame = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32*, %struct._adapter* }
%struct._adapter = type { %struct.recv_priv }
%struct.recv_priv = type { i32, %struct.__queue }
%struct.__queue = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r8712_free_recvframe(%union.recv_frame* %0, %struct.__queue* %1) #0 {
  %3 = alloca %union.recv_frame*, align 8
  %4 = alloca %struct.__queue*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct._adapter*, align 8
  %7 = alloca %struct.recv_priv*, align 8
  store %union.recv_frame* %0, %union.recv_frame** %3, align 8
  store %struct.__queue* %1, %struct.__queue** %4, align 8
  %8 = load %union.recv_frame*, %union.recv_frame** %3, align 8
  %9 = bitcast %union.recv_frame* %8 to %struct.TYPE_4__*
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 2
  %12 = load %struct._adapter*, %struct._adapter** %11, align 8
  store %struct._adapter* %12, %struct._adapter** %6, align 8
  %13 = load %struct._adapter*, %struct._adapter** %6, align 8
  %14 = getelementptr inbounds %struct._adapter, %struct._adapter* %13, i32 0, i32 0
  store %struct.recv_priv* %14, %struct.recv_priv** %7, align 8
  %15 = load %union.recv_frame*, %union.recv_frame** %3, align 8
  %16 = bitcast %union.recv_frame* %15 to %struct.TYPE_4__*
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %2
  %22 = load %union.recv_frame*, %union.recv_frame** %3, align 8
  %23 = bitcast %union.recv_frame* %22 to %struct.TYPE_4__*
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @dev_kfree_skb_any(i32* %26)
  %28 = load %union.recv_frame*, %union.recv_frame** %3, align 8
  %29 = bitcast %union.recv_frame* %28 to %struct.TYPE_4__*
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %21, %2
  %33 = load %struct.__queue*, %struct.__queue** %4, align 8
  %34 = getelementptr inbounds %struct.__queue, %struct.__queue* %33, i32 0, i32 0
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @spin_lock_irqsave(i32* %34, i64 %35)
  %37 = load %union.recv_frame*, %union.recv_frame** %3, align 8
  %38 = bitcast %union.recv_frame* %37 to %struct.TYPE_4__*
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = call i32 @list_del_init(i32* %40)
  %42 = load %union.recv_frame*, %union.recv_frame** %3, align 8
  %43 = bitcast %union.recv_frame* %42 to %struct.TYPE_4__*
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load %struct.__queue*, %struct.__queue** %4, align 8
  %47 = getelementptr inbounds %struct.__queue, %struct.__queue* %46, i32 0, i32 1
  %48 = call i32 @list_add_tail(i32* %45, i32* %47)
  %49 = load %struct._adapter*, %struct._adapter** %6, align 8
  %50 = icmp ne %struct._adapter* %49, null
  br i1 %50, label %51, label %62

51:                                               ; preds = %32
  %52 = load %struct.__queue*, %struct.__queue** %4, align 8
  %53 = load %struct.recv_priv*, %struct.recv_priv** %7, align 8
  %54 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %53, i32 0, i32 1
  %55 = icmp eq %struct.__queue* %52, %54
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load %struct.recv_priv*, %struct.recv_priv** %7, align 8
  %58 = getelementptr inbounds %struct.recv_priv, %struct.recv_priv* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %56, %51
  br label %62

62:                                               ; preds = %61, %32
  %63 = load %struct.__queue*, %struct.__queue** %4, align 8
  %64 = getelementptr inbounds %struct.__queue, %struct.__queue* %63, i32 0, i32 0
  %65 = load i64, i64* %5, align 8
  %66 = call i32 @spin_unlock_irqrestore(i32* %64, i64 %65)
  ret void
}

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
