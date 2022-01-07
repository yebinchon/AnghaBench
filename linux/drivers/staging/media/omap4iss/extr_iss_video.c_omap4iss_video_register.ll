; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_video.c_omap4iss_video_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_video.c_omap4iss_video_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iss_video = type { i64, %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.v4l2_device* }
%struct.v4l2_device = type { i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@V4L2_CAP_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_CAP_VIDEO_OUTPUT = common dso_local global i32 0, align 4
@V4L2_CAP_STREAMING = common dso_local global i32 0, align 4
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"could not register video device (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap4iss_video_register(%struct.iss_video* %0, %struct.v4l2_device* %1) #0 {
  %3 = alloca %struct.iss_video*, align 8
  %4 = alloca %struct.v4l2_device*, align 8
  %5 = alloca i32, align 4
  store %struct.iss_video* %0, %struct.iss_video** %3, align 8
  store %struct.v4l2_device* %1, %struct.v4l2_device** %4, align 8
  %6 = load %struct.v4l2_device*, %struct.v4l2_device** %4, align 8
  %7 = load %struct.iss_video*, %struct.iss_video** %3, align 8
  %8 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  store %struct.v4l2_device* %6, %struct.v4l2_device** %9, align 8
  %10 = load %struct.iss_video*, %struct.iss_video** %3, align 8
  %11 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load i32, i32* @V4L2_CAP_VIDEO_CAPTURE, align 4
  %17 = load %struct.iss_video*, %struct.iss_video** %3, align 8
  %18 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 8
  br label %25

20:                                               ; preds = %2
  %21 = load i32, i32* @V4L2_CAP_VIDEO_OUTPUT, align 4
  %22 = load %struct.iss_video*, %struct.iss_video** %3, align 8
  %23 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 8
  br label %25

25:                                               ; preds = %20, %15
  %26 = load i32, i32* @V4L2_CAP_STREAMING, align 4
  %27 = load %struct.iss_video*, %struct.iss_video** %3, align 8
  %28 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %26
  store i32 %31, i32* %29, align 8
  %32 = load %struct.iss_video*, %struct.iss_video** %3, align 8
  %33 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %32, i32 0, i32 2
  %34 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %35 = call i32 @video_register_device(%struct.TYPE_4__* %33, i32 %34, i32 -1)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %25
  %39 = load %struct.iss_video*, %struct.iss_video** %3, align 8
  %40 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %38, %25
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @video_register_device(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
