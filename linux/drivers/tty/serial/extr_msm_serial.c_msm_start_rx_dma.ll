; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_msm_serial.c_msm_start_rx_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_msm_serial.c_msm_start_rx_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_port = type { i32, i64, %struct.uart_port, %struct.msm_dma }
%struct.uart_port = type { i32 }
%struct.msm_dma = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.msm_port*, i32 }

@UARTDM_RX_SIZE = common dso_local global i32 0, align 4
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@msm_complete_rx_dma = common dso_local global i32 0, align 4
@UART_IMR_RXLEV = common dso_local global i32 0, align 4
@UART_IMR_RXSTALE = common dso_local global i32 0, align 4
@UARTDM_1P4 = common dso_local global i64 0, align 8
@UART_IMR = common dso_local global i32 0, align 4
@UART_CR_CMD_RESET_STALE_INT = common dso_local global i32 0, align 4
@UART_CR = common dso_local global i32 0, align 4
@UART_CR_CMD_STALE_EVENT_ENABLE = common dso_local global i32 0, align 4
@UARTDM_DMEN = common dso_local global i32 0, align 4
@UARTDM_DMRX = common dso_local global i32 0, align 4
@UARTDM_1P3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msm_port*)* @msm_start_rx_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msm_start_rx_dma(%struct.msm_port* %0) #0 {
  %2 = alloca %struct.msm_port*, align 8
  %3 = alloca %struct.msm_dma*, align 8
  %4 = alloca %struct.uart_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.msm_port* %0, %struct.msm_port** %2, align 8
  %7 = load %struct.msm_port*, %struct.msm_port** %2, align 8
  %8 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %7, i32 0, i32 3
  store %struct.msm_dma* %8, %struct.msm_dma** %3, align 8
  %9 = load %struct.msm_port*, %struct.msm_port** %2, align 8
  %10 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %9, i32 0, i32 2
  store %struct.uart_port* %10, %struct.uart_port** %4, align 8
  %11 = load %struct.msm_dma*, %struct.msm_dma** %3, align 8
  %12 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %170

16:                                               ; preds = %1
  %17 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %18 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.msm_dma*, %struct.msm_dma** %3, align 8
  %21 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %20, i32 0, i32 7
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @UARTDM_RX_SIZE, align 4
  %24 = load %struct.msm_dma*, %struct.msm_dma** %3, align 8
  %25 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @dma_map_single(i32 %19, i32 %22, i32 %23, i32 %26)
  %28 = load %struct.msm_dma*, %struct.msm_dma** %3, align 8
  %29 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %31 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.msm_dma*, %struct.msm_dma** %3, align 8
  %34 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dma_mapping_error(i32 %32, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %16
  br label %170

40:                                               ; preds = %16
  %41 = load %struct.msm_dma*, %struct.msm_dma** %3, align 8
  %42 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.msm_dma*, %struct.msm_dma** %3, align 8
  %45 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @UARTDM_RX_SIZE, align 4
  %48 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %49 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %50 = call %struct.TYPE_3__* @dmaengine_prep_slave_single(i32 %43, i32 %46, i32 %47, i32 %48, i32 %49)
  %51 = load %struct.msm_dma*, %struct.msm_dma** %3, align 8
  %52 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %51, i32 0, i32 6
  store %struct.TYPE_3__* %50, %struct.TYPE_3__** %52, align 8
  %53 = load %struct.msm_dma*, %struct.msm_dma** %3, align 8
  %54 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %53, i32 0, i32 6
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = icmp ne %struct.TYPE_3__* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %40
  br label %158

58:                                               ; preds = %40
  %59 = load i32, i32* @msm_complete_rx_dma, align 4
  %60 = load %struct.msm_dma*, %struct.msm_dma** %3, align 8
  %61 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %60, i32 0, i32 6
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 1
  store i32 %59, i32* %63, align 8
  %64 = load %struct.msm_port*, %struct.msm_port** %2, align 8
  %65 = load %struct.msm_dma*, %struct.msm_dma** %3, align 8
  %66 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %65, i32 0, i32 6
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  store %struct.msm_port* %64, %struct.msm_port** %68, align 8
  %69 = load %struct.msm_dma*, %struct.msm_dma** %3, align 8
  %70 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %69, i32 0, i32 6
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = call i32 @dmaengine_submit(%struct.TYPE_3__* %71)
  %73 = load %struct.msm_dma*, %struct.msm_dma** %3, align 8
  %74 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %73, i32 0, i32 5
  store i32 %72, i32* %74, align 4
  %75 = load %struct.msm_dma*, %struct.msm_dma** %3, align 8
  %76 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @dma_submit_error(i32 %77)
  store i32 %78, i32* %6, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %58
  br label %158

82:                                               ; preds = %58
  %83 = load i32, i32* @UART_IMR_RXLEV, align 4
  %84 = load i32, i32* @UART_IMR_RXSTALE, align 4
  %85 = or i32 %83, %84
  %86 = xor i32 %85, -1
  %87 = load %struct.msm_port*, %struct.msm_port** %2, align 8
  %88 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = and i32 %89, %86
  store i32 %90, i32* %88, align 8
  %91 = load %struct.msm_port*, %struct.msm_port** %2, align 8
  %92 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @UARTDM_1P4, align 8
  %95 = icmp slt i64 %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %82
  %97 = load i32, i32* @UART_IMR_RXSTALE, align 4
  %98 = load %struct.msm_port*, %struct.msm_port** %2, align 8
  %99 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 8
  br label %102

102:                                              ; preds = %96, %82
  %103 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %104 = load %struct.msm_port*, %struct.msm_port** %2, align 8
  %105 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @UART_IMR, align 4
  %108 = call i32 @msm_write(%struct.uart_port* %103, i32 %106, i32 %107)
  %109 = load i32, i32* @UARTDM_RX_SIZE, align 4
  %110 = load %struct.msm_dma*, %struct.msm_dma** %3, align 8
  %111 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  %112 = load %struct.msm_dma*, %struct.msm_dma** %3, align 8
  %113 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @dma_async_issue_pending(i32 %114)
  %116 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %117 = load i32, i32* @UART_CR_CMD_RESET_STALE_INT, align 4
  %118 = load i32, i32* @UART_CR, align 4
  %119 = call i32 @msm_write(%struct.uart_port* %116, i32 %117, i32 %118)
  %120 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %121 = load i32, i32* @UART_CR_CMD_STALE_EVENT_ENABLE, align 4
  %122 = load i32, i32* @UART_CR, align 4
  %123 = call i32 @msm_write(%struct.uart_port* %120, i32 %121, i32 %122)
  %124 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %125 = load i32, i32* @UARTDM_DMEN, align 4
  %126 = call i32 @msm_read(%struct.uart_port* %124, i32 %125)
  store i32 %126, i32* %5, align 4
  %127 = load %struct.msm_dma*, %struct.msm_dma** %3, align 8
  %128 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %5, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %5, align 4
  %132 = load %struct.msm_port*, %struct.msm_port** %2, align 8
  %133 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @UARTDM_1P4, align 8
  %136 = icmp slt i64 %134, %135
  br i1 %136, label %137, label %142

137:                                              ; preds = %102
  %138 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %139 = load i32, i32* %5, align 4
  %140 = load i32, i32* @UARTDM_DMEN, align 4
  %141 = call i32 @msm_write(%struct.uart_port* %138, i32 %139, i32 %140)
  br label %142

142:                                              ; preds = %137, %102
  %143 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %144 = load i32, i32* @UARTDM_RX_SIZE, align 4
  %145 = load i32, i32* @UARTDM_DMRX, align 4
  %146 = call i32 @msm_write(%struct.uart_port* %143, i32 %144, i32 %145)
  %147 = load %struct.msm_port*, %struct.msm_port** %2, align 8
  %148 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @UARTDM_1P3, align 8
  %151 = icmp sgt i64 %149, %150
  br i1 %151, label %152, label %157

152:                                              ; preds = %142
  %153 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %154 = load i32, i32* %5, align 4
  %155 = load i32, i32* @UARTDM_DMEN, align 4
  %156 = call i32 @msm_write(%struct.uart_port* %153, i32 %154, i32 %155)
  br label %157

157:                                              ; preds = %152, %142
  br label %170

158:                                              ; preds = %81, %57
  %159 = load %struct.uart_port*, %struct.uart_port** %4, align 8
  %160 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.msm_dma*, %struct.msm_dma** %3, align 8
  %163 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %162, i32 0, i32 3
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @UARTDM_RX_SIZE, align 4
  %166 = load %struct.msm_dma*, %struct.msm_dma** %3, align 8
  %167 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @dma_unmap_single(i32 %161, i32 %164, i32 %165, i32 %168)
  br label %170

170:                                              ; preds = %158, %157, %39, %15
  ret void
}

declare dso_local i32 @dma_map_single(i32, i32, i32, i32) #1

declare dso_local i32 @dma_mapping_error(i32, i32) #1

declare dso_local %struct.TYPE_3__* @dmaengine_prep_slave_single(i32, i32, i32, i32, i32) #1

declare dso_local i32 @dmaengine_submit(%struct.TYPE_3__*) #1

declare dso_local i32 @dma_submit_error(i32) #1

declare dso_local i32 @msm_write(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @dma_async_issue_pending(i32) #1

declare dso_local i32 @msm_read(%struct.uart_port*, i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
