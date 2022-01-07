; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-v4l2.c_imgu_node_to_v4l2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-v4l2.c_imgu_node_to_v4l2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_device = type { i32, i32* }
%struct.v4l2_format = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@IMGU_NODE_NUM = common dso_local global i32 0, align 4
@V4L2_CAP_VIDEO_OUTPUT_MPLANE = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = common dso_local global i32 0, align 4
@imgu_v4l2_ioctl_ops = common dso_local global i32 0, align 4
@V4L2_CAP_META_OUTPUT = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_META_OUTPUT = common dso_local global i32 0, align 4
@V4L2_META_FMT_IPU3_PARAMS = common dso_local global i32 0, align 4
@imgu_v4l2_meta_ioctl_ops = common dso_local global i32 0, align 4
@V4L2_CAP_META_CAPTURE = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_META_CAPTURE = common dso_local global i32 0, align 4
@V4L2_META_FMT_IPU3_STAT_3A = common dso_local global i32 0, align 4
@V4L2_CAP_VIDEO_CAPTURE_MPLANE = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = common dso_local global i32 0, align 4
@V4L2_CAP_STREAMING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.video_device*, %struct.v4l2_format*)* @imgu_node_to_v4l2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imgu_node_to_v4l2(i32 %0, %struct.video_device* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.video_device*, align 8
  %6 = alloca %struct.v4l2_format*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.video_device* %1, %struct.video_device** %5, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @IMGU_NODE_NUM, align 4
  %10 = icmp sge i32 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @WARN_ON(i32 %11)
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %53 [
    i32 130, label %14
    i32 129, label %21
    i32 128, label %37
  ]

14:                                               ; preds = %3
  %15 = load i32, i32* @V4L2_CAP_VIDEO_OUTPUT_MPLANE, align 4
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 4
  %17 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %18 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.video_device*, %struct.video_device** %5, align 8
  %20 = getelementptr inbounds %struct.video_device, %struct.video_device* %19, i32 0, i32 1
  store i32* @imgu_v4l2_ioctl_ops, i32** %20, align 8
  br label %60

21:                                               ; preds = %3
  %22 = load i32, i32* @V4L2_CAP_META_OUTPUT, align 4
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* @V4L2_BUF_TYPE_META_OUTPUT, align 4
  %24 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %25 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @V4L2_META_FMT_IPU3_PARAMS, align 4
  %27 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %28 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32 %26, i32* %30, align 4
  %31 = load %struct.video_device*, %struct.video_device** %5, align 8
  %32 = getelementptr inbounds %struct.video_device, %struct.video_device* %31, i32 0, i32 1
  store i32* @imgu_v4l2_meta_ioctl_ops, i32** %32, align 8
  %33 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %34 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = call i32 @imgu_css_meta_fmt_set(%struct.TYPE_4__* %35)
  br label %60

37:                                               ; preds = %3
  %38 = load i32, i32* @V4L2_CAP_META_CAPTURE, align 4
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* @V4L2_BUF_TYPE_META_CAPTURE, align 4
  %40 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %41 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @V4L2_META_FMT_IPU3_STAT_3A, align 4
  %43 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %44 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i32 %42, i32* %46, align 4
  %47 = load %struct.video_device*, %struct.video_device** %5, align 8
  %48 = getelementptr inbounds %struct.video_device, %struct.video_device* %47, i32 0, i32 1
  store i32* @imgu_v4l2_meta_ioctl_ops, i32** %48, align 8
  %49 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %50 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = call i32 @imgu_css_meta_fmt_set(%struct.TYPE_4__* %51)
  br label %60

53:                                               ; preds = %3
  %54 = load i32, i32* @V4L2_CAP_VIDEO_CAPTURE_MPLANE, align 4
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE, align 4
  %56 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %57 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load %struct.video_device*, %struct.video_device** %5, align 8
  %59 = getelementptr inbounds %struct.video_device, %struct.video_device* %58, i32 0, i32 1
  store i32* @imgu_v4l2_ioctl_ops, i32** %59, align 8
  br label %60

60:                                               ; preds = %53, %37, %21, %14
  %61 = load i32, i32* @V4L2_CAP_STREAMING, align 4
  %62 = load i32, i32* %7, align 4
  %63 = or i32 %61, %62
  %64 = load %struct.video_device*, %struct.video_device** %5, align 8
  %65 = getelementptr inbounds %struct.video_device, %struct.video_device* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @imgu_css_meta_fmt_set(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
