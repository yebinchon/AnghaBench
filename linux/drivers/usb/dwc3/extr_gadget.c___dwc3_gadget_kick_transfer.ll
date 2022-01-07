; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c___dwc3_gadget_kick_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c___dwc3_gadget_kick_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3_ep = type { i32, i32, i32, %struct.TYPE_4__, i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.dwc3_gadget_ep_cmd_params = type { i32, i32 }
%struct.dwc3_request = type { %struct.dwc3_gadget_ep_cmd_params*, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@DWC3_EP_TRANSFER_STARTED = common dso_local global i32 0, align 4
@DWC3_EP_PENDING_REQUEST = common dso_local global i32 0, align 4
@DWC3_DEPCMD_STARTTRANSFER = common dso_local global i32 0, align 4
@DWC3_DEPCMD_UPDATETRANSFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc3_ep*)* @__dwc3_gadget_kick_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__dwc3_gadget_kick_transfer(%struct.dwc3_ep* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dwc3_ep*, align 8
  %4 = alloca %struct.dwc3_gadget_ep_cmd_params, align 4
  %5 = alloca %struct.dwc3_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dwc3_ep* %0, %struct.dwc3_ep** %3, align 8
  %9 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %10 = call i32 @dwc3_calc_trbs_left(%struct.dwc3_ep* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %108

13:                                               ; preds = %1
  %14 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %15 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @DWC3_EP_TRANSFER_STARTED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %6, align 4
  %22 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %23 = call i32 @dwc3_prepare_trbs(%struct.dwc3_ep* %22)
  %24 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %25 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %24, i32 0, i32 5
  %26 = call %struct.dwc3_request* @next_request(i32* %25)
  store %struct.dwc3_request* %26, %struct.dwc3_request** %5, align 8
  %27 = load %struct.dwc3_request*, %struct.dwc3_request** %5, align 8
  %28 = icmp ne %struct.dwc3_request* %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %13
  %30 = load i32, i32* @DWC3_EP_PENDING_REQUEST, align 4
  %31 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %32 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  store i32 0, i32* %2, align 4
  br label %108

35:                                               ; preds = %13
  %36 = call i32 @memset(%struct.dwc3_gadget_ep_cmd_params* %4, i32 0, i32 8)
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %78

39:                                               ; preds = %35
  %40 = load %struct.dwc3_request*, %struct.dwc3_request** %5, align 8
  %41 = getelementptr inbounds %struct.dwc3_request, %struct.dwc3_request* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @upper_32_bits(i32 %42)
  %44 = getelementptr inbounds %struct.dwc3_gadget_ep_cmd_params, %struct.dwc3_gadget_ep_cmd_params* %4, i32 0, i32 1
  store i32 %43, i32* %44, align 4
  %45 = load %struct.dwc3_request*, %struct.dwc3_request** %5, align 8
  %46 = getelementptr inbounds %struct.dwc3_request, %struct.dwc3_request* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @lower_32_bits(i32 %47)
  %49 = getelementptr inbounds %struct.dwc3_gadget_ep_cmd_params, %struct.dwc3_gadget_ep_cmd_params* %4, i32 0, i32 0
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* @DWC3_DEPCMD_STARTTRANSFER, align 4
  store i32 %50, i32* %8, align 4
  %51 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %52 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %39
  %56 = load %struct.dwc3_request*, %struct.dwc3_request** %5, align 8
  %57 = getelementptr inbounds %struct.dwc3_request, %struct.dwc3_request* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @DWC3_DEPCMD_PARAM(i32 %59)
  %61 = load i32, i32* %8, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %55, %39
  %64 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %65 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @usb_endpoint_xfer_isoc(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %63
  %71 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %72 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @DWC3_DEPCMD_PARAM(i32 %73)
  %75 = load i32, i32* %8, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %8, align 4
  br label %77

77:                                               ; preds = %70, %63
  br label %85

78:                                               ; preds = %35
  %79 = load i32, i32* @DWC3_DEPCMD_UPDATETRANSFER, align 4
  %80 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %81 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @DWC3_DEPCMD_PARAM(i32 %82)
  %84 = or i32 %79, %83
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %78, %77
  %86 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @dwc3_send_gadget_ep_cmd(%struct.dwc3_ep* %86, i32 %87, %struct.dwc3_gadget_ep_cmd_params* %4)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %107

91:                                               ; preds = %85
  %92 = load %struct.dwc3_request*, %struct.dwc3_request** %5, align 8
  %93 = getelementptr inbounds %struct.dwc3_request, %struct.dwc3_request* %92, i32 0, i32 0
  %94 = load %struct.dwc3_gadget_ep_cmd_params*, %struct.dwc3_gadget_ep_cmd_params** %93, align 8
  %95 = icmp ne %struct.dwc3_gadget_ep_cmd_params* %94, null
  br i1 %95, label %96, label %101

96:                                               ; preds = %91
  %97 = load %struct.dwc3_request*, %struct.dwc3_request** %5, align 8
  %98 = getelementptr inbounds %struct.dwc3_request, %struct.dwc3_request* %97, i32 0, i32 0
  %99 = load %struct.dwc3_gadget_ep_cmd_params*, %struct.dwc3_gadget_ep_cmd_params** %98, align 8
  %100 = call i32 @memset(%struct.dwc3_gadget_ep_cmd_params* %99, i32 0, i32 4)
  br label %101

101:                                              ; preds = %96, %91
  %102 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %103 = load %struct.dwc3_request*, %struct.dwc3_request** %5, align 8
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @dwc3_gadget_del_and_unmap_request(%struct.dwc3_ep* %102, %struct.dwc3_request* %103, i32 %104)
  %106 = load i32, i32* %7, align 4
  store i32 %106, i32* %2, align 4
  br label %108

107:                                              ; preds = %85
  store i32 0, i32* %2, align 4
  br label %108

108:                                              ; preds = %107, %101, %29, %12
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i32 @dwc3_calc_trbs_left(%struct.dwc3_ep*) #1

declare dso_local i32 @dwc3_prepare_trbs(%struct.dwc3_ep*) #1

declare dso_local %struct.dwc3_request* @next_request(i32*) #1

declare dso_local i32 @memset(%struct.dwc3_gadget_ep_cmd_params*, i32, i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @DWC3_DEPCMD_PARAM(i32) #1

declare dso_local i64 @usb_endpoint_xfer_isoc(i32) #1

declare dso_local i32 @dwc3_send_gadget_ep_cmd(%struct.dwc3_ep*, i32, %struct.dwc3_gadget_ep_cmd_params*) #1

declare dso_local i32 @dwc3_gadget_del_and_unmap_request(%struct.dwc3_ep*, %struct.dwc3_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
