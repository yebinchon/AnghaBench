; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_dma.c_mt7601u_rx_get_pending_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_dma.c_mt7601u_rx_get_pending_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7601u_dma_buf_rx = type { i32 }
%struct.mt7601u_dev = type { i32, %struct.mt7601u_rx_queue }
%struct.mt7601u_rx_queue = type { i64, i32, i32, %struct.mt7601u_dma_buf_rx* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mt7601u_dma_buf_rx* (%struct.mt7601u_dev*)* @mt7601u_rx_get_pending_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mt7601u_dma_buf_rx* @mt7601u_rx_get_pending_entry(%struct.mt7601u_dev* %0) #0 {
  %2 = alloca %struct.mt7601u_dev*, align 8
  %3 = alloca %struct.mt7601u_rx_queue*, align 8
  %4 = alloca %struct.mt7601u_dma_buf_rx*, align 8
  %5 = alloca i64, align 8
  store %struct.mt7601u_dev* %0, %struct.mt7601u_dev** %2, align 8
  %6 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %2, align 8
  %7 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %6, i32 0, i32 1
  store %struct.mt7601u_rx_queue* %7, %struct.mt7601u_rx_queue** %3, align 8
  store %struct.mt7601u_dma_buf_rx* null, %struct.mt7601u_dma_buf_rx** %4, align 8
  %8 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %2, align 8
  %9 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %8, i32 0, i32 0
  %10 = load i64, i64* %5, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.mt7601u_rx_queue*, %struct.mt7601u_rx_queue** %3, align 8
  %13 = getelementptr inbounds %struct.mt7601u_rx_queue, %struct.mt7601u_rx_queue* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %40

17:                                               ; preds = %1
  %18 = load %struct.mt7601u_rx_queue*, %struct.mt7601u_rx_queue** %3, align 8
  %19 = getelementptr inbounds %struct.mt7601u_rx_queue, %struct.mt7601u_rx_queue* %18, i32 0, i32 3
  %20 = load %struct.mt7601u_dma_buf_rx*, %struct.mt7601u_dma_buf_rx** %19, align 8
  %21 = load %struct.mt7601u_rx_queue*, %struct.mt7601u_rx_queue** %3, align 8
  %22 = getelementptr inbounds %struct.mt7601u_rx_queue, %struct.mt7601u_rx_queue* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.mt7601u_dma_buf_rx, %struct.mt7601u_dma_buf_rx* %20, i64 %23
  store %struct.mt7601u_dma_buf_rx* %24, %struct.mt7601u_dma_buf_rx** %4, align 8
  %25 = load %struct.mt7601u_rx_queue*, %struct.mt7601u_rx_queue** %3, align 8
  %26 = getelementptr inbounds %struct.mt7601u_rx_queue, %struct.mt7601u_rx_queue* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %26, align 4
  %29 = load %struct.mt7601u_rx_queue*, %struct.mt7601u_rx_queue** %3, align 8
  %30 = getelementptr inbounds %struct.mt7601u_rx_queue, %struct.mt7601u_rx_queue* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add i64 %31, 1
  %33 = load %struct.mt7601u_rx_queue*, %struct.mt7601u_rx_queue** %3, align 8
  %34 = getelementptr inbounds %struct.mt7601u_rx_queue, %struct.mt7601u_rx_queue* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = urem i64 %32, %36
  %38 = load %struct.mt7601u_rx_queue*, %struct.mt7601u_rx_queue** %3, align 8
  %39 = getelementptr inbounds %struct.mt7601u_rx_queue, %struct.mt7601u_rx_queue* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  br label %40

40:                                               ; preds = %17, %16
  %41 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %2, align 8
  %42 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %41, i32 0, i32 0
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  %45 = load %struct.mt7601u_dma_buf_rx*, %struct.mt7601u_dma_buf_rx** %4, align 8
  ret %struct.mt7601u_dma_buf_rx* %45
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
