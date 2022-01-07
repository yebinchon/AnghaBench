; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-stm32-qspi.c_stm32_qspi_tx_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-stm32-qspi.c_stm32_qspi_tx_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stm32_qspi = type { i32, i64, i32, %struct.dma_chan*, %struct.dma_chan* }
%struct.dma_chan = type { i32 }
%struct.spi_mem_op = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.dma_async_tx_descriptor = type { i32*, i32 }
%struct.sg_table = type { i32, i32 }

@SPI_MEM_DATA_IN = common dso_local global i64 0, align 8
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@QSPI_CR = common dso_local global i64 0, align 8
@stm32_qspi_dma_callback = common dso_local global i32 0, align 4
@CR_DMAEN = common dso_local global i32 0, align 4
@STM32_COMP_TIMEOUT_MS = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stm32_qspi*, %struct.spi_mem_op*)* @stm32_qspi_tx_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_qspi_tx_dma(%struct.stm32_qspi* %0, %struct.spi_mem_op* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stm32_qspi*, align 8
  %5 = alloca %struct.spi_mem_op*, align 8
  %6 = alloca %struct.dma_async_tx_descriptor*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dma_chan*, align 8
  %9 = alloca %struct.sg_table, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.stm32_qspi* %0, %struct.stm32_qspi** %4, align 8
  store %struct.spi_mem_op* %1, %struct.spi_mem_op** %5, align 8
  %14 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %15 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SPI_MEM_DATA_IN, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  store i32 %21, i32* %7, align 4
  %22 = load %struct.stm32_qspi*, %struct.stm32_qspi** %4, align 8
  %23 = getelementptr inbounds %struct.stm32_qspi, %struct.stm32_qspi* %22, i32 0, i32 4
  %24 = load %struct.dma_chan*, %struct.dma_chan** %23, align 8
  store %struct.dma_chan* %24, %struct.dma_chan** %8, align 8
  br label %30

25:                                               ; preds = %2
  %26 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  store i32 %26, i32* %7, align 4
  %27 = load %struct.stm32_qspi*, %struct.stm32_qspi** %4, align 8
  %28 = getelementptr inbounds %struct.stm32_qspi, %struct.stm32_qspi* %27, i32 0, i32 3
  %29 = load %struct.dma_chan*, %struct.dma_chan** %28, align 8
  store %struct.dma_chan* %29, %struct.dma_chan** %8, align 8
  br label %30

30:                                               ; preds = %25, %20
  %31 = load %struct.stm32_qspi*, %struct.stm32_qspi** %4, align 8
  %32 = getelementptr inbounds %struct.stm32_qspi, %struct.stm32_qspi* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %35 = call i32 @spi_controller_dma_map_mem_op_data(i32 %33, %struct.spi_mem_op* %34, %struct.sg_table* %9)
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %30
  %39 = load i32, i32* %13, align 4
  store i32 %39, i32* %3, align 4
  br label %128

40:                                               ; preds = %30
  %41 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %42 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %9, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %9, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %48 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(%struct.dma_chan* %41, i32 %43, i32 %45, i32 %46, i32 %47)
  store %struct.dma_async_tx_descriptor* %48, %struct.dma_async_tx_descriptor** %6, align 8
  %49 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %50 = icmp ne %struct.dma_async_tx_descriptor* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %40
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %13, align 4
  br label %121

54:                                               ; preds = %40
  %55 = load %struct.stm32_qspi*, %struct.stm32_qspi** %4, align 8
  %56 = getelementptr inbounds %struct.stm32_qspi, %struct.stm32_qspi* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @QSPI_CR, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @readl_relaxed(i64 %59)
  store i32 %60, i32* %11, align 4
  %61 = load %struct.stm32_qspi*, %struct.stm32_qspi** %4, align 8
  %62 = getelementptr inbounds %struct.stm32_qspi, %struct.stm32_qspi* %61, i32 0, i32 2
  %63 = call i32 @reinit_completion(i32* %62)
  %64 = load i32, i32* @stm32_qspi_dma_callback, align 4
  %65 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %66 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  %67 = load %struct.stm32_qspi*, %struct.stm32_qspi** %4, align 8
  %68 = getelementptr inbounds %struct.stm32_qspi, %struct.stm32_qspi* %67, i32 0, i32 2
  %69 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %70 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %69, i32 0, i32 0
  store i32* %68, i32** %70, align 8
  %71 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %72 = call i32 @dmaengine_submit(%struct.dma_async_tx_descriptor* %71)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @dma_submit_error(i32 %73)
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %13, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %54
  br label %110

78:                                               ; preds = %54
  %79 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %80 = call i32 @dma_async_issue_pending(%struct.dma_chan* %79)
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* @CR_DMAEN, align 4
  %83 = or i32 %81, %82
  %84 = load %struct.stm32_qspi*, %struct.stm32_qspi** %4, align 8
  %85 = getelementptr inbounds %struct.stm32_qspi, %struct.stm32_qspi* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @QSPI_CR, align 8
  %88 = add nsw i64 %86, %87
  %89 = call i32 @writel_relaxed(i32 %83, i64 %88)
  %90 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %9, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @STM32_COMP_TIMEOUT_MS, align 4
  %93 = mul nsw i32 %91, %92
  store i32 %93, i32* %12, align 4
  %94 = load %struct.stm32_qspi*, %struct.stm32_qspi** %4, align 8
  %95 = getelementptr inbounds %struct.stm32_qspi, %struct.stm32_qspi* %94, i32 0, i32 2
  %96 = load i32, i32* %12, align 4
  %97 = call i32 @msecs_to_jiffies(i32 %96)
  %98 = call i32 @wait_for_completion_timeout(i32* %95, i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %78
  %101 = load i32, i32* @ETIMEDOUT, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %13, align 4
  br label %103

103:                                              ; preds = %100, %78
  %104 = load i32, i32* %13, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %103
  %107 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %108 = call i32 @dmaengine_terminate_all(%struct.dma_chan* %107)
  br label %109

109:                                              ; preds = %106, %103
  br label %110

110:                                              ; preds = %109, %77
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* @CR_DMAEN, align 4
  %113 = xor i32 %112, -1
  %114 = and i32 %111, %113
  %115 = load %struct.stm32_qspi*, %struct.stm32_qspi** %4, align 8
  %116 = getelementptr inbounds %struct.stm32_qspi, %struct.stm32_qspi* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @QSPI_CR, align 8
  %119 = add nsw i64 %117, %118
  %120 = call i32 @writel_relaxed(i32 %114, i64 %119)
  br label %121

121:                                              ; preds = %110, %51
  %122 = load %struct.stm32_qspi*, %struct.stm32_qspi** %4, align 8
  %123 = getelementptr inbounds %struct.stm32_qspi, %struct.stm32_qspi* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %126 = call i32 @spi_controller_dma_unmap_mem_op_data(i32 %124, %struct.spi_mem_op* %125, %struct.sg_table* %9)
  %127 = load i32, i32* %13, align 4
  store i32 %127, i32* %3, align 4
  br label %128

128:                                              ; preds = %121, %38
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i32 @spi_controller_dma_map_mem_op_data(i32, %struct.spi_mem_op*, %struct.sg_table*) #1

declare dso_local %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(%struct.dma_chan*, i32, i32, i32, i32) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @dmaengine_submit(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @dma_submit_error(i32) #1

declare dso_local i32 @dma_async_issue_pending(%struct.dma_chan*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @dmaengine_terminate_all(%struct.dma_chan*) #1

declare dso_local i32 @spi_controller_dma_unmap_mem_op_data(i32, %struct.spi_mem_op*, %struct.sg_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
