; ModuleID = '/home/carl/AnghaBench/linux/drivers/ntb/extr_ntb_transport.c_ntb_async_rx_submit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ntb/extr_ntb_transport.c_ntb_async_rx_submit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_queue_entry = type { i64, i8*, %struct.ntb_transport_qp* }
%struct.ntb_transport_qp = type { i32, i32, %struct.dma_chan* }
%struct.dma_chan = type { %struct.dma_device* }
%struct.dma_device = type { %struct.dma_async_tx_descriptor* (%struct.dma_chan*, i8*, i8*, i64, i32)*, i32 }
%struct.dma_async_tx_descriptor = type { %struct.ntb_queue_entry*, i32 }
%struct.dmaengine_unmap_data = type { i64, i32, i32, i8** }

@PAGE_MASK = common dso_local global i64 0, align 8
@GFP_NOWAIT = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMA_PREP_INTERRUPT = common dso_local global i32 0, align 4
@ntb_rx_copy_callback = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ntb_queue_entry*, i8*)* @ntb_async_rx_submit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntb_async_rx_submit(%struct.ntb_queue_entry* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ntb_queue_entry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dma_async_tx_descriptor*, align 8
  %7 = alloca %struct.ntb_transport_qp*, align 8
  %8 = alloca %struct.dma_chan*, align 8
  %9 = alloca %struct.dma_device*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.dmaengine_unmap_data*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.ntb_queue_entry* %0, %struct.ntb_queue_entry** %4, align 8
  store i8* %1, i8** %5, align 8
  %16 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %4, align 8
  %17 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %16, i32 0, i32 2
  %18 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %17, align 8
  store %struct.ntb_transport_qp* %18, %struct.ntb_transport_qp** %7, align 8
  %19 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %7, align 8
  %20 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %19, i32 0, i32 2
  %21 = load %struct.dma_chan*, %struct.dma_chan** %20, align 8
  store %struct.dma_chan* %21, %struct.dma_chan** %8, align 8
  %22 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %4, align 8
  %23 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %15, align 8
  %25 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %4, align 8
  %26 = getelementptr inbounds %struct.ntb_queue_entry, %struct.ntb_queue_entry* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %12, align 8
  %28 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %29 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %28, i32 0, i32 0
  %30 = load %struct.dma_device*, %struct.dma_device** %29, align 8
  store %struct.dma_device* %30, %struct.dma_device** %9, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = ptrtoint i8* %31 to i64
  %33 = load i64, i64* @PAGE_MASK, align 8
  %34 = xor i64 %33, -1
  %35 = and i64 %32, %34
  store i64 %35, i64* %10, align 8
  %36 = load i8*, i8** %15, align 8
  %37 = ptrtoint i8* %36 to i64
  %38 = load i64, i64* @PAGE_MASK, align 8
  %39 = xor i64 %38, -1
  %40 = and i64 %37, %39
  store i64 %40, i64* %11, align 8
  %41 = load %struct.dma_device*, %struct.dma_device** %9, align 8
  %42 = load i64, i64* %10, align 8
  %43 = load i64, i64* %11, align 8
  %44 = load i64, i64* %12, align 8
  %45 = call i32 @is_dma_copy_aligned(%struct.dma_device* %41, i64 %42, i64 %43, i64 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %2
  br label %167

48:                                               ; preds = %2
  %49 = load %struct.dma_device*, %struct.dma_device** %9, align 8
  %50 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @GFP_NOWAIT, align 4
  %53 = call %struct.dmaengine_unmap_data* @dmaengine_get_unmap_data(i32 %51, i32 2, i32 %52)
  store %struct.dmaengine_unmap_data* %53, %struct.dmaengine_unmap_data** %13, align 8
  %54 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %13, align 8
  %55 = icmp ne %struct.dmaengine_unmap_data* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %48
  br label %167

57:                                               ; preds = %48
  %58 = load i64, i64* %12, align 8
  %59 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %13, align 8
  %60 = getelementptr inbounds %struct.dmaengine_unmap_data, %struct.dmaengine_unmap_data* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  %61 = load %struct.dma_device*, %struct.dma_device** %9, align 8
  %62 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i8*, i8** %5, align 8
  %65 = call i32 @virt_to_page(i8* %64)
  %66 = load i64, i64* %10, align 8
  %67 = load i64, i64* %12, align 8
  %68 = load i32, i32* @DMA_TO_DEVICE, align 4
  %69 = call i8* @dma_map_page(i32 %63, i32 %65, i64 %66, i64 %67, i32 %68)
  %70 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %13, align 8
  %71 = getelementptr inbounds %struct.dmaengine_unmap_data, %struct.dmaengine_unmap_data* %70, i32 0, i32 3
  %72 = load i8**, i8*** %71, align 8
  %73 = getelementptr inbounds i8*, i8** %72, i64 0
  store i8* %69, i8** %73, align 8
  %74 = load %struct.dma_device*, %struct.dma_device** %9, align 8
  %75 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %13, align 8
  %78 = getelementptr inbounds %struct.dmaengine_unmap_data, %struct.dmaengine_unmap_data* %77, i32 0, i32 3
  %79 = load i8**, i8*** %78, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i64 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i64 @dma_mapping_error(i32 %76, i8* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %57
  br label %164

85:                                               ; preds = %57
  %86 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %13, align 8
  %87 = getelementptr inbounds %struct.dmaengine_unmap_data, %struct.dmaengine_unmap_data* %86, i32 0, i32 1
  store i32 1, i32* %87, align 8
  %88 = load %struct.dma_device*, %struct.dma_device** %9, align 8
  %89 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i8*, i8** %15, align 8
  %92 = call i32 @virt_to_page(i8* %91)
  %93 = load i64, i64* %11, align 8
  %94 = load i64, i64* %12, align 8
  %95 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %96 = call i8* @dma_map_page(i32 %90, i32 %92, i64 %93, i64 %94, i32 %95)
  %97 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %13, align 8
  %98 = getelementptr inbounds %struct.dmaengine_unmap_data, %struct.dmaengine_unmap_data* %97, i32 0, i32 3
  %99 = load i8**, i8*** %98, align 8
  %100 = getelementptr inbounds i8*, i8** %99, i64 1
  store i8* %96, i8** %100, align 8
  %101 = load %struct.dma_device*, %struct.dma_device** %9, align 8
  %102 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %13, align 8
  %105 = getelementptr inbounds %struct.dmaengine_unmap_data, %struct.dmaengine_unmap_data* %104, i32 0, i32 3
  %106 = load i8**, i8*** %105, align 8
  %107 = getelementptr inbounds i8*, i8** %106, i64 1
  %108 = load i8*, i8** %107, align 8
  %109 = call i64 @dma_mapping_error(i32 %103, i8* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %85
  br label %164

112:                                              ; preds = %85
  %113 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %13, align 8
  %114 = getelementptr inbounds %struct.dmaengine_unmap_data, %struct.dmaengine_unmap_data* %113, i32 0, i32 2
  store i32 1, i32* %114, align 4
  %115 = load %struct.dma_device*, %struct.dma_device** %9, align 8
  %116 = getelementptr inbounds %struct.dma_device, %struct.dma_device* %115, i32 0, i32 0
  %117 = load %struct.dma_async_tx_descriptor* (%struct.dma_chan*, i8*, i8*, i64, i32)*, %struct.dma_async_tx_descriptor* (%struct.dma_chan*, i8*, i8*, i64, i32)** %116, align 8
  %118 = load %struct.dma_chan*, %struct.dma_chan** %8, align 8
  %119 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %13, align 8
  %120 = getelementptr inbounds %struct.dmaengine_unmap_data, %struct.dmaengine_unmap_data* %119, i32 0, i32 3
  %121 = load i8**, i8*** %120, align 8
  %122 = getelementptr inbounds i8*, i8** %121, i64 1
  %123 = load i8*, i8** %122, align 8
  %124 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %13, align 8
  %125 = getelementptr inbounds %struct.dmaengine_unmap_data, %struct.dmaengine_unmap_data* %124, i32 0, i32 3
  %126 = load i8**, i8*** %125, align 8
  %127 = getelementptr inbounds i8*, i8** %126, i64 0
  %128 = load i8*, i8** %127, align 8
  %129 = load i64, i64* %12, align 8
  %130 = load i32, i32* @DMA_PREP_INTERRUPT, align 4
  %131 = call %struct.dma_async_tx_descriptor* %117(%struct.dma_chan* %118, i8* %123, i8* %128, i64 %129, i32 %130)
  store %struct.dma_async_tx_descriptor* %131, %struct.dma_async_tx_descriptor** %6, align 8
  %132 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %133 = icmp ne %struct.dma_async_tx_descriptor* %132, null
  br i1 %133, label %135, label %134

134:                                              ; preds = %112
  br label %164

135:                                              ; preds = %112
  %136 = load i32, i32* @ntb_rx_copy_callback, align 4
  %137 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %138 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 8
  %139 = load %struct.ntb_queue_entry*, %struct.ntb_queue_entry** %4, align 8
  %140 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %141 = getelementptr inbounds %struct.dma_async_tx_descriptor, %struct.dma_async_tx_descriptor* %140, i32 0, i32 0
  store %struct.ntb_queue_entry* %139, %struct.ntb_queue_entry** %141, align 8
  %142 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %143 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %13, align 8
  %144 = call i32 @dma_set_unmap(%struct.dma_async_tx_descriptor* %142, %struct.dmaengine_unmap_data* %143)
  %145 = load %struct.dma_async_tx_descriptor*, %struct.dma_async_tx_descriptor** %6, align 8
  %146 = call i32 @dmaengine_submit(%struct.dma_async_tx_descriptor* %145)
  store i32 %146, i32* %14, align 4
  %147 = load i32, i32* %14, align 4
  %148 = call i64 @dma_submit_error(i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %135
  br label %161

151:                                              ; preds = %135
  %152 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %13, align 8
  %153 = call i32 @dmaengine_unmap_put(%struct.dmaengine_unmap_data* %152)
  %154 = load i32, i32* %14, align 4
  %155 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %7, align 8
  %156 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %155, i32 0, i32 1
  store i32 %154, i32* %156, align 4
  %157 = load %struct.ntb_transport_qp*, %struct.ntb_transport_qp** %7, align 8
  %158 = getelementptr inbounds %struct.ntb_transport_qp, %struct.ntb_transport_qp* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %158, align 8
  store i32 0, i32* %3, align 4
  br label %170

161:                                              ; preds = %150
  %162 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %13, align 8
  %163 = call i32 @dmaengine_unmap_put(%struct.dmaengine_unmap_data* %162)
  br label %164

164:                                              ; preds = %161, %134, %111, %84
  %165 = load %struct.dmaengine_unmap_data*, %struct.dmaengine_unmap_data** %13, align 8
  %166 = call i32 @dmaengine_unmap_put(%struct.dmaengine_unmap_data* %165)
  br label %167

167:                                              ; preds = %164, %56, %47
  %168 = load i32, i32* @ENXIO, align 4
  %169 = sub nsw i32 0, %168
  store i32 %169, i32* %3, align 4
  br label %170

170:                                              ; preds = %167, %151
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local i32 @is_dma_copy_aligned(%struct.dma_device*, i64, i64, i64) #1

declare dso_local %struct.dmaengine_unmap_data* @dmaengine_get_unmap_data(i32, i32, i32) #1

declare dso_local i8* @dma_map_page(i32, i32, i64, i64, i32) #1

declare dso_local i32 @virt_to_page(i8*) #1

declare dso_local i64 @dma_mapping_error(i32, i8*) #1

declare dso_local i32 @dma_set_unmap(%struct.dma_async_tx_descriptor*, %struct.dmaengine_unmap_data*) #1

declare dso_local i32 @dmaengine_submit(%struct.dma_async_tx_descriptor*) #1

declare dso_local i64 @dma_submit_error(i32) #1

declare dso_local i32 @dmaengine_unmap_put(%struct.dmaengine_unmap_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
