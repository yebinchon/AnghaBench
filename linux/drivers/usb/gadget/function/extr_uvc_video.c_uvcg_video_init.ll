; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_video.c_uvcg_video_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_video.c_uvcg_video_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_video = type { i32, i32, i32, i32, i32, i32, i32, %struct.uvc_device*, i32, i32 }
%struct.uvc_device = type { i32 }

@V4L2_PIX_FMT_YUYV = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uvcg_video_init(%struct.uvc_video* %0, %struct.uvc_device* %1) #0 {
  %3 = alloca %struct.uvc_video*, align 8
  %4 = alloca %struct.uvc_device*, align 8
  store %struct.uvc_video* %0, %struct.uvc_video** %3, align 8
  store %struct.uvc_device* %1, %struct.uvc_device** %4, align 8
  %5 = load %struct.uvc_video*, %struct.uvc_video** %3, align 8
  %6 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %5, i32 0, i32 9
  %7 = call i32 @INIT_LIST_HEAD(i32* %6)
  %8 = load %struct.uvc_video*, %struct.uvc_video** %3, align 8
  %9 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %8, i32 0, i32 8
  %10 = call i32 @spin_lock_init(i32* %9)
  %11 = load %struct.uvc_device*, %struct.uvc_device** %4, align 8
  %12 = load %struct.uvc_video*, %struct.uvc_video** %3, align 8
  %13 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %12, i32 0, i32 7
  store %struct.uvc_device* %11, %struct.uvc_device** %13, align 8
  %14 = load i32, i32* @V4L2_PIX_FMT_YUYV, align 4
  %15 = load %struct.uvc_video*, %struct.uvc_video** %3, align 8
  %16 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %15, i32 0, i32 6
  store i32 %14, i32* %16, align 8
  %17 = load %struct.uvc_video*, %struct.uvc_video** %3, align 8
  %18 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %17, i32 0, i32 0
  store i32 16, i32* %18, align 8
  %19 = load %struct.uvc_video*, %struct.uvc_video** %3, align 8
  %20 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %19, i32 0, i32 1
  store i32 320, i32* %20, align 4
  %21 = load %struct.uvc_video*, %struct.uvc_video** %3, align 8
  %22 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %21, i32 0, i32 2
  store i32 240, i32* %22, align 8
  %23 = load %struct.uvc_video*, %struct.uvc_video** %3, align 8
  %24 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %23, i32 0, i32 3
  store i32 153600, i32* %24, align 4
  %25 = load %struct.uvc_video*, %struct.uvc_video** %3, align 8
  %26 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %25, i32 0, i32 5
  %27 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 4
  %28 = load %struct.uvc_video*, %struct.uvc_video** %3, align 8
  %29 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %28, i32 0, i32 4
  %30 = call i32 @uvcg_queue_init(i32* %26, i32 %27, i32* %29)
  ret i32 0
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @uvcg_queue_init(i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
