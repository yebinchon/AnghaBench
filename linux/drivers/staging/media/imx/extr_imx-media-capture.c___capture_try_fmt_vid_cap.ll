; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-capture.c___capture_try_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-capture.c___capture_try_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.capture_priv = type { i32 }
%struct.v4l2_subdev_format = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.v4l2_format = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.imx_media_pixfmt = type { i64 }
%struct.v4l2_rect = type { i32, i32, i64, i64 }

@CS_SEL_ANY = common dso_local global i32 0, align 4
@IPUV3_COLORSPACE_YUV = common dso_local global i64 0, align 8
@CS_SEL_YUV = common dso_local global i32 0, align 4
@CS_SEL_RGB = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@V4L2_FIELD_INTERLACED_TB = common dso_local global i32 0, align 4
@V4L2_FIELD_INTERLACED_BT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.capture_priv*, %struct.v4l2_subdev_format*, %struct.v4l2_format*, %struct.imx_media_pixfmt**, %struct.v4l2_rect*)* @__capture_try_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__capture_try_fmt_vid_cap(%struct.capture_priv* %0, %struct.v4l2_subdev_format* %1, %struct.v4l2_format* %2, %struct.imx_media_pixfmt** %3, %struct.v4l2_rect* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.capture_priv*, align 8
  %8 = alloca %struct.v4l2_subdev_format*, align 8
  %9 = alloca %struct.v4l2_format*, align 8
  %10 = alloca %struct.imx_media_pixfmt**, align 8
  %11 = alloca %struct.v4l2_rect*, align 8
  %12 = alloca %struct.imx_media_pixfmt*, align 8
  %13 = alloca %struct.imx_media_pixfmt*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.capture_priv* %0, %struct.capture_priv** %7, align 8
  store %struct.v4l2_subdev_format* %1, %struct.v4l2_subdev_format** %8, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %9, align 8
  store %struct.imx_media_pixfmt** %3, %struct.imx_media_pixfmt*** %10, align 8
  store %struct.v4l2_rect* %4, %struct.v4l2_rect** %11, align 8
  %16 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %8, align 8
  %17 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @CS_SEL_ANY, align 4
  %21 = call %struct.imx_media_pixfmt* @imx_media_find_ipu_format(i32 %19, i32 %20)
  store %struct.imx_media_pixfmt* %21, %struct.imx_media_pixfmt** %13, align 8
  %22 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %13, align 8
  %23 = icmp ne %struct.imx_media_pixfmt* %22, null
  br i1 %23, label %24, label %53

24:                                               ; preds = %5
  %25 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %13, align 8
  %26 = getelementptr inbounds %struct.imx_media_pixfmt, %struct.imx_media_pixfmt* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @IPUV3_COLORSPACE_YUV, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @CS_SEL_YUV, align 4
  br label %34

32:                                               ; preds = %24
  %33 = load i32, i32* @CS_SEL_RGB, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  store i32 %35, i32* %15, align 4
  %36 = load %struct.v4l2_format*, %struct.v4l2_format** %9, align 8
  %37 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* %15, align 4
  %43 = call %struct.imx_media_pixfmt* @imx_media_find_format(i32 %41, i32 %42, i32 0)
  store %struct.imx_media_pixfmt* %43, %struct.imx_media_pixfmt** %12, align 8
  %44 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %12, align 8
  %45 = icmp ne %struct.imx_media_pixfmt* %44, null
  br i1 %45, label %52, label %46

46:                                               ; preds = %34
  %47 = load i32, i32* %15, align 4
  %48 = call i32 @imx_media_enum_format(i32* %14, i32 0, i32 %47)
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %15, align 4
  %51 = call %struct.imx_media_pixfmt* @imx_media_find_format(i32 %49, i32 %50, i32 0)
  store %struct.imx_media_pixfmt* %51, %struct.imx_media_pixfmt** %12, align 8
  br label %52

52:                                               ; preds = %46, %34
  br label %71

53:                                               ; preds = %5
  %54 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %8, align 8
  %55 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @CS_SEL_ANY, align 4
  %59 = call %struct.imx_media_pixfmt* @imx_media_find_mbus_format(i32 %57, i32 %58, i32 1)
  store %struct.imx_media_pixfmt* %59, %struct.imx_media_pixfmt** %13, align 8
  %60 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %13, align 8
  %61 = icmp ne %struct.imx_media_pixfmt* %60, null
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = call i64 @WARN_ON(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %53
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %6, align 4
  br label %130

69:                                               ; preds = %53
  %70 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %13, align 8
  store %struct.imx_media_pixfmt* %70, %struct.imx_media_pixfmt** %12, align 8
  br label %71

71:                                               ; preds = %69, %52
  %72 = load %struct.v4l2_format*, %struct.v4l2_format** %9, align 8
  %73 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @V4L2_FIELD_IS_INTERLACED(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %96

79:                                               ; preds = %71
  %80 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %8, align 8
  %81 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  switch i32 %83, label %94 [
    i32 128, label %84
    i32 129, label %89
  ]

84:                                               ; preds = %79
  %85 = load i32, i32* @V4L2_FIELD_INTERLACED_TB, align 4
  %86 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %8, align 8
  %87 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  store i32 %85, i32* %88, align 4
  br label %95

89:                                               ; preds = %79
  %90 = load i32, i32* @V4L2_FIELD_INTERLACED_BT, align 4
  %91 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %8, align 8
  %92 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  store i32 %90, i32* %93, align 4
  br label %95

94:                                               ; preds = %79
  br label %95

95:                                               ; preds = %94, %89, %84
  br label %96

96:                                               ; preds = %95, %71
  %97 = load %struct.v4l2_format*, %struct.v4l2_format** %9, align 8
  %98 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %8, align 8
  %101 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %100, i32 0, i32 0
  %102 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %12, align 8
  %103 = call i32 @imx_media_mbus_fmt_to_pix_fmt(%struct.TYPE_5__* %99, %struct.TYPE_6__* %101, %struct.imx_media_pixfmt* %102)
  %104 = load %struct.imx_media_pixfmt**, %struct.imx_media_pixfmt*** %10, align 8
  %105 = icmp ne %struct.imx_media_pixfmt** %104, null
  br i1 %105, label %106, label %109

106:                                              ; preds = %96
  %107 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %12, align 8
  %108 = load %struct.imx_media_pixfmt**, %struct.imx_media_pixfmt*** %10, align 8
  store %struct.imx_media_pixfmt* %107, %struct.imx_media_pixfmt** %108, align 8
  br label %109

109:                                              ; preds = %106, %96
  %110 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %111 = icmp ne %struct.v4l2_rect* %110, null
  br i1 %111, label %112, label %129

112:                                              ; preds = %109
  %113 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %114 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %113, i32 0, i32 3
  store i64 0, i64* %114, align 8
  %115 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %116 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %115, i32 0, i32 2
  store i64 0, i64* %116, align 8
  %117 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %8, align 8
  %118 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %122 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  %123 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %8, align 8
  %124 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %128 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 8
  br label %129

129:                                              ; preds = %112, %109
  store i32 0, i32* %6, align 4
  br label %130

130:                                              ; preds = %129, %66
  %131 = load i32, i32* %6, align 4
  ret i32 %131
}

declare dso_local %struct.imx_media_pixfmt* @imx_media_find_ipu_format(i32, i32) #1

declare dso_local %struct.imx_media_pixfmt* @imx_media_find_format(i32, i32, i32) #1

declare dso_local i32 @imx_media_enum_format(i32*, i32, i32) #1

declare dso_local %struct.imx_media_pixfmt* @imx_media_find_mbus_format(i32, i32, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @V4L2_FIELD_IS_INTERLACED(i32) #1

declare dso_local i32 @imx_media_mbus_fmt_to_pix_fmt(%struct.TYPE_5__*, %struct.TYPE_6__*, %struct.imx_media_pixfmt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
