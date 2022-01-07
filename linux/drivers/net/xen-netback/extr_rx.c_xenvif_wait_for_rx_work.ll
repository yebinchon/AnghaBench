; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_rx.c_xenvif_wait_for_rx_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_rx.c_xenvif_wait_for_rx_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenvif_queue = type { i32 }

@wait = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xenvif_queue*)* @xenvif_wait_for_rx_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xenvif_wait_for_rx_work(%struct.xenvif_queue* %0) #0 {
  %2 = alloca %struct.xenvif_queue*, align 8
  %3 = alloca i64, align 8
  store %struct.xenvif_queue* %0, %struct.xenvif_queue** %2, align 8
  %4 = load i32, i32* @wait, align 4
  %5 = call i32 @DEFINE_WAIT(i32 %4)
  %6 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %7 = call i64 @xenvif_have_rx_work(%struct.xenvif_queue* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %32

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %27, %10
  %12 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %13 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %12, i32 0, i32 0
  %14 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %15 = call i32 @prepare_to_wait(i32* %13, i32* @wait, i32 %14)
  %16 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %17 = call i64 @xenvif_have_rx_work(%struct.xenvif_queue* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  br label %28

20:                                               ; preds = %11
  %21 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %22 = call i32 @xenvif_rx_queue_timeout(%struct.xenvif_queue* %21)
  %23 = call i64 @schedule_timeout(i32 %22)
  store i64 %23, i64* %3, align 8
  %24 = load i64, i64* %3, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  br label %28

27:                                               ; preds = %20
  br label %11

28:                                               ; preds = %26, %19
  %29 = load %struct.xenvif_queue*, %struct.xenvif_queue** %2, align 8
  %30 = getelementptr inbounds %struct.xenvif_queue, %struct.xenvif_queue* %29, i32 0, i32 0
  %31 = call i32 @finish_wait(i32* %30, i32* @wait)
  br label %32

32:                                               ; preds = %28, %9
  ret void
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i64 @xenvif_have_rx_work(%struct.xenvif_queue*) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i64 @schedule_timeout(i32) #1

declare dso_local i32 @xenvif_rx_queue_timeout(%struct.xenvif_queue*) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
