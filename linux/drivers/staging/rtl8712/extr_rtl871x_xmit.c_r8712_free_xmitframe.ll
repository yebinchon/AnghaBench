; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_xmit.c_r8712_free_xmitframe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_xmit.c_r8712_free_xmitframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xmit_priv = type { i32, %struct._adapter*, %struct.__queue }
%struct._adapter = type { i32 }
%struct.__queue = type { i32, i32 }
%struct.xmit_frame = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r8712_free_xmitframe(%struct.xmit_priv* %0, %struct.xmit_frame* %1) #0 {
  %3 = alloca %struct.xmit_priv*, align 8
  %4 = alloca %struct.xmit_frame*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.__queue*, align 8
  %7 = alloca %struct._adapter*, align 8
  store %struct.xmit_priv* %0, %struct.xmit_priv** %3, align 8
  store %struct.xmit_frame* %1, %struct.xmit_frame** %4, align 8
  %8 = load %struct.xmit_priv*, %struct.xmit_priv** %3, align 8
  %9 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %8, i32 0, i32 2
  store %struct.__queue* %9, %struct.__queue** %6, align 8
  %10 = load %struct.xmit_priv*, %struct.xmit_priv** %3, align 8
  %11 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %10, i32 0, i32 1
  %12 = load %struct._adapter*, %struct._adapter** %11, align 8
  store %struct._adapter* %12, %struct._adapter** %7, align 8
  %13 = load %struct.xmit_frame*, %struct.xmit_frame** %4, align 8
  %14 = icmp eq %struct.xmit_frame* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %55

16:                                               ; preds = %2
  %17 = load %struct.__queue*, %struct.__queue** %6, align 8
  %18 = getelementptr inbounds %struct.__queue, %struct.__queue* %17, i32 0, i32 0
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.xmit_frame*, %struct.xmit_frame** %4, align 8
  %22 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %21, i32 0, i32 0
  %23 = call i32 @list_del_init(i32* %22)
  %24 = load %struct.xmit_frame*, %struct.xmit_frame** %4, align 8
  %25 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %16
  %29 = load %struct.xmit_frame*, %struct.xmit_frame** %4, align 8
  %30 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %29, i32 0, i32 1
  store i32* null, i32** %30, align 8
  br label %31

31:                                               ; preds = %28, %16
  %32 = load %struct.xmit_frame*, %struct.xmit_frame** %4, align 8
  %33 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %32, i32 0, i32 0
  %34 = load %struct.__queue*, %struct.__queue** %6, align 8
  %35 = getelementptr inbounds %struct.__queue, %struct.__queue* %34, i32 0, i32 1
  %36 = call i32 @list_add_tail(i32* %33, i32* %35)
  %37 = load %struct.xmit_priv*, %struct.xmit_priv** %3, align 8
  %38 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 8
  %41 = load %struct.__queue*, %struct.__queue** %6, align 8
  %42 = getelementptr inbounds %struct.__queue, %struct.__queue* %41, i32 0, i32 0
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  %45 = load %struct._adapter*, %struct._adapter** %7, align 8
  %46 = getelementptr inbounds %struct._adapter, %struct._adapter* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @netif_queue_stopped(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %31
  %51 = load %struct._adapter*, %struct._adapter** %7, align 8
  %52 = getelementptr inbounds %struct._adapter, %struct._adapter* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @netif_wake_queue(i32 %53)
  br label %55

55:                                               ; preds = %15, %50, %31
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @netif_queue_stopped(i32) #1

declare dso_local i32 @netif_wake_queue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
