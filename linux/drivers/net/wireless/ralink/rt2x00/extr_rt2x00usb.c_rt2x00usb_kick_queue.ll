; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00usb.c_rt2x00usb_kick_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00usb.c_rt2x00usb_kick_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data_queue = type { i32 }

@Q_INDEX_DONE = common dso_local global i32 0, align 4
@Q_INDEX = common dso_local global i32 0, align 4
@rt2x00usb_kick_tx_entry = common dso_local global i32 0, align 4
@rt2x00usb_kick_rx_entry = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2x00usb_kick_queue(%struct.data_queue* %0) #0 {
  %2 = alloca %struct.data_queue*, align 8
  store %struct.data_queue* %0, %struct.data_queue** %2, align 8
  %3 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %4 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %28 [
    i32 129, label %6
    i32 130, label %6
    i32 132, label %6
    i32 131, label %6
    i32 128, label %17
  ]

6:                                                ; preds = %1, %1, %1, %1
  %7 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %8 = call i32 @rt2x00queue_empty(%struct.data_queue* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %12 = load i32, i32* @Q_INDEX_DONE, align 4
  %13 = load i32, i32* @Q_INDEX, align 4
  %14 = load i32, i32* @rt2x00usb_kick_tx_entry, align 4
  %15 = call i32 @rt2x00queue_for_each_entry(%struct.data_queue* %11, i32 %12, i32 %13, i32* null, i32 %14)
  br label %16

16:                                               ; preds = %10, %6
  br label %29

17:                                               ; preds = %1
  %18 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %19 = call i32 @rt2x00queue_full(%struct.data_queue* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %17
  %22 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %23 = load i32, i32* @Q_INDEX, align 4
  %24 = load i32, i32* @Q_INDEX_DONE, align 4
  %25 = load i32, i32* @rt2x00usb_kick_rx_entry, align 4
  %26 = call i32 @rt2x00queue_for_each_entry(%struct.data_queue* %22, i32 %23, i32 %24, i32* null, i32 %25)
  br label %27

27:                                               ; preds = %21, %17
  br label %29

28:                                               ; preds = %1
  br label %29

29:                                               ; preds = %28, %27, %16
  ret void
}

declare dso_local i32 @rt2x00queue_empty(%struct.data_queue*) #1

declare dso_local i32 @rt2x00queue_for_each_entry(%struct.data_queue*, i32, i32, i32*, i32) #1

declare dso_local i32 @rt2x00queue_full(%struct.data_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
