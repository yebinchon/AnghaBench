; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_fsl_lpuart.c_lpuart_dma_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_fsl_lpuart.c_lpuart_dma_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpuart_port = type { i32, i32, i32, %struct.TYPE_7__*, i32, i32, %struct.TYPE_6__, %struct.scatterlist* }
%struct.TYPE_7__ = type { %struct.lpuart_port*, i32 }
%struct.TYPE_6__ = type { %struct.device*, %struct.TYPE_5__* }
%struct.device = type { i32 }
%struct.TYPE_5__ = type { %struct.circ_buf }
%struct.circ_buf = type { i64, i64, i64 }
%struct.scatterlist = type { i32 }

@UART_XMIT_SIZE = common dso_local global i64 0, align 8
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"DMA mapping error for TX.\0A\00", align 1
@DMA_MEM_TO_DEV = common dso_local global i32 0, align 4
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Cannot prepare TX slave DMA!\0A\00", align 1
@lpuart_dma_tx_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpuart_port*)* @lpuart_dma_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpuart_dma_tx(%struct.lpuart_port* %0) #0 {
  %2 = alloca %struct.lpuart_port*, align 8
  %3 = alloca %struct.circ_buf*, align 8
  %4 = alloca %struct.scatterlist*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.lpuart_port* %0, %struct.lpuart_port** %2, align 8
  %7 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %8 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %7, i32 0, i32 6
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store %struct.circ_buf* %11, %struct.circ_buf** %3, align 8
  %12 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %13 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %12, i32 0, i32 7
  %14 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  store %struct.scatterlist* %14, %struct.scatterlist** %4, align 8
  %15 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %16 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %15, i32 0, i32 6
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.device*, %struct.device** %17, align 8
  store %struct.device* %18, %struct.device** %5, align 8
  %19 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %20 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %147

24:                                               ; preds = %1
  %25 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %26 = call i32 @uart_circ_chars_pending(%struct.circ_buf* %25)
  %27 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %28 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %27, i32 0, i32 5
  store i32 %26, i32* %28, align 4
  %29 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %30 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %33 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %31, %34
  br i1 %35, label %41, label %36

36:                                               ; preds = %24
  %37 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %38 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %36, %24
  %42 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %43 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %42, i32 0, i32 1
  store i32 1, i32* %43, align 4
  %44 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %45 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %46 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %49 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %47, %50
  %52 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %53 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @sg_init_one(%struct.scatterlist* %44, i64 %51, i32 %54)
  br label %84

56:                                               ; preds = %36
  %57 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %58 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %57, i32 0, i32 1
  store i32 2, i32* %58, align 4
  %59 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %60 = call i32 @sg_init_table(%struct.scatterlist* %59, i32 2)
  %61 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %62 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %63 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %66 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %64, %67
  %69 = load i64, i64* @UART_XMIT_SIZE, align 8
  %70 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %71 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = sub nsw i64 %69, %72
  %74 = call i32 @sg_set_buf(%struct.scatterlist* %61, i64 %68, i64 %73)
  %75 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %76 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %75, i64 1
  %77 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %78 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.circ_buf*, %struct.circ_buf** %3, align 8
  %81 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @sg_set_buf(%struct.scatterlist* %76, i64 %79, i64 %82)
  br label %84

84:                                               ; preds = %56, %41
  %85 = load %struct.device*, %struct.device** %5, align 8
  %86 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %87 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %88 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @DMA_TO_DEVICE, align 4
  %91 = call i32 @dma_map_sg(%struct.device* %85, %struct.scatterlist* %86, i32 %89, i32 %90)
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %84
  %95 = load %struct.device*, %struct.device** %5, align 8
  %96 = call i32 @dev_err(%struct.device* %95, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %147

97:                                               ; preds = %84
  %98 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %99 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %102 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %103 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @DMA_MEM_TO_DEV, align 4
  %106 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %107 = call %struct.TYPE_7__* @dmaengine_prep_slave_sg(i32 %100, %struct.scatterlist* %101, i32 %104, i32 %105, i32 %106)
  %108 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %109 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %108, i32 0, i32 3
  store %struct.TYPE_7__* %107, %struct.TYPE_7__** %109, align 8
  %110 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %111 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %110, i32 0, i32 3
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = icmp ne %struct.TYPE_7__* %112, null
  br i1 %113, label %124, label %114

114:                                              ; preds = %97
  %115 = load %struct.device*, %struct.device** %5, align 8
  %116 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %117 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %118 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @DMA_TO_DEVICE, align 4
  %121 = call i32 @dma_unmap_sg(%struct.device* %115, %struct.scatterlist* %116, i32 %119, i32 %120)
  %122 = load %struct.device*, %struct.device** %5, align 8
  %123 = call i32 @dev_err(%struct.device* %122, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %147

124:                                              ; preds = %97
  %125 = load i32, i32* @lpuart_dma_tx_complete, align 4
  %126 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %127 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %126, i32 0, i32 3
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 1
  store i32 %125, i32* %129, align 8
  %130 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %131 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %132 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %131, i32 0, i32 3
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  store %struct.lpuart_port* %130, %struct.lpuart_port** %134, align 8
  %135 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %136 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %135, i32 0, i32 0
  store i32 1, i32* %136, align 8
  %137 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %138 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %137, i32 0, i32 3
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %138, align 8
  %140 = call i32 @dmaengine_submit(%struct.TYPE_7__* %139)
  %141 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %142 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %141, i32 0, i32 4
  store i32 %140, i32* %142, align 8
  %143 = load %struct.lpuart_port*, %struct.lpuart_port** %2, align 8
  %144 = getelementptr inbounds %struct.lpuart_port, %struct.lpuart_port* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @dma_async_issue_pending(i32 %145)
  br label %147

147:                                              ; preds = %124, %114, %94, %23
  ret void
}

declare dso_local i32 @uart_circ_chars_pending(%struct.circ_buf*) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i64, i32) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local i32 @sg_set_buf(%struct.scatterlist*, i64, i64) #1

declare dso_local i32 @dma_map_sg(%struct.device*, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.TYPE_7__* @dmaengine_prep_slave_sg(i32, %struct.scatterlist*, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_sg(%struct.device*, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @dmaengine_submit(%struct.TYPE_7__*) #1

declare dso_local i32 @dma_async_issue_pending(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
