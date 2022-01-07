; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_v4l2.c_uvc_v4l2_streamon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_v4l2.c_uvc_v4l2_streamon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.video_device = type { i32 }
%struct.uvc_device = type { i32, %struct.uvc_video }
%struct.uvc_video = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@UVC_STATE_STREAMING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @uvc_v4l2_streamon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_v4l2_streamon(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.video_device*, align 8
  %9 = alloca %struct.uvc_device*, align 8
  %10 = alloca %struct.uvc_video*, align 8
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = call %struct.video_device* @video_devdata(%struct.file* %12)
  store %struct.video_device* %13, %struct.video_device** %8, align 8
  %14 = load %struct.video_device*, %struct.video_device** %8, align 8
  %15 = call %struct.uvc_device* @video_get_drvdata(%struct.video_device* %14)
  store %struct.uvc_device* %15, %struct.uvc_device** %9, align 8
  %16 = load %struct.uvc_device*, %struct.uvc_device** %9, align 8
  %17 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %16, i32 0, i32 1
  store %struct.uvc_video* %17, %struct.uvc_video** %10, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.uvc_video*, %struct.uvc_video** %10, align 8
  %20 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %18, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %41

28:                                               ; preds = %3
  %29 = load %struct.uvc_video*, %struct.uvc_video** %10, align 8
  %30 = call i32 @uvcg_video_enable(%struct.uvc_video* %29, i32 1)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %4, align 4
  br label %41

35:                                               ; preds = %28
  %36 = load %struct.uvc_device*, %struct.uvc_device** %9, align 8
  %37 = call i32 @uvc_function_setup_continue(%struct.uvc_device* %36)
  %38 = load i32, i32* @UVC_STATE_STREAMING, align 4
  %39 = load %struct.uvc_device*, %struct.uvc_device** %9, align 8
  %40 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %35, %33, %25
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local %struct.uvc_device* @video_get_drvdata(%struct.video_device*) #1

declare dso_local i32 @uvcg_video_enable(%struct.uvc_video*, i32) #1

declare dso_local i32 @uvc_function_setup_continue(%struct.uvc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
