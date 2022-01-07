; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_gadget_ep_reclaim_completed_trb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_gadget_ep_reclaim_completed_trb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3_ep = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.dwc3_request = type { i32, i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.dwc3_trb = type { i32, i32 }
%struct.dwc3_event_depevt = type { i32 }

@DWC3_TRB_CTRL_HWO = common dso_local global i32 0, align 4
@DWC3_TRBCTL_ISOCHRONOUS_FIRST = common dso_local global i32 0, align 4
@DWC3_TRB_CTRL_CHN = common dso_local global i32 0, align 4
@DWC3_TRB_SIZE_MASK = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@DEPEVT_STATUS_SHORT = common dso_local global i32 0, align 4
@DEPEVT_STATUS_IOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc3_ep*, %struct.dwc3_request*, %struct.dwc3_trb*, %struct.dwc3_event_depevt*, i32, i32)* @dwc3_gadget_ep_reclaim_completed_trb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc3_gadget_ep_reclaim_completed_trb(%struct.dwc3_ep* %0, %struct.dwc3_request* %1, %struct.dwc3_trb* %2, %struct.dwc3_event_depevt* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.dwc3_ep*, align 8
  %9 = alloca %struct.dwc3_request*, align 8
  %10 = alloca %struct.dwc3_trb*, align 8
  %11 = alloca %struct.dwc3_event_depevt*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.dwc3_ep* %0, %struct.dwc3_ep** %8, align 8
  store %struct.dwc3_request* %1, %struct.dwc3_request** %9, align 8
  store %struct.dwc3_trb* %2, %struct.dwc3_trb** %10, align 8
  store %struct.dwc3_event_depevt* %3, %struct.dwc3_event_depevt** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load %struct.dwc3_ep*, %struct.dwc3_ep** %8, align 8
  %17 = call i32 @dwc3_ep_inc_deq(%struct.dwc3_ep* %16)
  %18 = load %struct.dwc3_ep*, %struct.dwc3_ep** %8, align 8
  %19 = load %struct.dwc3_trb*, %struct.dwc3_trb** %10, align 8
  %20 = call i32 @trace_dwc3_complete_trb(%struct.dwc3_ep* %18, %struct.dwc3_trb* %19)
  %21 = load %struct.dwc3_request*, %struct.dwc3_request** %9, align 8
  %22 = getelementptr inbounds %struct.dwc3_request, %struct.dwc3_request* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %22, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %6
  %28 = load %struct.dwc3_trb*, %struct.dwc3_trb** %10, align 8
  %29 = getelementptr inbounds %struct.dwc3_trb, %struct.dwc3_trb* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @DWC3_TRB_CTRL_HWO, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %27
  %35 = load i32, i32* @DWC3_TRB_CTRL_HWO, align 4
  %36 = xor i32 %35, -1
  %37 = load %struct.dwc3_trb*, %struct.dwc3_trb** %10, align 8
  %38 = getelementptr inbounds %struct.dwc3_trb, %struct.dwc3_trb* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %34, %27, %6
  %42 = load %struct.dwc3_ep*, %struct.dwc3_ep** %8, align 8
  %43 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @usb_endpoint_xfer_isoc(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %71

48:                                               ; preds = %41
  %49 = load %struct.dwc3_trb*, %struct.dwc3_trb** %10, align 8
  %50 = getelementptr inbounds %struct.dwc3_trb, %struct.dwc3_trb* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @DWC3_TRBCTL_ISOCHRONOUS_FIRST, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %48
  %56 = load %struct.dwc3_trb*, %struct.dwc3_trb** %10, align 8
  %57 = getelementptr inbounds %struct.dwc3_trb, %struct.dwc3_trb* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @DWC3_TRB_CTRL_GET_SID_SOFN(i32 %58)
  store i32 %59, i32* %15, align 4
  %60 = load %struct.dwc3_ep*, %struct.dwc3_ep** %8, align 8
  %61 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sub nsw i32 %62, 1
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %15, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %15, align 4
  %67 = load i32, i32* %15, align 4
  %68 = load %struct.dwc3_request*, %struct.dwc3_request** %9, align 8
  %69 = getelementptr inbounds %struct.dwc3_request, %struct.dwc3_request* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 8
  br label %71

71:                                               ; preds = %55, %48, %41
  %72 = load %struct.dwc3_request*, %struct.dwc3_request** %9, align 8
  %73 = getelementptr inbounds %struct.dwc3_request, %struct.dwc3_request* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %90

76:                                               ; preds = %71
  %77 = load %struct.dwc3_trb*, %struct.dwc3_trb** %10, align 8
  %78 = getelementptr inbounds %struct.dwc3_trb, %struct.dwc3_trb* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @DWC3_TRB_CTRL_CHN, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %90, label %83

83:                                               ; preds = %76
  %84 = load i32, i32* @DWC3_TRB_CTRL_HWO, align 4
  %85 = xor i32 %84, -1
  %86 = load %struct.dwc3_trb*, %struct.dwc3_trb** %10, align 8
  %87 = getelementptr inbounds %struct.dwc3_trb, %struct.dwc3_trb* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, %85
  store i32 %89, i32* %87, align 4
  store i32 1, i32* %7, align 4
  br label %133

90:                                               ; preds = %76, %71
  %91 = load %struct.dwc3_trb*, %struct.dwc3_trb** %10, align 8
  %92 = getelementptr inbounds %struct.dwc3_trb, %struct.dwc3_trb* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @DWC3_TRB_SIZE_MASK, align 4
  %95 = and i32 %93, %94
  store i32 %95, i32* %14, align 4
  %96 = load i32, i32* %14, align 4
  %97 = load %struct.dwc3_request*, %struct.dwc3_request** %9, align 8
  %98 = getelementptr inbounds %struct.dwc3_request, %struct.dwc3_request* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = add i32 %99, %96
  store i32 %100, i32* %98, align 8
  %101 = load %struct.dwc3_trb*, %struct.dwc3_trb** %10, align 8
  %102 = getelementptr inbounds %struct.dwc3_trb, %struct.dwc3_trb* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @DWC3_TRB_CTRL_HWO, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %90
  %108 = load i32, i32* %12, align 4
  %109 = load i32, i32* @ESHUTDOWN, align 4
  %110 = sub nsw i32 0, %109
  %111 = icmp ne i32 %108, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  store i32 1, i32* %7, align 4
  br label %133

113:                                              ; preds = %107, %90
  %114 = load %struct.dwc3_event_depevt*, %struct.dwc3_event_depevt** %11, align 8
  %115 = getelementptr inbounds %struct.dwc3_event_depevt, %struct.dwc3_event_depevt* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @DEPEVT_STATUS_SHORT, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %113
  %121 = load i32, i32* %13, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %120
  store i32 1, i32* %7, align 4
  br label %133

124:                                              ; preds = %120, %113
  %125 = load %struct.dwc3_event_depevt*, %struct.dwc3_event_depevt** %11, align 8
  %126 = getelementptr inbounds %struct.dwc3_event_depevt, %struct.dwc3_event_depevt* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @DEPEVT_STATUS_IOC, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %124
  store i32 1, i32* %7, align 4
  br label %133

132:                                              ; preds = %124
  store i32 0, i32* %7, align 4
  br label %133

133:                                              ; preds = %132, %131, %123, %112, %83
  %134 = load i32, i32* %7, align 4
  ret i32 %134
}

declare dso_local i32 @dwc3_ep_inc_deq(%struct.dwc3_ep*) #1

declare dso_local i32 @trace_dwc3_complete_trb(%struct.dwc3_ep*, %struct.dwc3_trb*) #1

declare dso_local i64 @usb_endpoint_xfer_isoc(i32) #1

declare dso_local i32 @DWC3_TRB_CTRL_GET_SID_SOFN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
