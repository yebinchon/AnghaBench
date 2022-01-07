; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_ep0.c_dwc3_ep0_complete_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_ep0.c_dwc3_ep0_complete_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3 = type { i32, i32, %struct.dwc3_ep**, %struct.dwc3_trb*, i32 }
%struct.dwc3_ep = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.dwc3_trb = type { i64, i32 }
%struct.dwc3_event_depevt = type { i32 }
%struct.dwc3_request = type { i64, %struct.usb_request }
%struct.usb_request = type { i64, i64, i64 }

@DWC3_EP0_NRDY_STATUS = common dso_local global i32 0, align 4
@DWC3_TRBSTS_SETUP_PENDING = common dso_local global i64 0, align 8
@ECONNRESET = common dso_local global i32 0, align 4
@DWC3_TRB_SIZE_MASK = common dso_local global i64 0, align 8
@DWC3_TRB_CTRL_HWO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc3*, %struct.dwc3_event_depevt*)* @dwc3_ep0_complete_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc3_ep0_complete_data(%struct.dwc3* %0, %struct.dwc3_event_depevt* %1) #0 {
  %3 = alloca %struct.dwc3*, align 8
  %4 = alloca %struct.dwc3_event_depevt*, align 8
  %5 = alloca %struct.dwc3_request*, align 8
  %6 = alloca %struct.usb_request*, align 8
  %7 = alloca %struct.dwc3_trb*, align 8
  %8 = alloca %struct.dwc3_ep*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.dwc3* %0, %struct.dwc3** %3, align 8
  store %struct.dwc3_event_depevt* %1, %struct.dwc3_event_depevt** %4, align 8
  store i64 0, i64* %9, align 8
  %13 = load %struct.dwc3_event_depevt*, %struct.dwc3_event_depevt** %4, align 8
  %14 = getelementptr inbounds %struct.dwc3_event_depevt, %struct.dwc3_event_depevt* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %12, align 4
  %16 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %17 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %16, i32 0, i32 2
  %18 = load %struct.dwc3_ep**, %struct.dwc3_ep*** %17, align 8
  %19 = getelementptr inbounds %struct.dwc3_ep*, %struct.dwc3_ep** %18, i64 0
  %20 = load %struct.dwc3_ep*, %struct.dwc3_ep** %19, align 8
  store %struct.dwc3_ep* %20, %struct.dwc3_ep** %8, align 8
  %21 = load i32, i32* @DWC3_EP0_NRDY_STATUS, align 4
  %22 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %23 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 8
  %24 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %25 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %24, i32 0, i32 3
  %26 = load %struct.dwc3_trb*, %struct.dwc3_trb** %25, align 8
  store %struct.dwc3_trb* %26, %struct.dwc3_trb** %7, align 8
  %27 = load %struct.dwc3_ep*, %struct.dwc3_ep** %8, align 8
  %28 = load %struct.dwc3_trb*, %struct.dwc3_trb** %7, align 8
  %29 = call i32 @trace_dwc3_complete_trb(%struct.dwc3_ep* %27, %struct.dwc3_trb* %28)
  %30 = load %struct.dwc3_ep*, %struct.dwc3_ep** %8, align 8
  %31 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %30, i32 0, i32 2
  %32 = call %struct.dwc3_request* @next_request(i32* %31)
  store %struct.dwc3_request* %32, %struct.dwc3_request** %5, align 8
  %33 = load %struct.dwc3_request*, %struct.dwc3_request** %5, align 8
  %34 = icmp ne %struct.dwc3_request* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %2
  br label %150

36:                                               ; preds = %2
  %37 = load %struct.dwc3_trb*, %struct.dwc3_trb** %7, align 8
  %38 = getelementptr inbounds %struct.dwc3_trb, %struct.dwc3_trb* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i64 @DWC3_TRB_SIZE_TRBSTS(i64 %39)
  store i64 %40, i64* %10, align 8
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* @DWC3_TRBSTS_SETUP_PENDING, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %36
  %45 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %46 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = load %struct.dwc3_request*, %struct.dwc3_request** %5, align 8
  %48 = icmp ne %struct.dwc3_request* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load %struct.dwc3_ep*, %struct.dwc3_ep** %8, align 8
  %51 = load %struct.dwc3_request*, %struct.dwc3_request** %5, align 8
  %52 = load i32, i32* @ECONNRESET, align 4
  %53 = sub nsw i32 0, %52
  %54 = call i32 @dwc3_gadget_giveback(%struct.dwc3_ep* %50, %struct.dwc3_request* %51, i32 %53)
  br label %55

55:                                               ; preds = %49, %44
  br label %150

56:                                               ; preds = %36
  %57 = load %struct.dwc3_request*, %struct.dwc3_request** %5, align 8
  %58 = getelementptr inbounds %struct.dwc3_request, %struct.dwc3_request* %57, i32 0, i32 1
  store %struct.usb_request* %58, %struct.usb_request** %6, align 8
  %59 = load %struct.dwc3_trb*, %struct.dwc3_trb** %7, align 8
  %60 = getelementptr inbounds %struct.dwc3_trb, %struct.dwc3_trb* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @DWC3_TRB_SIZE_MASK, align 8
  %63 = and i64 %61, %62
  store i64 %63, i64* %11, align 8
  %64 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %65 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %11, align 8
  %68 = sub nsw i64 %66, %67
  store i64 %68, i64* %9, align 8
  %69 = load i64, i64* %9, align 8
  %70 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %71 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %72, %69
  store i64 %73, i64* %71, align 8
  %74 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %75 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.dwc3_ep*, %struct.dwc3_ep** %8, align 8
  %78 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i64 @IS_ALIGNED(i64 %76, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %56
  %84 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %85 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %90 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %88, %83, %56
  %94 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %95 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %131

98:                                               ; preds = %93, %88
  %99 = load %struct.dwc3_trb*, %struct.dwc3_trb** %7, align 8
  %100 = getelementptr inbounds %struct.dwc3_trb, %struct.dwc3_trb* %99, i32 1
  store %struct.dwc3_trb* %100, %struct.dwc3_trb** %7, align 8
  %101 = load i32, i32* @DWC3_TRB_CTRL_HWO, align 4
  %102 = xor i32 %101, -1
  %103 = load %struct.dwc3_trb*, %struct.dwc3_trb** %7, align 8
  %104 = getelementptr inbounds %struct.dwc3_trb, %struct.dwc3_trb* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = and i32 %105, %102
  store i32 %106, i32* %104, align 8
  %107 = load %struct.dwc3_ep*, %struct.dwc3_ep** %8, align 8
  %108 = load %struct.dwc3_trb*, %struct.dwc3_trb** %7, align 8
  %109 = call i32 @trace_dwc3_complete_trb(%struct.dwc3_ep* %107, %struct.dwc3_trb* %108)
  %110 = load %struct.dwc3_request*, %struct.dwc3_request** %5, align 8
  %111 = getelementptr inbounds %struct.dwc3_request, %struct.dwc3_request* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %121

114:                                              ; preds = %98
  %115 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %116 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %115, i32 0, i32 2
  %117 = load %struct.dwc3_ep**, %struct.dwc3_ep*** %116, align 8
  %118 = getelementptr inbounds %struct.dwc3_ep*, %struct.dwc3_ep** %117, i64 1
  %119 = load %struct.dwc3_ep*, %struct.dwc3_ep** %118, align 8
  %120 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %119, i32 0, i32 0
  store i64 0, i64* %120, align 8
  br label %128

121:                                              ; preds = %98
  %122 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %123 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %122, i32 0, i32 2
  %124 = load %struct.dwc3_ep**, %struct.dwc3_ep*** %123, align 8
  %125 = getelementptr inbounds %struct.dwc3_ep*, %struct.dwc3_ep** %124, i64 0
  %126 = load %struct.dwc3_ep*, %struct.dwc3_ep** %125, align 8
  %127 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %126, i32 0, i32 0
  store i64 0, i64* %127, align 8
  br label %128

128:                                              ; preds = %121, %114
  %129 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %130 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %129, i32 0, i32 1
  store i32 0, i32* %130, align 4
  br label %131

131:                                              ; preds = %128, %93
  %132 = load i32, i32* %12, align 4
  %133 = and i32 %132, 1
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %146

135:                                              ; preds = %131
  %136 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %137 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.usb_request*, %struct.usb_request** %6, align 8
  %140 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = icmp slt i64 %138, %141
  br i1 %142, label %143, label %146

143:                                              ; preds = %135
  %144 = load %struct.dwc3*, %struct.dwc3** %3, align 8
  %145 = call i32 @dwc3_ep0_stall_and_restart(%struct.dwc3* %144)
  br label %150

146:                                              ; preds = %135, %131
  %147 = load %struct.dwc3_ep*, %struct.dwc3_ep** %8, align 8
  %148 = load %struct.dwc3_request*, %struct.dwc3_request** %5, align 8
  %149 = call i32 @dwc3_gadget_giveback(%struct.dwc3_ep* %147, %struct.dwc3_request* %148, i32 0)
  br label %150

150:                                              ; preds = %35, %55, %146, %143
  ret void
}

declare dso_local i32 @trace_dwc3_complete_trb(%struct.dwc3_ep*, %struct.dwc3_trb*) #1

declare dso_local %struct.dwc3_request* @next_request(i32*) #1

declare dso_local i64 @DWC3_TRB_SIZE_TRBSTS(i64) #1

declare dso_local i32 @dwc3_gadget_giveback(%struct.dwc3_ep*, %struct.dwc3_request*, i32) #1

declare dso_local i64 @IS_ALIGNED(i64, i32) #1

declare dso_local i32 @dwc3_ep0_stall_and_restart(%struct.dwc3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
