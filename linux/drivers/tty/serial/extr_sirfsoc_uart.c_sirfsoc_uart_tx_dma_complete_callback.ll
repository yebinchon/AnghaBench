; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sirfsoc_uart.c_sirfsoc_uart_tx_dma_complete_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sirfsoc_uart.c_sirfsoc_uart_tx_dma_complete_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sirfsoc_uart_port = type { i32, i32, i64, %struct.uart_port }
%struct.uart_port = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.circ_buf }
%struct.circ_buf = type { i32 }

@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@TX_DMA_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @sirfsoc_uart_tx_dma_complete_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sirfsoc_uart_tx_dma_complete_callback(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sirfsoc_uart_port*, align 8
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.circ_buf*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.sirfsoc_uart_port*
  store %struct.sirfsoc_uart_port* %8, %struct.sirfsoc_uart_port** %3, align 8
  %9 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %10 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %9, i32 0, i32 3
  store %struct.uart_port* %10, %struct.uart_port** %4, align 8
  %11 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %12 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %11, i32 0, i32 3
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store %struct.circ_buf* %14, %struct.circ_buf** %5, align 8
  %15 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %16 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %15, i32 0, i32 0
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %20 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %23 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %21, %24
  %26 = load i32, i32* @UART_XMIT_SIZE, align 4
  %27 = sub nsw i32 %26, 1
  %28 = and i32 %25, %27
  %29 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %30 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %32 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %35 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, %33
  store i32 %38, i32* %36, align 8
  %39 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %40 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %39)
  %41 = load i64, i64* @WAKEUP_CHARS, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %1
  %44 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %45 = call i32 @uart_write_wakeup(%struct.uart_port* %44)
  br label %46

46:                                               ; preds = %43, %1
  %47 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %48 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %46
  %52 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %53 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %56 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %59 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @DMA_TO_DEVICE, align 4
  %62 = call i32 @dma_unmap_single(i32 %54, i64 %57, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %51, %46
  %64 = load i32, i32* @TX_DMA_IDLE, align 4
  %65 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %66 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %68 = call i32 @sirfsoc_uart_tx_with_dma(%struct.sirfsoc_uart_port* %67)
  %69 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %70 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %69, i32 0, i32 0
  %71 = load i64, i64* %6, align 8
  %72 = call i32 @spin_unlock_irqrestore(i32* %70, i64 %71)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.uart_port*) #1

declare dso_local i32 @dma_unmap_single(i32, i64, i32, i32) #1

declare dso_local i32 @sirfsoc_uart_tx_with_dma(%struct.sirfsoc_uart_port*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
