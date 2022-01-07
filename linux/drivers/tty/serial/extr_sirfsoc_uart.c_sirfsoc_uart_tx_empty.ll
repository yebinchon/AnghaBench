; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sirfsoc_uart.c_sirfsoc_uart_tx_empty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sirfsoc_uart.c_sirfsoc_uart_tx_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.sirfsoc_uart_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.sirfsoc_fifo_status, %struct.sirfsoc_register }
%struct.sirfsoc_fifo_status = type { i64 (%struct.uart_port*)* }
%struct.sirfsoc_register = type { i32 }

@TIOCSER_TEMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @sirfsoc_uart_tx_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sirfsoc_uart_tx_empty(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.sirfsoc_uart_port*, align 8
  %5 = alloca %struct.sirfsoc_register*, align 8
  %6 = alloca %struct.sirfsoc_fifo_status*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %7 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %8 = call %struct.sirfsoc_uart_port* @to_sirfport(%struct.uart_port* %7)
  store %struct.sirfsoc_uart_port* %8, %struct.sirfsoc_uart_port** %4, align 8
  %9 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %4, align 8
  %10 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  store %struct.sirfsoc_register* %12, %struct.sirfsoc_register** %5, align 8
  %13 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %4, align 8
  %14 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.sirfsoc_fifo_status* %16, %struct.sirfsoc_fifo_status** %6, align 8
  %17 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %18 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %5, align 8
  %19 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @rd_regl(%struct.uart_port* %17, i32 %20)
  store i64 %21, i64* %3, align 8
  %22 = load i64, i64* %3, align 8
  %23 = load %struct.sirfsoc_fifo_status*, %struct.sirfsoc_fifo_status** %6, align 8
  %24 = getelementptr inbounds %struct.sirfsoc_fifo_status, %struct.sirfsoc_fifo_status* %23, i32 0, i32 0
  %25 = load i64 (%struct.uart_port*)*, i64 (%struct.uart_port*)** %24, align 8
  %26 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %27 = call i64 %25(%struct.uart_port* %26)
  %28 = and i64 %22, %27
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %1
  %31 = load i32, i32* @TIOCSER_TEMT, align 4
  br label %33

32:                                               ; preds = %1
  br label %33

33:                                               ; preds = %32, %30
  %34 = phi i32 [ %31, %30 ], [ 0, %32 ]
  ret i32 %34
}

declare dso_local %struct.sirfsoc_uart_port* @to_sirfport(%struct.uart_port*) #1

declare dso_local i64 @rd_regl(%struct.uart_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
