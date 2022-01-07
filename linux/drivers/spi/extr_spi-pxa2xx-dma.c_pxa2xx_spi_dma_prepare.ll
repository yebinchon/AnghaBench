; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pxa2xx-dma.c_pxa2xx_spi_dma_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pxa2xx-dma.c_pxa2xx_spi_dma_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.driver_data = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.spi_transfer = type { i32 }
%struct.dma_async_tx_descriptor = type { %struct.driver_data*, i32 }

@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"failed to get DMA TX descriptor\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to get DMA RX descriptor\0A\00", align 1
@pxa2xx_spi_dma_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pxa2xx_spi_dma_prepare(%struct.driver_data* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.driver_data*, align 8
  %5 = alloca %struct.spi_transfer*, align 8
  %6 = alloca %struct.dma_async_tx_descriptor*, align 8
  %7 = alloca %struct.dma_async_tx_descriptor*, align 8
  %8 = alloca i32, align 4
  store %struct.driver_data* %0, %struct.driver_data** %4, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %5, align 8
  %9 = load %struct.driver_data*, %struct.driver_data** %4, align 8
  %10 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %11 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %12 = call %struct.dma_async_tx_descriptor* @pxa2xx_spi_dma_prepare_one(%struct.driver_data* %9, i32 %10, %struct.spi_transfer* %11)
  store %struct.dma_async_tx_descriptor* %12, %struct.dma_async_tx_descriptor** %6, align 8
  %13 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %14 = icmp ne %struct.dma_async_tx_descriptor* %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %2
  %16 = load %struct.driver_data*, %struct.driver_data** %4, align 8
  %17 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = call i32 @dev_err(i32* %19, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EBUSY, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %8, align 4
  br label %56

23:                                               ; preds = %2
  %24 = load %struct.driver_data*, %struct.driver_data** %4, align 8
  %25 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %26 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %27 = call %struct.dma_async_tx_descriptor* @pxa2xx_spi_dma_prepare_one(%struct.driver_data* %24, i32 %25, %struct.spi_transfer* %26)
  store %struct.dma_async_tx_descriptor* %27, %struct.dma_async_tx_descriptor** %7, align 8
  %28 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %29 = icmp ne %struct.dma_async_tx_descriptor* %28, null
  br i1 %29, label %38, label %30

30:                                               ; preds = %23
  %31 = load %struct.driver_data*, %struct.driver_data** %4, align 8
  %32 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %31, i32 0, i32 1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = call i32 @dev_err(i32* %34, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @EBUSY, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %8, align 4
  br label %49

38:                                               ; preds = %23
  %39 = load i32, i32* @pxa2xx_spi_dma_callback, align 4
  %40 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %41 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load %struct.driver_data*, %struct.driver_data** %4, align 8
  %43 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %44 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %43, i32 0, i32 0
  store %struct.driver_data* %42, %struct.driver_data** %44, align 8
  %45 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %7, align 8
  %46 = call i32 @dmaengine_submit(%struct.dma_async_tx_descriptor* %45)
  %47 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %48 = call i32 @dmaengine_submit(%struct.dma_async_tx_descriptor* %47)
  store i32 0, i32* %3, align 4
  br label %58

49:                                               ; preds = %30
  %50 = load %struct.driver_data*, %struct.driver_data** %4, align 8
  %51 = getelementptr inbounds %struct.driver_data, %struct.driver_data* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @dmaengine_terminate_async(i32 %54)
  br label %56

56:                                               ; preds = %49, %15
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %56, %38
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local %struct.dma_async_tx_descriptor* @pxa2xx_spi_dma_prepare_one(%struct.driver_data*, i32, %struct.spi_transfer*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dmaengine_submit(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @dmaengine_terminate_async(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
