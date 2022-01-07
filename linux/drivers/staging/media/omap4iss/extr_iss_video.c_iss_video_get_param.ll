; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_video.c_iss_video_get_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_video.c_iss_video_get_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_streamparm = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.iss_video_fh = type { i32 }
%struct.iss_video = type { i64 }

@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@V4L2_CAP_TIMEPERFRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_streamparm*)* @iss_video_get_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iss_video_get_param(%struct.file* %0, i8* %1, %struct.v4l2_streamparm* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_streamparm*, align 8
  %8 = alloca %struct.iss_video_fh*, align 8
  %9 = alloca %struct.iss_video*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_streamparm* %2, %struct.v4l2_streamparm** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call %struct.iss_video_fh* @to_iss_video_fh(i8* %10)
  store %struct.iss_video_fh* %11, %struct.iss_video_fh** %8, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = call %struct.iss_video* @video_drvdata(%struct.file* %12)
  store %struct.iss_video* %13, %struct.iss_video** %9, align 8
  %14 = load %struct.iss_video*, %struct.iss_video** %9, align 8
  %15 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %27, label %19

19:                                               ; preds = %3
  %20 = load %struct.iss_video*, %struct.iss_video** %9, align 8
  %21 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %7, align 8
  %24 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %22, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %19, %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %48

30:                                               ; preds = %19
  %31 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %7, align 8
  %32 = call i32 @memset(%struct.v4l2_streamparm* %31, i32 0, i32 16)
  %33 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 8
  %34 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %7, align 8
  %35 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load i32, i32* @V4L2_CAP_TIMEPERFRAME, align 4
  %37 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %7, align 8
  %38 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  store i32 %36, i32* %40, align 4
  %41 = load %struct.iss_video_fh*, %struct.iss_video_fh** %8, align 8
  %42 = getelementptr inbounds %struct.iss_video_fh, %struct.iss_video_fh* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %7, align 8
  %45 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i32 %43, i32* %47, align 8
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %30, %27
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local %struct.iss_video_fh* @to_iss_video_fh(i8*) #1

declare dso_local %struct.iss_video* @video_drvdata(%struct.file*) #1

declare dso_local i32 @memset(%struct.v4l2_streamparm*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
