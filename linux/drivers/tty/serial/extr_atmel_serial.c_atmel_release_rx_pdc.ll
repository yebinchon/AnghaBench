; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_atmel_serial.c_atmel_release_rx_pdc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_atmel_serial.c_atmel_release_rx_pdc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.atmel_uart_port = type { %struct.atmel_dma_buffer* }
%struct.atmel_dma_buffer = type { i32, i32, i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @atmel_release_rx_pdc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_release_rx_pdc(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.atmel_uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.atmel_dma_buffer*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %7 = call %struct.atmel_uart_port* @to_atmel_uart_port(%struct.uart_port* %6)
  store %struct.atmel_uart_port* %7, %struct.atmel_uart_port** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %33, %1
  %9 = load i32, i32* %4, align 4
  %10 = icmp slt i32 %9, 2
  br i1 %10, label %11, label %36

11:                                               ; preds = %8
  %12 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %13 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %12, i32 0, i32 0
  %14 = load %struct.atmel_dma_buffer*, %struct.atmel_dma_buffer** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.atmel_dma_buffer, %struct.atmel_dma_buffer* %14, i64 %16
  store %struct.atmel_dma_buffer* %17, %struct.atmel_dma_buffer** %5, align 8
  %18 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %19 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.atmel_dma_buffer*, %struct.atmel_dma_buffer** %5, align 8
  %22 = getelementptr inbounds %struct.atmel_dma_buffer, %struct.atmel_dma_buffer* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.atmel_dma_buffer*, %struct.atmel_dma_buffer** %5, align 8
  %25 = getelementptr inbounds %struct.atmel_dma_buffer, %struct.atmel_dma_buffer* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %28 = call i32 @dma_unmap_single(i32 %20, i32 %23, i32 %26, i32 %27)
  %29 = load %struct.atmel_dma_buffer*, %struct.atmel_dma_buffer** %5, align 8
  %30 = getelementptr inbounds %struct.atmel_dma_buffer, %struct.atmel_dma_buffer* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @kfree(i32 %31)
  br label %33

33:                                               ; preds = %11
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %8

36:                                               ; preds = %8
  ret void
}

declare dso_local %struct.atmel_uart_port* @to_atmel_uart_port(%struct.uart_port*) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
