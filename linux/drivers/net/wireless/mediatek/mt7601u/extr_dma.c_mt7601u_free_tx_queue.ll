; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_dma.c_mt7601u_free_tx_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_dma.c_mt7601u_free_tx_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7601u_tx_queue = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt7601u_tx_queue*)* @mt7601u_free_tx_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7601u_free_tx_queue(%struct.mt7601u_tx_queue* %0) #0 {
  %2 = alloca %struct.mt7601u_tx_queue*, align 8
  %3 = alloca i32, align 4
  store %struct.mt7601u_tx_queue* %0, %struct.mt7601u_tx_queue** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %52, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.mt7601u_tx_queue*, %struct.mt7601u_tx_queue** %2, align 8
  %7 = getelementptr inbounds %struct.mt7601u_tx_queue, %struct.mt7601u_tx_queue* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %10, label %55

10:                                               ; preds = %4
  %11 = load %struct.mt7601u_tx_queue*, %struct.mt7601u_tx_queue** %2, align 8
  %12 = getelementptr inbounds %struct.mt7601u_tx_queue, %struct.mt7601u_tx_queue* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @usb_poison_urb(i32 %18)
  %20 = load %struct.mt7601u_tx_queue*, %struct.mt7601u_tx_queue** %2, align 8
  %21 = getelementptr inbounds %struct.mt7601u_tx_queue, %struct.mt7601u_tx_queue* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %10
  %30 = load %struct.mt7601u_tx_queue*, %struct.mt7601u_tx_queue** %2, align 8
  %31 = getelementptr inbounds %struct.mt7601u_tx_queue, %struct.mt7601u_tx_queue* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.mt7601u_tx_queue*, %struct.mt7601u_tx_queue** %2, align 8
  %34 = getelementptr inbounds %struct.mt7601u_tx_queue, %struct.mt7601u_tx_queue* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @mt7601u_tx_status(i32 %32, i64 %40)
  br label %42

42:                                               ; preds = %29, %10
  %43 = load %struct.mt7601u_tx_queue*, %struct.mt7601u_tx_queue** %2, align 8
  %44 = getelementptr inbounds %struct.mt7601u_tx_queue, %struct.mt7601u_tx_queue* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @usb_free_urb(i32 %50)
  br label %52

52:                                               ; preds = %42
  %53 = load i32, i32* %3, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %3, align 4
  br label %4

55:                                               ; preds = %4
  ret void
}

declare dso_local i32 @usb_poison_urb(i32) #1

declare dso_local i32 @mt7601u_tx_status(i32, i64) #1

declare dso_local i32 @usb_free_urb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
