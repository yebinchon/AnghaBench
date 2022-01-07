; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_ddma.c_dwc2_fill_host_isoc_dma_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_ddma.c_dwc2_fill_host_isoc_dma_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32 }
%struct.dwc2_qtd = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, %struct.dwc2_hcd_iso_packet_desc* }
%struct.dwc2_hcd_iso_packet_desc = type { i64, i64 }
%struct.dwc2_qh = type { i64*, i64, i32, %struct.dwc2_dma_desc* }
%struct.dwc2_dma_desc = type { i32, i64 }

@HOST_DMA_ISOC_NBYTES_SHIFT = common dso_local global i32 0, align 4
@HOST_DMA_ISOC_NBYTES_MASK = common dso_local global i32 0, align 4
@HOST_DMA_A = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@HOST_DMA_IOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc2_hsotg*, %struct.dwc2_qtd*, %struct.dwc2_qh*, i64, i64)* @dwc2_fill_host_isoc_dma_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc2_fill_host_isoc_dma_desc(%struct.dwc2_hsotg* %0, %struct.dwc2_qtd* %1, %struct.dwc2_qh* %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.dwc2_hsotg*, align 8
  %7 = alloca %struct.dwc2_qtd*, align 8
  %8 = alloca %struct.dwc2_qh*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.dwc2_dma_desc*, align 8
  %12 = alloca %struct.dwc2_hcd_iso_packet_desc*, align 8
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %6, align 8
  store %struct.dwc2_qtd* %1, %struct.dwc2_qtd** %7, align 8
  store %struct.dwc2_qh* %2, %struct.dwc2_qh** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %13 = load %struct.dwc2_qh*, %struct.dwc2_qh** %8, align 8
  %14 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %13, i32 0, i32 3
  %15 = load %struct.dwc2_dma_desc*, %struct.dwc2_dma_desc** %14, align 8
  %16 = load i64, i64* %10, align 8
  %17 = getelementptr inbounds %struct.dwc2_dma_desc, %struct.dwc2_dma_desc* %15, i64 %16
  store %struct.dwc2_dma_desc* %17, %struct.dwc2_dma_desc** %11, align 8
  %18 = load %struct.dwc2_dma_desc*, %struct.dwc2_dma_desc** %11, align 8
  %19 = call i32 @memset(%struct.dwc2_dma_desc* %18, i32 0, i32 16)
  %20 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %7, align 8
  %21 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  %24 = load %struct.dwc2_hcd_iso_packet_desc*, %struct.dwc2_hcd_iso_packet_desc** %23, align 8
  %25 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %7, align 8
  %26 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.dwc2_hcd_iso_packet_desc, %struct.dwc2_hcd_iso_packet_desc* %24, i64 %27
  store %struct.dwc2_hcd_iso_packet_desc* %28, %struct.dwc2_hcd_iso_packet_desc** %12, align 8
  %29 = load %struct.dwc2_hcd_iso_packet_desc*, %struct.dwc2_hcd_iso_packet_desc** %12, align 8
  %30 = getelementptr inbounds %struct.dwc2_hcd_iso_packet_desc, %struct.dwc2_hcd_iso_packet_desc* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %9, align 8
  %33 = icmp sgt i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %5
  %35 = load i64, i64* %9, align 8
  %36 = load %struct.dwc2_qh*, %struct.dwc2_qh** %8, align 8
  %37 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = load i64, i64* %10, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  store i64 %35, i64* %40, align 8
  br label %50

41:                                               ; preds = %5
  %42 = load %struct.dwc2_hcd_iso_packet_desc*, %struct.dwc2_hcd_iso_packet_desc** %12, align 8
  %43 = getelementptr inbounds %struct.dwc2_hcd_iso_packet_desc, %struct.dwc2_hcd_iso_packet_desc* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.dwc2_qh*, %struct.dwc2_qh** %8, align 8
  %46 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = load i64, i64* %10, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  store i64 %44, i64* %49, align 8
  br label %50

50:                                               ; preds = %41, %34
  %51 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %7, align 8
  %52 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %51, i32 0, i32 1
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.dwc2_hcd_iso_packet_desc*, %struct.dwc2_hcd_iso_packet_desc** %12, align 8
  %57 = getelementptr inbounds %struct.dwc2_hcd_iso_packet_desc, %struct.dwc2_hcd_iso_packet_desc* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %55, %58
  %60 = load %struct.dwc2_dma_desc*, %struct.dwc2_dma_desc** %11, align 8
  %61 = getelementptr inbounds %struct.dwc2_dma_desc, %struct.dwc2_dma_desc* %60, i32 0, i32 1
  store i64 %59, i64* %61, align 8
  %62 = load %struct.dwc2_qh*, %struct.dwc2_qh** %8, align 8
  %63 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = load i64, i64* %10, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = load i32, i32* @HOST_DMA_ISOC_NBYTES_SHIFT, align 4
  %69 = zext i32 %68 to i64
  %70 = shl i64 %67, %69
  %71 = load i32, i32* @HOST_DMA_ISOC_NBYTES_MASK, align 4
  %72 = sext i32 %71 to i64
  %73 = and i64 %70, %72
  %74 = trunc i64 %73 to i32
  %75 = load %struct.dwc2_dma_desc*, %struct.dwc2_dma_desc** %11, align 8
  %76 = getelementptr inbounds %struct.dwc2_dma_desc, %struct.dwc2_dma_desc* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* @HOST_DMA_A, align 4
  %78 = load %struct.dwc2_dma_desc*, %struct.dwc2_dma_desc** %11, align 8
  %79 = getelementptr inbounds %struct.dwc2_dma_desc, %struct.dwc2_dma_desc* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 8
  %82 = load %struct.dwc2_qh*, %struct.dwc2_qh** %8, align 8
  %83 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 8
  %86 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %7, align 8
  %87 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = add i64 %88, 1
  store i64 %89, i64* %87, align 8
  %90 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %6, align 8
  %91 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.dwc2_qh*, %struct.dwc2_qh** %8, align 8
  %94 = getelementptr inbounds %struct.dwc2_qh, %struct.dwc2_qh* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* %10, align 8
  %97 = mul i64 %96, 16
  %98 = add i64 %95, %97
  %99 = load i32, i32* @DMA_TO_DEVICE, align 4
  %100 = call i32 @dma_sync_single_for_device(i32 %92, i64 %98, i32 16, i32 %99)
  ret void
}

declare dso_local i32 @memset(%struct.dwc2_dma_desc*, i32, i32) #1

declare dso_local i32 @dma_sync_single_for_device(i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
