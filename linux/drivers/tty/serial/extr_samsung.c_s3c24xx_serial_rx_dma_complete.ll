; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_samsung.c_s3c24xx_serial_rx_dma_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_samsung.c_s3c24xx_serial_rx_dma_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c24xx_uart_port = type { %struct.uart_port, %struct.s3c24xx_uart_dma* }
%struct.uart_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.tty_port }
%struct.tty_port = type { i32 }
%struct.s3c24xx_uart_dma = type { i32, i32, i32, i32 }
%struct.tty_struct = type { i32 }
%struct.dma_tx_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @s3c24xx_serial_rx_dma_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c24xx_serial_rx_dma_complete(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.s3c24xx_uart_port*, align 8
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca %struct.s3c24xx_uart_dma*, align 8
  %6 = alloca %struct.tty_port*, align 8
  %7 = alloca %struct.tty_struct*, align 8
  %8 = alloca %struct.dma_tx_state, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = bitcast i8* %11 to %struct.s3c24xx_uart_port*
  store %struct.s3c24xx_uart_port* %12, %struct.s3c24xx_uart_port** %3, align 8
  %13 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %3, align 8
  %14 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %13, i32 0, i32 0
  store %struct.uart_port* %14, %struct.uart_port** %4, align 8
  %15 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %3, align 8
  %16 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %15, i32 0, i32 1
  %17 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %16, align 8
  store %struct.s3c24xx_uart_dma* %17, %struct.s3c24xx_uart_dma** %5, align 8
  %18 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %19 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store %struct.tty_port* %21, %struct.tty_port** %6, align 8
  %22 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %3, align 8
  %23 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call %struct.tty_struct* @tty_port_tty_get(%struct.tty_port* %26)
  store %struct.tty_struct* %27, %struct.tty_struct** %7, align 8
  %28 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %5, align 8
  %29 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %5, align 8
  %32 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dmaengine_tx_status(i32 %30, i32 %33, %struct.dma_tx_state* %8)
  %35 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %5, align 8
  %36 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.dma_tx_state, %struct.dma_tx_state* %8, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %37, %39
  store i32 %40, i32* %10, align 4
  %41 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %5, align 8
  %42 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @async_tx_ack(i32 %43)
  %45 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %46 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %45, i32 0, i32 0
  %47 = load i64, i64* %9, align 8
  %48 = call i32 @spin_lock_irqsave(i32* %46, i64 %47)
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %1
  %52 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %3, align 8
  %53 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %54 = load i32, i32* %10, align 4
  %55 = call i32 @s3c24xx_uart_copy_rx_to_tty(%struct.s3c24xx_uart_port* %52, %struct.tty_port* %53, i32 %54)
  br label %56

56:                                               ; preds = %51, %1
  %57 = load %struct.tty_struct*, %struct.tty_struct** %7, align 8
  %58 = icmp ne %struct.tty_struct* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %61 = call i32 @tty_flip_buffer_push(%struct.tty_port* %60)
  %62 = load %struct.tty_struct*, %struct.tty_struct** %7, align 8
  %63 = call i32 @tty_kref_put(%struct.tty_struct* %62)
  br label %64

64:                                               ; preds = %59, %56
  %65 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %3, align 8
  %66 = call i32 @s3c64xx_start_rx_dma(%struct.s3c24xx_uart_port* %65)
  %67 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %68 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %67, i32 0, i32 0
  %69 = load i64, i64* %9, align 8
  %70 = call i32 @spin_unlock_irqrestore(i32* %68, i64 %69)
  ret void
}

declare dso_local %struct.tty_struct* @tty_port_tty_get(%struct.tty_port*) #1

declare dso_local i32 @dmaengine_tx_status(i32, i32, %struct.dma_tx_state*) #1

declare dso_local i32 @async_tx_ack(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @s3c24xx_uart_copy_rx_to_tty(%struct.s3c24xx_uart_port*, %struct.tty_port*, i32) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_port*) #1

declare dso_local i32 @tty_kref_put(%struct.tty_struct*) #1

declare dso_local i32 @s3c64xx_start_rx_dma(%struct.s3c24xx_uart_port*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
