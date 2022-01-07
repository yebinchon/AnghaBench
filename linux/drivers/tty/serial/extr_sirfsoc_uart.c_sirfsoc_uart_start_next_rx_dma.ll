; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sirfsoc_uart.c_sirfsoc_uart_start_next_rx_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_sirfsoc_uart.c_sirfsoc_uart_start_next_rx_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.sirfsoc_uart_port = type { %struct.TYPE_9__*, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, %struct.sirfsoc_int_en, %struct.sirfsoc_register }
%struct.sirfsoc_int_en = type { i32 }
%struct.sirfsoc_register = type { i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_10__*, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { %struct.sirfsoc_uart_port*, i32 }
%struct.TYPE_7__ = type { i64, i64 }

@SIRFUART_IO_MODE = common dso_local global i32 0, align 4
@SIRFSOC_RX_DMA_BUF_SIZE = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"DMA slave single fail\0A\00", align 1
@sirfsoc_uart_rx_dma_complete_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @sirfsoc_uart_start_next_rx_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sirfsoc_uart_start_next_rx_dma(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.sirfsoc_uart_port*, align 8
  %4 = alloca %struct.sirfsoc_register*, align 8
  %5 = alloca %struct.sirfsoc_int_en*, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %7 = call %struct.sirfsoc_uart_port* @to_sirfport(%struct.uart_port* %6)
  store %struct.sirfsoc_uart_port* %7, %struct.sirfsoc_uart_port** %3, align 8
  %8 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %9 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %8, i32 0, i32 0
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  store %struct.sirfsoc_register* %11, %struct.sirfsoc_register** %4, align 8
  %12 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %13 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %12, i32 0, i32 0
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  store %struct.sirfsoc_int_en* %15, %struct.sirfsoc_int_en** %5, align 8
  %16 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %17 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %4, align 8
  %18 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %21 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %4, align 8
  %22 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @rd_regl(%struct.uart_port* %20, i32 %23)
  %25 = load i32, i32* @SIRFUART_IO_MODE, align 4
  %26 = xor i32 %25, -1
  %27 = and i32 %24, %26
  %28 = call i32 @wr_regl(%struct.uart_port* %16, i32 %19, i32 %27)
  %29 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %30 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  store i64 0, i64* %32, align 8
  %33 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %34 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  %37 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %38 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %41 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @SIRFSOC_RX_DMA_BUF_SIZE, align 4
  %45 = load i32, i32* @SIRFSOC_RX_DMA_BUF_SIZE, align 4
  %46 = sdiv i32 %45, 2
  %47 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %48 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %49 = call %struct.TYPE_10__* @dmaengine_prep_dma_cyclic(i32 %39, i32 %43, i32 %44, i32 %46, i32 %47, i32 %48)
  %50 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %51 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  store %struct.TYPE_10__* %49, %struct.TYPE_10__** %52, align 8
  %53 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %54 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = call i64 @IS_ERR_OR_NULL(%struct.TYPE_10__* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %1
  %60 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %61 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @dev_err(i32 %62, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %125

64:                                               ; preds = %1
  %65 = load i32, i32* @sirfsoc_uart_rx_dma_complete_callback, align 4
  %66 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %67 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  store i32 %65, i32* %70, align 8
  %71 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %72 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %73 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  store %struct.sirfsoc_uart_port* %71, %struct.sirfsoc_uart_port** %76, align 8
  %77 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %78 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = call i32 @dmaengine_submit(%struct.TYPE_10__* %80)
  %82 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %83 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  store i32 %81, i32* %84, align 8
  %85 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %86 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @dma_async_issue_pending(i32 %87)
  %89 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %90 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %112, label %93

93:                                               ; preds = %64
  %94 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %95 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %4, align 8
  %96 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %99 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %4, align 8
  %100 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @rd_regl(%struct.uart_port* %98, i32 %101)
  %103 = load %struct.sirfsoc_int_en*, %struct.sirfsoc_int_en** %5, align 8
  %104 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %105 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %104, i32 0, i32 0
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @SIRFUART_RX_DMA_INT_EN(%struct.sirfsoc_int_en* %103, i32 %108)
  %110 = or i32 %102, %109
  %111 = call i32 @wr_regl(%struct.uart_port* %94, i32 %97, i32 %110)
  br label %125

112:                                              ; preds = %64
  %113 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %114 = load %struct.sirfsoc_register*, %struct.sirfsoc_register** %4, align 8
  %115 = getelementptr inbounds %struct.sirfsoc_register, %struct.sirfsoc_register* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.sirfsoc_int_en*, %struct.sirfsoc_int_en** %5, align 8
  %118 = load %struct.sirfsoc_uart_port*, %struct.sirfsoc_uart_port** %3, align 8
  %119 = getelementptr inbounds %struct.sirfsoc_uart_port, %struct.sirfsoc_uart_port* %118, i32 0, i32 0
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @SIRFUART_RX_DMA_INT_EN(%struct.sirfsoc_int_en* %117, i32 %122)
  %124 = call i32 @wr_regl(%struct.uart_port* %113, i32 %116, i32 %123)
  br label %125

125:                                              ; preds = %59, %112, %93
  ret void
}

declare dso_local %struct.sirfsoc_uart_port* @to_sirfport(%struct.uart_port*) #1

declare dso_local i32 @wr_regl(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @rd_regl(%struct.uart_port*, i32) #1

declare dso_local %struct.TYPE_10__* @dmaengine_prep_dma_cyclic(i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.TYPE_10__*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dmaengine_submit(%struct.TYPE_10__*) #1

declare dso_local i32 @dma_async_issue_pending(i32) #1

declare dso_local i32 @SIRFUART_RX_DMA_INT_EN(%struct.sirfsoc_int_en*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
