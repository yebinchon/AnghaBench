; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial-tegra.c_tegra_uart_dma_channel_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial-tegra.c_tegra_uart_dma_channel_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_uart_port = type { i32*, i64, i32*, %struct.TYPE_2__, i32*, i64, i32* }
%struct.TYPE_2__ = type { i32 }

@TEGRA_UART_RX_DMA_BUFFER_SIZE = common dso_local global i32 0, align 4
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_uart_port*, i32)* @tegra_uart_dma_channel_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra_uart_dma_channel_free(%struct.tegra_uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.tegra_uart_port*, align 8
  %4 = alloca i32, align 4
  store %struct.tegra_uart_port* %0, %struct.tegra_uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %34

7:                                                ; preds = %2
  %8 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %9 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %8, i32 0, i32 6
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @dmaengine_terminate_all(i32* %10)
  %12 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %13 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %12, i32 0, i32 6
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @dma_release_channel(i32* %14)
  %16 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %17 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @TEGRA_UART_RX_DMA_BUFFER_SIZE, align 4
  %21 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %22 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %21, i32 0, i32 4
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %25 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %24, i32 0, i32 5
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @dma_free_coherent(i32 %19, i32 %20, i32* %23, i64 %26)
  %28 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %29 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %28, i32 0, i32 6
  store i32* null, i32** %29, align 8
  %30 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %31 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %30, i32 0, i32 5
  store i64 0, i64* %31, align 8
  %32 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %33 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %32, i32 0, i32 4
  store i32* null, i32** %33, align 8
  br label %59

34:                                               ; preds = %2
  %35 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %36 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @dmaengine_terminate_all(i32* %37)
  %39 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %40 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @dma_release_channel(i32* %41)
  %43 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %44 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %48 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* @UART_XMIT_SIZE, align 4
  %51 = load i32, i32* @DMA_TO_DEVICE, align 4
  %52 = call i32 @dma_unmap_single(i32 %46, i64 %49, i32 %50, i32 %51)
  %53 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %54 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %53, i32 0, i32 2
  store i32* null, i32** %54, align 8
  %55 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %56 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %55, i32 0, i32 1
  store i64 0, i64* %56, align 8
  %57 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %58 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %57, i32 0, i32 0
  store i32* null, i32** %58, align 8
  br label %59

59:                                               ; preds = %34, %7
  ret void
}

declare dso_local i32 @dmaengine_terminate_all(i32*) #1

declare dso_local i32 @dma_release_channel(i32*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32*, i64) #1

declare dso_local i32 @dma_unmap_single(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
