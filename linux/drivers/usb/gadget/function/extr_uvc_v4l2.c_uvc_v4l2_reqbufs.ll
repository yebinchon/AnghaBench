; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_v4l2.c_uvc_v4l2_reqbufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_v4l2.c_uvc_v4l2_reqbufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_requestbuffers = type { i64 }
%struct.video_device = type { i32 }
%struct.uvc_device = type { %struct.uvc_video }
%struct.uvc_video = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_requestbuffers*)* @uvc_v4l2_reqbufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_v4l2_reqbufs(%struct.file* %0, i8* %1, %struct.v4l2_requestbuffers* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_requestbuffers*, align 8
  %8 = alloca %struct.video_device*, align 8
  %9 = alloca %struct.uvc_device*, align 8
  %10 = alloca %struct.uvc_video*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_requestbuffers* %2, %struct.v4l2_requestbuffers** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call %struct.video_device* @video_devdata(%struct.file* %11)
  store %struct.video_device* %12, %struct.video_device** %8, align 8
  %13 = load %struct.video_device*, %struct.video_device** %8, align 8
  %14 = call %struct.uvc_device* @video_get_drvdata(%struct.video_device* %13)
  store %struct.uvc_device* %14, %struct.uvc_device** %9, align 8
  %15 = load %struct.uvc_device*, %struct.uvc_device** %9, align 8
  %16 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %15, i32 0, i32 0
  store %struct.uvc_video* %16, %struct.uvc_video** %10, align 8
  %17 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %18 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.uvc_video*, %struct.uvc_video** %10, align 8
  %21 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %19, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %34

29:                                               ; preds = %3
  %30 = load %struct.uvc_video*, %struct.uvc_video** %10, align 8
  %31 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %30, i32 0, i32 0
  %32 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %33 = call i32 @uvcg_alloc_buffers(%struct.TYPE_4__* %31, %struct.v4l2_requestbuffers* %32)
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %29, %26
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local %struct.uvc_device* @video_get_drvdata(%struct.video_device*) #1

declare dso_local i32 @uvcg_alloc_buffers(%struct.TYPE_4__*, %struct.v4l2_requestbuffers*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
