; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mvebu-uart.c_mvebu_uart_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mvebu-uart.c_mvebu_uart_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i64 }
%struct.mvebu_uart = type { i32* }

@UART_TX_IRQ = common dso_local global i64 0, align 8
@UART_IRQ_SUM = common dso_local global i64 0, align 8
@UART_RX_IRQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @mvebu_uart_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvebu_uart_shutdown(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.mvebu_uart*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %4 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %5 = call %struct.mvebu_uart* @to_mvuart(%struct.uart_port* %4)
  store %struct.mvebu_uart* %5, %struct.mvebu_uart** %3, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %7 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %10 = call i64 @UART_INTR(%struct.uart_port* %9)
  %11 = add nsw i64 %8, %10
  %12 = call i32 @writel(i32 0, i64 %11)
  %13 = load %struct.mvebu_uart*, %struct.mvebu_uart** %3, align 8
  %14 = getelementptr inbounds %struct.mvebu_uart, %struct.mvebu_uart* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i64, i64* @UART_TX_IRQ, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %1
  %21 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %22 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.mvebu_uart*, %struct.mvebu_uart** %3, align 8
  %25 = getelementptr inbounds %struct.mvebu_uart, %struct.mvebu_uart* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* @UART_IRQ_SUM, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %31 = call i32 @devm_free_irq(i32 %23, i32 %29, %struct.uart_port* %30)
  br label %55

32:                                               ; preds = %1
  %33 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %34 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.mvebu_uart*, %struct.mvebu_uart** %3, align 8
  %37 = getelementptr inbounds %struct.mvebu_uart, %struct.mvebu_uart* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* @UART_RX_IRQ, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %43 = call i32 @devm_free_irq(i32 %35, i32 %41, %struct.uart_port* %42)
  %44 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %45 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.mvebu_uart*, %struct.mvebu_uart** %3, align 8
  %48 = getelementptr inbounds %struct.mvebu_uart, %struct.mvebu_uart* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* @UART_TX_IRQ, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %54 = call i32 @devm_free_irq(i32 %46, i32 %52, %struct.uart_port* %53)
  br label %55

55:                                               ; preds = %32, %20
  ret void
}

declare dso_local %struct.mvebu_uart* @to_mvuart(%struct.uart_port*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @UART_INTR(%struct.uart_port*) #1

declare dso_local i32 @devm_free_irq(i32, i32, %struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
