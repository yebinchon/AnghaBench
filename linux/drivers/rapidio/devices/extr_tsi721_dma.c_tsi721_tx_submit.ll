; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721_dma.c_tsi721_tx_submit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721_dma.c_tsi721_tx_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_async_tx_descriptor = type { i32 }
%struct.tsi721_tx_desc = type { i32, i32 }
%struct.tsi721_bdma_chan = type { i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"DMAC%d wrong state of descriptor %p\00", align 1
@EIO = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@DMA_IN_PROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_async_tx_descriptor*)* @tsi721_tx_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsi721_tx_submit(%struct.dma_async_tx_descriptor* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dma_async_tx_descriptor*, align 8
  %4 = alloca %struct.tsi721_tx_desc*, align 8
  %5 = alloca %struct.tsi721_bdma_chan*, align 8
  %6 = alloca i32, align 4
  store %struct.dma_async_tx_descriptor* %0, %struct.dma_async_tx_descriptor** %3, align 8
  %7 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %3, align 8
  %8 = call %struct.tsi721_tx_desc* @to_tsi721_desc(%struct.dma_async_tx_descriptor* %7)
  store %struct.tsi721_tx_desc* %8, %struct.tsi721_tx_desc** %4, align 8
  %9 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %3, align 8
  %10 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.tsi721_bdma_chan* @to_tsi721_chan(i32 %11)
  store %struct.tsi721_bdma_chan* %12, %struct.tsi721_bdma_chan** %5, align 8
  %13 = load %struct.tsi721_tx_desc*, %struct.tsi721_tx_desc** %4, align 8
  %14 = getelementptr inbounds %struct.tsi721_tx_desc, %struct.tsi721_tx_desc* %13, i32 0, i32 0
  %15 = call i32 @list_empty(i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %30, label %17

17:                                               ; preds = %1
  %18 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %5, align 8
  %19 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %5, align 8
  %24 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %3, align 8
  %27 = call i32 @tsi_err(i32* %22, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %25, %struct.dma_async_tx_descriptor* %26)
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %61

30:                                               ; preds = %1
  %31 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %5, align 8
  %32 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %31, i32 0, i32 0
  %33 = call i32 @spin_lock_bh(i32* %32)
  %34 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %5, align 8
  %35 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %30
  %39 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %5, align 8
  %40 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %39, i32 0, i32 0
  %41 = call i32 @spin_unlock_bh(i32* %40)
  %42 = load i32, i32* @ENODEV, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %61

44:                                               ; preds = %30
  %45 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %3, align 8
  %46 = call i32 @dma_cookie_assign(%struct.dma_async_tx_descriptor* %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* @DMA_IN_PROGRESS, align 4
  %48 = load %struct.tsi721_tx_desc*, %struct.tsi721_tx_desc** %4, align 8
  %49 = getelementptr inbounds %struct.tsi721_tx_desc, %struct.tsi721_tx_desc* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.tsi721_tx_desc*, %struct.tsi721_tx_desc** %4, align 8
  %51 = getelementptr inbounds %struct.tsi721_tx_desc, %struct.tsi721_tx_desc* %50, i32 0, i32 0
  %52 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %5, align 8
  %53 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %52, i32 0, i32 1
  %54 = call i32 @list_add_tail(i32* %51, i32* %53)
  %55 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %5, align 8
  %56 = call i32 @tsi721_advance_work(%struct.tsi721_bdma_chan* %55, i32* null)
  %57 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %5, align 8
  %58 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %57, i32 0, i32 0
  %59 = call i32 @spin_unlock_bh(i32* %58)
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %44, %38, %17
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.tsi721_tx_desc* @to_tsi721_desc(%struct.dma_async_tx_descriptor*) #1

declare dso_local %struct.tsi721_bdma_chan* @to_tsi721_chan(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @tsi_err(i32*, i8*, i32, %struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @dma_cookie_assign(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @tsi721_advance_work(%struct.tsi721_bdma_chan*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
