; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800mmio.c_rt2800mmio_kick_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800mmio.c_rt2800mmio_kick_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.data_queue = type { i32, %struct.rt2x00_dev* }
%struct.rt2x00_dev = type { i32 }
%struct.queue_entry = type { i32 }

@Q_INDEX = common dso_local global i32 0, align 4
@TXSTATUS_TIMEOUT = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2800mmio_kick_queue(%struct.data_queue* %0) #0 {
  %2 = alloca %struct.data_queue*, align 8
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca %struct.queue_entry*, align 8
  store %struct.data_queue* %0, %struct.data_queue** %2, align 8
  %5 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %6 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %5, i32 0, i32 1
  %7 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %6, align 8
  store %struct.rt2x00_dev* %7, %struct.rt2x00_dev** %3, align 8
  %8 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %9 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %42 [
    i32 129, label %11
    i32 130, label %11
    i32 132, label %11
    i32 131, label %11
    i32 128, label %32
  ]

11:                                               ; preds = %1, %1, %1, %1
  %12 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %13 = call i32 @rt2x00queue_empty(%struct.data_queue* %12)
  %14 = call i32 @WARN_ON_ONCE(i32 %13)
  %15 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %16 = load i32, i32* @Q_INDEX, align 4
  %17 = call %struct.queue_entry* @rt2x00queue_get_entry(%struct.data_queue* %15, i32 %16)
  store %struct.queue_entry* %17, %struct.queue_entry** %4, align 8
  %18 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %19 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %20 = getelementptr inbounds %struct.data_queue, %struct.data_queue* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @TX_CTX_IDX(i32 %21)
  %23 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %24 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %18, i32 %22, i32 %25)
  %27 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %28 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %27, i32 0, i32 0
  %29 = load i32, i32* @TXSTATUS_TIMEOUT, align 4
  %30 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %31 = call i32 @hrtimer_start(i32* %28, i32 %29, i32 %30)
  br label %43

32:                                               ; preds = %1
  %33 = load %struct.data_queue*, %struct.data_queue** %2, align 8
  %34 = load i32, i32* @Q_INDEX, align 4
  %35 = call %struct.queue_entry* @rt2x00queue_get_entry(%struct.data_queue* %33, i32 %34)
  store %struct.queue_entry* %35, %struct.queue_entry** %4, align 8
  %36 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %37 = call i32 @TX_CTX_IDX(i32 5)
  %38 = load %struct.queue_entry*, %struct.queue_entry** %4, align 8
  %39 = getelementptr inbounds %struct.queue_entry, %struct.queue_entry* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @rt2x00mmio_register_write(%struct.rt2x00_dev* %36, i32 %37, i32 %40)
  br label %43

42:                                               ; preds = %1
  br label %43

43:                                               ; preds = %42, %32, %11
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @rt2x00queue_empty(%struct.data_queue*) #1

declare dso_local %struct.queue_entry* @rt2x00queue_get_entry(%struct.data_queue*, i32) #1

declare dso_local i32 @rt2x00mmio_register_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @TX_CTX_IDX(i32) #1

declare dso_local i32 @hrtimer_start(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
