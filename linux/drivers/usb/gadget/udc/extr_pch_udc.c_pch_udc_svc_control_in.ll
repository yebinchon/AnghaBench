; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pch_udc.c_pch_udc_svc_control_in.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_pch_udc.c_pch_udc_svc_control_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_udc_dev = type { i32, %struct.pch_udc_ep* }
%struct.pch_udc_ep = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@UDC_EP0IN_IDX = common dso_local global i64 0, align 8
@UDC_EP0OUT_IDX = common dso_local global i64 0, align 8
@UDC_EPSTS_IN = common dso_local global i32 0, align 4
@UDC_EPSTS_BNA = common dso_local global i32 0, align 4
@UDC_EPSTS_HE = common dso_local global i32 0, align 4
@UDC_EPSTS_TDC = common dso_local global i32 0, align 4
@UDC_EPSTS_RCS = common dso_local global i32 0, align 4
@UDC_EPSTS_TXEMPTY = common dso_local global i32 0, align 4
@UDC_EPSTS_XFERDONE = common dso_local global i32 0, align 4
@DMA_DIR_RX = common dso_local global i32 0, align 4
@PCH_UDC_BUFF_STS = common dso_local global i32 0, align 4
@PCH_UDC_BS_HST_RDY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pch_udc_dev*)* @pch_udc_svc_control_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pch_udc_svc_control_in(%struct.pch_udc_dev* %0) #0 {
  %2 = alloca %struct.pch_udc_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pch_udc_ep*, align 8
  %5 = alloca %struct.pch_udc_ep*, align 8
  store %struct.pch_udc_dev* %0, %struct.pch_udc_dev** %2, align 8
  %6 = load %struct.pch_udc_dev*, %struct.pch_udc_dev** %2, align 8
  %7 = getelementptr inbounds %struct.pch_udc_dev, %struct.pch_udc_dev* %6, i32 0, i32 1
  %8 = load %struct.pch_udc_ep*, %struct.pch_udc_ep** %7, align 8
  %9 = load i64, i64* @UDC_EP0IN_IDX, align 8
  %10 = getelementptr inbounds %struct.pch_udc_ep, %struct.pch_udc_ep* %8, i64 %9
  store %struct.pch_udc_ep* %10, %struct.pch_udc_ep** %4, align 8
  %11 = load %struct.pch_udc_dev*, %struct.pch_udc_dev** %2, align 8
  %12 = getelementptr inbounds %struct.pch_udc_dev, %struct.pch_udc_dev* %11, i32 0, i32 1
  %13 = load %struct.pch_udc_ep*, %struct.pch_udc_ep** %12, align 8
  %14 = load i64, i64* @UDC_EP0OUT_IDX, align 8
  %15 = getelementptr inbounds %struct.pch_udc_ep, %struct.pch_udc_ep* %13, i64 %14
  store %struct.pch_udc_ep* %15, %struct.pch_udc_ep** %5, align 8
  %16 = load %struct.pch_udc_ep*, %struct.pch_udc_ep** %4, align 8
  %17 = getelementptr inbounds %struct.pch_udc_ep, %struct.pch_udc_ep* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %3, align 4
  %19 = load %struct.pch_udc_ep*, %struct.pch_udc_ep** %4, align 8
  %20 = getelementptr inbounds %struct.pch_udc_ep, %struct.pch_udc_ep* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @UDC_EPSTS_IN, align 4
  %23 = load i32, i32* @UDC_EPSTS_BNA, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @UDC_EPSTS_HE, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @UDC_EPSTS_TDC, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @UDC_EPSTS_RCS, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @UDC_EPSTS_TXEMPTY, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @UDC_EPSTS_XFERDONE, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %21, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %1
  br label %105

38:                                               ; preds = %1
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @UDC_EPSTS_BNA, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %105

44:                                               ; preds = %38
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @UDC_EPSTS_HE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %105

50:                                               ; preds = %44
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @UDC_EPSTS_TDC, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %87

55:                                               ; preds = %50
  %56 = load %struct.pch_udc_dev*, %struct.pch_udc_dev** %2, align 8
  %57 = getelementptr inbounds %struct.pch_udc_dev, %struct.pch_udc_dev* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %87, label %60

60:                                               ; preds = %55
  %61 = load %struct.pch_udc_ep*, %struct.pch_udc_ep** %4, align 8
  %62 = call i32 @pch_udc_complete_transfer(%struct.pch_udc_ep* %61)
  %63 = load %struct.pch_udc_dev*, %struct.pch_udc_dev** %2, align 8
  %64 = load i32, i32* @DMA_DIR_RX, align 4
  %65 = call i32 @pch_udc_clear_dma(%struct.pch_udc_dev* %63, i32 %64)
  %66 = load %struct.pch_udc_ep*, %struct.pch_udc_ep** %5, align 8
  %67 = getelementptr inbounds %struct.pch_udc_ep, %struct.pch_udc_ep* %66, i32 0, i32 1
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @PCH_UDC_BUFF_STS, align 4
  %72 = xor i32 %71, -1
  %73 = and i32 %70, %72
  %74 = load i32, i32* @PCH_UDC_BS_HST_RDY, align 4
  %75 = or i32 %73, %74
  %76 = load %struct.pch_udc_ep*, %struct.pch_udc_ep** %5, align 8
  %77 = getelementptr inbounds %struct.pch_udc_ep, %struct.pch_udc_ep* %76, i32 0, i32 1
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  store i32 %75, i32* %79, align 4
  %80 = load %struct.pch_udc_ep*, %struct.pch_udc_ep** %5, align 8
  %81 = call i32 @pch_udc_ep_clear_nak(%struct.pch_udc_ep* %80)
  %82 = load %struct.pch_udc_dev*, %struct.pch_udc_dev** %2, align 8
  %83 = load i32, i32* @DMA_DIR_RX, align 4
  %84 = call i32 @pch_udc_set_dma(%struct.pch_udc_dev* %82, i32 %83)
  %85 = load %struct.pch_udc_ep*, %struct.pch_udc_ep** %5, align 8
  %86 = call i32 @pch_udc_ep_set_rrdy(%struct.pch_udc_ep* %85)
  br label %87

87:                                               ; preds = %60, %55, %50
  %88 = load i32, i32* %3, align 4
  %89 = load i32, i32* @UDC_EPSTS_IN, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %105

92:                                               ; preds = %87
  %93 = load i32, i32* %3, align 4
  %94 = load i32, i32* @UDC_EPSTS_TDC, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %105, label %97

97:                                               ; preds = %92
  %98 = load i32, i32* %3, align 4
  %99 = load i32, i32* @UDC_EPSTS_TXEMPTY, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %97
  %103 = load %struct.pch_udc_ep*, %struct.pch_udc_ep** %4, align 8
  %104 = call i32 @pch_udc_start_next_txrequest(%struct.pch_udc_ep* %103)
  br label %105

105:                                              ; preds = %37, %43, %49, %102, %97, %92, %87
  ret void
}

declare dso_local i32 @pch_udc_complete_transfer(%struct.pch_udc_ep*) #1

declare dso_local i32 @pch_udc_clear_dma(%struct.pch_udc_dev*, i32) #1

declare dso_local i32 @pch_udc_ep_clear_nak(%struct.pch_udc_ep*) #1

declare dso_local i32 @pch_udc_set_dma(%struct.pch_udc_dev*, i32) #1

declare dso_local i32 @pch_udc_ep_set_rrdy(%struct.pch_udc_ep*) #1

declare dso_local i32 @pch_udc_start_next_txrequest(%struct.pch_udc_ep*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
