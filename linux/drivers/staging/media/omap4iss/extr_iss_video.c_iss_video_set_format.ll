; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_video.c_iss_video_set_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_video.c_iss_video_set_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.iss_video_fh = type { %struct.v4l2_format }
%struct.iss_video = type { i64, i32 }
%struct.v4l2_mbus_framefmt = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @iss_video_set_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iss_video_set_format(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.iss_video_fh*, align 8
  %9 = alloca %struct.iss_video*, align 8
  %10 = alloca %struct.v4l2_mbus_framefmt, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call %struct.iss_video_fh* @to_iss_video_fh(i8* %11)
  store %struct.iss_video_fh* %12, %struct.iss_video_fh** %8, align 8
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = call %struct.iss_video* @video_drvdata(%struct.file* %13)
  store %struct.iss_video* %14, %struct.iss_video** %9, align 8
  %15 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %16 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.iss_video*, %struct.iss_video** %9, align 8
  %19 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %17, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %46

25:                                               ; preds = %3
  %26 = load %struct.iss_video*, %struct.iss_video** %9, align 8
  %27 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %26, i32 0, i32 1
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call i32 @iss_video_pix_to_mbus(i32* %31, %struct.v4l2_mbus_framefmt* %10)
  %33 = load %struct.iss_video*, %struct.iss_video** %9, align 8
  %34 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %35 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call i32 @iss_video_mbus_to_pix(%struct.iss_video* %33, %struct.v4l2_mbus_framefmt* %10, i32* %36)
  %38 = load %struct.iss_video_fh*, %struct.iss_video_fh** %8, align 8
  %39 = getelementptr inbounds %struct.iss_video_fh, %struct.iss_video_fh* %38, i32 0, i32 0
  %40 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %41 = bitcast %struct.v4l2_format* %39 to i8*
  %42 = bitcast %struct.v4l2_format* %40 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %41, i8* align 8 %42, i64 16, i1 false)
  %43 = load %struct.iss_video*, %struct.iss_video** %9, align 8
  %44 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %43, i32 0, i32 1
  %45 = call i32 @mutex_unlock(i32* %44)
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %25, %22
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local %struct.iss_video_fh* @to_iss_video_fh(i8*) #1

declare dso_local %struct.iss_video* @video_drvdata(%struct.file*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @iss_video_pix_to_mbus(i32*, %struct.v4l2_mbus_framefmt*) #1

declare dso_local i32 @iss_video_mbus_to_pix(%struct.iss_video*, %struct.v4l2_mbus_framefmt*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
