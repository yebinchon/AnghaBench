; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721_dma.c_tsi721_issue_pending.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721_dma.c_tsi721_issue_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.tsi721_bdma_chan = type { i32, i64, i32 }

@DMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"DMAC%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dma_chan*)* @tsi721_issue_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tsi721_issue_pending(%struct.dma_chan* %0) #0 {
  %2 = alloca %struct.dma_chan*, align 8
  %3 = alloca %struct.tsi721_bdma_chan*, align 8
  store %struct.dma_chan* %0, %struct.dma_chan** %2, align 8
  %4 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %5 = call %struct.tsi721_bdma_chan* @to_tsi721_chan(%struct.dma_chan* %4)
  store %struct.tsi721_bdma_chan* %5, %struct.tsi721_bdma_chan** %3, align 8
  %6 = load i32, i32* @DMA, align 4
  %7 = load %struct.dma_chan*, %struct.dma_chan** %2, align 8
  %8 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %12 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @tsi_debug(i32 %6, i32* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %16 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %15, i32 0, i32 0
  %17 = call i32 @spin_lock_bh(i32* %16)
  %18 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %19 = call i64 @tsi721_dma_is_idle(%struct.tsi721_bdma_chan* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %1
  %22 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %23 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %28 = call i32 @tsi721_advance_work(%struct.tsi721_bdma_chan* %27, i32* null)
  br label %29

29:                                               ; preds = %26, %21, %1
  %30 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %31 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %30, i32 0, i32 0
  %32 = call i32 @spin_unlock_bh(i32* %31)
  ret void
}

declare dso_local %struct.tsi721_bdma_chan* @to_tsi721_chan(%struct.dma_chan*) #1

declare dso_local i32 @tsi_debug(i32, i32*, i8*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @tsi721_dma_is_idle(%struct.tsi721_bdma_chan*) #1

declare dso_local i32 @tsi721_advance_work(%struct.tsi721_bdma_chan*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
