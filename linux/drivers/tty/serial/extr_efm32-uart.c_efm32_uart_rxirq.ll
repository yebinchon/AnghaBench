; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_efm32-uart.c_efm32_uart_rxirq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_efm32-uart.c_efm32_uart_rxirq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efm32_uart_port = type { %struct.uart_port }
%struct.uart_port = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.tty_port }
%struct.tty_port = type { i32 }

@UARTn_IF = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@UARTn_IF_RXDATAV = common dso_local global i32 0, align 4
@UARTn_IFC = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@UARTn_IF_RXOF = common dso_local global i32 0, align 4
@TTY_OVERRUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @efm32_uart_rxirq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efm32_uart_rxirq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.efm32_uart_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.uart_port*, align 8
  %9 = alloca %struct.tty_port*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.efm32_uart_port*
  store %struct.efm32_uart_port* %11, %struct.efm32_uart_port** %5, align 8
  %12 = load %struct.efm32_uart_port*, %struct.efm32_uart_port** %5, align 8
  %13 = load i32, i32* @UARTn_IF, align 4
  %14 = call i32 @efm32_uart_read32(%struct.efm32_uart_port* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @IRQ_NONE, align 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.efm32_uart_port*, %struct.efm32_uart_port** %5, align 8
  %17 = getelementptr inbounds %struct.efm32_uart_port, %struct.efm32_uart_port* %16, i32 0, i32 0
  store %struct.uart_port* %17, %struct.uart_port** %8, align 8
  %18 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %19 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %18, i32 0, i32 2
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store %struct.tty_port* %21, %struct.tty_port** %9, align 8
  %22 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %23 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %22, i32 0, i32 0
  %24 = call i32 @spin_lock(i32* %23)
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @UARTn_IF_RXDATAV, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %2
  %30 = load %struct.efm32_uart_port*, %struct.efm32_uart_port** %5, align 8
  %31 = load i32, i32* @UARTn_IF_RXDATAV, align 4
  %32 = load i32, i32* @UARTn_IFC, align 4
  %33 = call i32 @efm32_uart_write32(%struct.efm32_uart_port* %30, i32 %31, i32 %32)
  %34 = load %struct.efm32_uart_port*, %struct.efm32_uart_port** %5, align 8
  %35 = call i32 @efm32_uart_rx_chars(%struct.efm32_uart_port* %34)
  %36 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %29, %2
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @UARTn_IF_RXOF, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %37
  %43 = load %struct.efm32_uart_port*, %struct.efm32_uart_port** %5, align 8
  %44 = load i32, i32* @UARTn_IF_RXOF, align 4
  %45 = load i32, i32* @UARTn_IFC, align 4
  %46 = call i32 @efm32_uart_write32(%struct.efm32_uart_port* %43, i32 %44, i32 %45)
  %47 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %48 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  %52 = load %struct.tty_port*, %struct.tty_port** %9, align 8
  %53 = load i32, i32* @TTY_OVERRUN, align 4
  %54 = call i32 @tty_insert_flip_char(%struct.tty_port* %52, i32 0, i32 %53)
  %55 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %42, %37
  %57 = load %struct.uart_port*, %struct.uart_port** %8, align 8
  %58 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %57, i32 0, i32 0
  %59 = call i32 @spin_unlock(i32* %58)
  %60 = load %struct.tty_port*, %struct.tty_port** %9, align 8
  %61 = call i32 @tty_flip_buffer_push(%struct.tty_port* %60)
  %62 = load i32, i32* %7, align 4
  ret i32 %62
}

declare dso_local i32 @efm32_uart_read32(%struct.efm32_uart_port*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @efm32_uart_write32(%struct.efm32_uart_port*, i32, i32) #1

declare dso_local i32 @efm32_uart_rx_chars(%struct.efm32_uart_port*) #1

declare dso_local i32 @tty_insert_flip_char(%struct.tty_port*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
