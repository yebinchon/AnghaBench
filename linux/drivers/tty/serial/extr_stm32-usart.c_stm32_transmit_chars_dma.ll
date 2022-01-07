; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_stm32-usart.c_stm32_transmit_chars_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_stm32-usart.c_stm32_transmit_chars_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.circ_buf }
%struct.circ_buf = type { i64, i64, i32* }
%struct.stm32_port = type { i32, i32, i32, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.stm32_usart_offsets }
%struct.stm32_usart_offsets = type { i32 }
%struct.dma_async_tx_descriptor = type { %struct.uart_port*, i32 }

@TX_BUF_L = common dso_local global i32 0, align 4
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@stm32_tx_dma_complete = common dso_local global i32 0, align 4
@USART_CR3_DMAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @stm32_transmit_chars_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stm32_transmit_chars_dma(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.stm32_port*, align 8
  %4 = alloca %struct.stm32_usart_offsets*, align 8
  %5 = alloca %struct.circ_buf*, align 8
  %6 = alloca %struct.dma_async_tx_descriptor*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %12 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %13 = call %struct.stm32_port* @to_stm32_port(%struct.uart_port* %12)
  store %struct.stm32_port* %13, %struct.stm32_port** %3, align 8
  %14 = load %struct.stm32_port*, %struct.stm32_port** %3, align 8
  %15 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %14, i32 0, i32 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store %struct.stm32_usart_offsets* %17, %struct.stm32_usart_offsets** %4, align 8
  %18 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %19 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %18, i32 0, i32 1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store %struct.circ_buf* %21, %struct.circ_buf** %5, align 8
  store %struct.dma_async_tx_descriptor* null, %struct.dma_async_tx_descriptor** %6, align 8
  %22 = load %struct.stm32_port*, %struct.stm32_port** %3, align 8
  %23 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  br label %169

27:                                               ; preds = %1
  %28 = load %struct.stm32_port*, %struct.stm32_port** %3, align 8
  %29 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %31 = call i32 @uart_circ_chars_pending(%struct.circ_buf* %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @TX_BUF_L, align 4
  %34 = icmp ugt i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = load i32, i32* @TX_BUF_L, align 4
  store i32 %36, i32* %8, align 4
  br label %37

37:                                               ; preds = %35, %27
  %38 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %39 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %42 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ult i64 %40, %43
  br i1 %44, label %45, label %60

45:                                               ; preds = %37
  %46 = load %struct.stm32_port*, %struct.stm32_port** %3, align 8
  %47 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %46, i32 0, i32 3
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %51 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %54 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  %57 = load i32, i32* %8, align 4
  %58 = zext i32 %57 to i64
  %59 = call i32 @memcpy(i32* %49, i32* %56, i64 %58)
  br label %107

60:                                               ; preds = %37
  %61 = load i32, i32* @UART_XMIT_SIZE, align 4
  %62 = sext i32 %61 to i64
  %63 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %64 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = sub i64 %62, %65
  store i64 %66, i64* %10, align 8
  %67 = load i64, i64* %10, align 8
  %68 = load i32, i32* %8, align 4
  %69 = zext i32 %68 to i64
  %70 = icmp ugt i64 %67, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %60
  %72 = load i32, i32* %8, align 4
  %73 = zext i32 %72 to i64
  store i64 %73, i64* %10, align 8
  br label %74

74:                                               ; preds = %71, %60
  %75 = load i32, i32* %8, align 4
  %76 = zext i32 %75 to i64
  %77 = load i64, i64* %10, align 8
  %78 = sub i64 %76, %77
  store i64 %78, i64* %11, align 8
  %79 = load %struct.stm32_port*, %struct.stm32_port** %3, align 8
  %80 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %79, i32 0, i32 3
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  %83 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %84 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %87 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds i32, i32* %85, i64 %88
  %90 = load i64, i64* %10, align 8
  %91 = call i32 @memcpy(i32* %82, i32* %89, i64 %90)
  %92 = load i64, i64* %11, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %74
  %95 = load %struct.stm32_port*, %struct.stm32_port** %3, align 8
  %96 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %95, i32 0, i32 3
  %97 = load i32*, i32** %96, align 8
  %98 = load i64, i64* %10, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %101 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  %104 = load i64, i64* %11, align 8
  %105 = call i32 @memcpy(i32* %99, i32* %103, i64 %104)
  br label %106

106:                                              ; preds = %94, %74
  br label %107

107:                                              ; preds = %106, %45
  %108 = load %struct.stm32_port*, %struct.stm32_port** %3, align 8
  %109 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.stm32_port*, %struct.stm32_port** %3, align 8
  %112 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %116 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %117 = call %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_single(i32 %110, i32 %113, i32 %114, i32 %115, i32 %116)
  store %struct.dma_async_tx_descriptor* %117, %struct.dma_async_tx_descriptor** %6, align 8
  %118 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %119 = icmp ne %struct.dma_async_tx_descriptor* %118, null
  br i1 %119, label %132, label %120

120:                                              ; preds = %107
  %121 = load i32, i32* %8, align 4
  store i32 %121, i32* %9, align 4
  br label %122

122:                                              ; preds = %128, %120
  %123 = load i32, i32* %9, align 4
  %124 = icmp ugt i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %122
  %126 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %127 = call i32 @stm32_transmit_chars_pio(%struct.uart_port* %126)
  br label %128

128:                                              ; preds = %125
  %129 = load i32, i32* %9, align 4
  %130 = add i32 %129, -1
  store i32 %130, i32* %9, align 4
  br label %122

131:                                              ; preds = %122
  br label %169

132:                                              ; preds = %107
  %133 = load i32, i32* @stm32_tx_dma_complete, align 4
  %134 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %135 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 8
  %136 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %137 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %138 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %137, i32 0, i32 0
  store %struct.uart_port* %136, %struct.uart_port** %138, align 8
  %139 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %140 = call i32 @dmaengine_submit(%struct.dma_async_tx_descriptor* %139)
  store i32 %140, i32* %7, align 4
  %141 = load %struct.stm32_port*, %struct.stm32_port** %3, align 8
  %142 = getelementptr inbounds %struct.stm32_port, %struct.stm32_port* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @dma_async_issue_pending(i32 %143)
  %145 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %146 = load %struct.stm32_usart_offsets*, %struct.stm32_usart_offsets** %4, align 8
  %147 = getelementptr inbounds %struct.stm32_usart_offsets, %struct.stm32_usart_offsets* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @USART_CR3_DMAT, align 4
  %150 = call i32 @stm32_set_bits(%struct.uart_port* %145, i32 %148, i32 %149)
  %151 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %152 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i32, i32* %8, align 4
  %155 = zext i32 %154 to i64
  %156 = add i64 %153, %155
  %157 = load i32, i32* @UART_XMIT_SIZE, align 4
  %158 = sub nsw i32 %157, 1
  %159 = sext i32 %158 to i64
  %160 = and i64 %156, %159
  %161 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %162 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %161, i32 0, i32 0
  store i64 %160, i64* %162, align 8
  %163 = load i32, i32* %8, align 4
  %164 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %165 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = add i32 %167, %163
  store i32 %168, i32* %166, align 8
  br label %169

169:                                              ; preds = %132, %131, %26
  ret void
}

declare dso_local %struct.stm32_port* @to_stm32_port(%struct.uart_port*) #1

declare dso_local i32 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local %struct.dma_async_tx_descriptor* @dmaengine_prep_slave_single(i32, i32, i32, i32, i32) #1

declare dso_local i32 @stm32_transmit_chars_pio(%struct.uart_port*) #1

declare dso_local i32 @dmaengine_submit(%struct.dma_async_tx_descriptor*) #1

declare dso_local i32 @dma_async_issue_pending(i32) #1

declare dso_local i32 @stm32_set_bits(%struct.uart_port*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
