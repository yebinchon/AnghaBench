; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_atmel_serial.c_atmel_tx_pdc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_atmel_serial.c_atmel_tx_pdc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.circ_buf }
%struct.circ_buf = type { i32, i32 }
%struct.atmel_uart_port = type { i32, %struct.atmel_dma_buffer }
%struct.atmel_dma_buffer = type { i32, i32, i32 }

@ATMEL_PDC_TCR = common dso_local global i32 0, align 4
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@ATMEL_PDC_PTCR = common dso_local global i32 0, align 4
@ATMEL_PDC_TXTDIS = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ATMEL_PDC_TPR = common dso_local global i32 0, align 4
@ATMEL_PDC_TXTEN = common dso_local global i32 0, align 4
@ATMEL_US_IER = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @atmel_tx_pdc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_tx_pdc(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.atmel_uart_port*, align 8
  %4 = alloca %struct.circ_buf*, align 8
  %5 = alloca %struct.atmel_dma_buffer*, align 8
  %6 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %7 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %8 = call %struct.atmel_uart_port* @to_atmel_uart_port(%struct.uart_port* %7)
  store %struct.atmel_uart_port* %8, %struct.atmel_uart_port** %3, align 8
  %9 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %10 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %9, i32 0, i32 2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  store %struct.circ_buf* %12, %struct.circ_buf** %4, align 8
  %13 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %14 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %13, i32 0, i32 1
  store %struct.atmel_dma_buffer* %14, %struct.atmel_dma_buffer** %5, align 8
  %15 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %16 = load i32, i32* @ATMEL_PDC_TCR, align 4
  %17 = call i64 @atmel_uart_readl(%struct.uart_port* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %118

20:                                               ; preds = %1
  %21 = load %struct.atmel_dma_buffer*, %struct.atmel_dma_buffer** %5, align 8
  %22 = getelementptr inbounds %struct.atmel_dma_buffer, %struct.atmel_dma_buffer* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %25 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load i32, i32* @UART_XMIT_SIZE, align 4
  %29 = sub nsw i32 %28, 1
  %30 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %31 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 4
  %34 = load %struct.atmel_dma_buffer*, %struct.atmel_dma_buffer** %5, align 8
  %35 = getelementptr inbounds %struct.atmel_dma_buffer, %struct.atmel_dma_buffer* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %38 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, %36
  store i32 %41, i32* %39, align 4
  %42 = load %struct.atmel_dma_buffer*, %struct.atmel_dma_buffer** %5, align 8
  %43 = getelementptr inbounds %struct.atmel_dma_buffer, %struct.atmel_dma_buffer* %42, i32 0, i32 0
  store i32 0, i32* %43, align 4
  %44 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %45 = load i32, i32* @ATMEL_PDC_PTCR, align 4
  %46 = load i32, i32* @ATMEL_PDC_TXTDIS, align 4
  %47 = call i32 @atmel_uart_writel(%struct.uart_port* %44, i32 %45, i32 %46)
  %48 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %49 = call i32 @uart_circ_empty(%struct.circ_buf* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %102, label %51

51:                                               ; preds = %20
  %52 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %53 = call i32 @uart_tx_stopped(%struct.uart_port* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %102, label %55

55:                                               ; preds = %51
  %56 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %57 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.atmel_dma_buffer*, %struct.atmel_dma_buffer** %5, align 8
  %60 = getelementptr inbounds %struct.atmel_dma_buffer, %struct.atmel_dma_buffer* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.atmel_dma_buffer*, %struct.atmel_dma_buffer** %5, align 8
  %63 = getelementptr inbounds %struct.atmel_dma_buffer, %struct.atmel_dma_buffer* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @DMA_TO_DEVICE, align 4
  %66 = call i32 @dma_sync_single_for_device(i32 %58, i32 %61, i32 %64, i32 %65)
  %67 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %68 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %71 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @UART_XMIT_SIZE, align 4
  %74 = call i32 @CIRC_CNT_TO_END(i32 %69, i32 %72, i32 %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.atmel_dma_buffer*, %struct.atmel_dma_buffer** %5, align 8
  %77 = getelementptr inbounds %struct.atmel_dma_buffer, %struct.atmel_dma_buffer* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  %78 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %79 = load i32, i32* @ATMEL_PDC_TPR, align 4
  %80 = load %struct.atmel_dma_buffer*, %struct.atmel_dma_buffer** %5, align 8
  %81 = getelementptr inbounds %struct.atmel_dma_buffer, %struct.atmel_dma_buffer* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %84 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %82, %85
  %87 = call i32 @atmel_uart_writel(%struct.uart_port* %78, i32 %79, i32 %86)
  %88 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %89 = load i32, i32* @ATMEL_PDC_TCR, align 4
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @atmel_uart_writel(%struct.uart_port* %88, i32 %89, i32 %90)
  %92 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %93 = load i32, i32* @ATMEL_PDC_PTCR, align 4
  %94 = load i32, i32* @ATMEL_PDC_TXTEN, align 4
  %95 = call i32 @atmel_uart_writel(%struct.uart_port* %92, i32 %93, i32 %94)
  %96 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %97 = load i32, i32* @ATMEL_US_IER, align 4
  %98 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %99 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @atmel_uart_writel(%struct.uart_port* %96, i32 %97, i32 %100)
  br label %110

102:                                              ; preds = %51, %20
  %103 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %104 = call i64 @atmel_uart_is_half_duplex(%struct.uart_port* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %102
  %107 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %108 = call i32 @atmel_start_rx(%struct.uart_port* %107)
  br label %109

109:                                              ; preds = %106, %102
  br label %110

110:                                              ; preds = %109, %55
  %111 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %112 = call i64 @uart_circ_chars_pending(%struct.circ_buf* %111)
  %113 = load i64, i64* @WAKEUP_CHARS, align 8
  %114 = icmp slt i64 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %110
  %116 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %117 = call i32 @uart_write_wakeup(%struct.uart_port* %116)
  br label %118

118:                                              ; preds = %19, %115, %110
  ret void
}

declare dso_local %struct.atmel_uart_port* @to_atmel_uart_port(%struct.uart_port*) #1

declare dso_local i64 @atmel_uart_readl(%struct.uart_port*, i32) #1

declare dso_local i32 @atmel_uart_writel(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i32 @uart_tx_stopped(%struct.uart_port*) #1

declare dso_local i32 @dma_sync_single_for_device(i32, i32, i32, i32) #1

declare dso_local i32 @CIRC_CNT_TO_END(i32, i32, i32) #1

declare dso_local i64 @atmel_uart_is_half_duplex(%struct.uart_port*) #1

declare dso_local i32 @atmel_start_rx(%struct.uart_port*) #1

declare dso_local i64 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @uart_write_wakeup(%struct.uart_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
