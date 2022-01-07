; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-capture.c_capture_try_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-capture.c_capture_try_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { i32 }
%struct.capture_priv = type { i32, i32 }
%struct.v4l2_subdev_format = type { i32, i32 }

@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@pad = common dso_local global i32 0, align 4
@get_fmt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @capture_try_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @capture_try_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.capture_priv*, align 8
  %9 = alloca %struct.v4l2_subdev_format, align 4
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call %struct.capture_priv* @video_drvdata(%struct.file* %11)
  store %struct.capture_priv* %12, %struct.capture_priv** %8, align 8
  %13 = load %struct.capture_priv*, %struct.capture_priv** %8, align 8
  %14 = getelementptr inbounds %struct.capture_priv, %struct.capture_priv* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %9, i32 0, i32 1
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  %18 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %9, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = load %struct.capture_priv*, %struct.capture_priv** %8, align 8
  %20 = getelementptr inbounds %struct.capture_priv, %struct.capture_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @pad, align 4
  %23 = load i32, i32* @get_fmt, align 4
  %24 = call i32 @v4l2_subdev_call(i32 %21, i32 %22, i32 %23, i32* null, %struct.v4l2_subdev_format* %9)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %4, align 4
  br label %33

29:                                               ; preds = %3
  %30 = load %struct.capture_priv*, %struct.capture_priv** %8, align 8
  %31 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %32 = call i32 @__capture_try_fmt_vid_cap(%struct.capture_priv* %30, %struct.v4l2_subdev_format* %9, %struct.v4l2_format* %31, i32* null, i32* null)
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %29, %27
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local %struct.capture_priv* @video_drvdata(%struct.file*) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, i32*, %struct.v4l2_subdev_format*) #1

declare dso_local i32 @__capture_try_fmt_vid_cap(%struct.capture_priv*, %struct.v4l2_subdev_format*, %struct.v4l2_format*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
