; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_arc_uart.c_arc_serial_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_arc_uart.c_arc_serial_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }

@RXIENB = common dso_local global i32 0, align 4
@TXIENB = common dso_local global i32 0, align 4
@TXEMPTY = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @arc_serial_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arc_serial_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.uart_port*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.uart_port*
  store %struct.uart_port* %8, %struct.uart_port** %5, align 8
  %9 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %10 = call i32 @UART_GET_STATUS(%struct.uart_port* %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @RXIENB, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %17 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %16, i32 0, i32 0
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @arc_serial_rx_chars(%struct.uart_port* %19, i32 %20)
  %22 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %23 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %22, i32 0, i32 0
  %24 = call i32 @spin_unlock(i32* %23)
  br label %25

25:                                               ; preds = %15, %2
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @TXIENB, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %51

30:                                               ; preds = %25
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @TXEMPTY, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %30
  %36 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %37 = call i32 @UART_TX_IRQ_DISABLE(%struct.uart_port* %36)
  %38 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %39 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %38, i32 0, i32 0
  %40 = call i32 @spin_lock(i32* %39)
  %41 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %42 = call i32 @uart_tx_stopped(%struct.uart_port* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %35
  %45 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %46 = call i32 @arc_serial_tx_chars(%struct.uart_port* %45)
  br label %47

47:                                               ; preds = %44, %35
  %48 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %49 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %48, i32 0, i32 0
  %50 = call i32 @spin_unlock(i32* %49)
  br label %51

51:                                               ; preds = %47, %30, %25
  %52 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %52
}

declare dso_local i32 @UART_GET_STATUS(%struct.uart_port*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @arc_serial_rx_chars(%struct.uart_port*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @UART_TX_IRQ_DISABLE(%struct.uart_port*) #1

declare dso_local i32 @uart_tx_stopped(%struct.uart_port*) #1

declare dso_local i32 @arc_serial_tx_chars(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
