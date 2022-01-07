; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_fsl_lpuart.c_lpuart_dma_tx_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_fsl_lpuart.c_lpuart_dma_tx_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpuart_port = type { i32, i32, %struct.TYPE_7__, i32, i32, %struct.scatterlist* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.circ_buf }
%struct.circ_buf = type { i32 }
%struct.scatterlist = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @lpuart_dma_tx_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpuart_dma_tx_complete(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.lpuart_port*, align 8
  %4 = alloca %struct.scatterlist*, align 8
  %5 = alloca %struct.circ_buf*, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.lpuart_port*
  store %struct.lpuart_port* %8, %struct.lpuart_port** %3, align 8
  %9 = load %struct.lpuart_port*, %struct.lpuart_port** %3, align 8
  %10 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %9, i32 0, i32 5
  %11 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %12 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %11, i64 0
  store %struct.scatterlist* %12, %struct.scatterlist** %4, align 8
  %13 = load %struct.lpuart_port*, %struct.lpuart_port** %3, align 8
  %14 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 3
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store %struct.circ_buf* %17, %struct.circ_buf** %5, align 8
  %18 = load %struct.lpuart_port*, %struct.lpuart_port** %3, align 8
  %19 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.lpuart_port*, %struct.lpuart_port** %3, align 8
  %24 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %28 = load %struct.lpuart_port*, %struct.lpuart_port** %3, align 8
  %29 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @DMA_TO_DEVICE, align 4
  %32 = call i32 @dma_unmap_sg(i32 %26, %struct.scatterlist* %27, i32 %30, i32 %31)
  %33 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %34 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.lpuart_port*, %struct.lpuart_port** %3, align 8
  %37 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %35, %38
  %40 = load i32, i32* @UART_XMIT_SIZE, align 4
  %41 = sub nsw i32 %40, 1
  %42 = and i32 %39, %41
  %43 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %44 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.lpuart_port*, %struct.lpuart_port** %3, align 8
  %46 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.lpuart_port*, %struct.lpuart_port** %3, align 8
  %49 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, %47
  store i32 %53, i32* %51, align 4
  %54 = load %struct.lpuart_port*, %struct.lpuart_port** %3, align 8
  %55 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %54, i32 0, i32 1
  store i32 0, i32* %55, align 4
  %56 = load %struct.lpuart_port*, %struct.lpuart_port** %3, align 8
  %57 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i64, i64* %6, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32* %58, i64 %59)
  %61 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %62 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %61)
  %63 = load i64, i64* @WAKEUP_CHARS, align 8
  %64 = icmp slt i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %1
  %66 = load %struct.lpuart_port*, %struct.lpuart_port** %3, align 8
  %67 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %66, i32 0, i32 2
  %68 = call i32 @uart_write_wakeup(%struct.TYPE_7__* %67)
  br label %69

69:                                               ; preds = %65, %1
  %70 = load %struct.lpuart_port*, %struct.lpuart_port** %3, align 8
  %71 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %70, i32 0, i32 3
  %72 = call i64 @waitqueue_active(i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load %struct.lpuart_port*, %struct.lpuart_port** %3, align 8
  %76 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %75, i32 0, i32 3
  %77 = call i32 @wake_up(i32* %76)
  br label %97

78:                                               ; preds = %69
  %79 = load %struct.lpuart_port*, %struct.lpuart_port** %3, align 8
  %80 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i64, i64* %6, align 8
  %83 = call i32 @spin_lock_irqsave(i32* %81, i64 %82)
  %84 = load %struct.lpuart_port*, %struct.lpuart_port** %3, align 8
  %85 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %84, i32 0, i32 2
  %86 = call i32 @lpuart_stopped_or_empty(%struct.TYPE_7__* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %91, label %88

88:                                               ; preds = %78
  %89 = load %struct.lpuart_port*, %struct.lpuart_port** %3, align 8
  %90 = call i32 @lpuart_dma_tx(%struct.lpuart_port* %89)
  br label %91

91:                                               ; preds = %88, %78
  %92 = load %struct.lpuart_port*, %struct.lpuart_port** %3, align 8
  %93 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i64, i64* %6, align 8
  %96 = call i32 @spin_unlock_irqrestore(i32* %94, i64 %95)
  br label %97

97:                                               ; preds = %91, %74
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dma_unmap_sg(i32, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.TYPE_7__*) #1

declare dso_local i64 @waitqueue_active(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @lpuart_stopped_or_empty(%struct.TYPE_7__*) #1

declare dso_local i32 @lpuart_dma_tx(%struct.lpuart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
