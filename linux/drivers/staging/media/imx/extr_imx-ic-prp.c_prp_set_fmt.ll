; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-ic-prp.c_prp_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-ic-prp.c_prp_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { i32, %struct.v4l2_mbus_framefmt, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32 }
%struct.prp_priv = type { i64, i32 }
%struct.imx_media_pixfmt = type { i32* }

@PRP_NUM_PADS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@MIN_W = common dso_local global i32 0, align 4
@MAX_W = common dso_local global i32 0, align 4
@W_ALIGN = common dso_local global i32 0, align 4
@MIN_H = common dso_local global i32 0, align 4
@MAX_H = common dso_local global i32 0, align 4
@H_ALIGN = common dso_local global i32 0, align 4
@S_ALIGN = common dso_local global i32 0, align 4
@CS_SEL_ANY = common dso_local global i32 0, align 4
@V4L2_FIELD_ANY = common dso_local global i32 0, align 4
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)* @prp_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prp_set_fmt(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_format*, align 8
  %8 = alloca %struct.prp_priv*, align 8
  %9 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %10 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %11 = alloca %struct.imx_media_pixfmt*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %7, align 8
  %14 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %15 = call %struct.prp_priv* @sd_to_priv(%struct.v4l2_subdev* %14)
  store %struct.prp_priv* %15, %struct.prp_priv** %8, align 8
  store i32 0, i32* %12, align 4
  %16 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %17 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @PRP_NUM_PADS, align 4
  %20 = icmp sge i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %124

24:                                               ; preds = %3
  %25 = load %struct.prp_priv*, %struct.prp_priv** %8, align 8
  %26 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %25, i32 0, i32 1
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.prp_priv*, %struct.prp_priv** %8, align 8
  %29 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load i32, i32* @EBUSY, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %12, align 4
  br label %119

35:                                               ; preds = %24
  %36 = load %struct.prp_priv*, %struct.prp_priv** %8, align 8
  %37 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %38 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %39 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call %struct.v4l2_mbus_framefmt* @__prp_get_fmt(%struct.prp_priv* %36, %struct.v4l2_subdev_pad_config* %37, i32 130, i32 %40)
  store %struct.v4l2_mbus_framefmt* %41, %struct.v4l2_mbus_framefmt** %10, align 8
  %42 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %43 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %101 [
    i32 130, label %45
    i32 129, label %95
    i32 128, label %95
  ]

45:                                               ; preds = %35
  %46 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %47 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %47, i32 0, i32 3
  %49 = load i32, i32* @MIN_W, align 4
  %50 = load i32, i32* @MAX_W, align 4
  %51 = load i32, i32* @W_ALIGN, align 4
  %52 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %53 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %53, i32 0, i32 2
  %55 = load i32, i32* @MIN_H, align 4
  %56 = load i32, i32* @MAX_H, align 4
  %57 = load i32, i32* @H_ALIGN, align 4
  %58 = load i32, i32* @S_ALIGN, align 4
  %59 = call i32 @v4l_bound_align_image(i32* %48, i32 %49, i32 %50, i32 %51, i32* %54, i32 %55, i32 %56, i32 %57, i32 %58)
  %60 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %61 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @CS_SEL_ANY, align 4
  %65 = call %struct.imx_media_pixfmt* @imx_media_find_ipu_format(i32 %63, i32 %64)
  store %struct.imx_media_pixfmt* %65, %struct.imx_media_pixfmt** %11, align 8
  %66 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %11, align 8
  %67 = icmp ne %struct.imx_media_pixfmt* %66, null
  br i1 %67, label %82, label %68

68:                                               ; preds = %45
  %69 = load i32, i32* @CS_SEL_ANY, align 4
  %70 = call i32 @imx_media_enum_ipu_format(i32* %13, i32 0, i32 %69)
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* @CS_SEL_ANY, align 4
  %73 = call %struct.imx_media_pixfmt* @imx_media_find_ipu_format(i32 %71, i32 %72)
  store %struct.imx_media_pixfmt* %73, %struct.imx_media_pixfmt** %11, align 8
  %74 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %11, align 8
  %75 = getelementptr inbounds %struct.imx_media_pixfmt, %struct.imx_media_pixfmt* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %80 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %80, i32 0, i32 1
  store i32 %78, i32* %81, align 4
  br label %82

82:                                               ; preds = %68, %45
  %83 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %84 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @V4L2_FIELD_ANY, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %82
  %90 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %91 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %92 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %92, i32 0, i32 0
  store i32 %90, i32* %93, align 4
  br label %94

94:                                               ; preds = %89, %82
  br label %101

95:                                               ; preds = %35, %35
  %96 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %97 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %96, i32 0, i32 1
  %98 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %10, align 8
  %99 = bitcast %struct.v4l2_mbus_framefmt* %97 to i8*
  %100 = bitcast %struct.v4l2_mbus_framefmt* %98 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %99, i8* align 4 %100, i64 16, i1 false)
  br label %101

101:                                              ; preds = %35, %95, %94
  %102 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %103 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %102, i32 0, i32 1
  %104 = call i32 @imx_media_try_colorimetry(%struct.v4l2_mbus_framefmt* %103, i32 1)
  %105 = load %struct.prp_priv*, %struct.prp_priv** %8, align 8
  %106 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %107 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %108 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %111 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = call %struct.v4l2_mbus_framefmt* @__prp_get_fmt(%struct.prp_priv* %105, %struct.v4l2_subdev_pad_config* %106, i32 %109, i32 %112)
  store %struct.v4l2_mbus_framefmt* %113, %struct.v4l2_mbus_framefmt** %9, align 8
  %114 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %9, align 8
  %115 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %116 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %115, i32 0, i32 1
  %117 = bitcast %struct.v4l2_mbus_framefmt* %114 to i8*
  %118 = bitcast %struct.v4l2_mbus_framefmt* %116 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %117, i8* align 4 %118, i64 16, i1 false)
  br label %119

119:                                              ; preds = %101, %32
  %120 = load %struct.prp_priv*, %struct.prp_priv** %8, align 8
  %121 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %120, i32 0, i32 1
  %122 = call i32 @mutex_unlock(i32* %121)
  %123 = load i32, i32* %12, align 4
  store i32 %123, i32* %4, align 4
  br label %124

124:                                              ; preds = %119, %21
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local %struct.prp_priv* @sd_to_priv(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.v4l2_mbus_framefmt* @__prp_get_fmt(%struct.prp_priv*, %struct.v4l2_subdev_pad_config*, i32, i32) #1

declare dso_local i32 @v4l_bound_align_image(i32*, i32, i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local %struct.imx_media_pixfmt* @imx_media_find_ipu_format(i32, i32) #1

declare dso_local i32 @imx_media_enum_ipu_format(i32*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @imx_media_try_colorimetry(%struct.v4l2_mbus_framefmt*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
