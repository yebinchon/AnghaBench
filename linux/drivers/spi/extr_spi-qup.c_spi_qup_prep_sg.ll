; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-qup.c_spi_qup_prep_sg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-qup.c_spi_qup_prep_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_master = type { %struct.dma_chan*, %struct.dma_chan* }
%struct.dma_chan = type { i32 }
%struct.scatterlist = type { i32 }
%struct.spi_qup = type { i32 }
%struct.dma_async_tx_descriptor = type { %struct.spi_qup*, i32 }

@DMA_PREP_INTERRUPT = common dso_local global i64 0, align 8
@DMA_PREP_FENCE = common dso_local global i64 0, align 8
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_master*, %struct.scatterlist*, i32, i32, i32)* @spi_qup_prep_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spi_qup_prep_sg(%struct.spi_master* %0, %struct.scatterlist* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.spi_master*, align 8
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.spi_qup*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.dma_async_tx_descriptor*, align 8
  %15 = alloca %struct.dma_chan*, align 8
  %16 = alloca i32, align 4
  store %struct.spi_master* %0, %struct.spi_master** %7, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load %struct.spi_master*, %struct.spi_master** %7, align 8
  %18 = call %struct.spi_qup* @spi_master_get_devdata(%struct.spi_master* %17)
  store %struct.spi_qup* %18, %struct.spi_qup** %12, align 8
  %19 = load i64, i64* @DMA_PREP_INTERRUPT, align 8
  %20 = load i64, i64* @DMA_PREP_FENCE, align 8
  %21 = or i64 %19, %20
  store i64 %21, i64* %13, align 8
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %5
  %26 = load %struct.spi_master*, %struct.spi_master** %7, align 8
  %27 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %26, i32 0, i32 1
  %28 = load %struct.dma_chan*, %struct.dma_chan** %27, align 8
  store %struct.dma_chan* %28, %struct.dma_chan** %15, align 8
  br label %33

29:                                               ; preds = %5
  %30 = load %struct.spi_master*, %struct.spi_master** %7, align 8
  %31 = getelementptr inbounds %struct.spi_master, %struct.spi_master* %30, i32 0, i32 0
  %32 = load %struct.dma_chan*, %struct.dma_chan** %31, align 8
  store %struct.dma_chan* %32, %struct.dma_chan** %15, align 8
  br label %33

33:                                               ; preds = %29, %25
  %34 = load %struct.dma_chan*, %struct.dma_chan** %15, align 8
  %35 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i64, i64* %13, align 8
  %39 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(%struct.dma_chan* %34, %struct.scatterlist* %35, i32 %36, i32 %37, i64 %38)
  store %struct.dma_async_tx_descriptor* %39, %struct.dma_async_tx_descriptor** %14, align 8
  %40 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %14, align 8
  %41 = call i64 @IS_ERR_OR_NULL(%struct.dma_async_tx_descriptor* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %33
  %44 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %14, align 8
  %45 = icmp ne %struct.dma_async_tx_descriptor* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %14, align 8
  %48 = call i32 @PTR_ERR(%struct.dma_async_tx_descriptor* %47)
  br label %52

49:                                               ; preds = %43
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  br label %52

52:                                               ; preds = %49, %46
  %53 = phi i32 [ %48, %46 ], [ %51, %49 ]
  store i32 %53, i32* %6, align 4
  br label %65

54:                                               ; preds = %33
  %55 = load i32, i32* %11, align 4
  %56 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %14, align 8
  %57 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  %58 = load %struct.spi_qup*, %struct.spi_qup** %12, align 8
  %59 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %14, align 8
  %60 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %59, i32 0, i32 0
  store %struct.spi_qup* %58, %struct.spi_qup** %60, align 8
  %61 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %14, align 8
  %62 = call i32 @dmaengine_submit(%struct.dma_async_tx_descriptor* %61)
  store i32 %62, i32* %16, align 4
  %63 = load i32, i32* %16, align 4
  %64 = call i32 @dma_submit_error(i32 %63)
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %54, %52
  %66 = load i32, i32* %6, align 4
  ret i32 %66
}

declare dso_local %struct.spi_qup* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(%struct.dma_chan*, %struct.scatterlist*, i32, i32, i64) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @PTR_ERR(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @dmaengine_submit(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @dma_submit_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
