; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-capture.c_capture_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-capture.c_capture_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i64 }
%struct.capture_priv = type { i32, %struct.vb2_queue, %struct.TYPE_2__ }
%struct.vb2_queue = type { i64 }
%struct.TYPE_2__ = type { %struct.video_device* }
%struct.video_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @capture_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @capture_release(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.capture_priv*, align 8
  %4 = alloca %struct.video_device*, align 8
  %5 = alloca %struct.vb2_queue*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %6 = load %struct.file*, %struct.file** %2, align 8
  %7 = call %struct.capture_priv* @video_drvdata(%struct.file* %6)
  store %struct.capture_priv* %7, %struct.capture_priv** %3, align 8
  %8 = load %struct.capture_priv*, %struct.capture_priv** %3, align 8
  %9 = getelementptr inbounds %struct.capture_priv, %struct.capture_priv* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.video_device*, %struct.video_device** %10, align 8
  store %struct.video_device* %11, %struct.video_device** %4, align 8
  %12 = load %struct.capture_priv*, %struct.capture_priv** %3, align 8
  %13 = getelementptr inbounds %struct.capture_priv, %struct.capture_priv* %12, i32 0, i32 1
  store %struct.vb2_queue* %13, %struct.vb2_queue** %5, align 8
  %14 = load %struct.capture_priv*, %struct.capture_priv** %3, align 8
  %15 = getelementptr inbounds %struct.capture_priv, %struct.capture_priv* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.file*, %struct.file** %2, align 8
  %18 = getelementptr inbounds %struct.file, %struct.file* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %21 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %26 = call i32 @vb2_queue_release(%struct.vb2_queue* %25)
  %27 = load %struct.vb2_queue*, %struct.vb2_queue** %5, align 8
  %28 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  br label %29

29:                                               ; preds = %24, %1
  %30 = load %struct.video_device*, %struct.video_device** %4, align 8
  %31 = getelementptr inbounds %struct.video_device, %struct.video_device* %30, i32 0, i32 0
  %32 = call i32 @v4l2_pipeline_pm_use(i32* %31, i32 0)
  %33 = load %struct.file*, %struct.file** %2, align 8
  %34 = call i32 @v4l2_fh_release(%struct.file* %33)
  %35 = load %struct.capture_priv*, %struct.capture_priv** %3, align 8
  %36 = getelementptr inbounds %struct.capture_priv, %struct.capture_priv* %35, i32 0, i32 0
  %37 = call i32 @mutex_unlock(i32* %36)
  ret i32 0
}

declare dso_local %struct.capture_priv* @video_drvdata(%struct.file*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vb2_queue_release(%struct.vb2_queue*) #1

declare dso_local i32 @v4l2_pipeline_pm_use(i32*, i32) #1

declare dso_local i32 @v4l2_fh_release(%struct.file*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
