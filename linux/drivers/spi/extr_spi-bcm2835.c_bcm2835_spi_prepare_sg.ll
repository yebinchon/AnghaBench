; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm2835.c_bcm2835_spi_prepare_sg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-bcm2835.c_bcm2835_spi_prepare_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_controller = type { %struct.dma_chan*, %struct.dma_chan* }
%struct.dma_chan = type { i32 }
%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, %struct.scatterlist* }
%struct.scatterlist = type { i32 }
%struct.TYPE_3__ = type { i32, %struct.scatterlist* }
%struct.bcm2835_spi = type { i32 }
%struct.dma_async_tx_descriptor = type { %struct.spi_controller*, i32 }

@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@DMA_PREP_INTERRUPT = common dso_local global i64 0, align 8
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@bcm2835_spi_dma_rx_done = common dso_local global i32 0, align 4
@bcm2835_spi_dma_tx_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_controller*, %struct.spi_device*, %struct.spi_transfer*, %struct.bcm2835_spi*, i32)* @bcm2835_spi_prepare_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm2835_spi_prepare_sg(%struct.spi_controller* %0, %struct.spi_device* %1, %struct.spi_transfer* %2, %struct.bcm2835_spi* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.spi_controller*, align 8
  %8 = alloca %struct.spi_device*, align 8
  %9 = alloca %struct.spi_transfer*, align 8
  %10 = alloca %struct.bcm2835_spi*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.dma_chan*, align 8
  %13 = alloca %struct.scatterlist*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca %struct.dma_async_tx_descriptor*, align 8
  %18 = alloca i32, align 4
  store %struct.spi_controller* %0, %struct.spi_controller** %7, align 8
  store %struct.spi_device* %1, %struct.spi_device** %8, align 8
  store %struct.spi_transfer* %2, %struct.spi_transfer** %9, align 8
  store %struct.bcm2835_spi* %3, %struct.bcm2835_spi** %10, align 8
  store i32 %4, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %43

21:                                               ; preds = %5
  %22 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  store i32 %22, i32* %15, align 4
  %23 = load %struct.spi_controller*, %struct.spi_controller** %7, align 8
  %24 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %23, i32 0, i32 1
  %25 = load %struct.dma_chan*, %struct.dma_chan** %24, align 8
  store %struct.dma_chan* %25, %struct.dma_chan** %12, align 8
  %26 = load %struct.spi_transfer*, %struct.spi_transfer** %9, align 8
  %27 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %14, align 4
  %30 = load %struct.spi_transfer*, %struct.spi_transfer** %9, align 8
  %31 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load %struct.scatterlist*, %struct.scatterlist** %32, align 8
  store %struct.scatterlist* %33, %struct.scatterlist** %13, align 8
  %34 = load %struct.spi_transfer*, %struct.spi_transfer** %9, align 8
  %35 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %21
  br label %41

39:                                               ; preds = %21
  %40 = load i64, i64* @DMA_PREP_INTERRUPT, align 8
  br label %41

41:                                               ; preds = %39, %38
  %42 = phi i64 [ 0, %38 ], [ %40, %39 ]
  store i64 %42, i64* %16, align 8
  br label %57

43:                                               ; preds = %5
  %44 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  store i32 %44, i32* %15, align 4
  %45 = load %struct.spi_controller*, %struct.spi_controller** %7, align 8
  %46 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %45, i32 0, i32 0
  %47 = load %struct.dma_chan*, %struct.dma_chan** %46, align 8
  store %struct.dma_chan* %47, %struct.dma_chan** %12, align 8
  %48 = load %struct.spi_transfer*, %struct.spi_transfer** %9, align 8
  %49 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %14, align 4
  %52 = load %struct.spi_transfer*, %struct.spi_transfer** %9, align 8
  %53 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load %struct.scatterlist*, %struct.scatterlist** %54, align 8
  store %struct.scatterlist* %55, %struct.scatterlist** %13, align 8
  %56 = load i64, i64* @DMA_PREP_INTERRUPT, align 8
  store i64 %56, i64* %16, align 8
  br label %57

57:                                               ; preds = %43, %41
  %58 = load %struct.dma_chan*, %struct.dma_chan** %12, align 8
  %59 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %15, align 4
  %62 = load i64, i64* %16, align 8
  %63 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(%struct.dma_chan* %58, %struct.scatterlist* %59, i32 %60, i32 %61, i64 %62)
  store %struct.dma_async_tx_descriptor* %63, %struct.dma_async_tx_descriptor** %17, align 8
  %64 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %17, align 8
  %65 = icmp ne %struct.dma_async_tx_descriptor* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %57
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %6, align 4
  br label %102

69:                                               ; preds = %57
  %70 = load i32, i32* %11, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* @bcm2835_spi_dma_rx_done, align 4
  %74 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %17, align 8
  %75 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 8
  %76 = load %struct.spi_controller*, %struct.spi_controller** %7, align 8
  %77 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %17, align 8
  %78 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %77, i32 0, i32 0
  store %struct.spi_controller* %76, %struct.spi_controller** %78, align 8
  br label %97

79:                                               ; preds = %69
  %80 = load %struct.spi_transfer*, %struct.spi_transfer** %9, align 8
  %81 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %96, label %84

84:                                               ; preds = %79
  %85 = load i32, i32* @bcm2835_spi_dma_tx_done, align 4
  %86 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %17, align 8
  %87 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 8
  %88 = load %struct.spi_controller*, %struct.spi_controller** %7, align 8
  %89 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %17, align 8
  %90 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %89, i32 0, i32 0
  store %struct.spi_controller* %88, %struct.spi_controller** %90, align 8
  %91 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %92 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.bcm2835_spi*, %struct.bcm2835_spi** %10, align 8
  %95 = getelementptr inbounds %struct.bcm2835_spi, %struct.bcm2835_spi* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 4
  br label %96

96:                                               ; preds = %84, %79
  br label %97

97:                                               ; preds = %96, %72
  %98 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %17, align 8
  %99 = call i32 @dmaengine_submit(%struct.dma_async_tx_descriptor* %98)
  store i32 %99, i32* %18, align 4
  %100 = load i32, i32* %18, align 4
  %101 = call i32 @dma_submit_error(i32 %100)
  store i32 %101, i32* %6, align 4
  br label %102

102:                                              ; preds = %97, %66
  %103 = load i32, i32* %6, align 4
  ret i32 %103
}

declare dso_local %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(%struct.dma_chan*, %struct.scatterlist*, i32, i32, i64) #1

declare dso_local i32 @dmaengine_submit(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @dma_submit_error(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
