; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_samsung.c_s3c64xx_start_rx_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_samsung.c_s3c64xx_start_rx_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c24xx_uart_port = type { %struct.TYPE_4__, %struct.s3c24xx_uart_dma* }
%struct.TYPE_4__ = type { i32 }
%struct.s3c24xx_uart_dma = type { i32, %struct.TYPE_5__*, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.s3c24xx_uart_port*, i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Unable to get desc for Rx\0A\00", align 1
@s3c24xx_serial_rx_dma_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s3c24xx_uart_port*)* @s3c64xx_start_rx_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c64xx_start_rx_dma(%struct.s3c24xx_uart_port* %0) #0 {
  %2 = alloca %struct.s3c24xx_uart_port*, align 8
  %3 = alloca %struct.s3c24xx_uart_dma*, align 8
  store %struct.s3c24xx_uart_port* %0, %struct.s3c24xx_uart_port** %2, align 8
  %4 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %2, align 8
  %5 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %4, i32 0, i32 1
  %6 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %5, align 8
  store %struct.s3c24xx_uart_dma* %6, %struct.s3c24xx_uart_dma** %3, align 8
  %7 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %2, align 8
  %8 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %3, align 8
  %12 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %3, align 8
  %15 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %18 = call i32 @dma_sync_single_for_device(i32 %10, i32 %13, i32 %16, i32 %17)
  %19 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %3, align 8
  %20 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %3, align 8
  %23 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %22, i32 0, i32 5
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %3, align 8
  %26 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %29 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %30 = call %struct.TYPE_5__* @dmaengine_prep_slave_single(i32 %21, i32 %24, i32 %27, i32 %28, i32 %29)
  %31 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %3, align 8
  %32 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %31, i32 0, i32 1
  store %struct.TYPE_5__* %30, %struct.TYPE_5__** %32, align 8
  %33 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %3, align 8
  %34 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %33, i32 0, i32 1
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = icmp ne %struct.TYPE_5__* %35, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %1
  %38 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %2, align 8
  %39 = getelementptr inbounds %struct.s3c24xx_uart_port, %struct.s3c24xx_uart_port* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @dev_err(i32 %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %69

43:                                               ; preds = %1
  %44 = load i32, i32* @s3c24xx_serial_rx_dma_complete, align 4
  %45 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %3, align 8
  %46 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %45, i32 0, i32 1
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  store i32 %44, i32* %48, align 8
  %49 = load %struct.s3c24xx_uart_port*, %struct.s3c24xx_uart_port** %2, align 8
  %50 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %3, align 8
  %51 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %50, i32 0, i32 1
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store %struct.s3c24xx_uart_port* %49, %struct.s3c24xx_uart_port** %53, align 8
  %54 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %3, align 8
  %55 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %3, align 8
  %58 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %57, i32 0, i32 4
  store i32 %56, i32* %58, align 8
  %59 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %3, align 8
  %60 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %59, i32 0, i32 1
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = call i32 @dmaengine_submit(%struct.TYPE_5__* %61)
  %63 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %3, align 8
  %64 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load %struct.s3c24xx_uart_dma*, %struct.s3c24xx_uart_dma** %3, align 8
  %66 = getelementptr inbounds %struct.s3c24xx_uart_dma, %struct.s3c24xx_uart_dma* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @dma_async_issue_pending(i32 %67)
  br label %69

69:                                               ; preds = %43, %37
  ret void
}

declare dso_local i32 @dma_sync_single_for_device(i32, i32, i32, i32) #1

declare dso_local %struct.TYPE_5__* @dmaengine_prep_slave_single(i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dmaengine_submit(%struct.TYPE_5__*) #1

declare dso_local i32 @dma_async_issue_pending(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
