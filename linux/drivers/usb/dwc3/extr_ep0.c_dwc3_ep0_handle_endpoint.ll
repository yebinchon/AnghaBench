; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_ep0.c_dwc3_ep0_handle_endpoint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_ep0.c_dwc3_ep0_handle_endpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3 = type { i32 }
%struct.usb_ctrlrequest = type { i32, i32 }
%struct.dwc3_ep = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@DWC3_EP_WEDGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc3*, %struct.usb_ctrlrequest*, i32)* @dwc3_ep0_handle_endpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc3_ep0_handle_endpoint(%struct.dwc3* %0, %struct.usb_ctrlrequest* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dwc3*, align 8
  %6 = alloca %struct.usb_ctrlrequest*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dwc3_ep*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dwc3* %0, %struct.dwc3** %5, align 8
  store %struct.usb_ctrlrequest* %1, %struct.usb_ctrlrequest** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %6, align 8
  %12 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @le16_to_cpu(i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  switch i32 %15, label %48 [
    i32 128, label %16
  ]

16:                                               ; preds = %3
  %17 = load %struct.dwc3*, %struct.dwc3** %5, align 8
  %18 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %6, align 8
  %19 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.dwc3_ep* @dwc3_wIndex_to_dep(%struct.dwc3* %17, i32 %20)
  store %struct.dwc3_ep* %21, %struct.dwc3_ep** %8, align 8
  %22 = load %struct.dwc3_ep*, %struct.dwc3_ep** %8, align 8
  %23 = icmp ne %struct.dwc3_ep* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %16
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %52

27:                                               ; preds = %16
  %28 = load i32, i32* %7, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = load %struct.dwc3_ep*, %struct.dwc3_ep** %8, align 8
  %32 = getelementptr inbounds %struct.dwc3_ep, %struct.dwc3_ep* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @DWC3_EP_WEDGE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %51

38:                                               ; preds = %30, %27
  %39 = load %struct.dwc3_ep*, %struct.dwc3_ep** %8, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @__dwc3_gadget_ep_set_halt(%struct.dwc3_ep* %39, i32 %40, i32 1)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %52

47:                                               ; preds = %38
  br label %51

48:                                               ; preds = %3
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %52

51:                                               ; preds = %47, %37
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %51, %48, %44, %24
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.dwc3_ep* @dwc3_wIndex_to_dep(%struct.dwc3*, i32) #1

declare dso_local i32 @__dwc3_gadget_ep_set_halt(%struct.dwc3_ep*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
