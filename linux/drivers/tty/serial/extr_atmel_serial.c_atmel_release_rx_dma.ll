; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_atmel_serial.c_atmel_release_rx_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_atmel_serial.c_atmel_release_rx_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.atmel_uart_port = type { i32, %struct.dma_chan*, i32*, i32 }
%struct.dma_chan = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @atmel_release_rx_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_release_rx_dma(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.atmel_uart_port*, align 8
  %4 = alloca %struct.dma_chan*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %5 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %6 = call %struct.atmel_uart_port* @to_atmel_uart_port(%struct.uart_port* %5)
  store %struct.atmel_uart_port* %6, %struct.atmel_uart_port** %3, align 8
  %7 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %8 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %7, i32 0, i32 1
  %9 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  store %struct.dma_chan* %9, %struct.dma_chan** %4, align 8
  %10 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %11 = icmp ne %struct.dma_chan* %10, null
  br i1 %11, label %12, label %24

12:                                               ; preds = %1
  %13 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %14 = call i32 @dmaengine_terminate_all(%struct.dma_chan* %13)
  %15 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %16 = call i32 @dma_release_channel(%struct.dma_chan* %15)
  %17 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %18 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %21 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %20, i32 0, i32 3
  %22 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %23 = call i32 @dma_unmap_sg(i32 %19, i32* %21, i32 1, i32 %22)
  br label %24

24:                                               ; preds = %12, %1
  %25 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %26 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %25, i32 0, i32 2
  store i32* null, i32** %26, align 8
  %27 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %28 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %27, i32 0, i32 1
  store %struct.dma_chan* null, %struct.dma_chan** %28, align 8
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  %31 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %32 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  ret void
}

declare dso_local %struct.atmel_uart_port* @to_atmel_uart_port(%struct.uart_port*) #1

declare dso_local i32 @dmaengine_terminate_all(%struct.dma_chan*) #1

declare dso_local i32 @dma_release_channel(%struct.dma_chan*) #1

declare dso_local i32 @dma_unmap_sg(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
