; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_ddma.c_dwc2_fill_host_dma_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_ddma.c_dwc2_fill_host_dma_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32 }
%struct.dwc2_host_chan = type { i32, i32, i64, i64 }
%struct.dwc2_qtd = type { i64 }
%struct.dwc2_qh = type { i32*, i64, i64, %struct.dwc2_dma_desc* }
%struct.dwc2_dma_desc = type { i32, i64 }

@HOST_DMA_NBYTES_LIMIT = common dso_local global i32 0, align 4
@HOST_DMA_NBYTES_SHIFT = common dso_local global i32 0, align 4
@HOST_DMA_NBYTES_MASK = common dso_local global i32 0, align 4
@USB_ENDPOINT_XFER_CONTROL = common dso_local global i64 0, align 8
@DWC2_CONTROL_SETUP = common dso_local global i64 0, align 8
@HOST_DMA_SUP = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc2_hsotg*, %struct.dwc2_host_chan*, %struct.dwc2_qtd*, %struct.dwc2_qh*, i32)* @dwc2_fill_host_dma_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc2_fill_host_dma_desc(%struct.dwc2_hsotg* %0, %struct.dwc2_host_chan* %1, %struct.dwc2_qtd* %2, %struct.dwc2_qh* %3, i32 %4) #0 {
  %6 = alloca %struct.dwc2_hsotg*, align 8
  %7 = alloca %struct.dwc2_host_chan*, align 8
  %8 = alloca %struct.dwc2_qtd*, align 8
  %9 = alloca %struct.dwc2_qh*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dwc2_dma_desc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %6, align 8
  store %struct.dwc2_host_chan* %1, %struct.dwc2_host_chan** %7, align 8
  store %struct.dwc2_qtd* %2, %struct.dwc2_qtd** %8, align 8
  store %struct.dwc2_qh* %3, %struct.dwc2_qh** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load %struct.dwc2_qh*, %struct.dwc2_qh** %9, align 8
  %15 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %14, i32 0, i32 3
  %16 = load %struct.dwc2_dma_desc*, %struct.dwc2_dma_desc** %15, align 8
  %17 = load i32, i32* %10, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.dwc2_dma_desc, %struct.dwc2_dma_desc* %16, i64 %18
  store %struct.dwc2_dma_desc* %19, %struct.dwc2_dma_desc** %11, align 8
  %20 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %7, align 8
  %21 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* @HOST_DMA_NBYTES_LIMIT, align 4
  %25 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %7, align 8
  %26 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sub nsw i32 %27, 1
  %29 = sub nsw i32 %24, %28
  %30 = icmp sgt i32 %23, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %5
  %32 = load i32, i32* @HOST_DMA_NBYTES_LIMIT, align 4
  %33 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %7, align 8
  %34 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %35, 1
  %37 = sub nsw i32 %32, %36
  store i32 %37, i32* %12, align 4
  br label %38

38:                                               ; preds = %31, %5
  %39 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %7, align 8
  %40 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %69

43:                                               ; preds = %38
  %44 = load i32, i32* %12, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %62

46:                                               ; preds = %43
  %47 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %7, align 8
  %48 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %62

51:                                               ; preds = %46
  %52 = load i32, i32* %12, align 4
  %53 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %7, align 8
  %54 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %52, %55
  %57 = sub nsw i32 %56, 1
  %58 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %7, align 8
  %59 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = sdiv i32 %57, %60
  store i32 %61, i32* %13, align 4
  br label %63

62:                                               ; preds = %46, %43
  store i32 1, i32* %13, align 4
  br label %63

63:                                               ; preds = %62, %51
  %64 = load i32, i32* %13, align 4
  %65 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %7, align 8
  %66 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = mul nsw i32 %64, %67
  store i32 %68, i32* %12, align 4
  br label %69

69:                                               ; preds = %63, %38
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* @HOST_DMA_NBYTES_SHIFT, align 4
  %72 = shl i32 %70, %71
  %73 = load i32, i32* @HOST_DMA_NBYTES_MASK, align 4
  %74 = and i32 %72, %73
  %75 = load %struct.dwc2_dma_desc*, %struct.dwc2_dma_desc** %11, align 8
  %76 = getelementptr inbounds %struct.dwc2_dma_desc, %struct.dwc2_dma_desc* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* %12, align 4
  %78 = load %struct.dwc2_qh*, %struct.dwc2_qh** %9, align 8
  %79 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  store i32 %77, i32* %83, align 4
  %84 = load %struct.dwc2_qh*, %struct.dwc2_qh** %9, align 8
  %85 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @USB_ENDPOINT_XFER_CONTROL, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %101

89:                                               ; preds = %69
  %90 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %8, align 8
  %91 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @DWC2_CONTROL_SETUP, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %89
  %96 = load i32, i32* @HOST_DMA_SUP, align 4
  %97 = load %struct.dwc2_dma_desc*, %struct.dwc2_dma_desc** %11, align 8
  %98 = getelementptr inbounds %struct.dwc2_dma_desc, %struct.dwc2_dma_desc* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 8
  br label %101

101:                                              ; preds = %95, %89, %69
  %102 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %7, align 8
  %103 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.dwc2_dma_desc*, %struct.dwc2_dma_desc** %11, align 8
  %106 = getelementptr inbounds %struct.dwc2_dma_desc, %struct.dwc2_dma_desc* %105, i32 0, i32 1
  store i64 %104, i64* %106, align 8
  %107 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %6, align 8
  %108 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.dwc2_qh*, %struct.dwc2_qh** %9, align 8
  %111 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = load i32, i32* %10, align 4
  %114 = sext i32 %113 to i64
  %115 = mul i64 %114, 16
  %116 = add i64 %112, %115
  %117 = load i32, i32* @DMA_TO_DEVICE, align 4
  %118 = call i32 @dma_sync_single_for_device(i32 %109, i64 %116, i32 16, i32 %117)
  %119 = load i32, i32* %12, align 4
  %120 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %7, align 8
  %121 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp sgt i32 %119, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %101
  %125 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %7, align 8
  %126 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %125, i32 0, i32 0
  store i32 0, i32* %126, align 8
  br label %139

127:                                              ; preds = %101
  %128 = load i32, i32* %12, align 4
  %129 = sext i32 %128 to i64
  %130 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %7, align 8
  %131 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %130, i32 0, i32 2
  %132 = load i64, i64* %131, align 8
  %133 = add nsw i64 %132, %129
  store i64 %133, i64* %131, align 8
  %134 = load i32, i32* %12, align 4
  %135 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %7, align 8
  %136 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = sub nsw i32 %137, %134
  store i32 %138, i32* %136, align 8
  br label %139

139:                                              ; preds = %127, %124
  ret void
}

declare dso_local i32 @dma_sync_single_for_device(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
