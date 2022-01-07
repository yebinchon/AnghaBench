; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_atmel_serial.c_atmel_stop_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_atmel_serial.c_atmel_stop_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }

@ATMEL_US_CR = common dso_local global i32 0, align 4
@ATMEL_US_RXDIS = common dso_local global i32 0, align 4
@ATMEL_PDC_PTCR = common dso_local global i32 0, align 4
@ATMEL_PDC_RXTDIS = common dso_local global i32 0, align 4
@ATMEL_US_IDR = common dso_local global i32 0, align 4
@ATMEL_US_ENDRX = common dso_local global i32 0, align 4
@ATMEL_US_TIMEOUT = common dso_local global i32 0, align 4
@ATMEL_US_RXRDY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @atmel_stop_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_stop_rx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %3 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %4 = load i32, i32* @ATMEL_US_CR, align 4
  %5 = load i32, i32* @ATMEL_US_RXDIS, align 4
  %6 = call i32 @atmel_uart_writel(%struct.uart_port* %3, i32 %4, i32 %5)
  %7 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %8 = call i64 @atmel_use_pdc_rx(%struct.uart_port* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %1
  %11 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %12 = load i32, i32* @ATMEL_PDC_PTCR, align 4
  %13 = load i32, i32* @ATMEL_PDC_RXTDIS, align 4
  %14 = call i32 @atmel_uart_writel(%struct.uart_port* %11, i32 %12, i32 %13)
  %15 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %16 = load i32, i32* @ATMEL_US_IDR, align 4
  %17 = load i32, i32* @ATMEL_US_ENDRX, align 4
  %18 = load i32, i32* @ATMEL_US_TIMEOUT, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %21 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %19, %22
  %24 = call i32 @atmel_uart_writel(%struct.uart_port* %15, i32 %16, i32 %23)
  br label %30

25:                                               ; preds = %1
  %26 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %27 = load i32, i32* @ATMEL_US_IDR, align 4
  %28 = load i32, i32* @ATMEL_US_RXRDY, align 4
  %29 = call i32 @atmel_uart_writel(%struct.uart_port* %26, i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %25, %10
  ret void
}

declare dso_local i32 @atmel_uart_writel(%struct.uart_port*, i32, i32) #1

declare dso_local i64 @atmel_use_pdc_rx(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
