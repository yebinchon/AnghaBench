; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_dma.c_mt7601u_alloc_tx_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_dma.c_mt7601u_alloc_tx_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7601u_dev = type { i32 }
%struct.mt7601u_tx_queue = type { i32, %struct.TYPE_2__*, %struct.mt7601u_dev* }
%struct.TYPE_2__ = type { i32 }

@N_TX_ENTRIES = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt7601u_dev*, %struct.mt7601u_tx_queue*)* @mt7601u_alloc_tx_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7601u_alloc_tx_queue(%struct.mt7601u_dev* %0, %struct.mt7601u_tx_queue* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mt7601u_dev*, align 8
  %5 = alloca %struct.mt7601u_tx_queue*, align 8
  %6 = alloca i32, align 4
  store %struct.mt7601u_dev* %0, %struct.mt7601u_dev** %4, align 8
  store %struct.mt7601u_tx_queue* %1, %struct.mt7601u_tx_queue** %5, align 8
  %7 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %8 = load %struct.mt7601u_tx_queue*, %struct.mt7601u_tx_queue** %5, align 8
  %9 = getelementptr inbounds %struct.mt7601u_tx_queue, %struct.mt7601u_tx_queue* %8, i32 0, i32 2
  store %struct.mt7601u_dev* %7, %struct.mt7601u_dev** %9, align 8
  %10 = load i32, i32* @N_TX_ENTRIES, align 4
  %11 = load %struct.mt7601u_tx_queue*, %struct.mt7601u_tx_queue** %5, align 8
  %12 = getelementptr inbounds %struct.mt7601u_tx_queue, %struct.mt7601u_tx_queue* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %40, %2
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @N_TX_ENTRIES, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %43

17:                                               ; preds = %13
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i32 @usb_alloc_urb(i32 0, i32 %18)
  %20 = load %struct.mt7601u_tx_queue*, %struct.mt7601u_tx_queue** %5, align 8
  %21 = getelementptr inbounds %struct.mt7601u_tx_queue, %struct.mt7601u_tx_queue* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i32 %19, i32* %26, align 4
  %27 = load %struct.mt7601u_tx_queue*, %struct.mt7601u_tx_queue** %5, align 8
  %28 = getelementptr inbounds %struct.mt7601u_tx_queue, %struct.mt7601u_tx_queue* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %17
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %44

39:                                               ; preds = %17
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %13

43:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %36
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @usb_alloc_urb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
