; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_samsung.c_s3c24xx_serial_tx_dma_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_samsung.c_s3c24xx_serial_tx_dma_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c24xx_uart_port = type { i64, %struct.uart_port, %struct.s3c24xx_uart_dma* }
%struct.uart_port = type { i32, %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.circ_buf }
%struct.circ_buf = type { i32 }
%struct.s3c24xx_uart_dma = type { i32, i32, i32, i32, i32, i32 }
%struct.dma_tx_state = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @s3c24xx_serial_tx_dma_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c24xx_serial_tx_dma_complete(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.s3c24xx_uart_port*, align 8
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.circ_buf*, align 8
  %6 = alloca %struct.s3c24xx_uart_dma*, align 8
  %7 = alloca %struct.dma_tx_state, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.s3c24xx_uart_port*
  store %struct.s3c24xx_uart_port* %11, %struct.s3c24xx_uart_port** %3, align 8
  %12 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %3, align 8
  %13 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %12, i32 0, i32 1
  store %struct.uart_port* %13, %struct.uart_port** %4, align 8
  %14 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %15 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %14, i32 0, i32 3
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store %struct.circ_buf* %17, %struct.circ_buf** %5, align 8
  %18 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %3, align 8
  %19 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %18, i32 0, i32 2
  %20 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %19, align 8
  store %struct.s3c24xx_uart_dma* %20, %struct.s3c24xx_uart_dma** %6, align 8
  %21 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %6, align 8
  %22 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %6, align 8
  %25 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dmaengine_tx_status(i32 %23, i32 %26, %struct.dma_tx_state* %7)
  %28 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %6, align 8
  %29 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.dma_tx_state, %struct.dma_tx_state* %7, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %30, %32
  store i32 %33, i32* %9, align 4
  %34 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %6, align 8
  %35 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @async_tx_ack(i32 %36)
  %38 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %3, align 8
  %39 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %6, align 8
  %43 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %6, align 8
  %46 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @DMA_TO_DEVICE, align 4
  %49 = call i32 @dma_sync_single_for_cpu(i32 %41, i32 %44, i32 %47, i32 %48)
  %50 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %51 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %50, i32 0, i32 0
  %52 = load i64, i64* %8, align 8
  %53 = call i32 @spin_lock_irqsave(i32* %51, i64 %52)
  %54 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %55 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %56, %57
  %59 = load i32, i32* @UART_XMIT_SIZE, align 4
  %60 = sub nsw i32 %59, 1
  %61 = and i32 %58, %60
  %62 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %63 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %66 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, %64
  store i32 %69, i32* %67, align 4
  %70 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %3, align 8
  %71 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %70, i32 0, i32 0
  store i64 0, i64* %71, align 8
  %72 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %73 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %72)
  %74 = load i64, i64* @WAKEUP_CHARS, align 8
  %75 = icmp slt i64 %73, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %1
  %77 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %78 = call i32 @uart_write_wakeup(%struct.uart_port* %77)
  br label %79

79:                                               ; preds = %76, %1
  %80 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %3, align 8
  %81 = call i32 @s3c24xx_serial_start_next_tx(%struct.s3c24xx_uart_port* %80)
  %82 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %83 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %82, i32 0, i32 0
  %84 = load i64, i64* %8, align 8
  %85 = call i32 @spin_unlock_irqrestore(i32* %83, i64 %84)
  ret void
}

declare dso_local i32 @dmaengine_tx_status(i32, i32, %struct.dma_tx_state*) #1

declare dso_local i32 @async_tx_ack(i32) #1

declare dso_local i32 @dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.uart_port*) #1

declare dso_local i32 @s3c24xx_serial_start_next_tx(%struct.s3c24xx_uart_port*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
