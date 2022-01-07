; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_port.c_autoconfig_read_divisor_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_port.c_autoconfig_read_divisor_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_8250_port = type { i32 }

@UART_LCR = common dso_local global i32 0, align 4
@UART_LCR_CONF_MODE_A = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_8250_port*)* @autoconfig_read_divisor_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autoconfig_read_divisor_id(%struct.uart_8250_port* %0) #0 {
  %2 = alloca %struct.uart_8250_port*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.uart_8250_port* %0, %struct.uart_8250_port** %2, align 8
  %6 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %7 = load i32, i32* @UART_LCR, align 4
  %8 = call zeroext i8 @serial_in(%struct.uart_8250_port* %6, i32 %7)
  store i8 %8, i8* %3, align 1
  %9 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %10 = load i32, i32* @UART_LCR, align 4
  %11 = load i8, i8* @UART_LCR_CONF_MODE_A, align 1
  %12 = call i32 @serial_out(%struct.uart_8250_port* %9, i32 %10, i8 zeroext %11)
  %13 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %14 = call i32 @serial_dl_read(%struct.uart_8250_port* %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %16 = call i32 @serial_dl_write(%struct.uart_8250_port* %15, i32 0)
  %17 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %18 = call i32 @serial_dl_read(%struct.uart_8250_port* %17)
  store i32 %18, i32* %4, align 4
  %19 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @serial_dl_write(%struct.uart_8250_port* %19, i32 %20)
  %22 = load %struct.uart_8250_port*, %struct.uart_8250_port** %2, align 8
  %23 = load i32, i32* @UART_LCR, align 4
  %24 = load i8, i8* %3, align 1
  %25 = call i32 @serial_out(%struct.uart_8250_port* %22, i32 %23, i8 zeroext %24)
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local zeroext i8 @serial_in(%struct.uart_8250_port*, i32) #1

declare dso_local i32 @serial_out(%struct.uart_8250_port*, i32, i8 zeroext) #1

declare dso_local i32 @serial_dl_read(%struct.uart_8250_port*) #1

declare dso_local i32 @serial_dl_write(%struct.uart_8250_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
