; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_atmel_serial.c_atmel_start_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_atmel_serial.c_atmel_start_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.atmel_uart_port = type { i32, i32 }

@ATMEL_PDC_PTSR = common dso_local global i32 0, align 4
@ATMEL_PDC_TXTEN = common dso_local global i32 0, align 4
@ATMEL_PDC_PTCR = common dso_local global i32 0, align 4
@ATMEL_US_IER = common dso_local global i32 0, align 4
@ATMEL_US_CR = common dso_local global i32 0, align 4
@ATMEL_US_TXEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @atmel_start_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_start_tx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.atmel_uart_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %4 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %5 = call %struct.atmel_uart_port* @to_atmel_uart_port(%struct.uart_port* %4)
  store %struct.atmel_uart_port* %5, %struct.atmel_uart_port** %3, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %7 = call i64 @atmel_use_pdc_tx(%struct.uart_port* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %11 = load i32, i32* @ATMEL_PDC_PTSR, align 4
  %12 = call i32 @atmel_uart_readl(%struct.uart_port* %10, i32 %11)
  %13 = load i32, i32* @ATMEL_PDC_TXTEN, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  br label %55

17:                                               ; preds = %9, %1
  %18 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %19 = call i64 @atmel_use_pdc_tx(%struct.uart_port* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %23 = call i64 @atmel_use_dma_tx(%struct.uart_port* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %21, %17
  %26 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %27 = call i64 @atmel_uart_is_half_duplex(%struct.uart_port* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %31 = call i32 @atmel_stop_rx(%struct.uart_port* %30)
  br label %32

32:                                               ; preds = %29, %25
  br label %33

33:                                               ; preds = %32, %21
  %34 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %35 = call i64 @atmel_use_pdc_tx(%struct.uart_port* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %39 = load i32, i32* @ATMEL_PDC_PTCR, align 4
  %40 = load i32, i32* @ATMEL_PDC_TXTEN, align 4
  %41 = call i32 @atmel_uart_writel(%struct.uart_port* %38, i32 %39, i32 %40)
  br label %42

42:                                               ; preds = %37, %33
  %43 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %44 = load i32, i32* @ATMEL_US_IER, align 4
  %45 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %46 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @atmel_uart_writel(%struct.uart_port* %43, i32 %44, i32 %47)
  %49 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %50 = load i32, i32* @ATMEL_US_CR, align 4
  %51 = load i32, i32* @ATMEL_US_TXEN, align 4
  %52 = call i32 @atmel_uart_writel(%struct.uart_port* %49, i32 %50, i32 %51)
  %53 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %54 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %53, i32 0, i32 1
  store i32 0, i32* %54, align 4
  br label %55

55:                                               ; preds = %42, %16
  ret void
}

declare dso_local %struct.atmel_uart_port* @to_atmel_uart_port(%struct.uart_port*) #1

declare dso_local i64 @atmel_use_pdc_tx(%struct.uart_port*) #1

declare dso_local i32 @atmel_uart_readl(%struct.uart_port*, i32) #1

declare dso_local i64 @atmel_use_dma_tx(%struct.uart_port*) #1

declare dso_local i64 @atmel_uart_is_half_duplex(%struct.uart_port*) #1

declare dso_local i32 @atmel_stop_rx(%struct.uart_port*) #1

declare dso_local i32 @atmel_uart_writel(%struct.uart_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
