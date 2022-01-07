; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_samsung.c_s3c24xx_serial_release_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_samsung.c_s3c24xx_serial_release_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c24xx_uart_port = type { %struct.TYPE_2__, %struct.s3c24xx_uart_dma* }
%struct.TYPE_2__ = type { i32 }
%struct.s3c24xx_uart_dma = type { i32*, i32, i32*, i32, i32, i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s3c24xx_uart_port*)* @s3c24xx_serial_release_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c24xx_serial_release_dma(%struct.s3c24xx_uart_port* %0) #0 {
  %2 = alloca %struct.s3c24xx_uart_port*, align 8
  %3 = alloca %struct.s3c24xx_uart_dma*, align 8
  store %struct.s3c24xx_uart_port* %0, %struct.s3c24xx_uart_port** %2, align 8
  %4 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %2, align 8
  %5 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %4, i32 0, i32 1
  %6 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %5, align 8
  store %struct.s3c24xx_uart_dma* %6, %struct.s3c24xx_uart_dma** %3, align 8
  %7 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %3, align 8
  %8 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %38

11:                                               ; preds = %1
  %12 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %3, align 8
  %13 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @dmaengine_terminate_all(i32* %14)
  %16 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %2, align 8
  %17 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %3, align 8
  %21 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %3, align 8
  %24 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %27 = call i32 @dma_unmap_single(i32 %19, i32 %22, i32 %25, i32 %26)
  %28 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %3, align 8
  %29 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @kfree(i32 %30)
  %32 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %3, align 8
  %33 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @dma_release_channel(i32* %34)
  %36 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %3, align 8
  %37 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %36, i32 0, i32 2
  store i32* null, i32** %37, align 8
  br label %38

38:                                               ; preds = %11, %1
  %39 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %3, align 8
  %40 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %64

43:                                               ; preds = %38
  %44 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %3, align 8
  %45 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @dmaengine_terminate_all(i32* %46)
  %48 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %2, align 8
  %49 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %3, align 8
  %53 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @UART_XMIT_SIZE, align 4
  %56 = load i32, i32* @DMA_TO_DEVICE, align 4
  %57 = call i32 @dma_unmap_single(i32 %51, i32 %54, i32 %55, i32 %56)
  %58 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %3, align 8
  %59 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @dma_release_channel(i32* %60)
  %62 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %3, align 8
  %63 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %62, i32 0, i32 0
  store i32* null, i32** %63, align 8
  br label %64

64:                                               ; preds = %43, %38
  ret void
}

declare dso_local i32 @dmaengine_terminate_all(i32*) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @dma_release_channel(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
