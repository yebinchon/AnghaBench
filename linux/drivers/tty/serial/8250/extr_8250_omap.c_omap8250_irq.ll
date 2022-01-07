; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_omap.c_omap8250_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_omap.c_omap8250_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_8250_port = type { i64 }

@UART_IIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @omap8250_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap8250_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.uart_port*, align 8
  %6 = alloca %struct.uart_8250_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.uart_port*
  store %struct.uart_port* %10, %struct.uart_port** %5, align 8
  %11 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %12 = call %struct.uart_8250_port* @up_to_u8250p(%struct.uart_port* %11)
  store %struct.uart_8250_port* %12, %struct.uart_8250_port** %6, align 8
  %13 = load %struct.uart_8250_port*, %struct.uart_8250_port** %6, align 8
  %14 = call i32 @serial8250_rpm_get(%struct.uart_8250_port* %13)
  %15 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %16 = load i32, i32* @UART_IIR, align 4
  %17 = call i32 @serial_port_in(%struct.uart_port* %15, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load %struct.uart_port*, %struct.uart_port** %5, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @serial8250_handle_irq(%struct.uart_port* %18, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.uart_8250_port*, %struct.uart_8250_port** %6, align 8
  %22 = call i32 @serial8250_rpm_put(%struct.uart_8250_port* %21)
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @IRQ_RETVAL(i32 %23)
  ret i32 %24
}

declare dso_local %struct.uart_8250_port* @up_to_u8250p(%struct.uart_port*) #1

declare dso_local i32 @serial8250_rpm_get(%struct.uart_8250_port*) #1

declare dso_local i32 @serial_port_in(%struct.uart_port*, i32) #1

declare dso_local i32 @serial8250_handle_irq(%struct.uart_port*, i32) #1

declare dso_local i32 @serial8250_rpm_put(%struct.uart_8250_port*) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
