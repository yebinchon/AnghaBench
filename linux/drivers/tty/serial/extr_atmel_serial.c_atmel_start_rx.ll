; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_atmel_serial.c_atmel_start_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_atmel_serial.c_atmel_start_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }

@ATMEL_US_CR = common dso_local global i32 0, align 4
@ATMEL_US_RSTSTA = common dso_local global i32 0, align 4
@ATMEL_US_RXEN = common dso_local global i32 0, align 4
@ATMEL_US_IER = common dso_local global i32 0, align 4
@ATMEL_US_ENDRX = common dso_local global i32 0, align 4
@ATMEL_US_TIMEOUT = common dso_local global i32 0, align 4
@ATMEL_PDC_PTCR = common dso_local global i32 0, align 4
@ATMEL_PDC_RXTEN = common dso_local global i32 0, align 4
@ATMEL_US_RXRDY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @atmel_start_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_start_rx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %3 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %4 = load i32, i32* @ATMEL_US_CR, align 4
  %5 = load i32, i32* @ATMEL_US_RSTSTA, align 4
  %6 = call i32 @atmel_uart_writel(%struct.uart_port* %3, i32 %4, i32 %5)
  %7 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %8 = load i32, i32* @ATMEL_US_CR, align 4
  %9 = load i32, i32* @ATMEL_US_RXEN, align 4
  %10 = call i32 @atmel_uart_writel(%struct.uart_port* %7, i32 %8, i32 %9)
  %11 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %12 = call i64 @atmel_use_pdc_rx(%struct.uart_port* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %1
  %15 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %16 = load i32, i32* @ATMEL_US_IER, align 4
  %17 = load i32, i32* @ATMEL_US_ENDRX, align 4
  %18 = load i32, i32* @ATMEL_US_TIMEOUT, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %21 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %19, %22
  %24 = call i32 @atmel_uart_writel(%struct.uart_port* %15, i32 %16, i32 %23)
  %25 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %26 = load i32, i32* @ATMEL_PDC_PTCR, align 4
  %27 = load i32, i32* @ATMEL_PDC_RXTEN, align 4
  %28 = call i32 @atmel_uart_writel(%struct.uart_port* %25, i32 %26, i32 %27)
  br label %34

29:                                               ; preds = %1
  %30 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %31 = load i32, i32* @ATMEL_US_IER, align 4
  %32 = load i32, i32* @ATMEL_US_RXRDY, align 4
  %33 = call i32 @atmel_uart_writel(%struct.uart_port* %30, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %29, %14
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
