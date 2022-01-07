; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_uartlite.c_uart_out32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_uartlite.c_uart_out32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i64, %struct.uartlite_data* }
%struct.uartlite_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i64, i64)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, %struct.uart_port*)* @uart_out32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uart_out32(i64 %0, i64 %1, %struct.uart_port* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.uart_port*, align 8
  %7 = alloca %struct.uartlite_data*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.uart_port* %2, %struct.uart_port** %6, align 8
  %8 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %9 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %8, i32 0, i32 1
  %10 = load %struct.uartlite_data*, %struct.uartlite_data** %9, align 8
  store %struct.uartlite_data* %10, %struct.uartlite_data** %7, align 8
  %11 = load %struct.uartlite_data*, %struct.uartlite_data** %7, align 8
  %12 = getelementptr inbounds %struct.uartlite_data, %struct.uartlite_data* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (i64, i64)*, i32 (i64, i64)** %14, align 8
  %16 = load i64, i64* %4, align 8
  %17 = load %struct.uart_port*, %struct.uart_port** %6, align 8
  %18 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 %15(i64 %16, i64 %21)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
