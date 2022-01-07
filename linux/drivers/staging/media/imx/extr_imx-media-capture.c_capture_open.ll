; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-capture.c_capture_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-capture.c_capture_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.capture_priv = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.video_device* }
%struct.video_device = type { i32 }

@ERESTARTSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"v4l2_fh_open failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @capture_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @capture_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.capture_priv*, align 8
  %5 = alloca %struct.video_device*, align 8
  %6 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %7 = load %struct.file*, %struct.file** %3, align 8
  %8 = call %struct.capture_priv* @video_drvdata(%struct.file* %7)
  store %struct.capture_priv* %8, %struct.capture_priv** %4, align 8
  %9 = load %struct.capture_priv*, %struct.capture_priv** %4, align 8
  %10 = getelementptr inbounds %struct.capture_priv, %struct.capture_priv* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.video_device*, %struct.video_device** %11, align 8
  store %struct.video_device* %12, %struct.video_device** %5, align 8
  %13 = load %struct.capture_priv*, %struct.capture_priv** %4, align 8
  %14 = getelementptr inbounds %struct.capture_priv, %struct.capture_priv* %13, i32 0, i32 0
  %15 = call i64 @mutex_lock_interruptible(i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @ERESTARTSYS, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %44

20:                                               ; preds = %1
  %21 = load %struct.file*, %struct.file** %3, align 8
  %22 = call i32 @v4l2_fh_open(%struct.file* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.capture_priv*, %struct.capture_priv** %4, align 8
  %27 = getelementptr inbounds %struct.capture_priv, %struct.capture_priv* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @v4l2_err(i32 %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %25, %20
  %31 = load %struct.video_device*, %struct.video_device** %5, align 8
  %32 = getelementptr inbounds %struct.video_device, %struct.video_device* %31, i32 0, i32 0
  %33 = call i32 @v4l2_pipeline_pm_use(i32* %32, i32 1)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load %struct.file*, %struct.file** %3, align 8
  %38 = call i32 @v4l2_fh_release(%struct.file* %37)
  br label %39

39:                                               ; preds = %36, %30
  %40 = load %struct.capture_priv*, %struct.capture_priv** %4, align 8
  %41 = getelementptr inbounds %struct.capture_priv, %struct.capture_priv* %40, i32 0, i32 0
  %42 = call i32 @mutex_unlock(i32* %41)
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %39, %17
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.capture_priv* @video_drvdata(%struct.file*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @v4l2_fh_open(%struct.file*) #1

declare dso_local i32 @v4l2_err(i32, i8*) #1

declare dso_local i32 @v4l2_pipeline_pm_use(i32*, i32) #1

declare dso_local i32 @v4l2_fh_release(%struct.file*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
