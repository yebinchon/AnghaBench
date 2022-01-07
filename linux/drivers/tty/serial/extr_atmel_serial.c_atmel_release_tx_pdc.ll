; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_atmel_serial.c_atmel_release_tx_pdc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_atmel_serial.c_atmel_release_tx_pdc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.atmel_uart_port = type { %struct.atmel_dma_buffer }
%struct.atmel_dma_buffer = type { i32, i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @atmel_release_tx_pdc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_release_tx_pdc(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.atmel_uart_port*, align 8
  %4 = alloca %struct.atmel_dma_buffer*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %5 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %6 = call %struct.atmel_uart_port* @to_atmel_uart_port(%struct.uart_port* %5)
  store %struct.atmel_uart_port* %6, %struct.atmel_uart_port** %3, align 8
  %7 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %8 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %7, i32 0, i32 0
  store %struct.atmel_dma_buffer* %8, %struct.atmel_dma_buffer** %4, align 8
  %9 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %10 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.atmel_dma_buffer*, %struct.atmel_dma_buffer** %4, align 8
  %13 = getelementptr inbounds %struct.atmel_dma_buffer, %struct.atmel_dma_buffer* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.atmel_dma_buffer*, %struct.atmel_dma_buffer** %4, align 8
  %16 = getelementptr inbounds %struct.atmel_dma_buffer, %struct.atmel_dma_buffer* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @DMA_TO_DEVICE, align 4
  %19 = call i32 @dma_unmap_single(i32 %11, i32 %14, i32 %17, i32 %18)
  ret void
}

declare dso_local %struct.atmel_uart_port* @to_atmel_uart_port(%struct.uart_port*) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
