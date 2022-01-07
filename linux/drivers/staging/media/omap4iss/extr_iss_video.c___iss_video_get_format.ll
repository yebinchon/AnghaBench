; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_video.c___iss_video_get_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_video.c___iss_video_get_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iss_video = type { i32 }
%struct.v4l2_mbus_framefmt = type { i32 }
%struct.v4l2_subdev_format = type { %struct.v4l2_mbus_framefmt, i32, i32 }
%struct.v4l2_subdev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@get_fmt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iss_video*, %struct.v4l2_mbus_framefmt*)* @__iss_video_get_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__iss_video_get_format(%struct.iss_video* %0, %struct.v4l2_mbus_framefmt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iss_video*, align 8
  %5 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %6 = alloca %struct.v4l2_subdev_format, align 4
  %7 = alloca %struct.v4l2_subdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.iss_video* %0, %struct.iss_video** %4, align 8
  store %struct.v4l2_mbus_framefmt* %1, %struct.v4l2_mbus_framefmt** %5, align 8
  %10 = load %struct.iss_video*, %struct.iss_video** %4, align 8
  %11 = call %struct.v4l2_subdev* @iss_video_remote_subdev(%struct.iss_video* %10, i32* %8)
  store %struct.v4l2_subdev* %11, %struct.v4l2_subdev** %7, align 8
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %13 = icmp ne %struct.v4l2_subdev* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %42

17:                                               ; preds = %2
  %18 = call i32 @memset(%struct.v4l2_subdev_format* %6, i32 0, i32 12)
  %19 = load i32, i32* %8, align 4
  %20 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %6, i32 0, i32 2
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  %22 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %6, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = load %struct.iss_video*, %struct.iss_video** %4, align 8
  %24 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @get_fmt, align 4
  %29 = call i32 @v4l2_subdev_call(%struct.v4l2_subdev* %26, i32 %27, i32 %28, i32* null, %struct.v4l2_subdev_format* %6)
  store i32 %29, i32* %9, align 4
  %30 = load %struct.iss_video*, %struct.iss_video** %4, align 8
  %31 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %30, i32 0, i32 0
  %32 = call i32 @mutex_unlock(i32* %31)
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %17
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %3, align 4
  br label %42

37:                                               ; preds = %17
  %38 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %5, align 8
  %39 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %6, i32 0, i32 0
  %40 = bitcast %struct.v4l2_mbus_framefmt* %38 to i8*
  %41 = bitcast %struct.v4l2_mbus_framefmt* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %40, i8* align 4 %41, i64 4, i1 false)
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %37, %35, %14
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.v4l2_subdev* @iss_video_remote_subdev(%struct.iss_video*, i32*) #1

declare dso_local i32 @memset(%struct.v4l2_subdev_format*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @v4l2_subdev_call(%struct.v4l2_subdev*, i32, i32, i32*, %struct.v4l2_subdev_format*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
