; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_imx.c_imx_uart_dma_rx_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_imx.c_imx_uart_dma_rx_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_port = type { i32, %struct.TYPE_6__, i64, i32, %struct.circ_buf, %struct.scatterlist, %struct.dma_chan* }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.tty_port }
%struct.tty_port = type { i32 }
%struct.circ_buf = type { i32, i32 }
%struct.scatterlist = type { i32 }
%struct.dma_chan = type { i32 }
%struct.dma_tx_state = type { i32 }

@DMA_ERROR = common dso_local global i32 0, align 4
@URXD_DUMMY_READ = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"We get %d bytes.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @imx_uart_dma_rx_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx_uart_dma_rx_callback(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.imx_port*, align 8
  %4 = alloca %struct.dma_chan*, align 8
  %5 = alloca %struct.scatterlist*, align 8
  %6 = alloca %struct.tty_port*, align 8
  %7 = alloca %struct.dma_tx_state, align 4
  %8 = alloca %struct.circ_buf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %13 = load i8*, i8** %2, align 8
  %14 = bitcast i8* %13 to %struct.imx_port*
  store %struct.imx_port* %14, %struct.imx_port** %3, align 8
  %15 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %16 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %15, i32 0, i32 6
  %17 = load %struct.dma_chan*, %struct.dma_chan** %16, align 8
  store %struct.dma_chan* %17, %struct.dma_chan** %4, align 8
  %18 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %19 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %18, i32 0, i32 5
  store %struct.scatterlist* %19, %struct.scatterlist** %5, align 8
  %20 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %21 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 3
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store %struct.tty_port* %24, %struct.tty_port** %6, align 8
  %25 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %26 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %25, i32 0, i32 4
  store %struct.circ_buf* %26, %struct.circ_buf** %8, align 8
  store i32 0, i32* %10, align 4
  %27 = load %struct.dma_chan*, %struct.dma_chan** %4, align 8
  %28 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %29 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @dmaengine_tx_status(%struct.dma_chan* %27, i32 %30, %struct.dma_tx_state* %7)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @DMA_ERROR, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %1
  %36 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %37 = call i32 @imx_uart_clear_rx_errors(%struct.imx_port* %36)
  br label %166

38:                                               ; preds = %1
  %39 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %40 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @URXD_DUMMY_READ, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %154, label %46

46:                                               ; preds = %38
  %47 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %48 = call i32 @sg_dma_len(%struct.scatterlist* %47)
  %49 = getelementptr inbounds %struct.dma_tx_state, %struct.dma_tx_state* %7, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = sub i32 %48, %50
  %52 = load %struct.circ_buf*, %struct.circ_buf** %8, align 8
  %53 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %55 = call i32 @sg_dma_len(%struct.scatterlist* %54)
  %56 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %57 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = udiv i32 %55, %58
  store i32 %59, i32* %12, align 4
  %60 = load %struct.circ_buf*, %struct.circ_buf** %8, align 8
  %61 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 %62, 1
  %64 = load i32, i32* %12, align 4
  %65 = udiv i32 %63, %64
  %66 = load i32, i32* %12, align 4
  %67 = mul i32 %65, %66
  %68 = load %struct.circ_buf*, %struct.circ_buf** %8, align 8
  %69 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.circ_buf*, %struct.circ_buf** %8, align 8
  %71 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %74 = call i32 @sg_dma_len(%struct.scatterlist* %73)
  %75 = icmp ule i32 %72, %74
  br i1 %75, label %76, label %135

76:                                               ; preds = %46
  %77 = load %struct.circ_buf*, %struct.circ_buf** %8, align 8
  %78 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.circ_buf*, %struct.circ_buf** %8, align 8
  %81 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp sgt i32 %79, %82
  br i1 %83, label %84, label %135

84:                                               ; preds = %76
  %85 = load %struct.circ_buf*, %struct.circ_buf** %8, align 8
  %86 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.circ_buf*, %struct.circ_buf** %8, align 8
  %89 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = sub nsw i32 %87, %90
  store i32 %91, i32* %11, align 4
  %92 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %93 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %97 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %98 = call i32 @dma_sync_sg_for_cpu(i32 %95, %struct.scatterlist* %96, i32 1, i32 %97)
  %99 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %100 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %101 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.circ_buf*, %struct.circ_buf** %8, align 8
  %104 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %102, %106
  %108 = load i32, i32* %11, align 4
  %109 = call i32 @tty_insert_flip_string(%struct.tty_port* %99, i64 %107, i32 %108)
  store i32 %109, i32* %10, align 4
  %110 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %111 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %115 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %116 = call i32 @dma_sync_sg_for_device(i32 %113, %struct.scatterlist* %114, i32 1, i32 %115)
  %117 = load i32, i32* %10, align 4
  %118 = load i32, i32* %11, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %127

120:                                              ; preds = %84
  %121 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %122 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %124, align 4
  br label %127

127:                                              ; preds = %120, %84
  %128 = load i32, i32* %10, align 4
  %129 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %130 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 2
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = add i32 %133, %128
  store i32 %134, i32* %132, align 8
  br label %153

135:                                              ; preds = %76, %46
  %136 = load %struct.circ_buf*, %struct.circ_buf** %8, align 8
  %137 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %140 = call i32 @sg_dma_len(%struct.scatterlist* %139)
  %141 = icmp ugt i32 %138, %140
  %142 = zext i1 %141 to i32
  %143 = call i32 @WARN_ON(i32 %142)
  %144 = load %struct.circ_buf*, %struct.circ_buf** %8, align 8
  %145 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.circ_buf*, %struct.circ_buf** %8, align 8
  %148 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = icmp sle i32 %146, %149
  %151 = zext i1 %150 to i32
  %152 = call i32 @WARN_ON(i32 %151)
  br label %153

153:                                              ; preds = %135, %127
  br label %154

154:                                              ; preds = %153, %38
  %155 = load i32, i32* %10, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %166

157:                                              ; preds = %154
  %158 = load %struct.tty_port*, %struct.tty_port** %6, align 8
  %159 = call i32 @tty_flip_buffer_push(%struct.tty_port* %158)
  %160 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %161 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %10, align 4
  %165 = call i32 @dev_dbg(i32 %163, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %164)
  br label %166

166:                                              ; preds = %35, %157, %154
  ret void
}

declare dso_local i32 @dmaengine_tx_status(%struct.dma_chan*, i32, %struct.dma_tx_state*) #1

declare dso_local i32 @imx_uart_clear_rx_errors(%struct.imx_port*) #1

declare dso_local i32 @sg_dma_len(%struct.scatterlist*) #1

declare dso_local i32 @dma_sync_sg_for_cpu(i32, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @tty_insert_flip_string(%struct.tty_port*, i64, i32) #1

declare dso_local i32 @dma_sync_sg_for_device(i32, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @tty_flip_buffer_push(%struct.tty_port*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
