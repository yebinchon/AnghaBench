; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial-tegra.c_tegra_uart_start_rx_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial-tegra.c_tegra_uart_start_rx_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_uart_port = type { i32, i32, %struct.TYPE_5__*, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.tegra_uart_port*, i32 }
%struct.TYPE_4__ = type { i32 }

@TEGRA_UART_RX_DMA_BUFFER_SIZE = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Not able to get desc for Rx\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@tegra_uart_rx_dma_complete = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_uart_port*)* @tegra_uart_start_rx_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_uart_start_rx_dma(%struct.tegra_uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_uart_port*, align 8
  %4 = alloca i32, align 4
  store %struct.tegra_uart_port* %0, %struct.tegra_uart_port** %3, align 8
  %5 = load i32, i32* @TEGRA_UART_RX_DMA_BUFFER_SIZE, align 4
  store i32 %5, i32* %4, align 4
  %6 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %7 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %10 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %14 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %15 = call %struct.TYPE_5__* @dmaengine_prep_slave_single(i32 %8, i32 %11, i32 %12, i32 %13, i32 %14)
  %16 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %17 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %16, i32 0, i32 2
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %17, align 8
  %18 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %19 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %18, i32 0, i32 2
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = icmp ne %struct.TYPE_5__* %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %1
  %23 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %24 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %23, i32 0, i32 5
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %64

30:                                               ; preds = %1
  %31 = load i32, i32* @tegra_uart_rx_dma_complete, align 4
  %32 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %33 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %32, i32 0, i32 2
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 1
  store i32 %31, i32* %35, align 8
  %36 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %37 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %38 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %37, i32 0, i32 2
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  store %struct.tegra_uart_port* %36, %struct.tegra_uart_port** %40, align 8
  %41 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %42 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %41, i32 0, i32 5
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %46 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @DMA_TO_DEVICE, align 4
  %50 = call i32 @dma_sync_single_for_device(i32 %44, i32 %47, i32 %48, i32 %49)
  %51 = load i32, i32* %4, align 4
  %52 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %53 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %55 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %54, i32 0, i32 2
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = call i32 @dmaengine_submit(%struct.TYPE_5__* %56)
  %58 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %59 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 8
  %60 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %3, align 8
  %61 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @dma_async_issue_pending(i32 %62)
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %30, %22
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local %struct.TYPE_5__* @dmaengine_prep_slave_single(i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dma_sync_single_for_device(i32, i32, i32, i32) #1

declare dso_local i32 @dmaengine_submit(%struct.TYPE_5__*) #1

declare dso_local i32 @dma_async_issue_pending(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
