; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial-tegra.c_tegra_uart_start_tx_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_serial-tegra.c_tegra_uart_start_tx_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_uart_port = type { i64, i64, i32, %struct.TYPE_7__*, i32, i32, %struct.TYPE_6__, i64 }
%struct.TYPE_7__ = type { %struct.tegra_uart_port*, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.circ_buf }
%struct.circ_buf = type { i64 }

@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Not able to get desc for Tx\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@tegra_uart_tx_dma_complete = common dso_local global i32 0, align 4
@TEGRA_UART_TX_DMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_uart_port*, i64)* @tegra_uart_start_tx_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_uart_start_tx_dma(%struct.tegra_uart_port* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_uart_port*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.circ_buf*, align 8
  %7 = alloca i64, align 8
  store %struct.tegra_uart_port* %0, %struct.tegra_uart_port** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %9 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %8, i32 0, i32 6
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store %struct.circ_buf* %12, %struct.circ_buf** %6, align 8
  %13 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %14 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %13, i32 0, i32 6
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %18 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %17, i32 0, i32 7
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* @UART_XMIT_SIZE, align 4
  %21 = load i32, i32* @DMA_TO_DEVICE, align 4
  %22 = call i32 @dma_sync_single_for_device(i32 %16, i64 %19, i32 %20, i32 %21)
  %23 = load i64, i64* %5, align 8
  %24 = and i64 %23, -16
  %25 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %26 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  %27 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %28 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %27, i32 0, i32 7
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.circ_buf*, %struct.circ_buf** %6, align 8
  %31 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %29, %32
  store i64 %33, i64* %7, align 8
  %34 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %35 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %39 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %42 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %43 = call %struct.TYPE_7__* @dmaengine_prep_slave_single(i32 %36, i64 %37, i64 %40, i32 %41, i32 %42)
  %44 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %45 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %44, i32 0, i32 3
  store %struct.TYPE_7__* %43, %struct.TYPE_7__** %45, align 8
  %46 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %47 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %46, i32 0, i32 3
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = icmp ne %struct.TYPE_7__* %48, null
  br i1 %49, label %58, label %50

50:                                               ; preds = %2
  %51 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %52 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %51, i32 0, i32 6
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @dev_err(i32 %54, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %56 = load i32, i32* @EIO, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %87

58:                                               ; preds = %2
  %59 = load i32, i32* @tegra_uart_tx_dma_complete, align 4
  %60 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %61 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %60, i32 0, i32 3
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  store i32 %59, i32* %63, align 8
  %64 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %65 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %66 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %65, i32 0, i32 3
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  store %struct.tegra_uart_port* %64, %struct.tegra_uart_port** %68, align 8
  %69 = load i32, i32* @TEGRA_UART_TX_DMA, align 4
  %70 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %71 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %70, i32 0, i32 5
  store i32 %69, i32* %71, align 4
  %72 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %73 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %76 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  %77 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %78 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %77, i32 0, i32 3
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %78, align 8
  %80 = call i32 @dmaengine_submit(%struct.TYPE_7__* %79)
  %81 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %82 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %81, i32 0, i32 4
  store i32 %80, i32* %82, align 8
  %83 = load %struct.tegra_uart_port*, %struct.tegra_uart_port** %4, align 8
  %84 = getelementptr inbounds %struct.tegra_uart_port, %struct.tegra_uart_port* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @dma_async_issue_pending(i32 %85)
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %58, %50
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @dma_sync_single_for_device(i32, i64, i32, i32) #1

declare dso_local %struct.TYPE_7__* @dmaengine_prep_slave_single(i32, i64, i64, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dmaengine_submit(%struct.TYPE_7__*) #1

declare dso_local i32 @dma_async_issue_pending(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
