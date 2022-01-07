; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_samsung.c_s3c24xx_serial_rx_chars_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_samsung.c_s3c24xx_serial_rx_chars_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c24xx_uart_port = type { i64, %struct.uart_port, %struct.s3c24xx_uart_dma* }
%struct.uart_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.tty_port }
%struct.tty_port = type { i32 }
%struct.s3c24xx_uart_dma = type { i32, i32, i32 }
%struct.tty_struct = type { i32 }
%struct.dma_tx_state = type { i32 }

@S3C2410_UTRSTAT = common dso_local global i32 0, align 4
@S3C2410_UFSTAT = common dso_local global i32 0, align 4
@S3C2410_UTRSTAT_TIMEOUT = common dso_local global i32 0, align 4
@S3C24XX_RX_PIO = common dso_local global i64 0, align 8
@S3C24XX_RX_DMA = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @s3c24xx_serial_rx_chars_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c24xx_serial_rx_chars_dma(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.s3c24xx_uart_port*, align 8
  %7 = alloca %struct.uart_port*, align 8
  %8 = alloca %struct.s3c24xx_uart_dma*, align 8
  %9 = alloca %struct.tty_struct*, align 8
  %10 = alloca %struct.tty_port*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.dma_tx_state, align 4
  store i8* %0, i8** %2, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = bitcast i8* %13 to %struct.s3c24xx_uart_port*
  store %struct.s3c24xx_uart_port* %14, %struct.s3c24xx_uart_port** %6, align 8
  %15 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %6, align 8
  %16 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %15, i32 0, i32 1
  store %struct.uart_port* %16, %struct.uart_port** %7, align 8
  %17 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %6, align 8
  %18 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %17, i32 0, i32 2
  %19 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %18, align 8
  store %struct.s3c24xx_uart_dma* %19, %struct.s3c24xx_uart_dma** %8, align 8
  %20 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %6, align 8
  %21 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call %struct.tty_struct* @tty_port_tty_get(%struct.tty_port* %24)
  store %struct.tty_struct* %25, %struct.tty_struct** %9, align 8
  %26 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %27 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store %struct.tty_port* %29, %struct.tty_port** %10, align 8
  %30 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %31 = load i32, i32* @S3C2410_UTRSTAT, align 4
  %32 = call i32 @rd_regl(%struct.uart_port* %30, i32 %31)
  store i32 %32, i32* %3, align 4
  %33 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %34 = load i32, i32* @S3C2410_UFSTAT, align 4
  %35 = call i32 @rd_regl(%struct.uart_port* %33, i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %37 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %36, i32 0, i32 0
  %38 = load i64, i64* %11, align 8
  %39 = call i32 @spin_lock_irqsave(i32* %37, i64 %38)
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @S3C2410_UTRSTAT_TIMEOUT, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %56, label %44

44:                                               ; preds = %1
  %45 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %6, align 8
  %46 = call i32 @s3c64xx_start_rx_dma(%struct.s3c24xx_uart_port* %45)
  %47 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %6, align 8
  %48 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @S3C24XX_RX_PIO, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %6, align 8
  %54 = call i32 @enable_rx_dma(%struct.s3c24xx_uart_port* %53)
  br label %55

55:                                               ; preds = %52, %44
  br label %105

56:                                               ; preds = %1
  %57 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %6, align 8
  %58 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @S3C24XX_RX_DMA, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %90

62:                                               ; preds = %56
  %63 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %8, align 8
  %64 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @dmaengine_pause(i32 %65)
  %67 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %8, align 8
  %68 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %8, align 8
  %71 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @dmaengine_tx_status(i32 %69, i32 %72, %struct.dma_tx_state* %12)
  %74 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %8, align 8
  %75 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @dmaengine_terminate_all(i32 %76)
  %78 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %8, align 8
  %79 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = getelementptr inbounds %struct.dma_tx_state, %struct.dma_tx_state* %12, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = sub i32 %80, %82
  store i32 %83, i32* %5, align 4
  %84 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %6, align 8
  %85 = load %struct.tty_port*, %struct.tty_port** %10, align 8
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @s3c24xx_uart_copy_rx_to_tty(%struct.s3c24xx_uart_port* %84, %struct.tty_port* %85, i32 %86)
  %88 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %6, align 8
  %89 = call i32 @enable_rx_pio(%struct.s3c24xx_uart_port* %88)
  br label %90

90:                                               ; preds = %62, %56
  %91 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %6, align 8
  %92 = call i32 @s3c24xx_serial_rx_drain_fifo(%struct.s3c24xx_uart_port* %91)
  %93 = load %struct.tty_struct*, %struct.tty_struct** %9, align 8
  %94 = icmp ne %struct.tty_struct* %93, null
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  %96 = load %struct.tty_port*, %struct.tty_port** %10, align 8
  %97 = call i32 @tty_flip_buffer_push(%struct.tty_port* %96)
  %98 = load %struct.tty_struct*, %struct.tty_struct** %9, align 8
  %99 = call i32 @tty_kref_put(%struct.tty_struct* %98)
  br label %100

100:                                              ; preds = %95, %90
  %101 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %102 = load i32, i32* @S3C2410_UTRSTAT, align 4
  %103 = load i32, i32* @S3C2410_UTRSTAT_TIMEOUT, align 4
  %104 = call i32 @wr_regl(%struct.uart_port* %101, i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %100, %55
  %106 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %107 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %106, i32 0, i32 0
  %108 = load i64, i64* %11, align 8
  %109 = call i32 @spin_unlock_irqrestore(i32* %107, i64 %108)
  %110 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %110
}

declare dso_local %struct.tty_struct* @tty_port_tty_get(%struct.tty_port*) #1

declare dso_local i32 @rd_regl(%struct.uart_port*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @s3c64xx_start_rx_dma(%struct.s3c24xx_uart_port*) #1

declare dso_local i32 @enable_rx_dma(%struct.s3c24xx_uart_port*) #1

declare dso_local i32 @dmaengine_pause(i32) #1

declare dso_local i32 @dmaengine_tx_status(i32, i32, %struct.dma_tx_state*) #1

declare dso_local i32 @dmaengine_terminate_all(i32) #1

declare dso_local i32 @s3c24xx_uart_copy_rx_to_tty(%struct.s3c24xx_uart_port*, %struct.tty_port*, i32) #1

declare dso_local i32 @enable_rx_pio(%struct.s3c24xx_uart_port*) #1

declare dso_local i32 @s3c24xx_serial_rx_drain_fifo(%struct.s3c24xx_uart_port*) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_port*) #1

declare dso_local i32 @tty_kref_put(%struct.tty_struct*) #1

declare dso_local i32 @wr_regl(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
