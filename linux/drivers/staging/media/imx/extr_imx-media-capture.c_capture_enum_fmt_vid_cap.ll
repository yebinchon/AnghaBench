; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-capture.c_capture_enum_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-capture.c_capture_enum_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_fmtdesc = type { i32, i32 }
%struct.capture_priv = type { i32, i32 }
%struct.imx_media_pixfmt = type { i64, i32 }
%struct.v4l2_subdev_format = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@pad = common dso_local global i32 0, align 4
@get_fmt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to get src_sd format\0A\00", align 1
@CS_SEL_ANY = common dso_local global i32 0, align 4
@IPUV3_COLORSPACE_YUV = common dso_local global i64 0, align 8
@CS_SEL_YUV = common dso_local global i32 0, align 4
@CS_SEL_RGB = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_fmtdesc*)* @capture_enum_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @capture_enum_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_fmtdesc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_fmtdesc*, align 8
  %8 = alloca %struct.capture_priv*, align 8
  %9 = alloca %struct.imx_media_pixfmt*, align 8
  %10 = alloca %struct.v4l2_subdev_format, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_fmtdesc* %2, %struct.v4l2_fmtdesc** %7, align 8
  %14 = load %struct.file*, %struct.file** %5, align 8
  %15 = call %struct.capture_priv* @video_drvdata(%struct.file* %14)
  store %struct.capture_priv* %15, %struct.capture_priv** %8, align 8
  %16 = load %struct.capture_priv*, %struct.capture_priv** %8, align 8
  %17 = getelementptr inbounds %struct.capture_priv, %struct.capture_priv* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %10, i32 0, i32 2
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  %21 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %10, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  %22 = load %struct.capture_priv*, %struct.capture_priv** %8, align 8
  %23 = getelementptr inbounds %struct.capture_priv, %struct.capture_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @pad, align 4
  %26 = load i32, i32* @get_fmt, align 4
  %27 = call i32 @v4l2_subdev_call(i32 %24, i32 %25, i32 %26, i32* null, %struct.v4l2_subdev_format* %10)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %3
  %31 = load %struct.capture_priv*, %struct.capture_priv** %8, align 8
  %32 = getelementptr inbounds %struct.capture_priv, %struct.capture_priv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @v4l2_err(i32 %33, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %35 = load i32, i32* %12, align 4
  store i32 %35, i32* %4, align 4
  br label %97

36:                                               ; preds = %3
  %37 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %10, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @CS_SEL_ANY, align 4
  %41 = call %struct.imx_media_pixfmt* @imx_media_find_ipu_format(i32 %39, i32 %40)
  store %struct.imx_media_pixfmt* %41, %struct.imx_media_pixfmt** %9, align 8
  %42 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %9, align 8
  %43 = icmp ne %struct.imx_media_pixfmt* %42, null
  br i1 %43, label %44, label %66

44:                                               ; preds = %36
  %45 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %9, align 8
  %46 = getelementptr inbounds %struct.imx_media_pixfmt, %struct.imx_media_pixfmt* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @IPUV3_COLORSPACE_YUV, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* @CS_SEL_YUV, align 4
  br label %54

52:                                               ; preds = %44
  %53 = load i32, i32* @CS_SEL_RGB, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  store i32 %55, i32* %13, align 4
  %56 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %57 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @imx_media_enum_format(i32* %11, i32 %58, i32 %59)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %54
  %64 = load i32, i32* %12, align 4
  store i32 %64, i32* %4, align 4
  br label %97

65:                                               ; preds = %54
  br label %93

66:                                               ; preds = %36
  %67 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %10, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @CS_SEL_ANY, align 4
  %71 = call %struct.imx_media_pixfmt* @imx_media_find_mbus_format(i32 %69, i32 %70, i32 1)
  store %struct.imx_media_pixfmt* %71, %struct.imx_media_pixfmt** %9, align 8
  %72 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %9, align 8
  %73 = icmp ne %struct.imx_media_pixfmt* %72, null
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = call i64 @WARN_ON(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %66
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  br label %97

81:                                               ; preds = %66
  %82 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %83 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  br label %97

89:                                               ; preds = %81
  %90 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %9, align 8
  %91 = getelementptr inbounds %struct.imx_media_pixfmt, %struct.imx_media_pixfmt* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  store i32 %92, i32* %11, align 4
  br label %93

93:                                               ; preds = %89, %65
  %94 = load i32, i32* %11, align 4
  %95 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %7, align 8
  %96 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  store i32 0, i32* %4, align 4
  br label %97

97:                                               ; preds = %93, %86, %78, %63, %30
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local %struct.capture_priv* @video_drvdata(%struct.file*) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, i32*, %struct.v4l2_subdev_format*) #1

declare dso_local i32 @v4l2_err(i32, i8*) #1

declare dso_local %struct.imx_media_pixfmt* @imx_media_find_ipu_format(i32, i32) #1

declare dso_local i32 @imx_media_enum_format(i32*, i32, i32) #1

declare dso_local %struct.imx_media_pixfmt* @imx_media_find_mbus_format(i32, i32, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
