; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_gadget_ep0.c_service_in_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_gadget_ep0.c_service_in_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musb = type { i32 }
%struct.usb_ctrlrequest = type { i32, i32 }

@USB_TYPE_MASK = common dso_local global i32 0, align 4
@USB_TYPE_STANDARD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.musb*, %struct.usb_ctrlrequest*)* @service_in_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @service_in_request(%struct.musb* %0, %struct.usb_ctrlrequest* %1) #0 {
  %3 = alloca %struct.musb*, align 8
  %4 = alloca %struct.usb_ctrlrequest*, align 8
  %5 = alloca i32, align 4
  store %struct.musb* %0, %struct.musb** %3, align 8
  store %struct.usb_ctrlrequest* %1, %struct.usb_ctrlrequest** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %7 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @USB_TYPE_MASK, align 4
  %10 = and i32 %8, %9
  %11 = load i32, i32* @USB_TYPE_STANDARD, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %15 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %21 [
    i32 128, label %17
  ]

17:                                               ; preds = %13
  %18 = load %struct.musb*, %struct.musb** %3, align 8
  %19 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %20 = call i32 @service_tx_status_request(%struct.musb* %18, %struct.usb_ctrlrequest* %19)
  store i32 %20, i32* %5, align 4
  br label %22

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %21, %17
  br label %23

23:                                               ; preds = %22, %2
  %24 = load i32, i32* %5, align 4
  ret i32 %24
}

declare dso_local i32 @service_tx_status_request(%struct.musb*, %struct.usb_ctrlrequest*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
