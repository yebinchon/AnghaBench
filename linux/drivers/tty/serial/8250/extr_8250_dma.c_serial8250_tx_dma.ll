; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_dma.c_serial8250_tx_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_dma.c_serial8250_tx_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_8250_port = type { %struct.TYPE_8__, %struct.uart_8250_dma* }
%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.circ_buf }
%struct.circ_buf = type { i64, i32 }
%struct.uart_8250_dma = type { i32, i32, %struct.TYPE_9__*, i64, i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.dma_async_tx_descriptor = type { %struct.uart_8250_port*, i32 }

@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@DMA_CTRL_ACK = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@__dma_tx_complete = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @serial8250_tx_dma(%struct.uart_8250_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_8250_port*, align 8
  %4 = alloca %struct.uart_8250_dma*, align 8
  %5 = alloca %struct.circ_buf*, align 8
  %6 = alloca %struct.dma_async_tx_descriptor*, align 8
  %7 = alloca i32, align 4
  store %struct.uart_8250_port* %0, %struct.uart_8250_port** %3, align 8
  %8 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %9 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %8, i32 0, i32 1
  %10 = load %struct.uart_8250_dma*, %struct.uart_8250_dma** %9, align 8
  store %struct.uart_8250_dma* %10, %struct.uart_8250_dma** %4, align 8
  %11 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %12 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store %struct.circ_buf* %15, %struct.circ_buf** %5, align 8
  %16 = load %struct.uart_8250_dma*, %struct.uart_8250_dma** %4, align 8
  %17 = getelementptr inbounds %struct.uart_8250_dma, %struct.uart_8250_dma* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %111

21:                                               ; preds = %1
  %22 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %23 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %22, i32 0, i32 0
  %24 = call i64 @uart_tx_stopped(%struct.TYPE_8__* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %28 = call i64 @uart_circ_empty(%struct.circ_buf* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26, %21
  %31 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %32 = call i32 @serial8250_rpm_put_tx(%struct.uart_8250_port* %31)
  store i32 0, i32* %2, align 4
  br label %111

33:                                               ; preds = %26
  %34 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %35 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %38 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* @UART_XMIT_SIZE, align 4
  %41 = call i32 @CIRC_CNT_TO_END(i32 %36, i64 %39, i32 %40)
  %42 = load %struct.uart_8250_dma*, %struct.uart_8250_dma** %4, align 8
  %43 = getelementptr inbounds %struct.uart_8250_dma, %struct.uart_8250_dma* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 4
  %44 = load %struct.uart_8250_dma*, %struct.uart_8250_dma** %4, align 8
  %45 = getelementptr inbounds %struct.uart_8250_dma, %struct.uart_8250_dma* %44, i32 0, i32 2
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = load %struct.uart_8250_dma*, %struct.uart_8250_dma** %4, align 8
  %48 = getelementptr inbounds %struct.uart_8250_dma, %struct.uart_8250_dma* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %51 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %49, %52
  %54 = load %struct.uart_8250_dma*, %struct.uart_8250_dma** %4, align 8
  %55 = getelementptr inbounds %struct.uart_8250_dma, %struct.uart_8250_dma* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %58 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %59 = load i32, i32* @DMA_CTRL_ACK, align 4
  %60 = or i32 %58, %59
  %61 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_single(%struct.TYPE_9__* %46, i64 %53, i32 %56, i32 %57, i32 %60)
  store %struct.dma_async_tx_descriptor* %61, %struct.dma_async_tx_descriptor** %6, align 8
  %62 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %63 = icmp ne %struct.dma_async_tx_descriptor* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %33
  %65 = load i32, i32* @EBUSY, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %7, align 4
  br label %107

67:                                               ; preds = %33
  %68 = load %struct.uart_8250_dma*, %struct.uart_8250_dma** %4, align 8
  %69 = getelementptr inbounds %struct.uart_8250_dma, %struct.uart_8250_dma* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  %70 = load i32, i32* @__dma_tx_complete, align 4
  %71 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %72 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 8
  %73 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %74 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %75 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %74, i32 0, i32 0
  store %struct.uart_8250_port* %73, %struct.uart_8250_port** %75, align 8
  %76 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %77 = call i32 @dmaengine_submit(%struct.dma_async_tx_descriptor* %76)
  %78 = load %struct.uart_8250_dma*, %struct.uart_8250_dma** %4, align 8
  %79 = getelementptr inbounds %struct.uart_8250_dma, %struct.uart_8250_dma* %78, i32 0, i32 4
  store i32 %77, i32* %79, align 8
  %80 = load %struct.uart_8250_dma*, %struct.uart_8250_dma** %4, align 8
  %81 = getelementptr inbounds %struct.uart_8250_dma, %struct.uart_8250_dma* %80, i32 0, i32 2
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.uart_8250_dma*, %struct.uart_8250_dma** %4, align 8
  %88 = getelementptr inbounds %struct.uart_8250_dma, %struct.uart_8250_dma* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = load i32, i32* @UART_XMIT_SIZE, align 4
  %91 = load i32, i32* @DMA_TO_DEVICE, align 4
  %92 = call i32 @dma_sync_single_for_device(i32 %86, i64 %89, i32 %90, i32 %91)
  %93 = load %struct.uart_8250_dma*, %struct.uart_8250_dma** %4, align 8
  %94 = getelementptr inbounds %struct.uart_8250_dma, %struct.uart_8250_dma* %93, i32 0, i32 2
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %94, align 8
  %96 = call i32 @dma_async_issue_pending(%struct.TYPE_9__* %95)
  %97 = load %struct.uart_8250_dma*, %struct.uart_8250_dma** %4, align 8
  %98 = getelementptr inbounds %struct.uart_8250_dma, %struct.uart_8250_dma* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %67
  %102 = load %struct.uart_8250_dma*, %struct.uart_8250_dma** %4, align 8
  %103 = getelementptr inbounds %struct.uart_8250_dma, %struct.uart_8250_dma* %102, i32 0, i32 1
  store i32 0, i32* %103, align 4
  %104 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %105 = call i32 @serial8250_clear_THRI(%struct.uart_8250_port* %104)
  br label %106

106:                                              ; preds = %101, %67
  store i32 0, i32* %2, align 4
  br label %111

107:                                              ; preds = %64
  %108 = load %struct.uart_8250_dma*, %struct.uart_8250_dma** %4, align 8
  %109 = getelementptr inbounds %struct.uart_8250_dma, %struct.uart_8250_dma* %108, i32 0, i32 1
  store i32 1, i32* %109, align 4
  %110 = load i32, i32* %7, align 4
  store i32 %110, i32* %2, align 4
  br label %111

111:                                              ; preds = %107, %106, %30, %20
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i64 @uart_tx_stopped(%struct.TYPE_8__*) #1

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i32 @serial8250_rpm_put_tx(%struct.uart_8250_port*) #1

declare dso_local i32 @CIRC_CNT_TO_END(i32, i64, i32) #1

declare dso_local %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_single(%struct.TYPE_9__*, i64, i32, i32, i32) #1

declare dso_local i32 @dmaengine_submit(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @dma_sync_single_for_device(i32, i64, i32, i32) #1

declare dso_local i32 @dma_async_issue_pending(%struct.TYPE_9__*) #1

declare dso_local i32 @serial8250_clear_THRI(%struct.uart_8250_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
