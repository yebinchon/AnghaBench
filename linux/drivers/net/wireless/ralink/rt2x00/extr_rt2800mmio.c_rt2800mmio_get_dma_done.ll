; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800mmio.c_rt2800mmio_get_dma_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800mmio.c_rt2800mmio_get_dma_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data_queue = type { i32, %struct.rt2x00_dev* }
%struct.rt2x00_dev = type { i32 }
%struct.queue_entry = type { i32 }

@Q_INDEX_DMA_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt2800mmio_get_dma_done(%struct.data_queue* %0) #0 {
  %2 = alloca %struct.data_queue*, align 8
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca %struct.queue_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.data_queue* %0, %struct.data_queue** %2, align 8
  %7 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %8 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %7, i32 0, i32 1
  %9 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %8, align 8
  store %struct.rt2x00_dev* %9, %struct.rt2x00_dev** %3, align 8
  %10 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %11 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %32 [
    i32 130, label %13
    i32 131, label %13
    i32 133, label %13
    i32 132, label %13
    i32 129, label %21
    i32 128, label %25
  ]

13:                                               ; preds = %1, %1, %1, %1
  %14 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %15 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %6, align 4
  %17 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @TX_DTX_IDX(i32 %18)
  %20 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %17, i32 %19)
  store i32 %20, i32* %5, align 4
  br label %34

21:                                               ; preds = %1
  %22 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %23 = call i32 @TX_DTX_IDX(i32 5)
  %24 = call i32 @rt2x00mmio_register_read(%struct.rt2x00_dev* %22, i32 %23)
  store i32 %24, i32* %5, align 4
  br label %34

25:                                               ; preds = %1
  %26 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %27 = load i32, i32* @Q_INDEX_DMA_DONE, align 4
  %28 = call %struct.queue_entry* @rt2x00queue_get_entry(%struct.data_queue* %26, i32 %27)
  store %struct.queue_entry* %28, %struct.queue_entry** %4, align 8
  %29 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %30 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %5, align 4
  br label %34

32:                                               ; preds = %1
  %33 = call i32 @WARN_ON_ONCE(i32 1)
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %32, %25, %21, %13
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i32 @rt2x00mmio_register_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @TX_DTX_IDX(i32) #1

declare dso_local %struct.queue_entry* @rt2x00queue_get_entry(%struct.data_queue*, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
