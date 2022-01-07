; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_rx.c_xenvif_have_rx_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_rx.c_xenvif_have_rx_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenvif_queue = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xenvif_queue*)* @xenvif_have_rx_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xenvif_have_rx_work(%struct.xenvif_queue* %0) #0 {
  %2 = alloca %struct.xenvif_queue*, align 8
  store %struct.xenvif_queue* %0, %struct.xenvif_queue** %2, align 8
  %3 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %4 = call i64 @xenvif_rx_ring_slots_available(%struct.xenvif_queue* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %31, label %6

6:                                                ; preds = %1
  %7 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %8 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %6
  %14 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %15 = call i64 @xenvif_rx_queue_stalled(%struct.xenvif_queue* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %13
  %18 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %19 = call i64 @xenvif_rx_queue_ready(%struct.xenvif_queue* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %17, %6
  %22 = call i64 (...) @kthread_should_stop()
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %21
  %25 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %26 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br label %31

31:                                               ; preds = %24, %21, %17, %13, %1
  %32 = phi i1 [ true, %21 ], [ true, %17 ], [ true, %13 ], [ true, %1 ], [ %30, %24 ]
  %33 = zext i1 %32 to i32
  ret i32 %33
}

declare dso_local i64 @xenvif_rx_ring_slots_available(%struct.xenvif_queue*) #1

declare dso_local i64 @xenvif_rx_queue_stalled(%struct.xenvif_queue*) #1

declare dso_local i64 @xenvif_rx_queue_ready(%struct.xenvif_queue*) #1

declare dso_local i64 @kthread_should_stop(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
