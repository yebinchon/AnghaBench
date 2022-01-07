; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_ep0.c_dwc3_ep0_handle_feature.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_ep0.c_dwc3_ep0_handle_feature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc3 = type { i32 }
%struct.usb_ctrlrequest = type { i32 }

@USB_RECIP_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc3*, %struct.usb_ctrlrequest*, i32)* @dwc3_ep0_handle_feature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc3_ep0_handle_feature(%struct.dwc3* %0, %struct.usb_ctrlrequest* %1, i32 %2) #0 {
  %4 = alloca %struct.dwc3*, align 8
  %5 = alloca %struct.usb_ctrlrequest*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dwc3* %0, %struct.dwc3** %4, align 8
  store %struct.usb_ctrlrequest* %1, %struct.usb_ctrlrequest** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %10 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @USB_RECIP_MASK, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  switch i32 %14, label %30 [
    i32 130, label %15
    i32 128, label %20
    i32 129, label %25
  ]

15:                                               ; preds = %3
  %16 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %17 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @dwc3_ep0_handle_device(%struct.dwc3* %16, %struct.usb_ctrlrequest* %17, i32 %18)
  store i32 %19, i32* %8, align 4
  br label %33

20:                                               ; preds = %3
  %21 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %22 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @dwc3_ep0_handle_intf(%struct.dwc3* %21, %struct.usb_ctrlrequest* %22, i32 %23)
  store i32 %24, i32* %8, align 4
  br label %33

25:                                               ; preds = %3
  %26 = load %struct.dwc3*, %struct.dwc3** %4, align 8
  %27 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @dwc3_ep0_handle_endpoint(%struct.dwc3* %26, %struct.usb_ctrlrequest* %27, i32 %28)
  store i32 %29, i32* %8, align 4
  br label %33

30:                                               ; preds = %3
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %30, %25, %20, %15
  %34 = load i32, i32* %8, align 4
  ret i32 %34
}

declare dso_local i32 @dwc3_ep0_handle_device(%struct.dwc3*, %struct.usb_ctrlrequest*, i32) #1

declare dso_local i32 @dwc3_ep0_handle_intf(%struct.dwc3*, %struct.usb_ctrlrequest*, i32) #1

declare dso_local i32 @dwc3_ep0_handle_endpoint(%struct.dwc3*, %struct.usb_ctrlrequest*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
