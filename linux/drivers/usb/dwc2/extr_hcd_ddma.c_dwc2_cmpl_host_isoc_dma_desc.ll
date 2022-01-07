; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_ddma.c_dwc2_cmpl_host_isoc_dma_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_ddma.c_dwc2_cmpl_host_isoc_dma_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32 }
%struct.dwc2_host_chan = type { i64, i64 }
%struct.dwc2_qtd = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i64, %struct.dwc2_hcd_iso_packet_desc* }
%struct.dwc2_hcd_iso_packet_desc = type { i32, i64, i64 }
%struct.dwc2_qh = type { i32, i64*, %struct.dwc2_dma_desc*, i64 }
%struct.dwc2_dma_desc = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@HOST_DMA_ISOC_NBYTES_MASK = common dso_local global i32 0, align 4
@HOST_DMA_ISOC_NBYTES_SHIFT = common dso_local global i32 0, align 4
@HOST_DMA_STS_MASK = common dso_local global i32 0, align 4
@HOST_DMA_STS_PKTERR = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@DWC2_HC_XFER_URB_DEQUEUE = common dso_local global i64 0, align 8
@DWC2_CMPL_DONE = common dso_local global i32 0, align 4
@HOST_DMA_IOC = common dso_local global i32 0, align 4
@DWC2_CMPL_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc2_hsotg*, %struct.dwc2_host_chan*, %struct.dwc2_qtd*, %struct.dwc2_qh*, i32)* @dwc2_cmpl_host_isoc_dma_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc2_cmpl_host_isoc_dma_desc(%struct.dwc2_hsotg* %0, %struct.dwc2_host_chan* %1, %struct.dwc2_qtd* %2, %struct.dwc2_qh* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.dwc2_hsotg*, align 8
  %8 = alloca %struct.dwc2_host_chan*, align 8
  %9 = alloca %struct.dwc2_qtd*, align 8
  %10 = alloca %struct.dwc2_qh*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.dwc2_dma_desc*, align 8
  %13 = alloca %struct.dwc2_hcd_iso_packet_desc*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %7, align 8
  store %struct.dwc2_host_chan* %1, %struct.dwc2_host_chan** %8, align 8
  store %struct.dwc2_qtd* %2, %struct.dwc2_qtd** %9, align 8
  store %struct.dwc2_qh* %3, %struct.dwc2_qh** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %16 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %9, align 8
  %17 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = icmp ne %struct.TYPE_2__* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %162

23:                                               ; preds = %5
  %24 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %25 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.dwc2_qh*, %struct.dwc2_qh** %10, align 8
  %28 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 16
  %33 = add i64 %29, %32
  %34 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %35 = call i32 @dma_sync_single_for_cpu(i32 %26, i64 %33, i32 16, i32 %34)
  %36 = load %struct.dwc2_qh*, %struct.dwc2_qh** %10, align 8
  %37 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %36, i32 0, i32 2
  %38 = load %struct.dwc2_dma_desc*, %struct.dwc2_dma_desc** %37, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.dwc2_dma_desc, %struct.dwc2_dma_desc* %38, i64 %40
  store %struct.dwc2_dma_desc* %41, %struct.dwc2_dma_desc** %12, align 8
  %42 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %9, align 8
  %43 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %42, i32 0, i32 2
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 3
  %46 = load %struct.dwc2_hcd_iso_packet_desc*, %struct.dwc2_hcd_iso_packet_desc** %45, align 8
  %47 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %9, align 8
  %48 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.dwc2_hcd_iso_packet_desc, %struct.dwc2_hcd_iso_packet_desc* %46, i64 %49
  store %struct.dwc2_hcd_iso_packet_desc* %50, %struct.dwc2_hcd_iso_packet_desc** %13, align 8
  %51 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %9, align 8
  %52 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %51, i32 0, i32 2
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.dwc2_hcd_iso_packet_desc*, %struct.dwc2_hcd_iso_packet_desc** %13, align 8
  %57 = getelementptr inbounds %struct.dwc2_hcd_iso_packet_desc, %struct.dwc2_hcd_iso_packet_desc* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %55, %58
  %60 = load %struct.dwc2_dma_desc*, %struct.dwc2_dma_desc** %12, align 8
  %61 = getelementptr inbounds %struct.dwc2_dma_desc, %struct.dwc2_dma_desc* %60, i32 0, i32 1
  store i64 %59, i64* %61, align 8
  %62 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %8, align 8
  %63 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %23
  %67 = load %struct.dwc2_dma_desc*, %struct.dwc2_dma_desc** %12, align 8
  %68 = getelementptr inbounds %struct.dwc2_dma_desc, %struct.dwc2_dma_desc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @HOST_DMA_ISOC_NBYTES_MASK, align 4
  %71 = and i32 %69, %70
  %72 = load i32, i32* @HOST_DMA_ISOC_NBYTES_SHIFT, align 4
  %73 = ashr i32 %71, %72
  store i32 %73, i32* %14, align 4
  br label %74

74:                                               ; preds = %66, %23
  %75 = load %struct.dwc2_dma_desc*, %struct.dwc2_dma_desc** %12, align 8
  %76 = getelementptr inbounds %struct.dwc2_dma_desc, %struct.dwc2_dma_desc* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @HOST_DMA_STS_MASK, align 4
  %79 = and i32 %77, %78
  %80 = load i32, i32* @HOST_DMA_STS_PKTERR, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %105

82:                                               ; preds = %74
  %83 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %9, align 8
  %84 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %83, i32 0, i32 2
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 8
  %89 = load %struct.dwc2_qh*, %struct.dwc2_qh** %10, align 8
  %90 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %89, i32 0, i32 1
  %91 = load i64*, i64** %90, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i64, i64* %91, i64 %93
  %95 = load i64, i64* %94, align 8
  %96 = load i32, i32* %14, align 4
  %97 = sext i32 %96 to i64
  %98 = sub nsw i64 %95, %97
  %99 = load %struct.dwc2_hcd_iso_packet_desc*, %struct.dwc2_hcd_iso_packet_desc** %13, align 8
  %100 = getelementptr inbounds %struct.dwc2_hcd_iso_packet_desc, %struct.dwc2_hcd_iso_packet_desc* %99, i32 0, i32 1
  store i64 %98, i64* %100, align 8
  %101 = load i32, i32* @EPROTO, align 4
  %102 = sub nsw i32 0, %101
  %103 = load %struct.dwc2_hcd_iso_packet_desc*, %struct.dwc2_hcd_iso_packet_desc** %13, align 8
  %104 = getelementptr inbounds %struct.dwc2_hcd_iso_packet_desc, %struct.dwc2_hcd_iso_packet_desc* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  br label %120

105:                                              ; preds = %74
  %106 = load %struct.dwc2_qh*, %struct.dwc2_qh** %10, align 8
  %107 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %106, i32 0, i32 1
  %108 = load i64*, i64** %107, align 8
  %109 = load i32, i32* %11, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i64, i64* %108, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = load i32, i32* %14, align 4
  %114 = sext i32 %113 to i64
  %115 = sub nsw i64 %112, %114
  %116 = load %struct.dwc2_hcd_iso_packet_desc*, %struct.dwc2_hcd_iso_packet_desc** %13, align 8
  %117 = getelementptr inbounds %struct.dwc2_hcd_iso_packet_desc, %struct.dwc2_hcd_iso_packet_desc* %116, i32 0, i32 1
  store i64 %115, i64* %117, align 8
  %118 = load %struct.dwc2_hcd_iso_packet_desc*, %struct.dwc2_hcd_iso_packet_desc** %13, align 8
  %119 = getelementptr inbounds %struct.dwc2_hcd_iso_packet_desc, %struct.dwc2_hcd_iso_packet_desc* %118, i32 0, i32 0
  store i32 0, i32* %119, align 8
  br label %120

120:                                              ; preds = %105, %82
  %121 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %9, align 8
  %122 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = add nsw i64 %123, 1
  store i64 %124, i64* %122, align 8
  %125 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %9, align 8
  %126 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %125, i32 0, i32 2
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp eq i64 %124, %129
  br i1 %130, label %131, label %147

131:                                              ; preds = %120
  %132 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %133 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %9, align 8
  %134 = call i32 @dwc2_host_complete(%struct.dwc2_hsotg* %132, %struct.dwc2_qtd* %133, i32 0)
  %135 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %7, align 8
  %136 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %9, align 8
  %137 = load %struct.dwc2_qh*, %struct.dwc2_qh** %10, align 8
  %138 = call i32 @dwc2_hcd_qtd_unlink_and_free(%struct.dwc2_hsotg* %135, %struct.dwc2_qtd* %136, %struct.dwc2_qh* %137)
  %139 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %8, align 8
  %140 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @DWC2_HC_XFER_URB_DEQUEUE, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %131
  store i32 -1, i32* %6, align 4
  br label %162

145:                                              ; preds = %131
  %146 = load i32, i32* @DWC2_CMPL_DONE, align 4
  store i32 %146, i32* %15, align 4
  br label %147

147:                                              ; preds = %145, %120
  %148 = load %struct.dwc2_qh*, %struct.dwc2_qh** %10, align 8
  %149 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = add nsw i32 %150, -1
  store i32 %151, i32* %149, align 8
  %152 = load %struct.dwc2_dma_desc*, %struct.dwc2_dma_desc** %12, align 8
  %153 = getelementptr inbounds %struct.dwc2_dma_desc, %struct.dwc2_dma_desc* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @HOST_DMA_IOC, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %147
  %159 = load i32, i32* @DWC2_CMPL_STOP, align 4
  store i32 %159, i32* %15, align 4
  br label %160

160:                                              ; preds = %158, %147
  %161 = load i32, i32* %15, align 4
  store i32 %161, i32* %6, align 4
  br label %162

162:                                              ; preds = %160, %144, %20
  %163 = load i32, i32* %6, align 4
  ret i32 %163
}

declare dso_local i32 @dma_sync_single_for_cpu(i32, i64, i32, i32) #1

declare dso_local i32 @dwc2_host_complete(%struct.dwc2_hsotg*, %struct.dwc2_qtd*, i32) #1

declare dso_local i32 @dwc2_hcd_qtd_unlink_and_free(%struct.dwc2_hsotg*, %struct.dwc2_qtd*, %struct.dwc2_qh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
