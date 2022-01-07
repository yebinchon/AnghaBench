; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_pxa.c_serial_pxa_dl_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_pxa.c_serial_pxa_dl_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_8250_port = type { i32 }

@UART_DLL = common dso_local global i32 0, align 4
@UART_DLM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_8250_port*, i32)* @serial_pxa_dl_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serial_pxa_dl_write(%struct.uart_8250_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_8250_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.uart_8250_port* %0, %struct.uart_8250_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %7 = load i32, i32* @UART_DLL, align 4
  %8 = load i32, i32* %4, align 4
  %9 = and i32 %8, 255
  %10 = call i32 @serial_out(%struct.uart_8250_port* %6, i32 %7, i32 %9)
  %11 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %12 = load i32, i32* @UART_DLL, align 4
  %13 = call i32 @serial_in(%struct.uart_8250_port* %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, 255
  %17 = icmp ne i32 %14, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @WARN_ON(i32 %18)
  %20 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %21 = load i32, i32* @UART_DLM, align 4
  %22 = load i32, i32* %4, align 4
  %23 = ashr i32 %22, 8
  %24 = and i32 %23, 255
  %25 = call i32 @serial_out(%struct.uart_8250_port* %20, i32 %21, i32 %24)
  ret void
}

declare dso_local i32 @serial_out(%struct.uart_8250_port*, i32, i32) #1

declare dso_local i32 @serial_in(%struct.uart_8250_port*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
