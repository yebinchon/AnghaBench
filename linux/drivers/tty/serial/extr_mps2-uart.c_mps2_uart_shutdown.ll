; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mps2-uart.c_mps2_uart_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mps2-uart.c_mps2_uart_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.mps2_uart_port = type { i32, i32, i32 }

@UARTn_CTRL = common dso_local global i32 0, align 4
@UARTn_CTRL_RX_GRP = common dso_local global i32 0, align 4
@UARTn_CTRL_TX_GRP = common dso_local global i32 0, align 4
@UART_PORT_COMBINED_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @mps2_uart_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mps2_uart_shutdown(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.mps2_uart_port*, align 8
  %4 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %5 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %6 = call %struct.mps2_uart_port* @to_mps2_port(%struct.uart_port* %5)
  store %struct.mps2_uart_port* %6, %struct.mps2_uart_port** %3, align 8
  %7 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %8 = load i32, i32* @UARTn_CTRL, align 4
  %9 = call i32 @mps2_uart_read8(%struct.uart_port* %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @UARTn_CTRL_RX_GRP, align 4
  %11 = load i32, i32* @UARTn_CTRL_TX_GRP, align 4
  %12 = or i32 %10, %11
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %4, align 4
  %16 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @UARTn_CTRL, align 4
  %19 = call i32 @mps2_uart_write8(%struct.uart_port* %16, i32 %17, i32 %18)
  %20 = load %struct.mps2_uart_port*, %struct.mps2_uart_port** %3, align 8
  %21 = getelementptr inbounds %struct.mps2_uart_port, %struct.mps2_uart_port* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @UART_PORT_COMBINED_IRQ, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %37, label %26

26:                                               ; preds = %1
  %27 = load %struct.mps2_uart_port*, %struct.mps2_uart_port** %3, align 8
  %28 = getelementptr inbounds %struct.mps2_uart_port, %struct.mps2_uart_port* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mps2_uart_port*, %struct.mps2_uart_port** %3, align 8
  %31 = call i32 @free_irq(i32 %29, %struct.mps2_uart_port* %30)
  %32 = load %struct.mps2_uart_port*, %struct.mps2_uart_port** %3, align 8
  %33 = getelementptr inbounds %struct.mps2_uart_port, %struct.mps2_uart_port* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.mps2_uart_port*, %struct.mps2_uart_port** %3, align 8
  %36 = call i32 @free_irq(i32 %34, %struct.mps2_uart_port* %35)
  br label %37

37:                                               ; preds = %26, %1
  %38 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %39 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.mps2_uart_port*, %struct.mps2_uart_port** %3, align 8
  %42 = call i32 @free_irq(i32 %40, %struct.mps2_uart_port* %41)
  ret void
}

declare dso_local %struct.mps2_uart_port* @to_mps2_port(%struct.uart_port*) #1

declare dso_local i32 @mps2_uart_read8(%struct.uart_port*, i32) #1

declare dso_local i32 @mps2_uart_write8(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @free_irq(i32, %struct.mps2_uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
