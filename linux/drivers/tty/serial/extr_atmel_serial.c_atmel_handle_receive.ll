; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_atmel_serial.c_atmel_handle_receive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_atmel_serial.c_atmel_handle_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.atmel_uart_port = type { i64, i32 }

@ATMEL_US_ENDRX = common dso_local global i32 0, align 4
@ATMEL_US_TIMEOUT = common dso_local global i32 0, align 4
@ATMEL_US_IDR = common dso_local global i32 0, align 4
@ATMEL_US_RXBRK = common dso_local global i32 0, align 4
@ATMEL_US_OVRE = common dso_local global i32 0, align 4
@ATMEL_US_FRAME = common dso_local global i32 0, align 4
@ATMEL_US_PARE = common dso_local global i32 0, align 4
@ATMEL_US_RXRDY = common dso_local global i32 0, align 4
@ATMEL_US_CR = common dso_local global i32 0, align 4
@ATMEL_US_RSTSTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32)* @atmel_handle_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_handle_receive(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.atmel_uart_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %7 = call %struct.atmel_uart_port* @to_atmel_uart_port(%struct.uart_port* %6)
  store %struct.atmel_uart_port* %7, %struct.atmel_uart_port** %5, align 8
  %8 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %9 = call i64 @atmel_use_pdc_rx(%struct.uart_port* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %45

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @ATMEL_US_ENDRX, align 4
  %14 = load i32, i32* @ATMEL_US_TIMEOUT, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %12, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %11
  %19 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %20 = load i32, i32* @ATMEL_US_IDR, align 4
  %21 = load i32, i32* @ATMEL_US_ENDRX, align 4
  %22 = load i32, i32* @ATMEL_US_TIMEOUT, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @atmel_uart_writel(%struct.uart_port* %19, i32 %20, i32 %23)
  %25 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %5, align 8
  %26 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %5, align 8
  %27 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %26, i32 0, i32 1
  %28 = call i32 @atmel_tasklet_schedule(%struct.atmel_uart_port* %25, i32* %27)
  br label %29

29:                                               ; preds = %18, %11
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @ATMEL_US_RXBRK, align 4
  %32 = load i32, i32* @ATMEL_US_OVRE, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @ATMEL_US_FRAME, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @ATMEL_US_PARE, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %30, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %29
  %41 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @atmel_pdc_rxerr(%struct.uart_port* %41, i32 %42)
  br label %44

44:                                               ; preds = %40, %29
  br label %45

45:                                               ; preds = %44, %2
  %46 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %47 = call i64 @atmel_use_dma_rx(%struct.uart_port* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %64

49:                                               ; preds = %45
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @ATMEL_US_TIMEOUT, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %49
  %55 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %56 = load i32, i32* @ATMEL_US_IDR, align 4
  %57 = load i32, i32* @ATMEL_US_TIMEOUT, align 4
  %58 = call i32 @atmel_uart_writel(%struct.uart_port* %55, i32 %56, i32 %57)
  %59 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %5, align 8
  %60 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %5, align 8
  %61 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %60, i32 0, i32 1
  %62 = call i32 @atmel_tasklet_schedule(%struct.atmel_uart_port* %59, i32* %61)
  br label %63

63:                                               ; preds = %54, %49
  br label %64

64:                                               ; preds = %63, %45
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @ATMEL_US_RXRDY, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %71 = call i32 @atmel_rx_chars(%struct.uart_port* %70)
  br label %89

72:                                               ; preds = %64
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @ATMEL_US_RXBRK, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %88

77:                                               ; preds = %72
  %78 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %79 = load i32, i32* @ATMEL_US_CR, align 4
  %80 = load i32, i32* @ATMEL_US_RSTSTA, align 4
  %81 = call i32 @atmel_uart_writel(%struct.uart_port* %78, i32 %79, i32 %80)
  %82 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %83 = load i32, i32* @ATMEL_US_IDR, align 4
  %84 = load i32, i32* @ATMEL_US_RXBRK, align 4
  %85 = call i32 @atmel_uart_writel(%struct.uart_port* %82, i32 %83, i32 %84)
  %86 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %5, align 8
  %87 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %86, i32 0, i32 0
  store i64 0, i64* %87, align 8
  br label %88

88:                                               ; preds = %77, %72
  br label %89

89:                                               ; preds = %88, %69
  ret void
}

declare dso_local %struct.atmel_uart_port* @to_atmel_uart_port(%struct.uart_port*) #1

declare dso_local i64 @atmel_use_pdc_rx(%struct.uart_port*) #1

declare dso_local i32 @atmel_uart_writel(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @atmel_tasklet_schedule(%struct.atmel_uart_port*, i32*) #1

declare dso_local i32 @atmel_pdc_rxerr(%struct.uart_port*, i32) #1

declare dso_local i64 @atmel_use_dma_rx(%struct.uart_port*) #1

declare dso_local i32 @atmel_rx_chars(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
