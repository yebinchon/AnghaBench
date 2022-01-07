; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-utils.c_init_mbus_colorimetry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-utils.c_init_mbus_colorimetry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32 }
%struct.imx_media_pixfmt = type { i64 }

@IPUV3_COLORSPACE_RGB = common dso_local global i64 0, align 8
@V4L2_COLORSPACE_SRGB = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SMPTE170M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.v4l2_mbus_framefmt*, %struct.imx_media_pixfmt*)* @init_mbus_colorimetry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_mbus_colorimetry(%struct.v4l2_mbus_framefmt* %0, %struct.imx_media_pixfmt* %1) #0 {
  %3 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %4 = alloca %struct.imx_media_pixfmt*, align 8
  store %struct.v4l2_mbus_framefmt* %0, %struct.v4l2_mbus_framefmt** %3, align 8
  store %struct.imx_media_pixfmt* %1, %struct.imx_media_pixfmt** %4, align 8
  %5 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %4, align 8
  %6 = getelementptr inbounds %struct.imx_media_pixfmt, %struct.imx_media_pixfmt* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @IPUV3_COLORSPACE_RGB, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @V4L2_COLORSPACE_SRGB, align 4
  br label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @V4L2_COLORSPACE_SMPTE170M, align 4
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %11, %10 ], [ %13, %12 ]
  %16 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %3, align 8
  %17 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %3, align 8
  %19 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @V4L2_MAP_XFER_FUNC_DEFAULT(i32 %20)
  %22 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %3, align 8
  %23 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 4
  %24 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %3, align 8
  %25 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @V4L2_MAP_YCBCR_ENC_DEFAULT(i32 %26)
  %28 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %3, align 8
  %29 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %4, align 8
  %31 = getelementptr inbounds %struct.imx_media_pixfmt, %struct.imx_media_pixfmt* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @IPUV3_COLORSPACE_RGB, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %3, align 8
  %37 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %3, align 8
  %40 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @V4L2_MAP_QUANTIZATION_DEFAULT(i32 %35, i32 %38, i32 %41)
  %43 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %3, align 8
  %44 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 4
  ret void
}

declare dso_local i32 @V4L2_MAP_XFER_FUNC_DEFAULT(i32) #1

declare dso_local i32 @V4L2_MAP_YCBCR_ENC_DEFAULT(i32) #1

declare dso_local i32 @V4L2_MAP_QUANTIZATION_DEFAULT(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
