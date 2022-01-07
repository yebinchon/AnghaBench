; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_uvc.c_uvc_function_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_uvc.c_uvc_function_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_function = type { i32 }
%struct.usb_ctrlrequest = type { i32, i32 }
%struct.uvc_device = type { i32, i32, i64 }
%struct.v4l2_event = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.uvc_event = type { i32 }

@USB_TYPE_MASK = common dso_local global i32 0, align 4
@USB_TYPE_CLASS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"invalid request type\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@UVC_MAX_REQUEST_SIZE = common dso_local global i64 0, align 8
@USB_DIR_IN = common dso_local global i32 0, align 4
@UVC_EVENT_SETUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_function*, %struct.usb_ctrlrequest*)* @uvc_function_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_function_setup(%struct.usb_function* %0, %struct.usb_ctrlrequest* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_function*, align 8
  %5 = alloca %struct.usb_ctrlrequest*, align 8
  %6 = alloca %struct.uvc_device*, align 8
  %7 = alloca %struct.v4l2_event, align 4
  %8 = alloca %struct.uvc_event*, align 8
  store %struct.usb_function* %0, %struct.usb_function** %4, align 8
  store %struct.usb_ctrlrequest* %1, %struct.usb_ctrlrequest** %5, align 8
  %9 = load %struct.usb_function*, %struct.usb_function** %4, align 8
  %10 = call %struct.uvc_device* @to_uvc(%struct.usb_function* %9)
  store %struct.uvc_device* %10, %struct.uvc_device** %6, align 8
  %11 = getelementptr inbounds %struct.v4l2_event, %struct.v4l2_event* %7, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = bitcast i32* %12 to i8*
  %14 = bitcast i8* %13 to %struct.uvc_event*
  store %struct.uvc_event* %14, %struct.uvc_event** %8, align 8
  %15 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %16 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @USB_TYPE_MASK, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @USB_TYPE_CLASS, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load %struct.usb_function*, %struct.usb_function** %4, align 8
  %24 = call i32 @uvcg_info(%struct.usb_function* %23, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %64

27:                                               ; preds = %2
  %28 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %29 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @le16_to_cpu(i32 %30)
  %32 = load i64, i64* @UVC_MAX_REQUEST_SIZE, align 8
  %33 = icmp sgt i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %64

37:                                               ; preds = %27
  %38 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %39 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @USB_DIR_IN, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = load %struct.uvc_device*, %struct.uvc_device** %6, align 8
  %47 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %49 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @le16_to_cpu(i32 %50)
  %52 = load %struct.uvc_device*, %struct.uvc_device** %6, align 8
  %53 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %52, i32 0, i32 2
  store i64 %51, i64* %53, align 8
  %54 = call i32 @memset(%struct.v4l2_event* %7, i32 0, i32 8)
  %55 = load i32, i32* @UVC_EVENT_SETUP, align 4
  %56 = getelementptr inbounds %struct.v4l2_event, %struct.v4l2_event* %7, i32 0, i32 0
  store i32 %55, i32* %56, align 4
  %57 = load %struct.uvc_event*, %struct.uvc_event** %8, align 8
  %58 = getelementptr inbounds %struct.uvc_event, %struct.uvc_event* %57, i32 0, i32 0
  %59 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %60 = call i32 @memcpy(i32* %58, %struct.usb_ctrlrequest* %59, i32 4)
  %61 = load %struct.uvc_device*, %struct.uvc_device** %6, align 8
  %62 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %61, i32 0, i32 1
  %63 = call i32 @v4l2_event_queue(i32* %62, %struct.v4l2_event* %7)
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %37, %34, %22
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.uvc_device* @to_uvc(%struct.usb_function*) #1

declare dso_local i32 @uvcg_info(%struct.usb_function*, i8*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @memset(%struct.v4l2_event*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.usb_ctrlrequest*, i32) #1

declare dso_local i32 @v4l2_event_queue(i32*, %struct.v4l2_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
