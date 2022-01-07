; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_ep0.c___dwc3_gadget_ep0_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_ep0.c___dwc3_gadget_ep0_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3_ep = type { i32, i32, i32, %struct.dwc3* }
%struct.dwc3 = type { i64, i32, i32, i32*, i64, i32, i32 }
%struct.dwc3_request = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@EINPROGRESS = common dso_local global i32 0, align 4
@DWC3_EP_PENDING_REQUEST = common dso_local global i32 0, align 4
@DWC3_EP0_DIR_IN = common dso_local global i32 0, align 4
@EP0_DATA_PHASE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Unexpected pending request\0A\00", align 1
@USB_STATE_CONFIGURED = common dso_local global i32 0, align 4
@EP0_STATUS_PHASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc3_ep*, %struct.dwc3_request*)* @__dwc3_gadget_ep0_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__dwc3_gadget_ep0_queue(%struct.dwc3_ep* %0, %struct.dwc3_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dwc3_ep*, align 8
  %5 = alloca %struct.dwc3_request*, align 8
  %6 = alloca %struct.dwc3*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dwc3_ep* %0, %struct.dwc3_ep** %4, align 8
  store %struct.dwc3_request* %1, %struct.dwc3_request** %5, align 8
  %10 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %11 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %10, i32 0, i32 3
  %12 = load %struct.dwc3*, %struct.dwc3** %11, align 8
  store %struct.dwc3* %12, %struct.dwc3** %6, align 8
  %13 = load %struct.dwc3_request*, %struct.dwc3_request** %5, align 8
  %14 = getelementptr inbounds %struct.dwc3_request, %struct.dwc3_request* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* @EINPROGRESS, align 4
  %17 = sub nsw i32 0, %16
  %18 = load %struct.dwc3_request*, %struct.dwc3_request** %5, align 8
  %19 = getelementptr inbounds %struct.dwc3_request, %struct.dwc3_request* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 8
  %21 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %22 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.dwc3_request*, %struct.dwc3_request** %5, align 8
  %25 = getelementptr inbounds %struct.dwc3_request, %struct.dwc3_request* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  %26 = load %struct.dwc3_request*, %struct.dwc3_request** %5, align 8
  %27 = getelementptr inbounds %struct.dwc3_request, %struct.dwc3_request* %26, i32 0, i32 0
  %28 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %29 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %28, i32 0, i32 1
  %30 = call i32 @list_add_tail(i32* %27, i32* %29)
  %31 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %32 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @DWC3_EP_PENDING_REQUEST, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %76

37:                                               ; preds = %2
  %38 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %39 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @DWC3_EP0_DIR_IN, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  store i32 %46, i32* %7, align 4
  %47 = load %struct.dwc3*, %struct.dwc3** %6, align 8
  %48 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @EP0_DATA_PHASE, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %37
  %53 = load %struct.dwc3*, %struct.dwc3** %6, align 8
  %54 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @dev_WARN(i32 %55, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %139

57:                                               ; preds = %37
  %58 = load %struct.dwc3*, %struct.dwc3** %6, align 8
  %59 = load %struct.dwc3*, %struct.dwc3** %6, align 8
  %60 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.dwc3_request*, %struct.dwc3_request** %5, align 8
  %67 = call i32 @__dwc3_ep0_do_control_data(%struct.dwc3* %58, i32 %65, %struct.dwc3_request* %66)
  %68 = load i32, i32* @DWC3_EP_PENDING_REQUEST, align 4
  %69 = load i32, i32* @DWC3_EP0_DIR_IN, align 4
  %70 = or i32 %68, %69
  %71 = xor i32 %70, -1
  %72 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %73 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = and i32 %74, %71
  store i32 %75, i32* %73, align 8
  store i32 0, i32* %3, align 4
  br label %139

76:                                               ; preds = %2
  %77 = load %struct.dwc3*, %struct.dwc3** %6, align 8
  %78 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %110

81:                                               ; preds = %76
  %82 = load %struct.dwc3*, %struct.dwc3** %6, align 8
  %83 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  %87 = zext i1 %86 to i32
  store i32 %87, i32* %8, align 4
  %88 = load %struct.dwc3*, %struct.dwc3** %6, align 8
  %89 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %88, i32 0, i32 1
  store i32 0, i32* %89, align 8
  %90 = load %struct.dwc3*, %struct.dwc3** %6, align 8
  %91 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %90, i32 0, i32 5
  %92 = load i32, i32* @USB_STATE_CONFIGURED, align 4
  %93 = call i32 @usb_gadget_set_state(i32* %91, i32 %92)
  %94 = load %struct.dwc3*, %struct.dwc3** %6, align 8
  %95 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @EP0_STATUS_PHASE, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %109

99:                                               ; preds = %81
  %100 = load %struct.dwc3*, %struct.dwc3** %6, align 8
  %101 = load %struct.dwc3*, %struct.dwc3** %6, align 8
  %102 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %101, i32 0, i32 3
  %103 = load i32*, i32** %102, align 8
  %104 = load i32, i32* %8, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds i32, i32* %103, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @__dwc3_ep0_do_control_status(%struct.dwc3* %100, i32 %107)
  br label %109

109:                                              ; preds = %99, %81
  store i32 0, i32* %3, align 4
  br label %139

110:                                              ; preds = %76
  %111 = load %struct.dwc3*, %struct.dwc3** %6, align 8
  %112 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %111, i32 0, i32 4
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %138

115:                                              ; preds = %110
  %116 = load %struct.dwc3*, %struct.dwc3** %6, align 8
  %117 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %9, align 4
  %119 = load i64, i64* @EP0_DATA_PHASE, align 8
  %120 = load %struct.dwc3*, %struct.dwc3** %6, align 8
  %121 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %120, i32 0, i32 0
  store i64 %119, i64* %121, align 8
  %122 = load %struct.dwc3*, %struct.dwc3** %6, align 8
  %123 = load %struct.dwc3*, %struct.dwc3** %6, align 8
  %124 = getelementptr inbounds %struct.dwc3, %struct.dwc3* %123, i32 0, i32 3
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %9, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.dwc3_request*, %struct.dwc3_request** %5, align 8
  %131 = call i32 @__dwc3_ep0_do_control_data(%struct.dwc3* %122, i32 %129, %struct.dwc3_request* %130)
  %132 = load i32, i32* @DWC3_EP0_DIR_IN, align 4
  %133 = xor i32 %132, -1
  %134 = load %struct.dwc3_ep*, %struct.dwc3_ep** %4, align 8
  %135 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = and i32 %136, %133
  store i32 %137, i32* %135, align 8
  br label %138

138:                                              ; preds = %115, %110
  store i32 0, i32* %3, align 4
  br label %139

139:                                              ; preds = %138, %109, %57, %52
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @dev_WARN(i32, i8*) #1

declare dso_local i32 @__dwc3_ep0_do_control_data(%struct.dwc3*, i32, %struct.dwc3_request*) #1

declare dso_local i32 @usb_gadget_set_state(i32*, i32) #1

declare dso_local i32 @__dwc3_ep0_do_control_status(%struct.dwc3*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
