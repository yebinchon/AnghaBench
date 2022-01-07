; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sirfsoc_uart.c_sirfsoc_uart_break_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sirfsoc_uart.c_sirfsoc_uart_break_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.sirfsoc_uart_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, %struct.sirfsoc_register }
%struct.sirfsoc_register = type { i32 }

@SIRF_REAL_UART = common dso_local global i64 0, align 8
@SIRFUART_SET_BREAK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32)* @sirfsoc_uart_break_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sirfsoc_uart_break_ctl(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sirfsoc_uart_port*, align 8
  %6 = alloca %struct.sirfsoc_register*, align 8
  %7 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %9 = call %struct.sirfsoc_uart_port* @to_sirfport(%struct.uart_port* %8)
  store %struct.sirfsoc_uart_port* %9, %struct.sirfsoc_uart_port** %5, align 8
  %10 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %5, align 8
  %11 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  store %struct.sirfsoc_register* %13, %struct.sirfsoc_register** %6, align 8
  %14 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %5, align 8
  %15 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SIRF_REAL_UART, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %45

21:                                               ; preds = %2
  %22 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %23 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %6, align 8
  %24 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @rd_regl(%struct.uart_port* %22, i32 %25)
  store i64 %26, i64* %7, align 8
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %21
  %30 = load i64, i64* @SIRFUART_SET_BREAK, align 8
  %31 = load i64, i64* %7, align 8
  %32 = or i64 %31, %30
  store i64 %32, i64* %7, align 8
  br label %38

33:                                               ; preds = %21
  %34 = load i64, i64* @SIRFUART_SET_BREAK, align 8
  %35 = xor i64 %34, -1
  %36 = load i64, i64* %7, align 8
  %37 = and i64 %36, %35
  store i64 %37, i64* %7, align 8
  br label %38

38:                                               ; preds = %33, %29
  %39 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %40 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %6, align 8
  %41 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @wr_regl(%struct.uart_port* %39, i32 %42, i64 %43)
  br label %45

45:                                               ; preds = %38, %2
  ret void
}

declare dso_local %struct.sirfsoc_uart_port* @to_sirfport(%struct.uart_port*) #1

declare dso_local i64 @rd_regl(%struct.uart_port*, i32) #1

declare dso_local i32 @wr_regl(%struct.uart_port*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
