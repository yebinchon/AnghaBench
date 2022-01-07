; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_dma.c_serial8250_rx_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_dma.c_serial8250_rx_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_8250_port = type { %struct.uart_8250_dma* }
%struct.uart_8250_dma = type { i32, i32, i32, i32, i32 }
%struct.dma_async_tx_descriptor = type { %struct.uart_8250_port*, i32 }

@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@DMA_CTRL_ACK = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@__dma_rx_complete = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @serial8250_rx_dma(%struct.uart_8250_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_8250_port*, align 8
  %4 = alloca %struct.uart_8250_dma*, align 8
  %5 = alloca %struct.dma_async_tx_descriptor*, align 8
  store %struct.uart_8250_port* %0, %struct.uart_8250_port** %3, align 8
  %6 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %7 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %6, i32 0, i32 0
  %8 = load %struct.uart_8250_dma*, %struct.uart_8250_dma** %7, align 8
  store %struct.uart_8250_dma* %8, %struct.uart_8250_dma** %4, align 8
  %9 = load %struct.uart_8250_dma*, %struct.uart_8250_dma** %4, align 8
  %10 = getelementptr inbounds %struct.uart_8250_dma, %struct.uart_8250_dma* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %51

14:                                               ; preds = %1
  %15 = load %struct.uart_8250_dma*, %struct.uart_8250_dma** %4, align 8
  %16 = getelementptr inbounds %struct.uart_8250_dma, %struct.uart_8250_dma* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.uart_8250_dma*, %struct.uart_8250_dma** %4, align 8
  %19 = getelementptr inbounds %struct.uart_8250_dma, %struct.uart_8250_dma* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.uart_8250_dma*, %struct.uart_8250_dma** %4, align 8
  %22 = getelementptr inbounds %struct.uart_8250_dma, %struct.uart_8250_dma* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %25 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %26 = load i32, i32* @DMA_CTRL_ACK, align 4
  %27 = or i32 %25, %26
  %28 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_single(i32 %17, i32 %20, i32 %23, i32 %24, i32 %27)
  store %struct.dma_async_tx_descriptor* %28, %struct.dma_async_tx_descriptor** %5, align 8
  %29 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %5, align 8
  %30 = icmp ne %struct.dma_async_tx_descriptor* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %14
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %51

34:                                               ; preds = %14
  %35 = load %struct.uart_8250_dma*, %struct.uart_8250_dma** %4, align 8
  %36 = getelementptr inbounds %struct.uart_8250_dma, %struct.uart_8250_dma* %35, i32 0, i32 0
  store i32 1, i32* %36, align 4
  %37 = load i32, i32* @__dma_rx_complete, align 4
  %38 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %5, align 8
  %39 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %41 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %5, align 8
  %42 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %41, i32 0, i32 0
  store %struct.uart_8250_port* %40, %struct.uart_8250_port** %42, align 8
  %43 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %5, align 8
  %44 = call i32 @dmaengine_submit(%struct.dma_async_tx_descriptor* %43)
  %45 = load %struct.uart_8250_dma*, %struct.uart_8250_dma** %4, align 8
  %46 = getelementptr inbounds %struct.uart_8250_dma, %struct.uart_8250_dma* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load %struct.uart_8250_dma*, %struct.uart_8250_dma** %4, align 8
  %48 = getelementptr inbounds %struct.uart_8250_dma, %struct.uart_8250_dma* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @dma_async_issue_pending(i32 %49)
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %34, %31, %13
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_single(i32, i32, i32, i32, i32) #1

declare dso_local i32 @dmaengine_submit(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @dma_async_issue_pending(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
