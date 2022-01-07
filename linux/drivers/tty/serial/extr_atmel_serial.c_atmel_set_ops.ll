; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_atmel_serial.c_atmel_set_ops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_atmel_serial.c_atmel_set_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.atmel_uart_port = type { i32*, i32*, i32*, i32*, i32*, i32* }

@atmel_prepare_rx_dma = common dso_local global i32 0, align 4
@atmel_rx_from_dma = common dso_local global i32 0, align 4
@atmel_release_rx_dma = common dso_local global i32 0, align 4
@atmel_prepare_rx_pdc = common dso_local global i32 0, align 4
@atmel_rx_from_pdc = common dso_local global i32 0, align 4
@atmel_release_rx_pdc = common dso_local global i32 0, align 4
@atmel_rx_from_ring = common dso_local global i32 0, align 4
@atmel_prepare_tx_dma = common dso_local global i32 0, align 4
@atmel_tx_dma = common dso_local global i32 0, align 4
@atmel_release_tx_dma = common dso_local global i32 0, align 4
@atmel_prepare_tx_pdc = common dso_local global i32 0, align 4
@atmel_tx_pdc = common dso_local global i32 0, align 4
@atmel_release_tx_pdc = common dso_local global i32 0, align 4
@atmel_tx_chars = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @atmel_set_ops to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_set_ops(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.atmel_uart_port*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %4 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %5 = call %struct.atmel_uart_port* @to_atmel_uart_port(%struct.uart_port* %4)
  store %struct.atmel_uart_port* %5, %struct.atmel_uart_port** %3, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %7 = call i64 @atmel_use_dma_rx(%struct.uart_port* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %11 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %10, i32 0, i32 5
  store i32* @atmel_prepare_rx_dma, i32** %11, align 8
  %12 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %13 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %12, i32 0, i32 4
  store i32* @atmel_rx_from_dma, i32** %13, align 8
  %14 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %15 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %14, i32 0, i32 3
  store i32* @atmel_release_rx_dma, i32** %15, align 8
  br label %35

16:                                               ; preds = %1
  %17 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %18 = call i64 @atmel_use_pdc_rx(%struct.uart_port* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %22 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %21, i32 0, i32 5
  store i32* @atmel_prepare_rx_pdc, i32** %22, align 8
  %23 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %24 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %23, i32 0, i32 4
  store i32* @atmel_rx_from_pdc, i32** %24, align 8
  %25 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %26 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %25, i32 0, i32 3
  store i32* @atmel_release_rx_pdc, i32** %26, align 8
  br label %34

27:                                               ; preds = %16
  %28 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %29 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %28, i32 0, i32 5
  store i32* null, i32** %29, align 8
  %30 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %31 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %30, i32 0, i32 4
  store i32* @atmel_rx_from_ring, i32** %31, align 8
  %32 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %33 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %32, i32 0, i32 3
  store i32* null, i32** %33, align 8
  br label %34

34:                                               ; preds = %27, %20
  br label %35

35:                                               ; preds = %34, %9
  %36 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %37 = call i64 @atmel_use_dma_tx(%struct.uart_port* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %35
  %40 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %41 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %40, i32 0, i32 2
  store i32* @atmel_prepare_tx_dma, i32** %41, align 8
  %42 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %43 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %42, i32 0, i32 1
  store i32* @atmel_tx_dma, i32** %43, align 8
  %44 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %45 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %44, i32 0, i32 0
  store i32* @atmel_release_tx_dma, i32** %45, align 8
  br label %65

46:                                               ; preds = %35
  %47 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %48 = call i64 @atmel_use_pdc_tx(%struct.uart_port* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %46
  %51 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %52 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %51, i32 0, i32 2
  store i32* @atmel_prepare_tx_pdc, i32** %52, align 8
  %53 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %54 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %53, i32 0, i32 1
  store i32* @atmel_tx_pdc, i32** %54, align 8
  %55 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %56 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %55, i32 0, i32 0
  store i32* @atmel_release_tx_pdc, i32** %56, align 8
  br label %64

57:                                               ; preds = %46
  %58 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %59 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %58, i32 0, i32 2
  store i32* null, i32** %59, align 8
  %60 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %61 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %60, i32 0, i32 1
  store i32* @atmel_tx_chars, i32** %61, align 8
  %62 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %63 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %62, i32 0, i32 0
  store i32* null, i32** %63, align 8
  br label %64

64:                                               ; preds = %57, %50
  br label %65

65:                                               ; preds = %64, %39
  ret void
}

declare dso_local %struct.atmel_uart_port* @to_atmel_uart_port(%struct.uart_port*) #1

declare dso_local i64 @atmel_use_dma_rx(%struct.uart_port*) #1

declare dso_local i64 @atmel_use_pdc_rx(%struct.uart_port*) #1

declare dso_local i64 @atmel_use_dma_tx(%struct.uart_port*) #1

declare dso_local i64 @atmel_use_pdc_tx(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
