; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_video.c_iss_video_streamoff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_video.c_iss_video_streamoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.iss_video_fh = type { i32 }
%struct.iss_video = type { i32, i32, %struct.TYPE_5__, %struct.TYPE_6__*, i32* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_6__*, i32)* }
%struct.iss_pipeline = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@ISS_PIPELINE_STREAM_OUTPUT = common dso_local global i32 0, align 4
@ISS_PIPELINE_QUEUE_OUTPUT = common dso_local global i32 0, align 4
@ISS_PIPELINE_STREAM_INPUT = common dso_local global i32 0, align 4
@ISS_PIPELINE_QUEUE_INPUT = common dso_local global i32 0, align 4
@ISS_PIPELINE_STREAM_STOPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @iss_video_streamoff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iss_video_streamoff(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.iss_video_fh*, align 8
  %9 = alloca %struct.iss_video*, align 8
  %10 = alloca %struct.iss_pipeline*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = call %struct.iss_video_fh* @to_iss_video_fh(i8* %13)
  store %struct.iss_video_fh* %14, %struct.iss_video_fh** %8, align 8
  %15 = load %struct.file*, %struct.file** %5, align 8
  %16 = call %struct.iss_video* @video_drvdata(%struct.file* %15)
  store %struct.iss_video* %16, %struct.iss_video** %9, align 8
  %17 = load %struct.iss_video*, %struct.iss_video** %9, align 8
  %18 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = call %struct.iss_pipeline* @to_iss_pipeline(i32* %19)
  store %struct.iss_pipeline* %20, %struct.iss_pipeline** %10, align 8
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.iss_video*, %struct.iss_video** %9, align 8
  %23 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %21, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %109

29:                                               ; preds = %3
  %30 = load %struct.iss_video*, %struct.iss_video** %9, align 8
  %31 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %30, i32 0, i32 1
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.iss_video_fh*, %struct.iss_video_fh** %8, align 8
  %34 = getelementptr inbounds %struct.iss_video_fh, %struct.iss_video_fh* %33, i32 0, i32 0
  %35 = call i32 @vb2_is_streaming(i32* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %29
  br label %105

38:                                               ; preds = %29
  %39 = load %struct.iss_video*, %struct.iss_video** %9, align 8
  %40 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load i32, i32* @ISS_PIPELINE_STREAM_OUTPUT, align 4
  %47 = load i32, i32* @ISS_PIPELINE_QUEUE_OUTPUT, align 4
  %48 = or i32 %46, %47
  store i32 %48, i32* %11, align 4
  br label %53

49:                                               ; preds = %38
  %50 = load i32, i32* @ISS_PIPELINE_STREAM_INPUT, align 4
  %51 = load i32, i32* @ISS_PIPELINE_QUEUE_INPUT, align 4
  %52 = or i32 %50, %51
  store i32 %52, i32* %11, align 4
  br label %53

53:                                               ; preds = %49, %45
  %54 = load %struct.iss_pipeline*, %struct.iss_pipeline** %10, align 8
  %55 = getelementptr inbounds %struct.iss_pipeline, %struct.iss_pipeline* %54, i32 0, i32 2
  %56 = load i64, i64* %12, align 8
  %57 = call i32 @spin_lock_irqsave(i32* %55, i64 %56)
  %58 = load i32, i32* %11, align 4
  %59 = xor i32 %58, -1
  %60 = load %struct.iss_pipeline*, %struct.iss_pipeline** %10, align 8
  %61 = getelementptr inbounds %struct.iss_pipeline, %struct.iss_pipeline* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load %struct.iss_pipeline*, %struct.iss_pipeline** %10, align 8
  %65 = getelementptr inbounds %struct.iss_pipeline, %struct.iss_pipeline* %64, i32 0, i32 2
  %66 = load i64, i64* %12, align 8
  %67 = call i32 @spin_unlock_irqrestore(i32* %65, i64 %66)
  %68 = load %struct.iss_pipeline*, %struct.iss_pipeline** %10, align 8
  %69 = load i32, i32* @ISS_PIPELINE_STREAM_STOPPED, align 4
  %70 = call i32 @omap4iss_pipeline_set_stream(%struct.iss_pipeline* %68, i32 %69)
  %71 = load %struct.iss_video_fh*, %struct.iss_video_fh** %8, align 8
  %72 = getelementptr inbounds %struct.iss_video_fh, %struct.iss_video_fh* %71, i32 0, i32 0
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @vb2_streamoff(i32* %72, i32 %73)
  %75 = load %struct.iss_video*, %struct.iss_video** %9, align 8
  %76 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %75, i32 0, i32 4
  store i32* null, i32** %76, align 8
  %77 = load %struct.iss_pipeline*, %struct.iss_pipeline** %10, align 8
  %78 = getelementptr inbounds %struct.iss_pipeline, %struct.iss_pipeline* %77, i32 0, i32 1
  %79 = call i32 @media_entity_enum_cleanup(i32* %78)
  %80 = load %struct.iss_video*, %struct.iss_video** %9, align 8
  %81 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %80, i32 0, i32 3
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32 (%struct.TYPE_6__*, i32)*, i32 (%struct.TYPE_6__*, i32)** %85, align 8
  %87 = icmp ne i32 (%struct.TYPE_6__*, i32)* %86, null
  br i1 %87, label %88, label %100

88:                                               ; preds = %53
  %89 = load %struct.iss_video*, %struct.iss_video** %9, align 8
  %90 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %89, i32 0, i32 3
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32 (%struct.TYPE_6__*, i32)*, i32 (%struct.TYPE_6__*, i32)** %94, align 8
  %96 = load %struct.iss_video*, %struct.iss_video** %9, align 8
  %97 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %96, i32 0, i32 3
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = call i32 %95(%struct.TYPE_6__* %98, i32 0)
  br label %100

100:                                              ; preds = %88, %53
  %101 = load %struct.iss_video*, %struct.iss_video** %9, align 8
  %102 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 0
  %104 = call i32 @media_pipeline_stop(i32* %103)
  br label %105

105:                                              ; preds = %100, %37
  %106 = load %struct.iss_video*, %struct.iss_video** %9, align 8
  %107 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %106, i32 0, i32 1
  %108 = call i32 @mutex_unlock(i32* %107)
  store i32 0, i32* %4, align 4
  br label %109

109:                                              ; preds = %105, %26
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local %struct.iss_video_fh* @to_iss_video_fh(i8*) #1

declare dso_local %struct.iss_video* @video_drvdata(%struct.file*) #1

declare dso_local %struct.iss_pipeline* @to_iss_pipeline(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vb2_is_streaming(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @omap4iss_pipeline_set_stream(%struct.iss_pipeline*, i32) #1

declare dso_local i32 @vb2_streamoff(i32*, i32) #1

declare dso_local i32 @media_entity_enum_cleanup(i32*) #1

declare dso_local i32 @media_pipeline_stop(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
