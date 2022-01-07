; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_atmel_serial.c_atmel_complete_tx_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_atmel_serial.c_atmel_complete_tx_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_uart_port = type { i32, i32, i32, i32, i32*, i32, i64, %struct.dma_chan*, %struct.uart_port }
%struct.dma_chan = type { i32 }
%struct.uart_port = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.circ_buf }
%struct.circ_buf = type { i32 }

@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@ATMEL_US_IER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @atmel_complete_tx_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_complete_tx_dma(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.atmel_uart_port*, align 8
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.circ_buf*, align 8
  %6 = alloca %struct.dma_chan*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.atmel_uart_port*
  store %struct.atmel_uart_port* %9, %struct.atmel_uart_port** %3, align 8
  %10 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %11 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %10, i32 0, i32 8
  store %struct.uart_port* %11, %struct.uart_port** %4, align 8
  %12 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %13 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %12, i32 0, i32 2
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store %struct.circ_buf* %15, %struct.circ_buf** %5, align 8
  %16 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %17 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %16, i32 0, i32 7
  %18 = load %struct.dma_chan*, %struct.dma_chan** %17, align 8
  store %struct.dma_chan* %18, %struct.dma_chan** %6, align 8
  %19 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %20 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %19, i32 0, i32 0
  %21 = load i64, i64* %7, align 8
  %22 = call i32 @spin_lock_irqsave(i32* %20, i64 %21)
  %23 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %24 = icmp ne %struct.dma_chan* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %27 = call i32 @dmaengine_terminate_all(%struct.dma_chan* %26)
  br label %28

28:                                               ; preds = %25, %1
  %29 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %30 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %29, i32 0, i32 6
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %33 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %35, %31
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %33, align 4
  %38 = load i32, i32* @UART_XMIT_SIZE, align 4
  %39 = sub nsw i32 %38, 1
  %40 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %41 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %45 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %44, i32 0, i32 6
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %48 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = add nsw i64 %51, %46
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %49, align 4
  %54 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %55 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %54, i32 0, i32 3
  %56 = call i32 @spin_lock_irq(i32* %55)
  %57 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %58 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %57, i32 0, i32 4
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @async_tx_ack(i32* %59)
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  %63 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %64 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %63, i32 0, i32 5
  store i32 %62, i32* %64, align 8
  %65 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %66 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %65, i32 0, i32 4
  store i32* null, i32** %66, align 8
  %67 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %68 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %67, i32 0, i32 3
  %69 = call i32 @spin_unlock_irq(i32* %68)
  %70 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %71 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %70)
  %72 = load i64, i64* @WAKEUP_CHARS, align 8
  %73 = icmp slt i64 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %28
  %75 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %76 = call i32 @uart_write_wakeup(%struct.uart_port* %75)
  br label %77

77:                                               ; preds = %74, %28
  %78 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %79 = call i32 @uart_circ_empty(%struct.circ_buf* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %77
  %82 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %83 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %84 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %83, i32 0, i32 2
  %85 = call i32 @atmel_tasklet_schedule(%struct.atmel_uart_port* %82, i32* %84)
  br label %100

86:                                               ; preds = %77
  %87 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %88 = call i64 @atmel_uart_is_half_duplex(%struct.uart_port* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %86
  %91 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %92 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %91, i32 0, i32 0
  store i32 1, i32* %92, align 8
  %93 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %94 = load i32, i32* @ATMEL_US_IER, align 4
  %95 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %96 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @atmel_uart_writel(%struct.uart_port* %93, i32 %94, i32 %97)
  br label %99

99:                                               ; preds = %90, %86
  br label %100

100:                                              ; preds = %99, %81
  %101 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %102 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %101, i32 0, i32 0
  %103 = load i64, i64* %7, align 8
  %104 = call i32 @spin_unlock_irqrestore(i32* %102, i64 %103)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dmaengine_terminate_all(%struct.dma_chan*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @async_tx_ack(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.uart_port*) #1

declare dso_local i32 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i32 @atmel_tasklet_schedule(%struct.atmel_uart_port*, i32*) #1

declare dso_local i64 @atmel_uart_is_half_duplex(%struct.uart_port*) #1

declare dso_local i32 @atmel_uart_writel(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
