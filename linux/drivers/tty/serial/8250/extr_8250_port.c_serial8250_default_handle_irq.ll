; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_port.c_serial8250_default_handle_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_port.c_serial8250_default_handle_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_8250_port = type { i32 }

@UART_IIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @serial8250_default_handle_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serial8250_default_handle_irq(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.uart_8250_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %7 = call %struct.uart_8250_port* @up_to_u8250p(%struct.uart_port* %6)
  store %struct.uart_8250_port* %7, %struct.uart_8250_port** %3, align 8
  %8 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %9 = call i32 @serial8250_rpm_get(%struct.uart_8250_port* %8)
  %10 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %11 = load i32, i32* @UART_IIR, align 4
  %12 = call i32 @serial_port_in(%struct.uart_port* %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @serial8250_handle_irq(%struct.uart_port* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %17 = call i32 @serial8250_rpm_put(%struct.uart_8250_port* %16)
  %18 = load i32, i32* %5, align 4
  ret i32 %18
}

declare dso_local %struct.uart_8250_port* @up_to_u8250p(%struct.uart_port*) #1

declare dso_local i32 @serial8250_rpm_get(%struct.uart_8250_port*) #1

declare dso_local i32 @serial_port_in(%struct.uart_port*, i32) #1

declare dso_local i32 @serial8250_handle_irq(%struct.uart_port*, i32) #1

declare dso_local i32 @serial8250_rpm_put(%struct.uart_8250_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
