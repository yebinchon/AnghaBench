; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-ic-prpencvf.c_prp_try_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-ic-prpencvf.c_prp_try_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.prp_priv = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { i64, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }
%struct.imx_media_pixfmt = type { i32* }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32 }

@CS_SEL_ANY = common dso_local global i32 0, align 4
@PRPENCVF_SINK_PAD = common dso_local global i32 0, align 4
@PRPENCVF_SRC_PAD = common dso_local global i64 0, align 8
@MIN_W_SINK = common dso_local global i32 0, align 4
@MAX_W_SINK = common dso_local global i32 0, align 4
@W_ALIGN_SINK = common dso_local global i32 0, align 4
@MIN_H_SINK = common dso_local global i32 0, align 4
@MAX_H_SINK = common dso_local global i32 0, align 4
@H_ALIGN_SINK = common dso_local global i32 0, align 4
@S_ALIGN = common dso_local global i32 0, align 4
@V4L2_FIELD_ANY = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.prp_priv*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*, %struct.imx_media_pixfmt**)* @prp_try_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prp_try_fmt(%struct.prp_priv* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2, %struct.imx_media_pixfmt** %3) #0 {
  %5 = alloca %struct.prp_priv*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_format*, align 8
  %8 = alloca %struct.imx_media_pixfmt**, align 8
  %9 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %10 = alloca i32, align 4
  store %struct.prp_priv* %0, %struct.prp_priv** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %7, align 8
  store %struct.imx_media_pixfmt** %3, %struct.imx_media_pixfmt*** %8, align 8
  %11 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %12 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @CS_SEL_ANY, align 4
  %16 = call %struct.imx_media_pixfmt* @imx_media_find_ipu_format(i32 %14, i32 %15)
  %17 = load %struct.imx_media_pixfmt**, %struct.imx_media_pixfmt*** %8, align 8
  store %struct.imx_media_pixfmt* %16, %struct.imx_media_pixfmt** %17, align 8
  %18 = load %struct.imx_media_pixfmt**, %struct.imx_media_pixfmt*** %8, align 8
  %19 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %18, align 8
  %20 = icmp ne %struct.imx_media_pixfmt* %19, null
  br i1 %20, label %37, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @CS_SEL_ANY, align 4
  %23 = call i32 @imx_media_enum_ipu_format(i32* %10, i32 0, i32 %22)
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @CS_SEL_ANY, align 4
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
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 5
  store i32 %33, i32* %36, align 4
  br label %37

37:                                               ; preds = %21, %4
  %38 = load %struct.prp_priv*, %struct.prp_priv** %5, align 8
  %39 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %40 = load i32, i32* @PRPENCVF_SINK_PAD, align 4
  %41 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %42 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call %struct.v4l2_mbus_framefmt* @__prp_get_fmt(%struct.prp_priv* %38, %struct.v4l2_subdev_pad_config* %39, i32 %40, i32 %43)
  store %struct.v4l2_mbus_framefmt* %44, %struct.v4l2_mbus_framefmt** %9, align 8
  %45 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %46 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @PRPENCVF_SRC_PAD, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %76

50:                                               ; preds = %37
  %51 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %52 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %55 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 8
  %57 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %58 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %57, i32 0, i32 1
  %59 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %60 = load %struct.prp_priv*, %struct.prp_priv** %5, align 8
  %61 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @prp_bound_align_output(%struct.TYPE_3__* %58, %struct.v4l2_mbus_framefmt* %59, i32 %62)
  %64 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %65 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %68 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 4
  store i32 %66, i32* %69, align 8
  %70 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %71 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %74 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 3
  store i32 %72, i32* %75, align 4
  br label %103

76:                                               ; preds = %37
  %77 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %78 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 2
  %80 = load i32, i32* @MIN_W_SINK, align 4
  %81 = load i32, i32* @MAX_W_SINK, align 4
  %82 = load i32, i32* @W_ALIGN_SINK, align 4
  %83 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %84 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 1
  %86 = load i32, i32* @MIN_H_SINK, align 4
  %87 = load i32, i32* @MAX_H_SINK, align 4
  %88 = load i32, i32* @H_ALIGN_SINK, align 4
  %89 = load i32, i32* @S_ALIGN, align 4
  %90 = call i32 @v4l_bound_align_image(i32* %79, i32 %80, i32 %81, i32 %82, i32* %85, i32 %86, i32 %87, i32 %88, i32 %89)
  %91 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %92 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @V4L2_FIELD_ANY, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %102

97:                                               ; preds = %76
  %98 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %99 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %100 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  store i32 %98, i32* %101, align 8
  br label %102

102:                                              ; preds = %97, %76
  br label %103

103:                                              ; preds = %102, %50
  %104 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %105 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %104, i32 0, i32 1
  %106 = call i32 @imx_media_try_colorimetry(%struct.TYPE_3__* %105, i32 1)
  ret void
}

declare dso_local %struct.imx_media_pixfmt* @imx_media_find_ipu_format(i32, i32) #1

declare dso_local i32 @imx_media_enum_ipu_format(i32*, i32, i32) #1

declare dso_local %struct.v4l2_mbus_framefmt* @__prp_get_fmt(%struct.prp_priv*, %struct.v4l2_subdev_pad_config*, i32, i32) #1

declare dso_local i32 @prp_bound_align_output(%struct.TYPE_3__*, %struct.v4l2_mbus_framefmt*, i32) #1

declare dso_local i32 @v4l_bound_align_image(i32*, i32, i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @imx_media_try_colorimetry(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
