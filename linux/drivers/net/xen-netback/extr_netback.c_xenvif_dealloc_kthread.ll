; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_netback.c_xenvif_dealloc_kthread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_netback.c_xenvif_dealloc_kthread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenvif_queue = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xenvif_dealloc_kthread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.xenvif_queue*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.xenvif_queue*
  store %struct.xenvif_queue* %5, %struct.xenvif_queue** %3, align 8
  br label %6

6:                                                ; preds = %25, %1
  %7 = load %struct.xenvif_queue*, %struct.xenvif_queue** %3, align 8
  %8 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.xenvif_queue*, %struct.xenvif_queue** %3, align 8
  %11 = call i64 @tx_dealloc_work_todo(%struct.xenvif_queue* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %6
  %14 = load %struct.xenvif_queue*, %struct.xenvif_queue** %3, align 8
  %15 = call i64 @xenvif_dealloc_kthread_should_stop(%struct.xenvif_queue* %14)
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %13, %6
  %18 = phi i1 [ true, %6 ], [ %16, %13 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @wait_event_interruptible(i32 %9, i32 %19)
  %21 = load %struct.xenvif_queue*, %struct.xenvif_queue** %3, align 8
  %22 = call i64 @xenvif_dealloc_kthread_should_stop(%struct.xenvif_queue* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %29

25:                                               ; preds = %17
  %26 = load %struct.xenvif_queue*, %struct.xenvif_queue** %3, align 8
  %27 = call i32 @xenvif_tx_dealloc_action(%struct.xenvif_queue* %26)
  %28 = call i32 (...) @cond_resched()
  br label %6

29:                                               ; preds = %24
  %30 = load %struct.xenvif_queue*, %struct.xenvif_queue** %3, align 8
  %31 = call i64 @tx_dealloc_work_todo(%struct.xenvif_queue* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load %struct.xenvif_queue*, %struct.xenvif_queue** %3, align 8
  %35 = call i32 @xenvif_tx_dealloc_action(%struct.xenvif_queue* %34)
  br label %36

36:                                               ; preds = %33, %29
  ret i32 0
}

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i64 @tx_dealloc_work_todo(%struct.xenvif_queue*) #1

declare dso_local i64 @xenvif_dealloc_kthread_should_stop(%struct.xenvif_queue*) #1

declare dso_local i32 @xenvif_tx_dealloc_action(%struct.xenvif_queue*) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
