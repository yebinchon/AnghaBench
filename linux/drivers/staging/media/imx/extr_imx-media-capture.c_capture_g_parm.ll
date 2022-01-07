; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-capture.c_capture_g_parm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-capture.c_capture_g_parm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_streamparm = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.capture_priv = type { i32, i32 }
%struct.v4l2_subdev_frame_interval = type { i32, i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@g_frame_interval = common dso_local global i32 0, align 4
@V4L2_CAP_TIMEPERFRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_streamparm*)* @capture_g_parm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @capture_g_parm(%struct.file* %0, i8* %1, %struct.v4l2_streamparm* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_streamparm*, align 8
  %8 = alloca %struct.capture_priv*, align 8
  %9 = alloca %struct.v4l2_subdev_frame_interval, align 4
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_streamparm* %2, %struct.v4l2_streamparm** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call %struct.capture_priv* @video_drvdata(%struct.file* %11)
  store %struct.capture_priv* %12, %struct.capture_priv** %8, align 8
  %13 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %49

21:                                               ; preds = %3
  %22 = call i32 @memset(%struct.v4l2_subdev_frame_interval* %9, i32 0, i32 8)
  %23 = load %struct.capture_priv*, %struct.capture_priv** %8, align 8
  %24 = getelementptr inbounds %struct.capture_priv, %struct.capture_priv* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, %struct.v4l2_subdev_frame_interval* %9, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = load %struct.capture_priv*, %struct.capture_priv** %8, align 8
  %28 = getelementptr inbounds %struct.capture_priv, %struct.capture_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @video, align 4
  %31 = load i32, i32* @g_frame_interval, align 4
  %32 = call i32 @v4l2_subdev_call(i32 %29, i32 %30, i32 %31, %struct.v4l2_subdev_frame_interval* %9)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %21
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %4, align 4
  br label %49

37:                                               ; preds = %21
  %38 = load i32, i32* @V4L2_CAP_TIMEPERFRAME, align 4
  %39 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  store i32 %38, i32* %42, align 4
  %43 = getelementptr inbounds %struct.v4l2_subdev_frame_interval, %struct.v4l2_subdev_frame_interval* %9, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %7, align 8
  %46 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i32 %44, i32* %48, align 8
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %37, %35, %18
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local %struct.capture_priv* @video_drvdata(%struct.file*) #1

declare dso_local i32 @memset(%struct.v4l2_subdev_frame_interval*, i32, i32) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, %struct.v4l2_subdev_frame_interval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
