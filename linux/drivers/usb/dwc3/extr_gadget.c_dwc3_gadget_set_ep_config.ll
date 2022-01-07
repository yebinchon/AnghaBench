; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_gadget_set_ep_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_gadget_set_ep_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3_ep = type { i32, i32, i32, i64, i32, %struct.TYPE_4__, %struct.dwc3* }
%struct.TYPE_4__ = type { i64, %struct.usb_endpoint_descriptor*, %struct.usb_ss_ep_comp_descriptor* }
%struct.usb_endpoint_descriptor = type { i32 }
%struct.usb_ss_ep_comp_descriptor = type { i32 }
%struct.dwc3 = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.dwc3_gadget_ep_cmd_params = type { i32, i32, i32 }

@USB_SPEED_SUPER = common dso_local global i64 0, align 8
@DWC3_DEPCFG_ACTION_RESTORE = common dso_local global i32 0, align 4
@DWC3_DEPCFG_XFER_COMPLETE_EN = common dso_local global i32 0, align 4
@DWC3_DEPCFG_XFER_NOT_READY_EN = common dso_local global i32 0, align 4
@DWC3_DEPCFG_STREAM_CAPABLE = common dso_local global i32 0, align 4
@DWC3_DEPCFG_STREAM_EVENT_EN = common dso_local global i32 0, align 4
@DWC3_DEPCFG_XFER_IN_PROGRESS_EN = common dso_local global i32 0, align 4
@DWC3_DEPCMD_SETEPCONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc3_ep*, i32)* @dwc3_gadget_set_ep_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc3_gadget_set_ep_config(%struct.dwc3_ep* %0, i32 %1) #0 {
  %3 = alloca %struct.dwc3_ep*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usb_ss_ep_comp_descriptor*, align 8
  %6 = alloca %struct.usb_endpoint_descriptor*, align 8
  %7 = alloca %struct.dwc3_gadget_ep_cmd_params, align 4
  %8 = alloca %struct.dwc3*, align 8
  %9 = alloca i64, align 8
  store %struct.dwc3_ep* %0, %struct.dwc3_ep** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %11 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %10, i32 0, i32 6
  %12 = load %struct.dwc3*, %struct.dwc3** %11, align 8
  store %struct.dwc3* %12, %struct.dwc3** %8, align 8
  %13 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %14 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %13, i32 0, i32 5
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %16 = load %struct.usb_ss_ep_comp_descriptor*, %struct.usb_ss_ep_comp_descriptor** %15, align 8
  store %struct.usb_ss_ep_comp_descriptor* %16, %struct.usb_ss_ep_comp_descriptor** %5, align 8
  %17 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %18 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %17, i32 0, i32 5
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %19, align 8
  store %struct.usb_endpoint_descriptor* %20, %struct.usb_endpoint_descriptor** %6, align 8
  %21 = call i32 @memset(%struct.dwc3_gadget_ep_cmd_params* %7, i32 0, i32 12)
  %22 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %23 = call i32 @usb_endpoint_type(%struct.usb_endpoint_descriptor* %22)
  %24 = call i32 @DWC3_DEPCFG_EP_TYPE(i32 %23)
  %25 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %26 = call i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor* %25)
  %27 = call i32 @DWC3_DEPCFG_MAX_PACKET_SIZE(i32 %26)
  %28 = or i32 %24, %27
  %29 = getelementptr inbounds %struct.dwc3_gadget_ep_cmd_params, %struct.dwc3_gadget_ep_cmd_params* %7, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = load %struct.dwc3*, %struct.dwc3** %8, align 8
  %31 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @USB_SPEED_SUPER, align 8
  %35 = icmp sge i64 %33, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %2
  %37 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %38 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %37, i32 0, i32 5
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %9, align 8
  %41 = load i64, i64* %9, align 8
  %42 = sub nsw i64 %41, 1
  %43 = call i32 @DWC3_DEPCFG_BURST_SIZE(i64 %42)
  %44 = getelementptr inbounds %struct.dwc3_gadget_ep_cmd_params, %struct.dwc3_gadget_ep_cmd_params* %7, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %43
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %36, %2
  %48 = load i32, i32* %4, align 4
  %49 = getelementptr inbounds %struct.dwc3_gadget_ep_cmd_params, %struct.dwc3_gadget_ep_cmd_params* %7, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %48
  store i32 %51, i32* %49, align 4
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @DWC3_DEPCFG_ACTION_RESTORE, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %47
  %56 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %57 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = getelementptr inbounds %struct.dwc3_gadget_ep_cmd_params, %struct.dwc3_gadget_ep_cmd_params* %7, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %58
  store i32 %61, i32* %59, align 4
  br label %62

62:                                               ; preds = %55, %47
  %63 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %64 = call i64 @usb_endpoint_xfer_control(%struct.usb_endpoint_descriptor* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load i32, i32* @DWC3_DEPCFG_XFER_COMPLETE_EN, align 4
  %68 = getelementptr inbounds %struct.dwc3_gadget_ep_cmd_params, %struct.dwc3_gadget_ep_cmd_params* %7, i32 0, i32 1
  store i32 %67, i32* %68, align 4
  br label %69

69:                                               ; preds = %66, %62
  %70 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %71 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp sle i32 %72, 1
  br i1 %73, label %78, label %74

74:                                               ; preds = %69
  %75 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %76 = call i64 @usb_endpoint_xfer_isoc(%struct.usb_endpoint_descriptor* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %74, %69
  %79 = load i32, i32* @DWC3_DEPCFG_XFER_NOT_READY_EN, align 4
  %80 = getelementptr inbounds %struct.dwc3_gadget_ep_cmd_params, %struct.dwc3_gadget_ep_cmd_params* %7, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %79
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %78, %74
  %84 = load %struct.usb_ss_ep_comp_descriptor*, %struct.usb_ss_ep_comp_descriptor** %5, align 8
  %85 = call i64 @usb_ss_max_streams(%struct.usb_ss_ep_comp_descriptor* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %100

87:                                               ; preds = %83
  %88 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %89 = call i64 @usb_endpoint_xfer_bulk(%struct.usb_endpoint_descriptor* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %87
  %92 = load i32, i32* @DWC3_DEPCFG_STREAM_CAPABLE, align 4
  %93 = load i32, i32* @DWC3_DEPCFG_STREAM_EVENT_EN, align 4
  %94 = or i32 %92, %93
  %95 = getelementptr inbounds %struct.dwc3_gadget_ep_cmd_params, %struct.dwc3_gadget_ep_cmd_params* %7, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %94
  store i32 %97, i32* %95, align 4
  %98 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %99 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %98, i32 0, i32 1
  store i32 1, i32* %99, align 4
  br label %100

100:                                              ; preds = %91, %87, %83
  %101 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %102 = call i64 @usb_endpoint_xfer_control(%struct.usb_endpoint_descriptor* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %100
  %105 = load i32, i32* @DWC3_DEPCFG_XFER_IN_PROGRESS_EN, align 4
  %106 = getelementptr inbounds %struct.dwc3_gadget_ep_cmd_params, %struct.dwc3_gadget_ep_cmd_params* %7, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %105
  store i32 %108, i32* %106, align 4
  br label %109

109:                                              ; preds = %104, %100
  %110 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %111 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @DWC3_DEPCFG_EP_NUMBER(i32 %112)
  %114 = getelementptr inbounds %struct.dwc3_gadget_ep_cmd_params, %struct.dwc3_gadget_ep_cmd_params* %7, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %113
  store i32 %116, i32* %114, align 4
  %117 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %118 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %117, i32 0, i32 3
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %130

121:                                              ; preds = %109
  %122 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %123 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = ashr i32 %124, 1
  %126 = call i32 @DWC3_DEPCFG_FIFO_NUMBER(i32 %125)
  %127 = getelementptr inbounds %struct.dwc3_gadget_ep_cmd_params, %struct.dwc3_gadget_ep_cmd_params* %7, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %128, %126
  store i32 %129, i32* %127, align 4
  br label %130

130:                                              ; preds = %121, %109
  %131 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %132 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %151

135:                                              ; preds = %130
  %136 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %137 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = sub nsw i32 %138, 1
  %140 = call i32 @DWC3_DEPCFG_BINTERVAL_M1(i32 %139)
  %141 = getelementptr inbounds %struct.dwc3_gadget_ep_cmd_params, %struct.dwc3_gadget_ep_cmd_params* %7, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = or i32 %142, %140
  store i32 %143, i32* %141, align 4
  %144 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %6, align 8
  %145 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = sub nsw i32 %146, 1
  %148 = shl i32 1, %147
  %149 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %150 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %149, i32 0, i32 2
  store i32 %148, i32* %150, align 8
  br label %151

151:                                              ; preds = %135, %130
  %152 = load %struct.dwc3_ep*, %struct.dwc3_ep** %3, align 8
  %153 = load i32, i32* @DWC3_DEPCMD_SETEPCONFIG, align 4
  %154 = call i32 @dwc3_send_gadget_ep_cmd(%struct.dwc3_ep* %152, i32 %153, %struct.dwc3_gadget_ep_cmd_params* %7)
  ret i32 %154
}

declare dso_local i32 @memset(%struct.dwc3_gadget_ep_cmd_params*, i32, i32) #1

declare dso_local i32 @DWC3_DEPCFG_EP_TYPE(i32) #1

declare dso_local i32 @usb_endpoint_type(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @DWC3_DEPCFG_MAX_PACKET_SIZE(i32) #1

declare dso_local i32 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @DWC3_DEPCFG_BURST_SIZE(i64) #1

declare dso_local i64 @usb_endpoint_xfer_control(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_endpoint_xfer_isoc(%struct.usb_endpoint_descriptor*) #1

declare dso_local i64 @usb_ss_max_streams(%struct.usb_ss_ep_comp_descriptor*) #1

declare dso_local i64 @usb_endpoint_xfer_bulk(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @DWC3_DEPCFG_EP_NUMBER(i32) #1

declare dso_local i32 @DWC3_DEPCFG_FIFO_NUMBER(i32) #1

declare dso_local i32 @DWC3_DEPCFG_BINTERVAL_M1(i32) #1

declare dso_local i32 @dwc3_send_gadget_ep_cmd(%struct.dwc3_ep*, i32, %struct.dwc3_gadget_ep_cmd_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
