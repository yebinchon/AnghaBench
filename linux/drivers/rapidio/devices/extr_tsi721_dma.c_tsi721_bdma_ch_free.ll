; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721_dma.c_tsi721_bdma_ch_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_tsi721_dma.c_tsi721_bdma_ch_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsi721_bdma_chan = type { i64, i32, i32, i32*, i32, %struct.TYPE_5__, i32*, i32, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@TSI721_DMAC_STS = common dso_local global i64 0, align 8
@TSI721_DMAC_STS_RUN = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@TSI721_DMAC_CTL_INIT = common dso_local global i32 0, align 4
@TSI721_DMAC_CTL = common dso_local global i64 0, align 8
@TSI721_USING_MSIX = common dso_local global i32 0, align 4
@TSI721_VECT_DMA0_DONE = common dso_local global i64 0, align 8
@TSI721_VECT_DMA0_INT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tsi721_bdma_chan*)* @tsi721_bdma_ch_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsi721_bdma_ch_free(%struct.tsi721_bdma_chan* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tsi721_bdma_chan*, align 8
  %4 = alloca i32, align 4
  store %struct.tsi721_bdma_chan* %0, %struct.tsi721_bdma_chan** %3, align 8
  %5 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %6 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %5, i32 0, i32 6
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %75

10:                                               ; preds = %1
  %11 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %12 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %11, i32 0, i32 8
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @TSI721_DMAC_STS, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @ioread32(i64 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @TSI721_DMAC_STS_RUN, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %10
  %22 = load i32, i32* @EFAULT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %75

24:                                               ; preds = %10
  %25 = load i32, i32* @TSI721_DMAC_CTL_INIT, align 4
  %26 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %27 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %26, i32 0, i32 8
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @TSI721_DMAC_CTL, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @iowrite32(i32 %25, i64 %30)
  %32 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %33 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %32, i32 0, i32 5
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %39 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 4
  %44 = trunc i64 %43 to i32
  %45 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %46 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %45, i32 0, i32 6
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %49 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @dma_free_coherent(i32 %37, i32 %44, i32* %47, i32 %50)
  %52 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %53 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %52, i32 0, i32 6
  store i32* null, i32** %53, align 8
  %54 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %55 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %54, i32 0, i32 5
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %61 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = mul i64 %63, 4
  %65 = trunc i64 %64 to i32
  %66 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %67 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %66, i32 0, i32 3
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %70 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @dma_free_coherent(i32 %59, i32 %65, i32* %68, i32 %71)
  %73 = load %struct.tsi721_bdma_chan*, %struct.tsi721_bdma_chan** %3, align 8
  %74 = getelementptr inbounds %struct.tsi721_bdma_chan, %struct.tsi721_bdma_chan* %73, i32 0, i32 3
  store i32* null, i32** %74, align 8
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %24, %21, %9
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
