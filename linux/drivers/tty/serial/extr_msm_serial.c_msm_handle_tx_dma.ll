; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_msm_serial.c_msm_handle_tx_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_msm_serial.c_msm_handle_tx_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msm_port = type { i64, i32, %struct.msm_dma, %struct.uart_port }
%struct.msm_dma = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.msm_port*, i32 }
%struct.uart_port = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.circ_buf }
%struct.circ_buf = type { i64, i32* }

@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@DMA_PREP_FENCE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@msm_complete_tx_dma = common dso_local global i32 0, align 4
@UART_IMR_TXLEV = common dso_local global i32 0, align 4
@UART_IMR = common dso_local global i32 0, align 4
@UARTDM_DMEN = common dso_local global i32 0, align 4
@UARTDM_1P4 = common dso_local global i64 0, align 8
@UARTDM_1P3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msm_port*, i32)* @msm_handle_tx_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msm_handle_tx_dma(%struct.msm_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.msm_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.circ_buf*, align 8
  %7 = alloca %struct.uart_port*, align 8
  %8 = alloca %struct.msm_dma*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.msm_port* %0, %struct.msm_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.msm_port*, %struct.msm_port** %4, align 8
  %13 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store %struct.circ_buf* %16, %struct.circ_buf** %6, align 8
  %17 = load %struct.msm_port*, %struct.msm_port** %4, align 8
  %18 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %17, i32 0, i32 3
  store %struct.uart_port* %18, %struct.uart_port** %7, align 8
  %19 = load %struct.msm_port*, %struct.msm_port** %4, align 8
  %20 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %19, i32 0, i32 2
  store %struct.msm_dma* %20, %struct.msm_dma** %8, align 8
  %21 = load %struct.circ_buf*, %struct.circ_buf** %6, align 8
  %22 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load %struct.circ_buf*, %struct.circ_buf** %6, align 8
  %25 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i32, i32* %23, i64 %26
  %28 = bitcast i32* %27 to i8*
  store i8* %28, i8** %9, align 8
  %29 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %30 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.msm_dma*, %struct.msm_dma** %8, align 8
  %35 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dma_map_single(i32 %31, i8* %32, i32 %33, i32 %36)
  %38 = load %struct.msm_dma*, %struct.msm_dma** %8, align 8
  %39 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 8
  %40 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %41 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.msm_dma*, %struct.msm_dma** %8, align 8
  %44 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @dma_mapping_error(i32 %42, i32 %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %2
  %50 = load i32, i32* %10, align 4
  store i32 %50, i32* %3, align 4
  br label %163

51:                                               ; preds = %2
  %52 = load %struct.msm_dma*, %struct.msm_dma** %8, align 8
  %53 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.msm_dma*, %struct.msm_dma** %8, align 8
  %56 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %60 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %61 = load i32, i32* @DMA_PREP_FENCE, align 4
  %62 = or i32 %60, %61
  %63 = call %struct.TYPE_5__* @dmaengine_prep_slave_single(i32 %54, i32 %57, i32 %58, i32 %59, i32 %62)
  %64 = load %struct.msm_dma*, %struct.msm_dma** %8, align 8
  %65 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %64, i32 0, i32 6
  store %struct.TYPE_5__* %63, %struct.TYPE_5__** %65, align 8
  %66 = load %struct.msm_dma*, %struct.msm_dma** %8, align 8
  %67 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %66, i32 0, i32 6
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = icmp ne %struct.TYPE_5__* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %51
  %71 = load i32, i32* @EIO, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %10, align 4
  br label %150

73:                                               ; preds = %51
  %74 = load i32, i32* @msm_complete_tx_dma, align 4
  %75 = load %struct.msm_dma*, %struct.msm_dma** %8, align 8
  %76 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %75, i32 0, i32 6
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  store i32 %74, i32* %78, align 8
  %79 = load %struct.msm_port*, %struct.msm_port** %4, align 8
  %80 = load %struct.msm_dma*, %struct.msm_dma** %8, align 8
  %81 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %80, i32 0, i32 6
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  store %struct.msm_port* %79, %struct.msm_port** %83, align 8
  %84 = load %struct.msm_dma*, %struct.msm_dma** %8, align 8
  %85 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %84, i32 0, i32 6
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = call i32 @dmaengine_submit(%struct.TYPE_5__* %86)
  %88 = load %struct.msm_dma*, %struct.msm_dma** %8, align 8
  %89 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %88, i32 0, i32 5
  store i32 %87, i32* %89, align 4
  %90 = load %struct.msm_dma*, %struct.msm_dma** %8, align 8
  %91 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %90, i32 0, i32 5
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @dma_submit_error(i32 %92)
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %73
  br label %150

97:                                               ; preds = %73
  %98 = load i32, i32* @UART_IMR_TXLEV, align 4
  %99 = xor i32 %98, -1
  %100 = load %struct.msm_port*, %struct.msm_port** %4, align 8
  %101 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = and i32 %102, %99
  store i32 %103, i32* %101, align 8
  %104 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %105 = load %struct.msm_port*, %struct.msm_port** %4, align 8
  %106 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @UART_IMR, align 4
  %109 = call i32 @msm_write(%struct.uart_port* %104, i32 %107, i32 %108)
  %110 = load i32, i32* %5, align 4
  %111 = load %struct.msm_dma*, %struct.msm_dma** %8, align 8
  %112 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  %113 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %114 = load i32, i32* @UARTDM_DMEN, align 4
  %115 = call i32 @msm_read(%struct.uart_port* %113, i32 %114)
  store i32 %115, i32* %11, align 4
  %116 = load %struct.msm_dma*, %struct.msm_dma** %8, align 8
  %117 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %11, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %11, align 4
  %121 = load %struct.msm_port*, %struct.msm_port** %4, align 8
  %122 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @UARTDM_1P4, align 8
  %125 = icmp slt i64 %123, %124
  br i1 %125, label %126, label %131

126:                                              ; preds = %97
  %127 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %128 = load i32, i32* %11, align 4
  %129 = load i32, i32* @UARTDM_DMEN, align 4
  %130 = call i32 @msm_write(%struct.uart_port* %127, i32 %128, i32 %129)
  br label %131

131:                                              ; preds = %126, %97
  %132 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %133 = load i32, i32* %5, align 4
  %134 = call i32 @msm_reset_dm_count(%struct.uart_port* %132, i32 %133)
  %135 = load %struct.msm_port*, %struct.msm_port** %4, align 8
  %136 = getelementptr inbounds %struct.msm_port, %struct.msm_port* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @UARTDM_1P3, align 8
  %139 = icmp sgt i64 %137, %138
  br i1 %139, label %140, label %145

140:                                              ; preds = %131
  %141 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %142 = load i32, i32* %11, align 4
  %143 = load i32, i32* @UARTDM_DMEN, align 4
  %144 = call i32 @msm_write(%struct.uart_port* %141, i32 %142, i32 %143)
  br label %145

145:                                              ; preds = %140, %131
  %146 = load %struct.msm_dma*, %struct.msm_dma** %8, align 8
  %147 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @dma_async_issue_pending(i32 %148)
  store i32 0, i32* %3, align 4
  br label %163

150:                                              ; preds = %96, %70
  %151 = load %struct.uart_port*, %struct.uart_port** %7, align 8
  %152 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load %struct.msm_dma*, %struct.msm_dma** %8, align 8
  %155 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* %5, align 4
  %158 = load %struct.msm_dma*, %struct.msm_dma** %8, align 8
  %159 = getelementptr inbounds %struct.msm_dma, %struct.msm_dma* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @dma_unmap_single(i32 %153, i32 %156, i32 %157, i32 %160)
  %162 = load i32, i32* %10, align 4
  store i32 %162, i32* %3, align 4
  br label %163

163:                                              ; preds = %150, %145, %49
  %164 = load i32, i32* %3, align 4
  ret i32 %164
}

declare dso_local i32 @dma_map_single(i32, i8*, i32, i32) #1

declare dso_local i32 @dma_mapping_error(i32, i32) #1

declare dso_local %struct.TYPE_5__* @dmaengine_prep_slave_single(i32, i32, i32, i32, i32) #1

declare dso_local i32 @dmaengine_submit(%struct.TYPE_5__*) #1

declare dso_local i32 @dma_submit_error(i32) #1

declare dso_local i32 @msm_write(%struct.uart_port*, i32, i32) #1

declare dso_local i32 @msm_read(%struct.uart_port*, i32) #1

declare dso_local i32 @msm_reset_dm_count(%struct.uart_port*, i32) #1

declare dso_local i32 @dma_async_issue_pending(i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
