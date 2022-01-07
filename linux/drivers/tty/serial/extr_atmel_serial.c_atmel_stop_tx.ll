; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_atmel_serial.c_atmel_stop_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_atmel_serial.c_atmel_stop_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.atmel_uart_port = type { i32, i32 }

@ATMEL_PDC_PTCR = common dso_local global i32 0, align 4
@ATMEL_PDC_TXTDIS = common dso_local global i32 0, align 4
@ATMEL_US_CR = common dso_local global i32 0, align 4
@ATMEL_US_TXDIS = common dso_local global i32 0, align 4
@ATMEL_US_IDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @atmel_stop_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_stop_tx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.atmel_uart_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %4 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %5 = call %struct.atmel_uart_port* @to_atmel_uart_port(%struct.uart_port* %4)
  store %struct.atmel_uart_port* %5, %struct.atmel_uart_port** %3, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %7 = call i64 @atmel_use_pdc_tx(%struct.uart_port* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %11 = load i32, i32* @ATMEL_PDC_PTCR, align 4
  %12 = load i32, i32* @ATMEL_PDC_TXTDIS, align 4
  %13 = call i32 @atmel_uart_writel(%struct.uart_port* %10, i32 %11, i32 %12)
  br label %14

14:                                               ; preds = %9, %1
  %15 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %16 = load i32, i32* @ATMEL_US_CR, align 4
  %17 = load i32, i32* @ATMEL_US_TXDIS, align 4
  %18 = call i32 @atmel_uart_writel(%struct.uart_port* %15, i32 %16, i32 %17)
  %19 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %20 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  %21 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %22 = load i32, i32* @ATMEL_US_IDR, align 4
  %23 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %24 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @atmel_uart_writel(%struct.uart_port* %21, i32 %22, i32 %25)
  %27 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %28 = call i64 @atmel_uart_is_half_duplex(%struct.uart_port* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %14
  %31 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %32 = call i32 @atmel_start_rx(%struct.uart_port* %31)
  br label %33

33:                                               ; preds = %30, %14
  ret void
}

declare dso_local %struct.atmel_uart_port* @to_atmel_uart_port(%struct.uart_port*) #1

declare dso_local i64 @atmel_use_pdc_tx(%struct.uart_port*) #1

declare dso_local i32 @atmel_uart_writel(%struct.uart_port*, i32, i32) #1

declare dso_local i64 @atmel_uart_is_half_duplex(%struct.uart_port*) #1

declare dso_local i32 @atmel_start_rx(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
