; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_rda-uart.c_rda_uart_stop_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_rda-uart.c_rda_uart_stop_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }

@RDA_UART_IRQ_MASK = common dso_local global i32 0, align 4
@RDA_UART_RX_DATA_AVAILABLE = common dso_local global i32 0, align 4
@RDA_UART_RX_TIMEOUT = common dso_local global i32 0, align 4
@RDA_UART_RXTX_BUFFER = common dso_local global i32 0, align 4
@RDA_UART_CMD_SET = common dso_local global i32 0, align 4
@RDA_UART_RX_FIFO_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @rda_uart_stop_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rda_uart_stop_rx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %4 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %5 = load i32, i32* @RDA_UART_IRQ_MASK, align 4
  %6 = call i32 @rda_uart_read(%struct.uart_port* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @RDA_UART_RX_DATA_AVAILABLE, align 4
  %8 = load i32, i32* @RDA_UART_RX_TIMEOUT, align 4
  %9 = or i32 %7, %8
  %10 = xor i32 %9, -1
  %11 = load i32, i32* %3, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* %3, align 4
  %13 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @RDA_UART_IRQ_MASK, align 4
  %16 = call i32 @rda_uart_write(%struct.uart_port* %13, i32 %14, i32 %15)
  %17 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %18 = load i32, i32* @RDA_UART_RXTX_BUFFER, align 4
  %19 = call i32 @rda_uart_read(%struct.uart_port* %17, i32 %18)
  store i32 %19, i32* %3, align 4
  %20 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %21 = load i32, i32* @RDA_UART_CMD_SET, align 4
  %22 = call i32 @rda_uart_read(%struct.uart_port* %20, i32 %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* @RDA_UART_RX_FIFO_RESET, align 4
  %24 = load i32, i32* %3, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %3, align 4
  %26 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @RDA_UART_CMD_SET, align 4
  %29 = call i32 @rda_uart_write(%struct.uart_port* %26, i32 %27, i32 %28)
  ret void
}

declare dso_local i32 @rda_uart_read(%struct.uart_port*, i32) #1

declare dso_local i32 @rda_uart_write(%struct.uart_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
