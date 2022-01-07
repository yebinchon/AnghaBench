; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_intr.c_dwc2_xfercomp_isoc_split_in.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_intr.c_dwc2_xfercomp_isoc_split_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32 }
%struct.dwc2_host_chan = type { %struct.TYPE_3__*, i64, i64 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.dwc2_qtd = type { i64, i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i64, i64, i64, %struct.dwc2_hcd_iso_packet_desc* }
%struct.dwc2_hcd_iso_packet_desc = type { i32, i64, i64 }

@DWC2_HC_XFER_COMPLETE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"non-aligned buffer\0A\00", align 1
@DWC2_KMEM_UNALIGNED_BUF_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@TSIZ_SC_MC_PID_MASK = common dso_local global i32 0, align 4
@TSIZ_SC_MC_PID_SHIFT = common dso_local global i32 0, align 4
@DWC2_HC_XFER_URB_COMPLETE = common dso_local global i32 0, align 4
@DWC2_HC_XFER_NO_HALT_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc2_hsotg*, %struct.dwc2_host_chan*, i32, %struct.dwc2_qtd*)* @dwc2_xfercomp_isoc_split_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc2_xfercomp_isoc_split_in(%struct.dwc2_hsotg* %0, %struct.dwc2_host_chan* %1, i32 %2, %struct.dwc2_qtd* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dwc2_hsotg*, align 8
  %7 = alloca %struct.dwc2_host_chan*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dwc2_qtd*, align 8
  %10 = alloca %struct.dwc2_hcd_iso_packet_desc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %6, align 8
  store %struct.dwc2_host_chan* %1, %struct.dwc2_host_chan** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.dwc2_qtd* %3, %struct.dwc2_qtd** %9, align 8
  %14 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %9, align 8
  %15 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %14, i32 0, i32 2
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = icmp ne %struct.TYPE_4__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %156

19:                                               ; preds = %4
  %20 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %9, align 8
  %21 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %20, i32 0, i32 2
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 3
  %24 = load %struct.dwc2_hcd_iso_packet_desc*, %struct.dwc2_hcd_iso_packet_desc** %23, align 8
  %25 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %9, align 8
  %26 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.dwc2_hcd_iso_packet_desc, %struct.dwc2_hcd_iso_packet_desc* %24, i64 %27
  store %struct.dwc2_hcd_iso_packet_desc* %28, %struct.dwc2_hcd_iso_packet_desc** %10, align 8
  %29 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %6, align 8
  %30 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %9, align 8
  %33 = load i32, i32* @DWC2_HC_XFER_COMPLETE, align 4
  %34 = call i32 @dwc2_get_actual_xfer_length(%struct.dwc2_hsotg* %29, %struct.dwc2_host_chan* %30, i32 %31, %struct.dwc2_qtd* %32, i32 %33, i32* null)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %19
  %38 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %9, align 8
  %39 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %37
  %43 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %9, align 8
  %44 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %43, i32 0, i32 3
  store i64 0, i64* %44, align 8
  store i32 0, i32* %5, align 4
  br label %156

45:                                               ; preds = %37, %19
  %46 = load i32, i32* %11, align 4
  %47 = load %struct.dwc2_hcd_iso_packet_desc*, %struct.dwc2_hcd_iso_packet_desc** %10, align 8
  %48 = getelementptr inbounds %struct.dwc2_hcd_iso_packet_desc, %struct.dwc2_hcd_iso_packet_desc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, %46
  store i32 %50, i32* %48, align 8
  %51 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %7, align 8
  %52 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %93

55:                                               ; preds = %45
  %56 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %6, align 8
  %57 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @dev_vdbg(i32 %58, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %60 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %6, align 8
  %61 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %7, align 8
  %64 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %63, i32 0, i32 0
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @DWC2_KMEM_UNALIGNED_BUF_SIZE, align 4
  %69 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %70 = call i32 @dma_unmap_single(i32 %62, i32 %67, i32 %68, i32 %69)
  %71 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %9, align 8
  %72 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %71, i32 0, i32 2
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %7, align 8
  %77 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %9, align 8
  %80 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %79, i32 0, i32 2
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = sub nsw i64 %78, %83
  %85 = add nsw i64 %75, %84
  %86 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %7, align 8
  %87 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %86, i32 0, i32 0
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %11, align 4
  %92 = call i32 @memcpy(i64 %85, i32 %90, i32 %91)
  br label %93

93:                                               ; preds = %55, %45
  %94 = load i32, i32* %11, align 4
  %95 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %9, align 8
  %96 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, %94
  store i32 %98, i32* %96, align 8
  %99 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %6, align 8
  %100 = load i32, i32* %8, align 4
  %101 = call i32 @HCTSIZ(i32 %100)
  %102 = call i32 @dwc2_readl(%struct.dwc2_hsotg* %99, i32 %101)
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* @TSIZ_SC_MC_PID_MASK, align 4
  %105 = and i32 %103, %104
  %106 = load i32, i32* @TSIZ_SC_MC_PID_SHIFT, align 4
  %107 = ashr i32 %105, %106
  store i32 %107, i32* %13, align 4
  %108 = load %struct.dwc2_hcd_iso_packet_desc*, %struct.dwc2_hcd_iso_packet_desc** %10, align 8
  %109 = getelementptr inbounds %struct.dwc2_hcd_iso_packet_desc, %struct.dwc2_hcd_iso_packet_desc* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = sext i32 %110 to i64
  %112 = load %struct.dwc2_hcd_iso_packet_desc*, %struct.dwc2_hcd_iso_packet_desc** %10, align 8
  %113 = getelementptr inbounds %struct.dwc2_hcd_iso_packet_desc, %struct.dwc2_hcd_iso_packet_desc* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp sge i64 %111, %114
  br i1 %115, label %119, label %116

116:                                              ; preds = %93
  %117 = load i32, i32* %13, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %130

119:                                              ; preds = %116, %93
  %120 = load %struct.dwc2_hcd_iso_packet_desc*, %struct.dwc2_hcd_iso_packet_desc** %10, align 8
  %121 = getelementptr inbounds %struct.dwc2_hcd_iso_packet_desc, %struct.dwc2_hcd_iso_packet_desc* %120, i32 0, i32 2
  store i64 0, i64* %121, align 8
  %122 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %9, align 8
  %123 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = add i64 %124, 1
  store i64 %125, i64* %123, align 8
  %126 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %9, align 8
  %127 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %126, i32 0, i32 3
  store i64 0, i64* %127, align 8
  %128 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %9, align 8
  %129 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %128, i32 0, i32 1
  store i32 0, i32* %129, align 8
  br label %130

130:                                              ; preds = %119, %116
  %131 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %9, align 8
  %132 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %9, align 8
  %135 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %134, i32 0, i32 2
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp eq i64 %133, %138
  br i1 %139, label %140, label %149

140:                                              ; preds = %130
  %141 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %6, align 8
  %142 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %9, align 8
  %143 = call i32 @dwc2_host_complete(%struct.dwc2_hsotg* %141, %struct.dwc2_qtd* %142, i32 0)
  %144 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %6, align 8
  %145 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %7, align 8
  %146 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %9, align 8
  %147 = load i32, i32* @DWC2_HC_XFER_URB_COMPLETE, align 4
  %148 = call i32 @dwc2_release_channel(%struct.dwc2_hsotg* %144, %struct.dwc2_host_chan* %145, %struct.dwc2_qtd* %146, i32 %147)
  br label %155

149:                                              ; preds = %130
  %150 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %6, align 8
  %151 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %7, align 8
  %152 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %9, align 8
  %153 = load i32, i32* @DWC2_HC_XFER_NO_HALT_STATUS, align 4
  %154 = call i32 @dwc2_release_channel(%struct.dwc2_hsotg* %150, %struct.dwc2_host_chan* %151, %struct.dwc2_qtd* %152, i32 %153)
  br label %155

155:                                              ; preds = %149, %140
  store i32 1, i32* %5, align 4
  br label %156

156:                                              ; preds = %155, %42, %18
  %157 = load i32, i32* %5, align 4
  ret i32 %157
}

declare dso_local i32 @dwc2_get_actual_xfer_length(%struct.dwc2_hsotg*, %struct.dwc2_host_chan*, i32, %struct.dwc2_qtd*, i32, i32*) #1

declare dso_local i32 @dev_vdbg(i32, i8*) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i64, i32, i32) #1

declare dso_local i32 @dwc2_readl(%struct.dwc2_hsotg*, i32) #1

declare dso_local i32 @HCTSIZ(i32) #1

declare dso_local i32 @dwc2_host_complete(%struct.dwc2_hsotg*, %struct.dwc2_qtd*, i32) #1

declare dso_local i32 @dwc2_release_channel(%struct.dwc2_hsotg*, %struct.dwc2_host_chan*, %struct.dwc2_qtd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
