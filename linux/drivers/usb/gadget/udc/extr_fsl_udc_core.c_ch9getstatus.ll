; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fsl_udc_core.c_ch9getstatus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fsl_udc_core.c_ch9getstatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_udc = type { i32, i32, %struct.fsl_req*, i32, %struct.TYPE_5__, %struct.fsl_ep* }
%struct.fsl_req = type { i32, %struct.TYPE_8__, i64, %struct.fsl_ep* }
%struct.TYPE_8__ = type { i32, i32, i64, i32, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.fsl_ep = type { i32, %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@USB_RECIP_MASK = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@USB_DEVICE_REMOTE_WAKEUP = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@USB_RECIP_ENDPOINT = common dso_local global i32 0, align 4
@USB_ENDPOINT_HALT = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@fsl_noop_complete = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@DATA_STATE_XMIT = common dso_local global i32 0, align 4
@EP_DIR_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_udc*, i32, i32, i32, i32)* @ch9getstatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ch9getstatus(%struct.fsl_udc* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.fsl_udc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.fsl_req*, align 8
  %13 = alloca %struct.fsl_ep*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.fsl_ep*, align 8
  store %struct.fsl_udc* %0, %struct.fsl_udc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %16 = load %struct.fsl_udc*, %struct.fsl_udc** %6, align 8
  %17 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %16, i32 0, i32 5
  %18 = load %struct.fsl_ep*, %struct.fsl_ep** %17, align 8
  %19 = getelementptr inbounds %struct.fsl_ep, %struct.fsl_ep* %18, i64 0
  store %struct.fsl_ep* %19, %struct.fsl_ep** %13, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @USB_RECIP_MASK, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %5
  %26 = load %struct.fsl_udc*, %struct.fsl_udc** %6, align 8
  %27 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %11, align 4
  %30 = load %struct.fsl_udc*, %struct.fsl_udc** %6, align 8
  %31 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @USB_DEVICE_REMOTE_WAKEUP, align 4
  %34 = shl i32 %32, %33
  %35 = load i32, i32* %11, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %11, align 4
  br label %71

37:                                               ; preds = %5
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @USB_RECIP_MASK, align 4
  %40 = and i32 %38, %39
  %41 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  store i32 0, i32* %11, align 4
  br label %70

44:                                               ; preds = %37
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @USB_RECIP_MASK, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* @USB_RECIP_ENDPOINT, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %69

50:                                               ; preds = %44
  %51 = load %struct.fsl_udc*, %struct.fsl_udc** %6, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @get_pipe_by_windex(i32 %52)
  %54 = call %struct.fsl_ep* @get_ep_by_pipe(%struct.fsl_udc* %51, i32 %53)
  store %struct.fsl_ep* %54, %struct.fsl_ep** %15, align 8
  %55 = load %struct.fsl_ep*, %struct.fsl_ep** %15, align 8
  %56 = getelementptr inbounds %struct.fsl_ep, %struct.fsl_ep* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %50
  br label %144

61:                                               ; preds = %50
  %62 = load %struct.fsl_ep*, %struct.fsl_ep** %15, align 8
  %63 = call i32 @ep_index(%struct.fsl_ep* %62)
  %64 = load %struct.fsl_ep*, %struct.fsl_ep** %15, align 8
  %65 = call i32 @ep_is_in(%struct.fsl_ep* %64)
  %66 = call i32 @dr_ep_get_stall(i32 %63, i32 %65)
  %67 = load i32, i32* @USB_ENDPOINT_HALT, align 4
  %68 = shl i32 %66, %67
  store i32 %68, i32* %11, align 4
  br label %69

69:                                               ; preds = %61, %44
  br label %70

70:                                               ; preds = %69, %43
  br label %71

71:                                               ; preds = %70, %25
  %72 = load i32, i32* @USB_DIR_IN, align 4
  %73 = load %struct.fsl_udc*, %struct.fsl_udc** %6, align 8
  %74 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 8
  %75 = load %struct.fsl_udc*, %struct.fsl_udc** %6, align 8
  %76 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %75, i32 0, i32 2
  %77 = load %struct.fsl_req*, %struct.fsl_req** %76, align 8
  store %struct.fsl_req* %77, %struct.fsl_req** %12, align 8
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @cpu_to_le16(i32 %78)
  %80 = load %struct.fsl_req*, %struct.fsl_req** %12, align 8
  %81 = getelementptr inbounds %struct.fsl_req, %struct.fsl_req* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = inttoptr i64 %83 to i32*
  store i32 %79, i32* %84, align 4
  %85 = load %struct.fsl_ep*, %struct.fsl_ep** %13, align 8
  %86 = load %struct.fsl_req*, %struct.fsl_req** %12, align 8
  %87 = getelementptr inbounds %struct.fsl_req, %struct.fsl_req* %86, i32 0, i32 3
  store %struct.fsl_ep* %85, %struct.fsl_ep** %87, align 8
  %88 = load %struct.fsl_req*, %struct.fsl_req** %12, align 8
  %89 = getelementptr inbounds %struct.fsl_req, %struct.fsl_req* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  store i32 2, i32* %90, align 8
  %91 = load i32, i32* @EINPROGRESS, align 4
  %92 = sub nsw i32 0, %91
  %93 = load %struct.fsl_req*, %struct.fsl_req** %12, align 8
  %94 = getelementptr inbounds %struct.fsl_req, %struct.fsl_req* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 3
  store i32 %92, i32* %95, align 8
  %96 = load %struct.fsl_req*, %struct.fsl_req** %12, align 8
  %97 = getelementptr inbounds %struct.fsl_req, %struct.fsl_req* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 2
  store i64 0, i64* %98, align 8
  %99 = load i32, i32* @fsl_noop_complete, align 4
  %100 = load %struct.fsl_req*, %struct.fsl_req** %12, align 8
  %101 = getelementptr inbounds %struct.fsl_req, %struct.fsl_req* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  store i32 %99, i32* %102, align 4
  %103 = load %struct.fsl_req*, %struct.fsl_req** %12, align 8
  %104 = getelementptr inbounds %struct.fsl_req, %struct.fsl_req* %103, i32 0, i32 2
  store i64 0, i64* %104, align 8
  %105 = load %struct.fsl_ep*, %struct.fsl_ep** %13, align 8
  %106 = getelementptr inbounds %struct.fsl_ep, %struct.fsl_ep* %105, i32 0, i32 1
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  %109 = load %struct.fsl_req*, %struct.fsl_req** %12, align 8
  %110 = getelementptr inbounds %struct.fsl_req, %struct.fsl_req* %109, i32 0, i32 1
  %111 = load %struct.fsl_ep*, %struct.fsl_ep** %13, align 8
  %112 = call i32 @ep_is_in(%struct.fsl_ep* %111)
  %113 = call i32 @usb_gadget_map_request(i32* %108, %struct.TYPE_8__* %110, i32 %112)
  store i32 %113, i32* %14, align 4
  %114 = load i32, i32* %14, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %71
  br label %144

117:                                              ; preds = %71
  %118 = load %struct.fsl_req*, %struct.fsl_req** %12, align 8
  %119 = load i32, i32* @GFP_ATOMIC, align 4
  %120 = call i64 @fsl_req_to_dtd(%struct.fsl_req* %118, i32 %119)
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %117
  %123 = load %struct.fsl_ep*, %struct.fsl_ep** %13, align 8
  %124 = load %struct.fsl_req*, %struct.fsl_req** %12, align 8
  %125 = call i32 @fsl_queue_td(%struct.fsl_ep* %123, %struct.fsl_req* %124)
  br label %127

126:                                              ; preds = %117
  br label %144

127:                                              ; preds = %122
  %128 = load %struct.fsl_req*, %struct.fsl_req** %12, align 8
  %129 = getelementptr inbounds %struct.fsl_req, %struct.fsl_req* %128, i32 0, i32 0
  %130 = load %struct.fsl_ep*, %struct.fsl_ep** %13, align 8
  %131 = getelementptr inbounds %struct.fsl_ep, %struct.fsl_ep* %130, i32 0, i32 0
  %132 = call i32 @list_add_tail(i32* %129, i32* %131)
  %133 = load i32, i32* @DATA_STATE_XMIT, align 4
  %134 = load %struct.fsl_udc*, %struct.fsl_udc** %6, align 8
  %135 = getelementptr inbounds %struct.fsl_udc, %struct.fsl_udc* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 4
  %136 = load %struct.fsl_udc*, %struct.fsl_udc** %6, align 8
  %137 = load i32, i32* @EP_DIR_OUT, align 4
  %138 = call i64 @ep0_prime_status(%struct.fsl_udc* %136, i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %127
  %141 = load %struct.fsl_udc*, %struct.fsl_udc** %6, align 8
  %142 = call i32 @ep0stall(%struct.fsl_udc* %141)
  br label %143

143:                                              ; preds = %140, %127
  br label %147

144:                                              ; preds = %126, %116, %60
  %145 = load %struct.fsl_udc*, %struct.fsl_udc** %6, align 8
  %146 = call i32 @ep0stall(%struct.fsl_udc* %145)
  br label %147

147:                                              ; preds = %144, %143
  ret void
}

declare dso_local %struct.fsl_ep* @get_ep_by_pipe(%struct.fsl_udc*, i32) #1

declare dso_local i32 @get_pipe_by_windex(i32) #1

declare dso_local i32 @dr_ep_get_stall(i32, i32) #1

declare dso_local i32 @ep_index(%struct.fsl_ep*) #1

declare dso_local i32 @ep_is_in(%struct.fsl_ep*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @usb_gadget_map_request(i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i64 @fsl_req_to_dtd(%struct.fsl_req*, i32) #1

declare dso_local i32 @fsl_queue_td(%struct.fsl_ep*, %struct.fsl_req*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i64 @ep0_prime_status(%struct.fsl_udc*, i32) #1

declare dso_local i32 @ep0stall(%struct.fsl_udc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
