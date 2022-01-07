; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_cppi41.c_cppi41_dma_channel_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_cppi41.c_cppi41_dma_channel_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_channel = type { i64, i32, %struct.cppi41_dma_channel* }
%struct.cppi41_dma_channel = type { i64 }

@MUSB_DMA_STATUS_FREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_channel*)* @cppi41_dma_channel_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cppi41_dma_channel_release(%struct.dma_channel* %0) #0 {
  %2 = alloca %struct.dma_channel*, align 8
  %3 = alloca %struct.cppi41_dma_channel*, align 8
  store %struct.dma_channel* %0, %struct.dma_channel** %2, align 8
  %4 = load %struct.dma_channel*, %struct.dma_channel** %2, align 8
  %5 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %4, i32 0, i32 2
  %6 = load %struct.cppi41_dma_channel*, %struct.cppi41_dma_channel** %5, align 8
  store %struct.cppi41_dma_channel* %6, %struct.cppi41_dma_channel** %3, align 8
  %7 = load %struct.cppi41_dma_channel*, %struct.cppi41_dma_channel** %3, align 8
  %8 = call i32 @trace_musb_cppi41_free(%struct.cppi41_dma_channel* %7)
  %9 = load %struct.cppi41_dma_channel*, %struct.cppi41_dma_channel** %3, align 8
  %10 = getelementptr inbounds %struct.cppi41_dma_channel, %struct.cppi41_dma_channel* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load %struct.cppi41_dma_channel*, %struct.cppi41_dma_channel** %3, align 8
  %15 = getelementptr inbounds %struct.cppi41_dma_channel, %struct.cppi41_dma_channel* %14, i32 0, i32 0
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* @MUSB_DMA_STATUS_FREE, align 4
  %17 = load %struct.dma_channel*, %struct.dma_channel** %2, align 8
  %18 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  %19 = load %struct.dma_channel*, %struct.dma_channel** %2, align 8
  %20 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  br label %21

21:                                               ; preds = %13, %1
  ret void
}

declare dso_local i32 @trace_musb_cppi41_free(%struct.cppi41_dma_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
