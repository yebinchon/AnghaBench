; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_atmel_serial.c_atmel_handle_transmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_atmel_serial.c_atmel_handle_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.atmel_uart_port = type { i32, i32, i32 }

@ATMEL_US_IDR = common dso_local global i32 0, align 4
@ATMEL_US_CSR = common dso_local global i32 0, align 4
@ATMEL_US_TXEMPTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Should start RX, but TX fifo is not empty\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32)* @atmel_handle_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_handle_transmit(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.atmel_uart_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %7 = call %struct.atmel_uart_port* @to_atmel_uart_port(%struct.uart_port* %6)
  store %struct.atmel_uart_port* %7, %struct.atmel_uart_port** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %5, align 8
  %10 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %8, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %47

14:                                               ; preds = %2
  %15 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %16 = load i32, i32* @ATMEL_US_IDR, align 4
  %17 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %5, align 8
  %18 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @atmel_uart_writel(%struct.uart_port* %15, i32 %16, i32 %19)
  %21 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %5, align 8
  %22 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %42

25:                                               ; preds = %14
  %26 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %27 = load i32, i32* @ATMEL_US_CSR, align 4
  %28 = call i32 @atmel_uart_readl(%struct.uart_port* %26, i32 %27)
  %29 = load i32, i32* @ATMEL_US_TXEMPTY, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %25
  %33 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %34 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dev_warn(i32 %35, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %32, %25
  %38 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %5, align 8
  %39 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %38, i32 0, i32 1
  store i32 0, i32* %39, align 4
  %40 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %41 = call i32 @atmel_start_rx(%struct.uart_port* %40)
  br label %42

42:                                               ; preds = %37, %14
  %43 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %5, align 8
  %44 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %5, align 8
  %45 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %44, i32 0, i32 2
  %46 = call i32 @atmel_tasklet_schedule(%struct.atmel_uart_port* %43, i32* %45)
  br label %47

47:                                               ; preds = %42, %2
  ret void
}

declare dso_local %struct.atmel_uart_port* @to_atmel_uart_port(%struct.uart_port*) #1

declare dso_local i32 @atmel_uart_writel(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @atmel_uart_readl(%struct.uart_port*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @atmel_start_rx(%struct.uart_port*) #1

declare dso_local i32 @atmel_tasklet_schedule(%struct.atmel_uart_port*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
