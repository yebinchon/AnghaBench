; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_dma.c_mt7601u_rx_tasklet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_dma.c_mt7601u_rx_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7601u_dev = type { i32 }
%struct.mt7601u_dma_buf_rx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @mt7601u_rx_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7601u_rx_tasklet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.mt7601u_dev*, align 8
  %4 = alloca %struct.mt7601u_dma_buf_rx*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.mt7601u_dev*
  store %struct.mt7601u_dev* %6, %struct.mt7601u_dev** %3, align 8
  br label %7

7:                                                ; preds = %19, %18, %1
  %8 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %9 = call %struct.mt7601u_dma_buf_rx* @mt7601u_rx_get_pending_entry(%struct.mt7601u_dev* %8)
  store %struct.mt7601u_dma_buf_rx* %9, %struct.mt7601u_dma_buf_rx** %4, align 8
  %10 = icmp ne %struct.mt7601u_dma_buf_rx* %9, null
  br i1 %10, label %11, label %27

11:                                               ; preds = %7
  %12 = load %struct.mt7601u_dma_buf_rx*, %struct.mt7601u_dma_buf_rx** %4, align 8
  %13 = getelementptr inbounds %struct.mt7601u_dma_buf_rx, %struct.mt7601u_dma_buf_rx* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %11
  br label %7

19:                                               ; preds = %11
  %20 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %21 = load %struct.mt7601u_dma_buf_rx*, %struct.mt7601u_dma_buf_rx** %4, align 8
  %22 = call i32 @mt7601u_rx_process_entry(%struct.mt7601u_dev* %20, %struct.mt7601u_dma_buf_rx* %21)
  %23 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %24 = load %struct.mt7601u_dma_buf_rx*, %struct.mt7601u_dma_buf_rx** %4, align 8
  %25 = load i32, i32* @GFP_ATOMIC, align 4
  %26 = call i32 @mt7601u_submit_rx_buf(%struct.mt7601u_dev* %23, %struct.mt7601u_dma_buf_rx* %24, i32 %25)
  br label %7

27:                                               ; preds = %7
  ret void
}

declare dso_local %struct.mt7601u_dma_buf_rx* @mt7601u_rx_get_pending_entry(%struct.mt7601u_dev*) #1

declare dso_local i32 @mt7601u_rx_process_entry(%struct.mt7601u_dev*, %struct.mt7601u_dma_buf_rx*) #1

declare dso_local i32 @mt7601u_submit_rx_buf(%struct.mt7601u_dev*, %struct.mt7601u_dma_buf_rx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
