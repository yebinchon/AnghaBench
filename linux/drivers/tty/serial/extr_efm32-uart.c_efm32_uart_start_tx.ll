; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_efm32-uart.c_efm32_uart_start_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_efm32-uart.c_efm32_uart_start_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.efm32_uart_port = type { i32 }

@UARTn_IF_TXBL = common dso_local global i32 0, align 4
@UARTn_IF_TXC = common dso_local global i32 0, align 4
@UARTn_IFC = common dso_local global i32 0, align 4
@UARTn_IEN = common dso_local global i32 0, align 4
@UARTn_CMD_TXEN = common dso_local global i32 0, align 4
@UARTn_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @efm32_uart_start_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efm32_uart_start_tx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.efm32_uart_port*, align 8
  %4 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %5 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %6 = call %struct.efm32_uart_port* @to_efm_port(%struct.uart_port* %5)
  store %struct.efm32_uart_port* %6, %struct.efm32_uart_port** %3, align 8
  %7 = load %struct.efm32_uart_port*, %struct.efm32_uart_port** %3, align 8
  %8 = load i32, i32* @UARTn_IF_TXBL, align 4
  %9 = load i32, i32* @UARTn_IF_TXC, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @UARTn_IFC, align 4
  %12 = call i32 @efm32_uart_write32(%struct.efm32_uart_port* %7, i32 %10, i32 %11)
  %13 = load %struct.efm32_uart_port*, %struct.efm32_uart_port** %3, align 8
  %14 = load i32, i32* @UARTn_IEN, align 4
  %15 = call i32 @efm32_uart_read32(%struct.efm32_uart_port* %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load %struct.efm32_uart_port*, %struct.efm32_uart_port** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @UARTn_IF_TXBL, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @UARTn_IF_TXC, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @UARTn_IEN, align 4
  %23 = call i32 @efm32_uart_write32(%struct.efm32_uart_port* %16, i32 %21, i32 %22)
  %24 = load %struct.efm32_uart_port*, %struct.efm32_uart_port** %3, align 8
  %25 = load i32, i32* @UARTn_CMD_TXEN, align 4
  %26 = load i32, i32* @UARTn_CMD, align 4
  %27 = call i32 @efm32_uart_write32(%struct.efm32_uart_port* %24, i32 %25, i32 %26)
  %28 = load %struct.efm32_uart_port*, %struct.efm32_uart_port** %3, align 8
  %29 = call i32 @efm32_uart_tx_chars(%struct.efm32_uart_port* %28)
  ret void
}

declare dso_local %struct.efm32_uart_port* @to_efm_port(%struct.uart_port*) #1

declare dso_local i32 @efm32_uart_write32(%struct.efm32_uart_port*, i32, i32) #1

declare dso_local i32 @efm32_uart_read32(%struct.efm32_uart_port*, i32) #1

declare dso_local i32 @efm32_uart_tx_chars(%struct.efm32_uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
