; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_ar933x_uart.c_ar933x_uart_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_ar933x_uart.c_ar933x_uart_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar933x_uart_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@AR933X_UART_CS_REG = common dso_local global i32 0, align 4
@AR933X_UART_CS_HOST_INT = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@AR933X_UART_INT_REG = common dso_local global i32 0, align 4
@AR933X_UART_INT_EN_REG = common dso_local global i32 0, align 4
@AR933X_UART_INT_RX_VALID = common dso_local global i32 0, align 4
@AR933X_UART_INT_TX_EMPTY = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ar933x_uart_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar933x_uart_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ar933x_uart_port*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.ar933x_uart_port*
  store %struct.ar933x_uart_port* %9, %struct.ar933x_uart_port** %6, align 8
  %10 = load %struct.ar933x_uart_port*, %struct.ar933x_uart_port** %6, align 8
  %11 = load i32, i32* @AR933X_UART_CS_REG, align 4
  %12 = call i32 @ar933x_uart_read(%struct.ar933x_uart_port* %10, i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @AR933X_UART_CS_HOST_INT, align 4
  %15 = and i32 %13, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @IRQ_NONE, align 4
  store i32 %18, i32* %3, align 4
  br label %63

19:                                               ; preds = %2
  %20 = load %struct.ar933x_uart_port*, %struct.ar933x_uart_port** %6, align 8
  %21 = getelementptr inbounds %struct.ar933x_uart_port, %struct.ar933x_uart_port* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @spin_lock(i32* %22)
  %24 = load %struct.ar933x_uart_port*, %struct.ar933x_uart_port** %6, align 8
  %25 = load i32, i32* @AR933X_UART_INT_REG, align 4
  %26 = call i32 @ar933x_uart_read(%struct.ar933x_uart_port* %24, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load %struct.ar933x_uart_port*, %struct.ar933x_uart_port** %6, align 8
  %28 = load i32, i32* @AR933X_UART_INT_EN_REG, align 4
  %29 = call i32 @ar933x_uart_read(%struct.ar933x_uart_port* %27, i32 %28)
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @AR933X_UART_INT_RX_VALID, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %19
  %37 = load %struct.ar933x_uart_port*, %struct.ar933x_uart_port** %6, align 8
  %38 = load i32, i32* @AR933X_UART_INT_REG, align 4
  %39 = load i32, i32* @AR933X_UART_INT_RX_VALID, align 4
  %40 = call i32 @ar933x_uart_write(%struct.ar933x_uart_port* %37, i32 %38, i32 %39)
  %41 = load %struct.ar933x_uart_port*, %struct.ar933x_uart_port** %6, align 8
  %42 = call i32 @ar933x_uart_rx_chars(%struct.ar933x_uart_port* %41)
  br label %43

43:                                               ; preds = %36, %19
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @AR933X_UART_INT_TX_EMPTY, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %43
  %49 = load %struct.ar933x_uart_port*, %struct.ar933x_uart_port** %6, align 8
  %50 = load i32, i32* @AR933X_UART_INT_REG, align 4
  %51 = load i32, i32* @AR933X_UART_INT_TX_EMPTY, align 4
  %52 = call i32 @ar933x_uart_write(%struct.ar933x_uart_port* %49, i32 %50, i32 %51)
  %53 = load %struct.ar933x_uart_port*, %struct.ar933x_uart_port** %6, align 8
  %54 = call i32 @ar933x_uart_stop_tx_interrupt(%struct.ar933x_uart_port* %53)
  %55 = load %struct.ar933x_uart_port*, %struct.ar933x_uart_port** %6, align 8
  %56 = call i32 @ar933x_uart_tx_chars(%struct.ar933x_uart_port* %55)
  br label %57

57:                                               ; preds = %48, %43
  %58 = load %struct.ar933x_uart_port*, %struct.ar933x_uart_port** %6, align 8
  %59 = getelementptr inbounds %struct.ar933x_uart_port, %struct.ar933x_uart_port* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = call i32 @spin_unlock(i32* %60)
  %62 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %57, %17
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @ar933x_uart_read(%struct.ar933x_uart_port*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ar933x_uart_write(%struct.ar933x_uart_port*, i32, i32) #1

declare dso_local i32 @ar933x_uart_rx_chars(%struct.ar933x_uart_port*) #1

declare dso_local i32 @ar933x_uart_stop_tx_interrupt(%struct.ar933x_uart_port*) #1

declare dso_local i32 @ar933x_uart_tx_chars(%struct.ar933x_uart_port*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
