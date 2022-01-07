; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/extr_ntb_transport.c_ntb_async_tx_submit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/extr_ntb_transport.c_ntb_async_tx_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_transport_qp = type { i32, i64, %struct.dma_chan* }
%struct.dma_chan = type { %struct.dma_device* }
%struct.dma_device = type { %struct.dma_async_tx_descriptor* (%struct.dma_chan*, i64, i32, i64, i32)*, i32 }
%struct.dma_async_tx_descriptor = type { %struct.ntb_queue_entry*, i32 }
%struct.ntb_queue_entry = type { i64, i32, i8* }
%struct.dmaengine_unmap_data = type { i64, i32, i32* }

@PAGE_MASK = common dso_local global i64 0, align 8
@GFP_NOWAIT = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@ntb_tx_copy_callback = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ntb_transport_qp*, %struct.ntb_queue_entry*)* @ntb_async_tx_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntb_async_tx_submit(%struct.ntb_transport_qp* %0, %struct.ntb_queue_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ntb_transport_qp*, align 8
  %5 = alloca %struct.ntb_queue_entry*, align 8
  %6 = alloca %struct.dma_async_tx_descriptor*, align 8
  %7 = alloca %struct.dma_chan*, align 8
  %8 = alloca %struct.dma_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.dmaengine_unmap_data*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.ntb_transport_qp* %0, %struct.ntb_transport_qp** %4, align 8
  store %struct.ntb_queue_entry* %1, %struct.ntb_queue_entry** %5, align 8
  %16 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %4, align 8
  %17 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %16, i32 0, i32 2
  %18 = load %struct.dma_chan*, %struct.dma_chan** %17, align 8
  store %struct.dma_chan* %18, %struct.dma_chan** %7, align 8
  %19 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %5, align 8
  %20 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %9, align 8
  %22 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %5, align 8
  %23 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %22, i32 0, i32 2
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %10, align 8
  %25 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %26 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %25, i32 0, i32 0
  %27 = load %struct.dma_device*, %struct.dma_device** %26, align 8
  store %struct.dma_device* %27, %struct.dma_device** %8, align 8
  %28 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %4, align 8
  %29 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %4, align 8
  %32 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %5, align 8
  %35 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = mul nsw i32 %33, %36
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %30, %38
  store i64 %39, i64* %14, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = ptrtoint i8* %40 to i64
  %42 = load i64, i64* @PAGE_MASK, align 8
  %43 = xor i64 %42, -1
  %44 = and i64 %41, %43
  store i64 %44, i64* %12, align 8
  %45 = load i64, i64* %14, align 8
  %46 = load i64, i64* @PAGE_MASK, align 8
  %47 = xor i64 %46, -1
  %48 = and i64 %45, %47
  store i64 %48, i64* %11, align 8
  %49 = load %struct.dma_device*, %struct.dma_device** %8, align 8
  %50 = load i64, i64* %12, align 8
  %51 = load i64, i64* %11, align 8
  %52 = load i64, i64* %9, align 8
  %53 = call i32 @is_dma_copy_aligned(%struct.dma_device* %49, i64 %50, i64 %51, i64 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %2
  br label %139

56:                                               ; preds = %2
  %57 = load %struct.dma_device*, %struct.dma_device** %8, align 8
  %58 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @GFP_NOWAIT, align 4
  %61 = call %struct.dmaengine_unmap_data* @dmaengine_get_unmap_data(i32 %59, i32 1, i32 %60)
  store %struct.dmaengine_unmap_data* %61, %struct.dmaengine_unmap_data** %13, align 8
  %62 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %13, align 8
  %63 = icmp ne %struct.dmaengine_unmap_data* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %56
  br label %139

65:                                               ; preds = %56
  %66 = load i64, i64* %9, align 8
  %67 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %13, align 8
  %68 = getelementptr inbounds %struct.dmaengine_unmap_data, %struct.dmaengine_unmap_data* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  %69 = load %struct.dma_device*, %struct.dma_device** %8, align 8
  %70 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i8*, i8** %10, align 8
  %73 = call i32 @virt_to_page(i8* %72)
  %74 = load i64, i64* %12, align 8
  %75 = load i64, i64* %9, align 8
  %76 = load i32, i32* @DMA_TO_DEVICE, align 4
  %77 = call i32 @dma_map_page(i32 %71, i32 %73, i64 %74, i64 %75, i32 %76)
  %78 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %13, align 8
  %79 = getelementptr inbounds %struct.dmaengine_unmap_data, %struct.dmaengine_unmap_data* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  store i32 %77, i32* %81, align 4
  %82 = load %struct.dma_device*, %struct.dma_device** %8, align 8
  %83 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %13, align 8
  %86 = getelementptr inbounds %struct.dmaengine_unmap_data, %struct.dmaengine_unmap_data* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @dma_mapping_error(i32 %84, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %65
  br label %136

93:                                               ; preds = %65
  %94 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %13, align 8
  %95 = getelementptr inbounds %struct.dmaengine_unmap_data, %struct.dmaengine_unmap_data* %94, i32 0, i32 1
  store i32 1, i32* %95, align 8
  %96 = load %struct.dma_device*, %struct.dma_device** %8, align 8
  %97 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %96, i32 0, i32 0
  %98 = load %struct.dma_async_tx_descriptor* (%struct.dma_chan*, i64, i32, i64, i32)*, %struct.dma_async_tx_descriptor* (%struct.dma_chan*, i64, i32, i64, i32)** %97, align 8
  %99 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %100 = load i64, i64* %14, align 8
  %101 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %13, align 8
  %102 = getelementptr inbounds %struct.dmaengine_unmap_data, %struct.dmaengine_unmap_data* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  %105 = load i32, i32* %104, align 4
  %106 = load i64, i64* %9, align 8
  %107 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %108 = call %struct.dma_async_tx_descriptor* %98(%struct.dma_chan* %99, i64 %100, i32 %105, i64 %106, i32 %107)
  store %struct.dma_async_tx_descriptor* %108, %struct.dma_async_tx_descriptor** %6, align 8
  %109 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %110 = icmp ne %struct.dma_async_tx_descriptor* %109, null
  br i1 %110, label %112, label %111

111:                                              ; preds = %93
  br label %136

112:                                              ; preds = %93
  %113 = load i32, i32* @ntb_tx_copy_callback, align 4
  %114 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %115 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 8
  %116 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %5, align 8
  %117 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %118 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %117, i32 0, i32 0
  store %struct.ntb_queue_entry* %116, %struct.ntb_queue_entry** %118, align 8
  %119 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %120 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %13, align 8
  %121 = call i32 @dma_set_unmap(%struct.dma_async_tx_descriptor* %119, %struct.dmaengine_unmap_data* %120)
  %122 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %123 = call i32 @dmaengine_submit(%struct.dma_async_tx_descriptor* %122)
  store i32 %123, i32* %15, align 4
  %124 = load i32, i32* %15, align 4
  %125 = call i64 @dma_submit_error(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %112
  br label %133

128:                                              ; preds = %112
  %129 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %13, align 8
  %130 = call i32 @dmaengine_unmap_put(%struct.dmaengine_unmap_data* %129)
  %131 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %132 = call i32 @dma_async_issue_pending(%struct.dma_chan* %131)
  store i32 0, i32* %3, align 4
  br label %142

133:                                              ; preds = %127
  %134 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %13, align 8
  %135 = call i32 @dmaengine_unmap_put(%struct.dmaengine_unmap_data* %134)
  br label %136

136:                                              ; preds = %133, %111, %92
  %137 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %13, align 8
  %138 = call i32 @dmaengine_unmap_put(%struct.dmaengine_unmap_data* %137)
  br label %139

139:                                              ; preds = %136, %64, %55
  %140 = load i32, i32* @ENXIO, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %3, align 4
  br label %142

142:                                              ; preds = %139, %128
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i32 @is_dma_copy_aligned(%struct.dma_device*, i64, i64, i64) #1

declare dso_local %struct.dmaengine_unmap_data* @dmaengine_get_unmap_data(i32, i32, i32) #1

declare dso_local i32 @dma_map_page(i32, i32, i64, i64, i32) #1

declare dso_local i32 @virt_to_page(i8*) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @dma_set_unmap(%struct.dma_async_tx_descriptor*, %struct.dmaengine_unmap_data*) #1

declare dso_local i32 @dmaengine_submit(%struct.dma_async_tx_descriptor*) #1

declare dso_local i64 @dma_submit_error(i32) #1

declare dso_local i32 @dmaengine_unmap_put(%struct.dmaengine_unmap_data*) #1

declare dso_local i32 @dma_async_issue_pending(%struct.dma_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
