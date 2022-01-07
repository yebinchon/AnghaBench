; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721_dma.c_tsi721_alloc_chan_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721_dma.c_tsi721_alloc_chan_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_chan = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.tsi721_bdma_chan = type { i32, i32, %struct.tsi721_tx_desc*, i32, i64 }
%struct.tsi721_tx_desc = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@DMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"DMAC%d\00", align 1
@dma_txqueue_sz = common dso_local global i32 0, align 4
@dma_desc_per_channel = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Unable to initialize DMAC%d\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tsi721_tx_submit = common dso_local global i32 0, align 4
@DMA_CTRL_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_chan*)* @tsi721_alloc_chan_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsi721_alloc_chan_resources(%struct.dma_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dma_chan*, align 8
  %4 = alloca %struct.tsi721_bdma_chan*, align 8
  %5 = alloca %struct.tsi721_tx_desc*, align 8
  %6 = alloca i32, align 4
  store %struct.dma_chan* %0, %struct.dma_chan** %3, align 8
  %7 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %8 = call %struct.tsi721_bdma_chan* @to_tsi721_chan(%struct.dma_chan* %7)
  store %struct.tsi721_bdma_chan* %8, %struct.tsi721_bdma_chan** %4, align 8
  %9 = load i32, i32* @DMA, align 4
  %10 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %11 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %4, align 8
  %15 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @tsi_debug(i32 %9, i32* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %4, align 8
  %19 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @dma_txqueue_sz, align 4
  store i32 %23, i32* %2, align 4
  br label %100

24:                                               ; preds = %1
  %25 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %4, align 8
  %26 = load i32, i32* @dma_desc_per_channel, align 4
  %27 = call i64 @tsi721_bdma_ch_init(%struct.tsi721_bdma_chan* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %24
  %30 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %31 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %4, align 8
  %35 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @tsi_err(i32* %33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @ENODEV, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %100

40:                                               ; preds = %24
  %41 = load i32, i32* @dma_txqueue_sz, align 4
  %42 = load i32, i32* @GFP_ATOMIC, align 4
  %43 = call %struct.tsi721_tx_desc* @kcalloc(i32 %41, i32 12, i32 %42)
  store %struct.tsi721_tx_desc* %43, %struct.tsi721_tx_desc** %5, align 8
  %44 = load %struct.tsi721_tx_desc*, %struct.tsi721_tx_desc** %5, align 8
  %45 = icmp ne %struct.tsi721_tx_desc* %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %40
  %47 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %4, align 8
  %48 = call i32 @tsi721_bdma_ch_free(%struct.tsi721_bdma_chan* %47)
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %100

51:                                               ; preds = %40
  %52 = load %struct.tsi721_tx_desc*, %struct.tsi721_tx_desc** %5, align 8
  %53 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %4, align 8
  %54 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %53, i32 0, i32 2
  store %struct.tsi721_tx_desc* %52, %struct.tsi721_tx_desc** %54, align 8
  store i32 0, i32* %6, align 4
  br label %55

55:                                               ; preds = %89, %51
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @dma_txqueue_sz, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %92

59:                                               ; preds = %55
  %60 = load %struct.tsi721_tx_desc*, %struct.tsi721_tx_desc** %5, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.tsi721_tx_desc, %struct.tsi721_tx_desc* %60, i64 %62
  %64 = getelementptr inbounds %struct.tsi721_tx_desc, %struct.tsi721_tx_desc* %63, i32 0, i32 1
  %65 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %66 = call i32 @dma_async_tx_descriptor_init(%struct.TYPE_4__* %64, %struct.dma_chan* %65)
  %67 = load i32, i32* @tsi721_tx_submit, align 4
  %68 = load %struct.tsi721_tx_desc*, %struct.tsi721_tx_desc** %5, align 8
  %69 = load i32, i32* %6, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.tsi721_tx_desc, %struct.tsi721_tx_desc* %68, i64 %70
  %72 = getelementptr inbounds %struct.tsi721_tx_desc, %struct.tsi721_tx_desc* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  store i32 %67, i32* %73, align 4
  %74 = load i32, i32* @DMA_CTRL_ACK, align 4
  %75 = load %struct.tsi721_tx_desc*, %struct.tsi721_tx_desc** %5, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.tsi721_tx_desc, %struct.tsi721_tx_desc* %75, i64 %77
  %79 = getelementptr inbounds %struct.tsi721_tx_desc, %struct.tsi721_tx_desc* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  store i32 %74, i32* %80, align 4
  %81 = load %struct.tsi721_tx_desc*, %struct.tsi721_tx_desc** %5, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.tsi721_tx_desc, %struct.tsi721_tx_desc* %81, i64 %83
  %85 = getelementptr inbounds %struct.tsi721_tx_desc, %struct.tsi721_tx_desc* %84, i32 0, i32 0
  %86 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %4, align 8
  %87 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %86, i32 0, i32 1
  %88 = call i32 @list_add(i32* %85, i32* %87)
  br label %89

89:                                               ; preds = %59
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %6, align 4
  br label %55

92:                                               ; preds = %55
  %93 = load %struct.dma_chan*, %struct.dma_chan** %3, align 8
  %94 = call i32 @dma_cookie_init(%struct.dma_chan* %93)
  %95 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %4, align 8
  %96 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %95, i32 0, i32 0
  store i32 1, i32* %96, align 8
  %97 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %4, align 8
  %98 = call i32 @tsi721_bdma_interrupt_enable(%struct.tsi721_bdma_chan* %97, i32 1)
  %99 = load i32, i32* @dma_txqueue_sz, align 4
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %92, %46, %29, %22
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local %struct.tsi721_bdma_chan* @to_tsi721_chan(%struct.dma_chan*) #1

declare dso_local i32 @tsi_debug(i32, i32*, i8*, i32) #1

declare dso_local i64 @tsi721_bdma_ch_init(%struct.tsi721_bdma_chan*, i32) #1

declare dso_local i32 @tsi_err(i32*, i8*, i32) #1

declare dso_local %struct.tsi721_tx_desc* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @tsi721_bdma_ch_free(%struct.tsi721_bdma_chan*) #1

declare dso_local i32 @dma_async_tx_descriptor_init(%struct.TYPE_4__*, %struct.dma_chan*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @dma_cookie_init(%struct.dma_chan*) #1

declare dso_local i32 @tsi721_bdma_interrupt_enable(%struct.tsi721_bdma_chan*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
