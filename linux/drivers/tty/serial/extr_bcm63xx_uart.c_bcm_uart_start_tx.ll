; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_bcm63xx_uart.c_bcm_uart_start_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_bcm63xx_uart.c_bcm_uart_start_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }

@UART_IR_REG = common dso_local global i32 0, align 4
@UART_TX_INT_MASK = common dso_local global i32 0, align 4
@UART_CTL_REG = common dso_local global i32 0, align 4
@UART_CTL_TXEN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @bcm_uart_start_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm_uart_start_tx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %4 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %5 = load i32, i32* @UART_IR_REG, align 4
  %6 = call i32 @bcm_uart_readl(%struct.uart_port* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @UART_TX_INT_MASK, align 4
  %8 = load i32, i32* %3, align 4
  %9 = or i32 %8, %7
  store i32 %9, i32* %3, align 4
  %10 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @UART_IR_REG, align 4
  %13 = call i32 @bcm_uart_writel(%struct.uart_port* %10, i32 %11, i32 %12)
  %14 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %15 = load i32, i32* @UART_CTL_REG, align 4
  %16 = call i32 @bcm_uart_readl(%struct.uart_port* %14, i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* @UART_CTL_TXEN_MASK, align 4
  %18 = load i32, i32* %3, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %3, align 4
  %20 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @UART_CTL_REG, align 4
  %23 = call i32 @bcm_uart_writel(%struct.uart_port* %20, i32 %21, i32 %22)
  ret void
}

declare dso_local i32 @bcm_uart_readl(%struct.uart_port*, i32) #1

declare dso_local i32 @bcm_uart_writel(%struct.uart_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
