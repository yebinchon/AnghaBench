; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-at91-usart.c_at91_usart_spi_dma_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-at91-usart.c_at91_usart_spi_dma_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_controller = type { %struct.dma_chan*, %struct.dma_chan* }
%struct.dma_chan = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.dma_chan*)* }
%struct.spi_transfer = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.at91_usart_spi = type { i32 }
%struct.dma_async_tx_descriptor = type { i32 (%struct.dma_async_tx_descriptor*)*, %struct.spi_controller*, i32 }

@IDR = common dso_local global i32 0, align 4
@US_IR_RXRDY = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@DMA_CTRL_ACK = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@dma_callback = common dso_local global i32 0, align 4
@IER = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_controller*, %struct.spi_transfer*)* @at91_usart_spi_dma_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91_usart_spi_dma_transfer(%struct.spi_controller* %0, %struct.spi_transfer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_controller*, align 8
  %5 = alloca %struct.spi_transfer*, align 8
  %6 = alloca %struct.at91_usart_spi*, align 8
  %7 = alloca %struct.dma_chan*, align 8
  %8 = alloca %struct.dma_chan*, align 8
  %9 = alloca %struct.dma_async_tx_descriptor*, align 8
  %10 = alloca %struct.dma_async_tx_descriptor*, align 8
  %11 = alloca i32, align 4
  store %struct.spi_controller* %0, %struct.spi_controller** %4, align 8
  store %struct.spi_transfer* %1, %struct.spi_transfer** %5, align 8
  %12 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %13 = call %struct.at91_usart_spi* @spi_master_get_devdata(%struct.spi_controller* %12)
  store %struct.at91_usart_spi* %13, %struct.at91_usart_spi** %6, align 8
  %14 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %15 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %14, i32 0, i32 1
  %16 = load %struct.dma_chan*, %struct.dma_chan** %15, align 8
  store %struct.dma_chan* %16, %struct.dma_chan** %7, align 8
  %17 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %18 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %17, i32 0, i32 0
  %19 = load %struct.dma_chan*, %struct.dma_chan** %18, align 8
  store %struct.dma_chan* %19, %struct.dma_chan** %8, align 8
  %20 = load %struct.at91_usart_spi*, %struct.at91_usart_spi** %6, align 8
  %21 = load i32, i32* @IDR, align 4
  %22 = load i32, i32* @US_IR_RXRDY, align 4
  %23 = call i32 @at91_usart_spi_writel(%struct.at91_usart_spi* %20, i32 %21, i32 %22)
  %24 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %25 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %26 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %30 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %34 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %35 = load i32, i32* @DMA_CTRL_ACK, align 4
  %36 = or i32 %34, %35
  %37 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(%struct.dma_chan* %24, i32 %28, i32 %32, i32 %33, i32 %36)
  store %struct.dma_async_tx_descriptor* %37, %struct.dma_async_tx_descriptor** %9, align 8
  %38 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %9, align 8
  %39 = icmp ne %struct.dma_async_tx_descriptor* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %2
  br label %100

41:                                               ; preds = %2
  %42 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %43 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %44 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.spi_transfer*, %struct.spi_transfer** %5, align 8
  %48 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %52 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %53 = load i32, i32* @DMA_CTRL_ACK, align 4
  %54 = or i32 %52, %53
  %55 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(%struct.dma_chan* %42, i32 %46, i32 %50, i32 %51, i32 %54)
  store %struct.dma_async_tx_descriptor* %55, %struct.dma_async_tx_descriptor** %10, align 8
  %56 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %10, align 8
  %57 = icmp ne %struct.dma_async_tx_descriptor* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %41
  br label %100

59:                                               ; preds = %41
  %60 = load i32, i32* @dma_callback, align 4
  %61 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %9, align 8
  %62 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  %63 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %64 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %9, align 8
  %65 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %64, i32 0, i32 1
  store %struct.spi_controller* %63, %struct.spi_controller** %65, align 8
  %66 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %9, align 8
  %67 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %66, i32 0, i32 0
  %68 = load i32 (%struct.dma_async_tx_descriptor*)*, i32 (%struct.dma_async_tx_descriptor*)** %67, align 8
  %69 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %9, align 8
  %70 = call i32 %68(%struct.dma_async_tx_descriptor* %69)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = call i64 @dma_submit_error(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %59
  br label %100

75:                                               ; preds = %59
  %76 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %10, align 8
  %77 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %76, i32 0, i32 0
  %78 = load i32 (%struct.dma_async_tx_descriptor*)*, i32 (%struct.dma_async_tx_descriptor*)** %77, align 8
  %79 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %10, align 8
  %80 = call i32 %78(%struct.dma_async_tx_descriptor* %79)
  store i32 %80, i32* %11, align 4
  %81 = load i32, i32* %11, align 4
  %82 = call i64 @dma_submit_error(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %75
  br label %100

85:                                               ; preds = %75
  %86 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %87 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %86, i32 0, i32 0
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32 (%struct.dma_chan*)*, i32 (%struct.dma_chan*)** %89, align 8
  %91 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %92 = call i32 %90(%struct.dma_chan* %91)
  %93 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %94 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %93, i32 0, i32 0
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32 (%struct.dma_chan*)*, i32 (%struct.dma_chan*)** %96, align 8
  %98 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %99 = call i32 %97(%struct.dma_chan* %98)
  store i32 0, i32* %3, align 4
  br label %109

100:                                              ; preds = %84, %74, %58, %40
  %101 = load %struct.at91_usart_spi*, %struct.at91_usart_spi** %6, align 8
  %102 = load i32, i32* @IER, align 4
  %103 = load i32, i32* @US_IR_RXRDY, align 4
  %104 = call i32 @at91_usart_spi_writel(%struct.at91_usart_spi* %101, i32 %102, i32 %103)
  %105 = load %struct.spi_controller*, %struct.spi_controller** %4, align 8
  %106 = call i32 @at91_usart_spi_stop_dma(%struct.spi_controller* %105)
  %107 = load i32, i32* @ENOMEM, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %100, %85
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local %struct.at91_usart_spi* @spi_master_get_devdata(%struct.spi_controller*) #1

declare dso_local i32 @at91_usart_spi_writel(%struct.at91_usart_spi*, i32, i32) #1

declare dso_local %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_sg(%struct.dma_chan*, i32, i32, i32, i32) #1

declare dso_local i64 @dma_submit_error(i32) #1

declare dso_local i32 @at91_usart_spi_stop_dma(%struct.spi_controller*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
