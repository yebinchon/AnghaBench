; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sirfsoc_uart.c_sirfsoc_uart_start_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sirfsoc_uart.c_sirfsoc_uart_start_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.sirfsoc_uart_port = type { i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64, %struct.sirfsoc_int_en, %struct.sirfsoc_register }
%struct.sirfsoc_int_en = type { i32 }
%struct.sirfsoc_register = type { i32, i32, i32 }

@SIRF_USP_UART = common dso_local global i64 0, align 8
@SIRFUART_TX_EN = common dso_local global i32 0, align 4
@SIRFUART_FIFO_STOP = common dso_local global i32 0, align 4
@SIRFUART_FIFO_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @sirfsoc_uart_start_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sirfsoc_uart_start_tx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.sirfsoc_uart_port*, align 8
  %4 = alloca %struct.sirfsoc_register*, align 8
  %5 = alloca %struct.sirfsoc_int_en*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %7 = call %struct.sirfsoc_uart_port* @to_sirfport(%struct.uart_port* %6)
  store %struct.sirfsoc_uart_port* %7, %struct.sirfsoc_uart_port** %3, align 8
  %8 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %9 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  store %struct.sirfsoc_register* %11, %struct.sirfsoc_register** %4, align 8
  %12 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %13 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  store %struct.sirfsoc_int_en* %15, %struct.sirfsoc_int_en** %5, align 8
  %16 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %17 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %22 = call i32 @sirfsoc_uart_tx_with_dma(%struct.sirfsoc_uart_port* %21)
  br label %91

23:                                               ; preds = %1
  %24 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %25 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SIRF_USP_UART, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %23
  %32 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %33 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %4, align 8
  %34 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %37 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %4, align 8
  %38 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @rd_regl(%struct.uart_port* %36, i32 %39)
  %41 = load i32, i32* @SIRFUART_TX_EN, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @wr_regl(%struct.uart_port* %32, i32 %35, i32 %42)
  br label %44

44:                                               ; preds = %31, %23
  %45 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %46 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %4, align 8
  %47 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @SIRFUART_FIFO_STOP, align 4
  %50 = call i32 @wr_regl(%struct.uart_port* %45, i32 %48, i32 %49)
  %51 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %52 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %53 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @sirfsoc_uart_pio_tx_chars(%struct.sirfsoc_uart_port* %51, i32 %54)
  %56 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %57 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %4, align 8
  %58 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @SIRFUART_FIFO_START, align 4
  %61 = call i32 @wr_regl(%struct.uart_port* %56, i32 %59, i32 %60)
  %62 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %63 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %81, label %66

66:                                               ; preds = %44
  %67 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %68 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %4, align 8
  %69 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %72 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %4, align 8
  %73 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @rd_regl(%struct.uart_port* %71, i32 %74)
  %76 = load %struct.sirfsoc_int_en*, %struct.sirfsoc_int_en** %5, align 8
  %77 = getelementptr inbounds %struct.sirfsoc_int_en, %struct.sirfsoc_int_en* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %75, %78
  %80 = call i32 @wr_regl(%struct.uart_port* %67, i32 %70, i32 %79)
  br label %90

81:                                               ; preds = %44
  %82 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %83 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %4, align 8
  %84 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.sirfsoc_int_en*, %struct.sirfsoc_int_en** %5, align 8
  %87 = getelementptr inbounds %struct.sirfsoc_int_en, %struct.sirfsoc_int_en* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @wr_regl(%struct.uart_port* %82, i32 %85, i32 %88)
  br label %90

90:                                               ; preds = %81, %66
  br label %91

91:                                               ; preds = %90, %20
  ret void
}

declare dso_local %struct.sirfsoc_uart_port* @to_sirfport(%struct.uart_port*) #1

declare dso_local i32 @sirfsoc_uart_tx_with_dma(%struct.sirfsoc_uart_port*) #1

declare dso_local i32 @wr_regl(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @rd_regl(%struct.uart_port*, i32) #1

declare dso_local i32 @sirfsoc_uart_pio_tx_chars(%struct.sirfsoc_uart_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
