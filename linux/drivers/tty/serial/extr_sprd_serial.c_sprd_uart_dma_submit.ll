; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sprd_serial.c_sprd_uart_dma_submit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sprd_serial.c_sprd_uart_dma_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.sprd_uart_dma = type { i32, i32, i32 }
%struct.dma_async_tx_descriptor = type { %struct.uart_port*, i32 }

@SPRD_DMA_CHN_MODE_NONE = common dso_local global i32 0, align 4
@SPRD_DMA_NO_TRG = common dso_local global i32 0, align 4
@SPRD_DMA_FRAG_REQ = common dso_local global i32 0, align 4
@SPRD_DMA_TRANS_INT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*, %struct.sprd_uart_dma*, i32, i32, i32)* @sprd_uart_dma_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_uart_dma_submit(%struct.uart_port* %0, %struct.sprd_uart_dma* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.uart_port*, align 8
  %8 = alloca %struct.sprd_uart_dma*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.dma_async_tx_descriptor*, align 8
  %13 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %7, align 8
  store %struct.sprd_uart_dma* %1, %struct.sprd_uart_dma** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* @SPRD_DMA_CHN_MODE_NONE, align 4
  %15 = load i32, i32* @SPRD_DMA_NO_TRG, align 4
  %16 = load i32, i32* @SPRD_DMA_FRAG_REQ, align 4
  %17 = load i32, i32* @SPRD_DMA_TRANS_INT, align 4
  %18 = call i64 @SPRD_DMA_FLAGS(i32 %14, i32 %15, i32 %16, i32 %17)
  store i64 %18, i64* %13, align 8
  %19 = load %struct.sprd_uart_dma*, %struct.sprd_uart_dma** %8, align 8
  %20 = getelementptr inbounds %struct.sprd_uart_dma, %struct.sprd_uart_dma* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.sprd_uart_dma*, %struct.sprd_uart_dma** %8, align 8
  %23 = getelementptr inbounds %struct.sprd_uart_dma, %struct.sprd_uart_dma* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i64, i64* %13, align 8
  %28 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_single(i32 %21, i32 %24, i32 %25, i32 %26, i64 %27)
  store %struct.dma_async_tx_descriptor* %28, %struct.dma_async_tx_descriptor** %12, align 8
  %29 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %12, align 8
  %30 = icmp ne %struct.dma_async_tx_descriptor* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %5
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %60

34:                                               ; preds = %5
  %35 = load i32, i32* %11, align 4
  %36 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %12, align 8
  %37 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %39 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %12, align 8
  %40 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %39, i32 0, i32 0
  store %struct.uart_port* %38, %struct.uart_port** %40, align 8
  %41 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %12, align 8
  %42 = call i32 @dmaengine_submit(%struct.dma_async_tx_descriptor* %41)
  %43 = load %struct.sprd_uart_dma*, %struct.sprd_uart_dma** %8, align 8
  %44 = getelementptr inbounds %struct.sprd_uart_dma, %struct.sprd_uart_dma* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.sprd_uart_dma*, %struct.sprd_uart_dma** %8, align 8
  %46 = getelementptr inbounds %struct.sprd_uart_dma, %struct.sprd_uart_dma* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dma_submit_error(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %34
  %51 = load %struct.sprd_uart_dma*, %struct.sprd_uart_dma** %8, align 8
  %52 = getelementptr inbounds %struct.sprd_uart_dma, %struct.sprd_uart_dma* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @dma_submit_error(i32 %53)
  store i32 %54, i32* %6, align 4
  br label %60

55:                                               ; preds = %34
  %56 = load %struct.sprd_uart_dma*, %struct.sprd_uart_dma** %8, align 8
  %57 = getelementptr inbounds %struct.sprd_uart_dma, %struct.sprd_uart_dma* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @dma_async_issue_pending(i32 %58)
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %55, %50, %31
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local i64 @SPRD_DMA_FLAGS(i32, i32, i32, i32) #1

declare dso_local %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_single(i32, i32, i32, i32, i64) #1

declare dso_local i32 @dmaengine_submit(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @dma_submit_error(i32) #1

declare dso_local i32 @dma_async_issue_pending(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
