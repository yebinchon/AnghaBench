; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_video.c_omap4iss_video_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_video.c_omap4iss_video_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iss_video = type { i32, %struct.TYPE_5__, %struct.TYPE_4__, i32*, i32, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32*, i32, i32, i32, i32*, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"output\00", align 1
@MEDIA_PAD_FL_SINK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"input\00", align 1
@MEDIA_PAD_FL_SOURCE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@iss_video_dummy_ops = common dso_local global i32 0, align 4
@iss_video_fops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"OMAP4 ISS %s %s\00", align 1
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@video_device_release_empty = common dso_local global i32 0, align 4
@iss_video_ioctl_ops = common dso_local global i32 0, align 4
@ISS_PIPELINE_STREAM_STOPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omap4iss_video_init(%struct.iss_video* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iss_video*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.iss_video* %0, %struct.iss_video** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.iss_video*, %struct.iss_video** %4, align 8
  %9 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %21 [
    i32 129, label %11
    i32 128, label %16
  ]

11:                                               ; preds = %2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %12 = load i32, i32* @MEDIA_PAD_FL_SINK, align 4
  %13 = load %struct.iss_video*, %struct.iss_video** %4, align 8
  %14 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %13, i32 0, i32 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store i32 %12, i32* %15, align 8
  br label %24

16:                                               ; preds = %2
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  %17 = load i32, i32* @MEDIA_PAD_FL_SOURCE, align 4
  %18 = load %struct.iss_video*, %struct.iss_video** %4, align 8
  %19 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %18, i32 0, i32 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 8
  br label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %89

24:                                               ; preds = %16, %11
  %25 = load %struct.iss_video*, %struct.iss_video** %4, align 8
  %26 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 5
  %28 = load %struct.iss_video*, %struct.iss_video** %4, align 8
  %29 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %28, i32 0, i32 8
  %30 = call i32 @media_entity_pads_init(i32* %27, i32 1, %struct.TYPE_6__* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %3, align 4
  br label %89

35:                                               ; preds = %24
  %36 = load %struct.iss_video*, %struct.iss_video** %4, align 8
  %37 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %36, i32 0, i32 7
  %38 = call i32 @spin_lock_init(i32* %37)
  %39 = load %struct.iss_video*, %struct.iss_video** %4, align 8
  %40 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %39, i32 0, i32 6
  %41 = call i32 @mutex_init(i32* %40)
  %42 = load %struct.iss_video*, %struct.iss_video** %4, align 8
  %43 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %42, i32 0, i32 5
  %44 = call i32 @atomic_set(i32* %43, i32 0)
  %45 = load %struct.iss_video*, %struct.iss_video** %4, align 8
  %46 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = call i32 @spin_lock_init(i32* %47)
  %49 = load %struct.iss_video*, %struct.iss_video** %4, align 8
  %50 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %49, i32 0, i32 4
  %51 = call i32 @mutex_init(i32* %50)
  %52 = load %struct.iss_video*, %struct.iss_video** %4, align 8
  %53 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %52, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %35
  %57 = load %struct.iss_video*, %struct.iss_video** %4, align 8
  %58 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %57, i32 0, i32 3
  store i32* @iss_video_dummy_ops, i32** %58, align 8
  br label %59

59:                                               ; preds = %56, %35
  %60 = load %struct.iss_video*, %struct.iss_video** %4, align 8
  %61 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 4
  store i32* @iss_video_fops, i32** %62, align 8
  %63 = load %struct.iss_video*, %struct.iss_video** %4, align 8
  %64 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load i8*, i8** %5, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = call i32 @snprintf(i32 %66, i32 4, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %67, i8* %68)
  %70 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %71 = load %struct.iss_video*, %struct.iss_video** %4, align 8
  %72 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  store i32 %70, i32* %73, align 4
  %74 = load i32, i32* @video_device_release_empty, align 4
  %75 = load %struct.iss_video*, %struct.iss_video** %4, align 8
  %76 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  store i32 %74, i32* %77, align 8
  %78 = load %struct.iss_video*, %struct.iss_video** %4, align 8
  %79 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  store i32* @iss_video_ioctl_ops, i32** %80, align 8
  %81 = load i32, i32* @ISS_PIPELINE_STREAM_STOPPED, align 4
  %82 = load %struct.iss_video*, %struct.iss_video** %4, align 8
  %83 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  store i32 %81, i32* %84, align 8
  %85 = load %struct.iss_video*, %struct.iss_video** %4, align 8
  %86 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %85, i32 0, i32 1
  %87 = load %struct.iss_video*, %struct.iss_video** %4, align 8
  %88 = call i32 @video_set_drvdata(%struct.TYPE_5__* %86, %struct.iss_video* %87)
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %59, %33, %21
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @media_entity_pads_init(i32*, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i8*) #1

declare dso_local i32 @video_set_drvdata(%struct.TYPE_5__*, %struct.iss_video*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
