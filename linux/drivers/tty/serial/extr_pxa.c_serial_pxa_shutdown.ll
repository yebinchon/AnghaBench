; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pxa.c_serial_pxa_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_pxa.c_serial_pxa_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_pxa_port = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@UART_IER = common dso_local global i32 0, align 4
@TIOCM_OUT2 = common dso_local global i32 0, align 4
@UART_LCR = common dso_local global i32 0, align 4
@UART_LCR_SBC = common dso_local global i32 0, align 4
@UART_FCR = common dso_local global i32 0, align 4
@UART_FCR_ENABLE_FIFO = common dso_local global i32 0, align 4
@UART_FCR_CLEAR_RCVR = common dso_local global i32 0, align 4
@UART_FCR_CLEAR_XMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @serial_pxa_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serial_pxa_shutdown(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.uart_pxa_port*, align 8
  %4 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %5 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %6 = bitcast %struct.uart_port* %5 to %struct.uart_pxa_port*
  store %struct.uart_pxa_port* %6, %struct.uart_pxa_port** %3, align 8
  %7 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %3, align 8
  %8 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %3, align 8
  %12 = call i32 @free_irq(i32 %10, %struct.uart_pxa_port* %11)
  %13 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %3, align 8
  %14 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %13, i32 0, i32 1
  store i64 0, i64* %14, align 8
  %15 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %3, align 8
  %16 = load i32, i32* @UART_IER, align 4
  %17 = call i32 @serial_out(%struct.uart_pxa_port* %15, i32 %16, i32 0)
  %18 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %3, align 8
  %19 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load i32, i32* @TIOCM_OUT2, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %3, align 8
  %26 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, %24
  store i32 %29, i32* %27, align 4
  %30 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %3, align 8
  %31 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %30, i32 0, i32 0
  %32 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %3, align 8
  %33 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @serial_pxa_set_mctrl(%struct.TYPE_2__* %31, i32 %35)
  %37 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %3, align 8
  %38 = getelementptr inbounds %struct.uart_pxa_port, %struct.uart_pxa_port* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %4, align 8
  %41 = call i32 @spin_unlock_irqrestore(i32* %39, i64 %40)
  %42 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %3, align 8
  %43 = load i32, i32* @UART_LCR, align 4
  %44 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %3, align 8
  %45 = load i32, i32* @UART_LCR, align 4
  %46 = call i32 @serial_in(%struct.uart_pxa_port* %44, i32 %45)
  %47 = load i32, i32* @UART_LCR_SBC, align 4
  %48 = xor i32 %47, -1
  %49 = and i32 %46, %48
  %50 = call i32 @serial_out(%struct.uart_pxa_port* %42, i32 %43, i32 %49)
  %51 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %3, align 8
  %52 = load i32, i32* @UART_FCR, align 4
  %53 = load i32, i32* @UART_FCR_ENABLE_FIFO, align 4
  %54 = load i32, i32* @UART_FCR_CLEAR_RCVR, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @UART_FCR_CLEAR_XMIT, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @serial_out(%struct.uart_pxa_port* %51, i32 %52, i32 %57)
  %59 = load %struct.uart_pxa_port*, %struct.uart_pxa_port** %3, align 8
  %60 = load i32, i32* @UART_FCR, align 4
  %61 = call i32 @serial_out(%struct.uart_pxa_port* %59, i32 %60, i32 0)
  ret void
}

declare dso_local i32 @free_irq(i32, %struct.uart_pxa_port*) #1

declare dso_local i32 @serial_out(%struct.uart_pxa_port*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @serial_pxa_set_mctrl(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @serial_in(%struct.uart_pxa_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
