; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_port.c_serial8250_get_baud_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_port.c_serial8250_get_baud_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.ktermios = type { i32 }

@UART_DIV_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*, %struct.ktermios*, %struct.ktermios*)* @serial8250_get_baud_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serial8250_get_baud_rate(%struct.uart_port* %0, %struct.ktermios* %1, %struct.ktermios* %2) #0 {
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.ktermios*, align 8
  %6 = alloca %struct.ktermios*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %4, align 8
  store %struct.ktermios* %1, %struct.ktermios** %5, align 8
  store %struct.ktermios* %2, %struct.ktermios** %6, align 8
  %7 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %8 = load %struct.ktermios*, %struct.ktermios** %5, align 8
  %9 = load %struct.ktermios*, %struct.ktermios** %6, align 8
  %10 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %11 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sdiv i32 %12, 16
  %14 = load i32, i32* @UART_DIV_MAX, align 4
  %15 = sdiv i32 %13, %14
  %16 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %17 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @uart_get_baud_rate(%struct.uart_port* %7, %struct.ktermios* %8, %struct.ktermios* %9, i32 %15, i32 %18)
  ret i32 %19
}

declare dso_local i32 @uart_get_baud_rate(%struct.uart_port*, %struct.ktermios*, %struct.ktermios*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
