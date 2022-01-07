; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_atmel_serial.c_atmel_rx_from_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_atmel_serial.c_atmel_rx_from_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { %struct.tty_port }
%struct.tty_port = type { i32 }
%struct.atmel_uart_port = type { i32, i32, i32, %struct.dma_chan*, %struct.circ_buf }
%struct.dma_chan = type { i32 }
%struct.circ_buf = type { i64, i64, i64 }
%struct.dma_tx_state = type { i64 }

@ATMEL_US_CR = common dso_local global i32 0, align 4
@ATMEL_US_STTTO = common dso_local global i32 0, align 4
@DMA_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Get residue error, restart tasklet\0A\00", align 1
@ATMEL_US_IER = common dso_local global i32 0, align 4
@ATMEL_US_TIMEOUT = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @atmel_rx_from_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_rx_from_dma(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.atmel_uart_port*, align 8
  %4 = alloca %struct.tty_port*, align 8
  %5 = alloca %struct.circ_buf*, align 8
  %6 = alloca %struct.dma_chan*, align 8
  %7 = alloca %struct.dma_tx_state, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %10 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %11 = call %struct.atmel_uart_port* @to_atmel_uart_port(%struct.uart_port* %10)
  store %struct.atmel_uart_port* %11, %struct.atmel_uart_port** %3, align 8
  %12 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %13 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %12, i32 0, i32 3
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store %struct.tty_port* %15, %struct.tty_port** %4, align 8
  %16 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %17 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %16, i32 0, i32 4
  store %struct.circ_buf* %17, %struct.circ_buf** %5, align 8
  %18 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %19 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %18, i32 0, i32 3
  %20 = load %struct.dma_chan*, %struct.dma_chan** %19, align 8
  store %struct.dma_chan* %20, %struct.dma_chan** %6, align 8
  %21 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %22 = load i32, i32* @ATMEL_US_CR, align 4
  %23 = load i32, i32* @ATMEL_US_STTTO, align 4
  %24 = call i32 @atmel_uart_writel(%struct.uart_port* %21, i32 %22, i32 %23)
  %25 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %26 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %27 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @dmaengine_tx_status(%struct.dma_chan* %25, i32 %28, %struct.dma_tx_state* %7)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @DMA_ERROR, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %1
  %34 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %35 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dev_dbg(i32 %36, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %39 = load i32, i32* @ATMEL_US_IER, align 4
  %40 = load i32, i32* @ATMEL_US_TIMEOUT, align 4
  %41 = call i32 @atmel_uart_writel(%struct.uart_port* %38, i32 %39, i32 %40)
  %42 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %43 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %44 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %43, i32 0, i32 1
  %45 = call i32 @atmel_tasklet_schedule(%struct.atmel_uart_port* %42, i32* %44)
  br label %172

46:                                               ; preds = %1
  %47 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %48 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %51 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %50, i32 0, i32 0
  %52 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %53 = call i32 @dma_sync_sg_for_cpu(i32 %49, i32* %51, i32 1, i32 %52)
  %54 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %55 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %54, i32 0, i32 0
  %56 = call i64 @sg_dma_len(i32* %55)
  %57 = getelementptr inbounds %struct.dma_tx_state, %struct.dma_tx_state* %7, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = sub nsw i64 %56, %58
  %60 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %61 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %63 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %66 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %65, i32 0, i32 0
  %67 = call i64 @sg_dma_len(i32* %66)
  %68 = icmp sgt i64 %64, %67
  %69 = zext i1 %68 to i32
  %70 = call i32 @BUG_ON(i32 %69)
  %71 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %72 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %75 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp slt i64 %73, %76
  br i1 %77, label %78, label %104

78:                                               ; preds = %46
  %79 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %80 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %79, i32 0, i32 0
  %81 = call i64 @sg_dma_len(i32* %80)
  %82 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %83 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = sub nsw i64 %81, %84
  store i64 %85, i64* %9, align 8
  %86 = load %struct.tty_port*, %struct.tty_port** %4, align 8
  %87 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %88 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %91 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %89, %92
  %94 = load i64, i64* %9, align 8
  %95 = call i32 @tty_insert_flip_string(%struct.tty_port* %86, i64 %93, i64 %94)
  %96 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %97 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %96, i32 0, i32 1
  store i64 0, i64* %97, align 8
  %98 = load i64, i64* %9, align 8
  %99 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %100 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = add i64 %102, %98
  store i64 %103, i64* %101, align 8
  br label %104

104:                                              ; preds = %78, %46
  %105 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %106 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %109 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp slt i64 %107, %110
  br i1 %111, label %112, label %152

112:                                              ; preds = %104
  %113 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %114 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %117 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = sub nsw i64 %115, %118
  store i64 %119, i64* %9, align 8
  %120 = load %struct.tty_port*, %struct.tty_port** %4, align 8
  %121 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %122 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %125 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %123, %126
  %128 = load i64, i64* %9, align 8
  %129 = call i32 @tty_insert_flip_string(%struct.tty_port* %120, i64 %127, i64 %128)
  %130 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %131 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %134 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %133, i32 0, i32 0
  %135 = call i64 @sg_dma_len(i32* %134)
  %136 = icmp sge i64 %132, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %112
  %138 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %139 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %138, i32 0, i32 0
  store i64 0, i64* %139, align 8
  br label %140

140:                                              ; preds = %137, %112
  %141 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %142 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.circ_buf*, %struct.circ_buf** %5, align 8
  %145 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %144, i32 0, i32 1
  store i64 %143, i64* %145, align 8
  %146 = load i64, i64* %9, align 8
  %147 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %148 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = add i64 %150, %146
  store i64 %151, i64* %149, align 8
  br label %152

152:                                              ; preds = %140, %104
  %153 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %154 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.atmel_uart_port*, %struct.atmel_uart_port** %3, align 8
  %157 = getelementptr inbounds %struct.atmel_uart_port, %struct.atmel_uart_port* %156, i32 0, i32 0
  %158 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %159 = call i32 @dma_sync_sg_for_device(i32 %155, i32* %157, i32 1, i32 %158)
  %160 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %161 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %160, i32 0, i32 0
  %162 = call i32 @spin_unlock(i32* %161)
  %163 = load %struct.tty_port*, %struct.tty_port** %4, align 8
  %164 = call i32 @tty_flip_buffer_push(%struct.tty_port* %163)
  %165 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %166 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %165, i32 0, i32 0
  %167 = call i32 @spin_lock(i32* %166)
  %168 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %169 = load i32, i32* @ATMEL_US_IER, align 4
  %170 = load i32, i32* @ATMEL_US_TIMEOUT, align 4
  %171 = call i32 @atmel_uart_writel(%struct.uart_port* %168, i32 %169, i32 %170)
  br label %172

172:                                              ; preds = %152, %33
  ret void
}

declare dso_local %struct.atmel_uart_port* @to_atmel_uart_port(%struct.uart_port*) #1

declare dso_local i32 @atmel_uart_writel(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @dmaengine_tx_status(%struct.dma_chan*, i32, %struct.dma_tx_state*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @atmel_tasklet_schedule(%struct.atmel_uart_port*, i32*) #1

declare dso_local i32 @dma_sync_sg_for_cpu(i32, i32*, i32, i32) #1

declare dso_local i64 @sg_dma_len(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @tty_insert_flip_string(%struct.tty_port*, i64, i64) #1

declare dso_local i32 @dma_sync_sg_for_device(i32, i32*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_port*) #1

declare dso_local i32 @spin_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
