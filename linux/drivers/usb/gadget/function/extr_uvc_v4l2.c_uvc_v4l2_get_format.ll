; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_v4l2.c_uvc_v4l2_get_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_v4l2.c_uvc_v4l2_get_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i64, i32, i32, i32, i32, i32 }
%struct.video_device = type { i32 }
%struct.uvc_device = type { %struct.uvc_video }
%struct.uvc_video = type { i32, i32, i32, i32, i32 }

@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SRGB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @uvc_v4l2_get_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_v4l2_get_format(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_format*, align 8
  %7 = alloca %struct.video_device*, align 8
  %8 = alloca %struct.uvc_device*, align 8
  %9 = alloca %struct.uvc_video*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %6, align 8
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = call %struct.video_device* @video_devdata(%struct.file* %10)
  store %struct.video_device* %11, %struct.video_device** %7, align 8
  %12 = load %struct.video_device*, %struct.video_device** %7, align 8
  %13 = call %struct.uvc_device* @video_get_drvdata(%struct.video_device* %12)
  store %struct.uvc_device* %13, %struct.uvc_device** %8, align 8
  %14 = load %struct.uvc_device*, %struct.uvc_device** %8, align 8
  %15 = getelementptr inbounds %struct.uvc_device, %struct.uvc_device* %14, i32 0, i32 0
  store %struct.uvc_video* %15, %struct.uvc_video** %9, align 8
  %16 = load %struct.uvc_video*, %struct.uvc_video** %9, align 8
  %17 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %20 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 7
  store i32 %18, i32* %22, align 8
  %23 = load %struct.uvc_video*, %struct.uvc_video** %9, align 8
  %24 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %27 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32 %25, i32* %29, align 8
  %30 = load %struct.uvc_video*, %struct.uvc_video** %9, align 8
  %31 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %34 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 6
  store i32 %32, i32* %36, align 4
  %37 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %38 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %39 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 5
  store i32 %37, i32* %41, align 8
  %42 = load %struct.uvc_video*, %struct.uvc_video** %9, align 8
  %43 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.uvc_video*, %struct.uvc_video** %9, align 8
  %46 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = mul nsw i32 %44, %47
  %49 = sdiv i32 %48, 8
  %50 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %51 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  store i32 %49, i32* %53, align 4
  %54 = load %struct.uvc_video*, %struct.uvc_video** %9, align 8
  %55 = getelementptr inbounds %struct.uvc_video, %struct.uvc_video* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %58 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 4
  store i32 %56, i32* %60, align 4
  %61 = load i32, i32* @V4L2_COLORSPACE_SRGB, align 4
  %62 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %63 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 3
  store i32 %61, i32* %65, align 8
  %66 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %67 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 2
  store i64 0, i64* %69, align 8
  ret i32 0
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local %struct.uvc_device* @video_get_drvdata(%struct.video_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
