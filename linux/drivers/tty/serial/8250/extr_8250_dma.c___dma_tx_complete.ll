; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_dma.c___dma_tx_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_dma.c___dma_tx_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_8250_port = type { %struct.TYPE_10__, %struct.uart_8250_dma* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__, %struct.TYPE_6__* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_6__ = type { %struct.circ_buf }
%struct.circ_buf = type { i32 }
%struct.uart_8250_dma = type { i64, i64, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @__dma_tx_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__dma_tx_complete(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.uart_8250_port*, align 8
  %4 = alloca %struct.uart_8250_dma*, align 8
  %5 = alloca %struct.circ_buf*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.uart_8250_port*
  store %struct.uart_8250_port* %9, %struct.uart_8250_port** %3, align 8
  %10 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %11 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %10, i32 0, i32 1
  %12 = load %struct.uart_8250_dma*, %struct.uart_8250_dma** %11, align 8
  store %struct.uart_8250_dma* %12, %struct.uart_8250_dma** %4, align 8
  %13 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %14 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  store %struct.circ_buf* %17, %struct.circ_buf** %5, align 8
  %18 = load %struct.uart_8250_dma*, %struct.uart_8250_dma** %4, align 8
  %19 = getelementptr inbounds %struct.uart_8250_dma, %struct.uart_8250_dma* %18, i32 0, i32 3
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.uart_8250_dma*, %struct.uart_8250_dma** %4, align 8
  %26 = getelementptr inbounds %struct.uart_8250_dma, %struct.uart_8250_dma* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @UART_XMIT_SIZE, align 4
  %29 = load i32, i32* @DMA_TO_DEVICE, align 4
  %30 = call i32 @dma_sync_single_for_cpu(i32 %24, i32 %27, i32 %28, i32 %29)
  %31 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %32 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @spin_lock_irqsave(i32* %33, i64 %34)
  %36 = load %struct.uart_8250_dma*, %struct.uart_8250_dma** %4, align 8
  %37 = getelementptr inbounds %struct.uart_8250_dma, %struct.uart_8250_dma* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load %struct.uart_8250_dma*, %struct.uart_8250_dma** %4, align 8
  %39 = getelementptr inbounds %struct.uart_8250_dma, %struct.uart_8250_dma* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %42 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %40
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %42, align 4
  %47 = load i32, i32* @UART_XMIT_SIZE, align 4
  %48 = sub nsw i32 %47, 1
  %49 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %50 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = load %struct.uart_8250_dma*, %struct.uart_8250_dma** %4, align 8
  %54 = getelementptr inbounds %struct.uart_8250_dma, %struct.uart_8250_dma* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %57 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %61, %55
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %59, align 4
  %64 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %65 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %64)
  %66 = load i64, i64* @WAKEUP_CHARS, align 8
  %67 = icmp slt i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %1
  %69 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %70 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %69, i32 0, i32 0
  %71 = call i32 @uart_write_wakeup(%struct.TYPE_10__* %70)
  br label %72

72:                                               ; preds = %68, %1
  %73 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %74 = call i32 @serial8250_tx_dma(%struct.uart_8250_port* %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %79 = call i32 @serial8250_set_THRI(%struct.uart_8250_port* %78)
  br label %80

80:                                               ; preds = %77, %72
  %81 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %82 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = load i64, i64* %6, align 8
  %85 = call i32 @spin_unlock_irqrestore(i32* %83, i64 %84)
  ret void
}

declare dso_local i32 @dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.TYPE_10__*) #1

declare dso_local i32 @serial8250_tx_dma(%struct.uart_8250_port*) #1

declare dso_local i32 @serial8250_set_THRI(%struct.uart_8250_port*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
