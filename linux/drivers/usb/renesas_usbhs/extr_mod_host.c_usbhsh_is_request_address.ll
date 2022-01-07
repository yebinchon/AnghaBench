; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod_host.c_usbhsh_is_request_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_mod_host.c_usbhsh_is_request_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i64 }
%struct.usb_ctrlrequest = type { i64, i64 }

@DeviceOutRequest = common dso_local global i64 0, align 8
@USB_REQ_SET_ADDRESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.urb*)* @usbhsh_is_request_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbhsh_is_request_address(%struct.urb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.urb*, align 8
  %4 = alloca %struct.usb_ctrlrequest*, align 8
  store %struct.urb* %0, %struct.urb** %3, align 8
  %5 = load %struct.urb*, %struct.urb** %3, align 8
  %6 = getelementptr inbounds %struct.urb, %struct.urb* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.usb_ctrlrequest*
  store %struct.usb_ctrlrequest* %8, %struct.usb_ctrlrequest** %4, align 8
  %9 = load i64, i64* @DeviceOutRequest, align 8
  %10 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %11 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = shl i64 %12, 8
  %14 = icmp eq i64 %9, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load i64, i64* @USB_REQ_SET_ADDRESS, align 8
  %17 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %4, align 8
  %18 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 1, i32* %2, align 4
  br label %23

22:                                               ; preds = %15, %1
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %22, %21
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
