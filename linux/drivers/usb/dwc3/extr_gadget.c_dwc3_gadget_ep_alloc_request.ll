; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_gadget_ep_alloc_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_gadget.c_dwc3_gadget_ep_alloc_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_request = type { i32 }
%struct.usb_ep = type { i32 }
%struct.dwc3_request = type { %struct.usb_request, i32, %struct.dwc3_ep*, i32, i32 }
%struct.dwc3_ep = type { i32, i32 }

@DWC3_REQUEST_STATUS_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.usb_request* (%struct.usb_ep*, i32)* @dwc3_gadget_ep_alloc_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.usb_request* @dwc3_gadget_ep_alloc_request(%struct.usb_ep* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_request*, align 8
  %4 = alloca %struct.usb_ep*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dwc3_request*, align 8
  %7 = alloca %struct.dwc3_ep*, align 8
  store %struct.usb_ep* %0, %struct.usb_ep** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.usb_ep*, %struct.usb_ep** %4, align 8
  %9 = call %struct.dwc3_ep* @to_dwc3_ep(%struct.usb_ep* %8)
  store %struct.dwc3_ep* %9, %struct.dwc3_ep** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.dwc3_request* @kzalloc(i32 24, i32 %10)
  store %struct.dwc3_request* %11, %struct.dwc3_request** %6, align 8
  %12 = load %struct.dwc3_request*, %struct.dwc3_request** %6, align 8
  %13 = icmp ne %struct.dwc3_request* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store %struct.usb_request* null, %struct.usb_request** %3, align 8
  br label %36

15:                                               ; preds = %2
  %16 = load %struct.dwc3_ep*, %struct.dwc3_ep** %7, align 8
  %17 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.dwc3_request*, %struct.dwc3_request** %6, align 8
  %20 = getelementptr inbounds %struct.dwc3_request, %struct.dwc3_request* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 4
  %21 = load %struct.dwc3_ep*, %struct.dwc3_ep** %7, align 8
  %22 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.dwc3_request*, %struct.dwc3_request** %6, align 8
  %25 = getelementptr inbounds %struct.dwc3_request, %struct.dwc3_request* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 8
  %26 = load %struct.dwc3_ep*, %struct.dwc3_ep** %7, align 8
  %27 = load %struct.dwc3_request*, %struct.dwc3_request** %6, align 8
  %28 = getelementptr inbounds %struct.dwc3_request, %struct.dwc3_request* %27, i32 0, i32 2
  store %struct.dwc3_ep* %26, %struct.dwc3_ep** %28, align 8
  %29 = load i32, i32* @DWC3_REQUEST_STATUS_UNKNOWN, align 4
  %30 = load %struct.dwc3_request*, %struct.dwc3_request** %6, align 8
  %31 = getelementptr inbounds %struct.dwc3_request, %struct.dwc3_request* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.dwc3_request*, %struct.dwc3_request** %6, align 8
  %33 = call i32 @trace_dwc3_alloc_request(%struct.dwc3_request* %32)
  %34 = load %struct.dwc3_request*, %struct.dwc3_request** %6, align 8
  %35 = getelementptr inbounds %struct.dwc3_request, %struct.dwc3_request* %34, i32 0, i32 0
  store %struct.usb_request* %35, %struct.usb_request** %3, align 8
  br label %36

36:                                               ; preds = %15, %14
  %37 = load %struct.usb_request*, %struct.usb_request** %3, align 8
  ret %struct.usb_request* %37
}

declare dso_local %struct.dwc3_ep* @to_dwc3_ep(%struct.usb_ep*) #1

declare dso_local %struct.dwc3_request* @kzalloc(i32, i32) #1

declare dso_local i32 @trace_dwc3_alloc_request(%struct.dwc3_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
