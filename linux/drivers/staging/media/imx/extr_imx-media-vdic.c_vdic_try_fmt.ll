; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-vdic.c_vdic_try_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-vdic.c_vdic_try_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vdic_priv = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { i32, %struct.v4l2_mbus_framefmt, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32 }
%struct.imx_media_pixfmt = type { i32* }

@CS_SEL_YUV = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@MIN_W = common dso_local global i32 0, align 4
@MAX_W_VDIC = common dso_local global i32 0, align 4
@W_ALIGN = common dso_local global i32 0, align 4
@MIN_H = common dso_local global i32 0, align 4
@MAX_H_VDIC = common dso_local global i32 0, align 4
@H_ALIGN = common dso_local global i32 0, align 4
@S_ALIGN = common dso_local global i32 0, align 4
@V4L2_FIELD_SEQ_TB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vdic_priv*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*, %struct.imx_media_pixfmt**)* @vdic_try_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdic_try_fmt(%struct.vdic_priv* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2, %struct.imx_media_pixfmt** %3) #0 {
  %5 = alloca %struct.vdic_priv*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_format*, align 8
  %8 = alloca %struct.imx_media_pixfmt**, align 8
  %9 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %10 = alloca i32, align 4
  store %struct.vdic_priv* %0, %struct.vdic_priv** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %7, align 8
  store %struct.imx_media_pixfmt** %3, %struct.imx_media_pixfmt*** %8, align 8
  %11 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %12 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @CS_SEL_YUV, align 4
  %16 = call %struct.imx_media_pixfmt* @imx_media_find_ipu_format(i32 %14, i32 %15)
  %17 = load %struct.imx_media_pixfmt**, %struct.imx_media_pixfmt*** %8, align 8
  store %struct.imx_media_pixfmt* %16, %struct.imx_media_pixfmt** %17, align 8
  %18 = load %struct.imx_media_pixfmt**, %struct.imx_media_pixfmt*** %8, align 8
  %19 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %18, align 8
  %20 = icmp ne %struct.imx_media_pixfmt* %19, null
  br i1 %20, label %37, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @CS_SEL_YUV, align 4
  %23 = call i32 @imx_media_enum_ipu_format(i32* %10, i32 0, i32 %22)
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @CS_SEL_YUV, align 4
  %26 = call %struct.imx_media_pixfmt* @imx_media_find_ipu_format(i32 %24, i32 %25)
  %27 = load %struct.imx_media_pixfmt**, %struct.imx_media_pixfmt*** %8, align 8
  store %struct.imx_media_pixfmt* %26, %struct.imx_media_pixfmt** %27, align 8
  %28 = load %struct.imx_media_pixfmt**, %struct.imx_media_pixfmt*** %8, align 8
  %29 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %28, align 8
  %30 = getelementptr inbounds %struct.imx_media_pixfmt, %struct.imx_media_pixfmt* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %35 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %35, i32 0, i32 3
  store i32 %33, i32* %36, align 4
  br label %37

37:                                               ; preds = %21, %4
  %38 = load %struct.vdic_priv*, %struct.vdic_priv** %5, align 8
  %39 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %40 = load %struct.vdic_priv*, %struct.vdic_priv** %5, align 8
  %41 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %44 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.v4l2_mbus_framefmt* @__vdic_get_fmt(%struct.vdic_priv* %38, %struct.v4l2_subdev_pad_config* %39, i32 %42, i32 %45)
  store %struct.v4l2_mbus_framefmt* %46, %struct.v4l2_mbus_framefmt** %9, align 8
  %47 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %48 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  switch i32 %49, label %87 [
    i32 128, label %50
    i32 130, label %60
    i32 129, label %60
  ]

50:                                               ; preds = %37
  %51 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %52 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %51, i32 0, i32 1
  %53 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %54 = bitcast %struct.v4l2_mbus_framefmt* %52 to i8*
  %55 = bitcast %struct.v4l2_mbus_framefmt* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %54, i8* align 4 %55, i64 16, i1 false)
  %56 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %57 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %58 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 4
  br label %87

60:                                               ; preds = %37, %37
  %61 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %62 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %62, i32 0, i32 2
  %64 = load i32, i32* @MIN_W, align 4
  %65 = load i32, i32* @MAX_W_VDIC, align 4
  %66 = load i32, i32* @W_ALIGN, align 4
  %67 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %68 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %68, i32 0, i32 1
  %70 = load i32, i32* @MIN_H, align 4
  %71 = load i32, i32* @MAX_H_VDIC, align 4
  %72 = load i32, i32* @H_ALIGN, align 4
  %73 = load i32, i32* @S_ALIGN, align 4
  %74 = call i32 @v4l_bound_align_image(i32* %63, i32 %64, i32 %65, i32 %66, i32* %69, i32 %70, i32 %71, i32 %72, i32 %73)
  %75 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %76 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @V4L2_FIELD_HAS_BOTH(i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %60
  %82 = load i32, i32* @V4L2_FIELD_SEQ_TB, align 4
  %83 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %84 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %84, i32 0, i32 0
  store i32 %82, i32* %85, align 4
  br label %86

86:                                               ; preds = %81, %60
  br label %87

87:                                               ; preds = %37, %86, %50
  %88 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %89 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %88, i32 0, i32 1
  %90 = call i32 @imx_media_try_colorimetry(%struct.v4l2_mbus_framefmt* %89, i32 1)
  ret void
}

declare dso_local %struct.imx_media_pixfmt* @imx_media_find_ipu_format(i32, i32) #1

declare dso_local i32 @imx_media_enum_ipu_format(i32*, i32, i32) #1

declare dso_local %struct.v4l2_mbus_framefmt* @__vdic_get_fmt(%struct.vdic_priv*, %struct.v4l2_subdev_pad_config*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @v4l_bound_align_image(i32*, i32, i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @V4L2_FIELD_HAS_BOTH(i32) #1

declare dso_local i32 @imx_media_try_colorimetry(%struct.v4l2_mbus_framefmt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
