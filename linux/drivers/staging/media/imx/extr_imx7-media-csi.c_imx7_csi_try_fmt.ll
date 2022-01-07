; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx7-media-csi.c_imx7_csi_try_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx7-media-csi.c_imx7_csi_try_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx7_csi = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.imx_media_pixfmt = type { i32* }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@CS_SEL_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imx7_csi*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*, %struct.imx_media_pixfmt**)* @imx7_csi_try_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx7_csi_try_fmt(%struct.imx7_csi* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2, %struct.imx_media_pixfmt** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.imx7_csi*, align 8
  %7 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %8 = alloca %struct.v4l2_subdev_format*, align 8
  %9 = alloca %struct.imx_media_pixfmt**, align 8
  %10 = alloca %struct.imx_media_pixfmt*, align 8
  %11 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %12 = alloca i32, align 4
  store %struct.imx7_csi* %0, %struct.imx7_csi** %6, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %7, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %8, align 8
  store %struct.imx_media_pixfmt** %3, %struct.imx_media_pixfmt*** %9, align 8
  %13 = load %struct.imx7_csi*, %struct.imx7_csi** %6, align 8
  %14 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %7, align 8
  %15 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %8, align 8
  %16 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.v4l2_mbus_framefmt* @imx7_csi_get_format(%struct.imx7_csi* %13, %struct.v4l2_subdev_pad_config* %14, i32 129, i32 %17)
  store %struct.v4l2_mbus_framefmt* %18, %struct.v4l2_mbus_framefmt** %11, align 8
  %19 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %11, align 8
  %20 = icmp ne %struct.v4l2_mbus_framefmt* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %101

24:                                               ; preds = %4
  %25 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %8, align 8
  %26 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %94 [
    i32 128, label %28
    i32 129, label %66
  ]

28:                                               ; preds = %24
  %29 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %11, align 8
  %30 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @CS_SEL_ANY, align 4
  %33 = call %struct.imx_media_pixfmt* @imx_media_find_mbus_format(i32 %31, i32 %32, i32 1)
  store %struct.imx_media_pixfmt* %33, %struct.imx_media_pixfmt** %10, align 8
  %34 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %11, align 8
  %35 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %8, align 8
  %38 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 4
  store i32 %36, i32* %39, align 4
  %40 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %11, align 8
  %41 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %8, align 8
  %44 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 3
  store i32 %42, i32* %45, align 4
  %46 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %11, align 8
  %47 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %8, align 8
  %50 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 4
  %52 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %10, align 8
  %53 = load %struct.imx_media_pixfmt**, %struct.imx_media_pixfmt*** %9, align 8
  store %struct.imx_media_pixfmt* %52, %struct.imx_media_pixfmt** %53, align 8
  %54 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %11, align 8
  %55 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %8, align 8
  %58 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  store i32 %56, i32* %59, align 4
  %60 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %11, align 8
  %61 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %8, align 8
  %64 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  store i32 %62, i32* %65, align 4
  br label %97

66:                                               ; preds = %24
  %67 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %8, align 8
  %68 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @CS_SEL_ANY, align 4
  %72 = call %struct.imx_media_pixfmt* @imx_media_find_mbus_format(i32 %70, i32 %71, i32 1)
  %73 = load %struct.imx_media_pixfmt**, %struct.imx_media_pixfmt*** %9, align 8
  store %struct.imx_media_pixfmt* %72, %struct.imx_media_pixfmt** %73, align 8
  %74 = load %struct.imx_media_pixfmt**, %struct.imx_media_pixfmt*** %9, align 8
  %75 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %74, align 8
  %76 = icmp ne %struct.imx_media_pixfmt* %75, null
  br i1 %76, label %93, label %77

77:                                               ; preds = %66
  %78 = load i32, i32* @CS_SEL_ANY, align 4
  %79 = call i32 @imx_media_enum_mbus_format(i32* %12, i32 0, i32 %78, i32 0)
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* @CS_SEL_ANY, align 4
  %82 = call %struct.imx_media_pixfmt* @imx_media_find_mbus_format(i32 %80, i32 %81, i32 0)
  %83 = load %struct.imx_media_pixfmt**, %struct.imx_media_pixfmt*** %9, align 8
  store %struct.imx_media_pixfmt* %82, %struct.imx_media_pixfmt** %83, align 8
  %84 = load %struct.imx_media_pixfmt**, %struct.imx_media_pixfmt*** %9, align 8
  %85 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %84, align 8
  %86 = getelementptr inbounds %struct.imx_media_pixfmt, %struct.imx_media_pixfmt* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %8, align 8
  %91 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  store i32 %89, i32* %92, align 4
  br label %93

93:                                               ; preds = %77, %66
  br label %97

94:                                               ; preds = %24
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %5, align 4
  br label %101

97:                                               ; preds = %93, %28
  %98 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %8, align 8
  %99 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %98, i32 0, i32 1
  %100 = call i32 @imx_media_try_colorimetry(%struct.TYPE_2__* %99, i32 0)
  store i32 0, i32* %5, align 4
  br label %101

101:                                              ; preds = %97, %94, %21
  %102 = load i32, i32* %5, align 4
  ret i32 %102
}

declare dso_local %struct.v4l2_mbus_framefmt* @imx7_csi_get_format(%struct.imx7_csi*, %struct.v4l2_subdev_pad_config*, i32, i32) #1

declare dso_local %struct.imx_media_pixfmt* @imx_media_find_mbus_format(i32, i32, i32) #1

declare dso_local i32 @imx_media_enum_mbus_format(i32*, i32, i32, i32) #1

declare dso_local i32 @imx_media_try_colorimetry(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
