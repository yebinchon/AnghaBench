; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_port.c_serial8250_stop_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_port.c_serial8250_stop_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_8250_port = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@UART_IER_RLSI = common dso_local global i32 0, align 4
@UART_IER_RDI = common dso_local global i32 0, align 4
@UART_LSR_DR = common dso_local global i32 0, align 4
@UART_IER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @serial8250_stop_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serial8250_stop_rx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.uart_8250_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %4 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %5 = call %struct.uart_8250_port* @up_to_u8250p(%struct.uart_port* %4)
  store %struct.uart_8250_port* %5, %struct.uart_8250_port** %3, align 8
  %6 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %7 = call i32 @serial8250_rpm_get(%struct.uart_8250_port* %6)
  %8 = load i32, i32* @UART_IER_RLSI, align 4
  %9 = load i32, i32* @UART_IER_RDI, align 4
  %10 = or i32 %8, %9
  %11 = xor i32 %10, -1
  %12 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %13 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = load i32, i32* @UART_LSR_DR, align 4
  %17 = xor i32 %16, -1
  %18 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %19 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, %17
  store i32 %22, i32* %20, align 4
  %23 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %24 = load i32, i32* @UART_IER, align 4
  %25 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %26 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @serial_port_out(%struct.uart_port* %23, i32 %24, i32 %27)
  %29 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %30 = call i32 @serial8250_rpm_put(%struct.uart_8250_port* %29)
  ret void
}

declare dso_local %struct.uart_8250_port* @up_to_u8250p(%struct.uart_port*) #1

declare dso_local i32 @serial8250_rpm_get(%struct.uart_8250_port*) #1

declare dso_local i32 @serial_port_out(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @serial8250_rpm_put(%struct.uart_8250_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
