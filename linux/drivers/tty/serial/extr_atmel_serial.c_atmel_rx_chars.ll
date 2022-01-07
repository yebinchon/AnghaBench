; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_atmel_serial.c_atmel_rx_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_atmel_serial.c_atmel_rx_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.atmel_uart_port = type { i32, i32 }

@ATMEL_US_CSR = common dso_local global i32 0, align 4
@ATMEL_US_RXRDY = common dso_local global i32 0, align 4
@ATMEL_US_PARE = common dso_local global i32 0, align 4
@ATMEL_US_FRAME = common dso_local global i32 0, align 4
@ATMEL_US_OVRE = common dso_local global i32 0, align 4
@ATMEL_US_RXBRK = common dso_local global i32 0, align 4
@ATMEL_US_CR = common dso_local global i32 0, align 4
@ATMEL_US_RSTSTA = common dso_local global i32 0, align 4
@ATMEL_US_IER = common dso_local global i32 0, align 4
@ATMEL_US_IDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @atmel_rx_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_rx_chars(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.atmel_uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %7 = call %struct.atmel_uart_port* @to_atmel_uart_port(%struct.uart_port* %6)
  store %struct.atmel_uart_port* %7, %struct.atmel_uart_port** %3, align 8
  %8 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %9 = load i32, i32* @ATMEL_US_CSR, align 4
  %10 = call i32 @atmel_uart_readl(%struct.uart_port* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  br label %11

11:                                               ; preds = %72, %1
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @ATMEL_US_RXRDY, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %80

16:                                               ; preds = %11
  %17 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %18 = call i32 @atmel_uart_read_char(%struct.uart_port* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @ATMEL_US_PARE, align 4
  %21 = load i32, i32* @ATMEL_US_FRAME, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @ATMEL_US_OVRE, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @ATMEL_US_RXBRK, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %19, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %16
  %30 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %31 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br label %34

34:                                               ; preds = %29, %16
  %35 = phi i1 [ true, %16 ], [ %33, %29 ]
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %72

39:                                               ; preds = %34
  %40 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %41 = load i32, i32* @ATMEL_US_CR, align 4
  %42 = load i32, i32* @ATMEL_US_RSTSTA, align 4
  %43 = call i32 @atmel_uart_writel(%struct.uart_port* %40, i32 %41, i32 %42)
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @ATMEL_US_RXBRK, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %39
  %49 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %50 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %48
  %54 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %55 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %54, i32 0, i32 0
  store i32 1, i32* %55, align 4
  %56 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %57 = load i32, i32* @ATMEL_US_IER, align 4
  %58 = load i32, i32* @ATMEL_US_RXBRK, align 4
  %59 = call i32 @atmel_uart_writel(%struct.uart_port* %56, i32 %57, i32 %58)
  br label %71

60:                                               ; preds = %48, %39
  %61 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %62 = load i32, i32* @ATMEL_US_IDR, align 4
  %63 = load i32, i32* @ATMEL_US_RXBRK, align 4
  %64 = call i32 @atmel_uart_writel(%struct.uart_port* %61, i32 %62, i32 %63)
  %65 = load i32, i32* @ATMEL_US_RXBRK, align 4
  %66 = xor i32 %65, -1
  %67 = load i32, i32* %4, align 4
  %68 = and i32 %67, %66
  store i32 %68, i32* %4, align 4
  %69 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %70 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %69, i32 0, i32 0
  store i32 0, i32* %70, align 4
  br label %71

71:                                               ; preds = %60, %53
  br label %72

72:                                               ; preds = %71, %34
  %73 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @atmel_buffer_rx_char(%struct.uart_port* %73, i32 %74, i32 %75)
  %77 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %78 = load i32, i32* @ATMEL_US_CSR, align 4
  %79 = call i32 @atmel_uart_readl(%struct.uart_port* %77, i32 %78)
  store i32 %79, i32* %4, align 4
  br label %11

80:                                               ; preds = %11
  %81 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %82 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %83 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %82, i32 0, i32 1
  %84 = call i32 @atmel_tasklet_schedule(%struct.atmel_uart_port* %81, i32* %83)
  ret void
}

declare dso_local %struct.atmel_uart_port* @to_atmel_uart_port(%struct.uart_port*) #1

declare dso_local i32 @atmel_uart_readl(%struct.uart_port*, i32) #1

declare dso_local i32 @atmel_uart_read_char(%struct.uart_port*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @atmel_uart_writel(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @atmel_buffer_rx_char(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @atmel_tasklet_schedule(%struct.atmel_uart_port*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
