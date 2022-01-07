; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_uvc.c_uvc_function_ep0_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_uvc.c_uvc_function_ep0_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i32 }
%struct.usb_request = type { i32, i32, %struct.uvc_device* }
%struct.uvc_device = type { i32, i64 }
%struct.v4l2_event = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.uvc_event = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@UVC_EVENT_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ep*, %struct.usb_request*)* @uvc_function_ep0_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uvc_function_ep0_complete(%struct.usb_ep* %0, %struct.usb_request* %1) #0 {
  %3 = alloca %struct.usb_ep*, align 8
  %4 = alloca %struct.usb_request*, align 8
  %5 = alloca %struct.uvc_device*, align 8
  %6 = alloca %struct.v4l2_event, align 4
  %7 = alloca %struct.uvc_event*, align 8
  store %struct.usb_ep* %0, %struct.usb_ep** %3, align 8
  store %struct.usb_request* %1, %struct.usb_request** %4, align 8
  %8 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %9 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %8, i32 0, i32 2
  %10 = load %struct.uvc_device*, %struct.uvc_device** %9, align 8
  store %struct.uvc_device* %10, %struct.uvc_device** %5, align 8
  %11 = getelementptr inbounds %struct.v4l2_event, %struct.v4l2_event* %6, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = bitcast i32* %12 to i8*
  %14 = bitcast i8* %13 to %struct.uvc_event*
  store %struct.uvc_event* %14, %struct.uvc_event** %7, align 8
  %15 = load %struct.uvc_device*, %struct.uvc_device** %5, align 8
  %16 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %44

19:                                               ; preds = %2
  %20 = load %struct.uvc_device*, %struct.uvc_device** %5, align 8
  %21 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = call i32 @memset(%struct.v4l2_event* %6, i32 0, i32 8)
  %23 = load i32, i32* @UVC_EVENT_DATA, align 4
  %24 = getelementptr inbounds %struct.v4l2_event, %struct.v4l2_event* %6, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %26 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.uvc_event*, %struct.uvc_event** %7, align 8
  %29 = getelementptr inbounds %struct.uvc_event, %struct.uvc_event* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  store i32 %27, i32* %30, align 4
  %31 = load %struct.uvc_event*, %struct.uvc_event** %7, align 8
  %32 = getelementptr inbounds %struct.uvc_event, %struct.uvc_event* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %35 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %38 = getelementptr inbounds %struct.usb_request, %struct.usb_request* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @memcpy(i32* %33, i32 %36, i32 %39)
  %41 = load %struct.uvc_device*, %struct.uvc_device** %5, align 8
  %42 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %41, i32 0, i32 0
  %43 = call i32 @v4l2_event_queue(i32* %42, %struct.v4l2_event* %6)
  br label %44

44:                                               ; preds = %19, %2
  ret void
}

declare dso_local i32 @memset(%struct.v4l2_event*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @v4l2_event_queue(i32*, %struct.v4l2_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
