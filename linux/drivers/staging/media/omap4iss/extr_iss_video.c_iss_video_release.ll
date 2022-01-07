; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_video.c_iss_video_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss_video.c_iss_video_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.v4l2_fh* }
%struct.v4l2_fh = type { i32 }
%struct.iss_video = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.iss_video_fh = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @iss_video_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iss_video_release(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.iss_video*, align 8
  %4 = alloca %struct.v4l2_fh*, align 8
  %5 = alloca %struct.iss_video_fh*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %6 = load %struct.file*, %struct.file** %2, align 8
  %7 = call %struct.iss_video* @video_drvdata(%struct.file* %6)
  store %struct.iss_video* %7, %struct.iss_video** %3, align 8
  %8 = load %struct.file*, %struct.file** %2, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.v4l2_fh*, %struct.v4l2_fh** %9, align 8
  store %struct.v4l2_fh* %10, %struct.v4l2_fh** %4, align 8
  %11 = load %struct.v4l2_fh*, %struct.v4l2_fh** %4, align 8
  %12 = call %struct.iss_video_fh* @to_iss_video_fh(%struct.v4l2_fh* %11)
  store %struct.iss_video_fh* %12, %struct.iss_video_fh** %5, align 8
  %13 = load %struct.file*, %struct.file** %2, align 8
  %14 = load %struct.v4l2_fh*, %struct.v4l2_fh** %4, align 8
  %15 = load %struct.iss_video*, %struct.iss_video** %3, align 8
  %16 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @iss_video_streamoff(%struct.file* %13, %struct.v4l2_fh* %14, i32 %17)
  %19 = load %struct.iss_video*, %struct.iss_video** %3, align 8
  %20 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 @v4l2_pipeline_pm_use(i32* %21, i32 0)
  %23 = load %struct.iss_video_fh*, %struct.iss_video_fh** %5, align 8
  %24 = getelementptr inbounds %struct.iss_video_fh, %struct.iss_video_fh* %23, i32 0, i32 0
  %25 = call i32 @vb2_queue_release(i32* %24)
  %26 = load %struct.v4l2_fh*, %struct.v4l2_fh** %4, align 8
  %27 = call i32 @v4l2_fh_del(%struct.v4l2_fh* %26)
  %28 = load %struct.v4l2_fh*, %struct.v4l2_fh** %4, align 8
  %29 = call i32 @v4l2_fh_exit(%struct.v4l2_fh* %28)
  %30 = load %struct.iss_video_fh*, %struct.iss_video_fh** %5, align 8
  %31 = call i32 @kfree(%struct.iss_video_fh* %30)
  %32 = load %struct.file*, %struct.file** %2, align 8
  %33 = getelementptr inbounds %struct.file, %struct.file* %32, i32 0, i32 0
  store %struct.v4l2_fh* null, %struct.v4l2_fh** %33, align 8
  %34 = load %struct.iss_video*, %struct.iss_video** %3, align 8
  %35 = getelementptr inbounds %struct.iss_video, %struct.iss_video* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @omap4iss_put(i32 %36)
  ret i32 0
}

declare dso_local %struct.iss_video* @video_drvdata(%struct.file*) #1

declare dso_local %struct.iss_video_fh* @to_iss_video_fh(%struct.v4l2_fh*) #1

declare dso_local i32 @iss_video_streamoff(%struct.file*, %struct.v4l2_fh*, i32) #1

declare dso_local i32 @v4l2_pipeline_pm_use(i32*, i32) #1

declare dso_local i32 @vb2_queue_release(i32*) #1

declare dso_local i32 @v4l2_fh_del(%struct.v4l2_fh*) #1

declare dso_local i32 @v4l2_fh_exit(%struct.v4l2_fh*) #1

declare dso_local i32 @kfree(%struct.iss_video_fh*) #1

declare dso_local i32 @omap4iss_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
