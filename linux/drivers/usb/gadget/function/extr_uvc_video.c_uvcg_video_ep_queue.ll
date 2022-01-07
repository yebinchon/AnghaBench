; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_video.c_uvcg_video_ep_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_video.c_uvcg_video_ep_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_video = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.usb_request = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Failed to queue request (%d).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvc_video*, %struct.usb_request*)* @uvcg_video_ep_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvcg_video_ep_queue(%struct.uvc_video* %0, %struct.usb_request* %1) #0 {
  %3 = alloca %struct.uvc_video*, align 8
  %4 = alloca %struct.usb_request*, align 8
  %5 = alloca i32, align 4
  store %struct.uvc_video* %0, %struct.uvc_video** %3, align 8
  store %struct.usb_request* %1, %struct.usb_request** %4, align 8
  %6 = load %struct.uvc_video*, %struct.uvc_video** %3, align 8
  %7 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %6, i32 0, i32 0
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = load %struct.usb_request*, %struct.usb_request** %4, align 8
  %10 = load i32, i32* @GFP_ATOMIC, align 4
  %11 = call i32 @usb_ep_queue(%struct.TYPE_5__* %8, %struct.usb_request* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %34

14:                                               ; preds = %2
  %15 = load %struct.uvc_video*, %struct.uvc_video** %3, align 8
  %16 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @uvcg_err(i32* %18, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.uvc_video*, %struct.uvc_video** %3, align 8
  %22 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @usb_endpoint_xfer_bulk(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %14
  %29 = load %struct.uvc_video*, %struct.uvc_video** %3, align 8
  %30 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = call i32 @usb_ep_set_halt(%struct.TYPE_5__* %31)
  br label %33

33:                                               ; preds = %28, %14
  br label %34

34:                                               ; preds = %33, %2
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i32 @usb_ep_queue(%struct.TYPE_5__*, %struct.usb_request*, i32) #1

declare dso_local i32 @uvcg_err(i32*, i8*, i32) #1

declare dso_local i64 @usb_endpoint_xfer_bulk(i32) #1

declare dso_local i32 @usb_ep_set_halt(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
