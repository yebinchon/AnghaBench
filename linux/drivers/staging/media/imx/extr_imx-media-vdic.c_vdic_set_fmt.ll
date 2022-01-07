; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-vdic.c_vdic_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-vdic.c_vdic_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { i64, i32, %struct.v4l2_mbus_framefmt }
%struct.v4l2_mbus_framefmt = type { i32 }
%struct.vdic_priv = type { i64, i32, %struct.imx_media_pixfmt** }
%struct.imx_media_pixfmt = type { i32 }

@VDIC_NUM_PADS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@VDIC_SINK_PAD_DIRECT = common dso_local global i64 0, align 8
@VDIC_SINK_PAD_IDMAC = common dso_local global i64 0, align 8
@VDIC_SRC_PAD_DIRECT = common dso_local global i64 0, align 8
@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)* @vdic_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdic_set_fmt(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_format*, align 8
  %8 = alloca %struct.vdic_priv*, align 8
  %9 = alloca %struct.imx_media_pixfmt*, align 8
  %10 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.imx_media_pixfmt*, align 8
  %13 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %14 = alloca %struct.v4l2_subdev_format, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %7, align 8
  %15 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %16 = call %struct.vdic_priv* @v4l2_get_subdevdata(%struct.v4l2_subdev* %15)
  store %struct.vdic_priv* %16, %struct.vdic_priv** %8, align 8
  store i32 0, i32* %11, align 4
  %17 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %18 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @VDIC_NUM_PADS, align 8
  %21 = icmp uge i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %126

25:                                               ; preds = %3
  %26 = load %struct.vdic_priv*, %struct.vdic_priv** %8, align 8
  %27 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %26, i32 0, i32 1
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.vdic_priv*, %struct.vdic_priv** %8, align 8
  %30 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load i32, i32* @EBUSY, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %11, align 4
  br label %121

36:                                               ; preds = %25
  %37 = load %struct.vdic_priv*, %struct.vdic_priv** %8, align 8
  %38 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %39 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %40 = call i32 @vdic_try_fmt(%struct.vdic_priv* %37, %struct.v4l2_subdev_pad_config* %38, %struct.v4l2_subdev_format* %39, %struct.imx_media_pixfmt** %9)
  %41 = load %struct.vdic_priv*, %struct.vdic_priv** %8, align 8
  %42 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %43 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %44 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %47 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call %struct.v4l2_mbus_framefmt* @__vdic_get_fmt(%struct.vdic_priv* %41, %struct.v4l2_subdev_pad_config* %42, i64 %45, i32 %48)
  store %struct.v4l2_mbus_framefmt* %49, %struct.v4l2_mbus_framefmt** %10, align 8
  %50 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %10, align 8
  %51 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %52 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %51, i32 0, i32 2
  %53 = bitcast %struct.v4l2_mbus_framefmt* %50 to i8*
  %54 = bitcast %struct.v4l2_mbus_framefmt* %52 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %53, i8* align 4 %54, i64 4, i1 false)
  %55 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %56 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @VDIC_SINK_PAD_DIRECT, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %66, label %60

60:                                               ; preds = %36
  %61 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %62 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @VDIC_SINK_PAD_IDMAC, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %105

66:                                               ; preds = %60, %36
  %67 = load i64, i64* @VDIC_SRC_PAD_DIRECT, align 8
  %68 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %14, i32 0, i32 0
  store i64 %67, i64* %68, align 8
  %69 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %70 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %14, i32 0, i32 1
  store i32 %71, i32* %72, align 8
  %73 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %14, i32 0, i32 2
  %74 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %75 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %74, i32 0, i32 2
  %76 = bitcast %struct.v4l2_mbus_framefmt* %73 to i8*
  %77 = bitcast %struct.v4l2_mbus_framefmt* %75 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %76, i8* align 4 %77, i64 4, i1 false)
  %78 = load %struct.vdic_priv*, %struct.vdic_priv** %8, align 8
  %79 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %80 = call i32 @vdic_try_fmt(%struct.vdic_priv* %78, %struct.v4l2_subdev_pad_config* %79, %struct.v4l2_subdev_format* %14, %struct.imx_media_pixfmt** %12)
  %81 = load %struct.vdic_priv*, %struct.vdic_priv** %8, align 8
  %82 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %83 = load i64, i64* @VDIC_SRC_PAD_DIRECT, align 8
  %84 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %85 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call %struct.v4l2_mbus_framefmt* @__vdic_get_fmt(%struct.vdic_priv* %81, %struct.v4l2_subdev_pad_config* %82, i64 %83, i32 %86)
  store %struct.v4l2_mbus_framefmt* %87, %struct.v4l2_mbus_framefmt** %13, align 8
  %88 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %13, align 8
  %89 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %14, i32 0, i32 2
  %90 = bitcast %struct.v4l2_mbus_framefmt* %88 to i8*
  %91 = bitcast %struct.v4l2_mbus_framefmt* %89 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %90, i8* align 4 %91, i64 4, i1 false)
  %92 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %93 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %104

97:                                               ; preds = %66
  %98 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %12, align 8
  %99 = load %struct.vdic_priv*, %struct.vdic_priv** %8, align 8
  %100 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %99, i32 0, i32 2
  %101 = load %struct.imx_media_pixfmt**, %struct.imx_media_pixfmt*** %100, align 8
  %102 = load i64, i64* @VDIC_SRC_PAD_DIRECT, align 8
  %103 = getelementptr inbounds %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %101, i64 %102
  store %struct.imx_media_pixfmt* %98, %struct.imx_media_pixfmt** %103, align 8
  br label %104

104:                                              ; preds = %97, %66
  br label %105

105:                                              ; preds = %104, %60
  %106 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %107 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %120

111:                                              ; preds = %105
  %112 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %9, align 8
  %113 = load %struct.vdic_priv*, %struct.vdic_priv** %8, align 8
  %114 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %113, i32 0, i32 2
  %115 = load %struct.imx_media_pixfmt**, %struct.imx_media_pixfmt*** %114, align 8
  %116 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %117 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %115, i64 %118
  store %struct.imx_media_pixfmt* %112, %struct.imx_media_pixfmt** %119, align 8
  br label %120

120:                                              ; preds = %111, %105
  br label %121

121:                                              ; preds = %120, %33
  %122 = load %struct.vdic_priv*, %struct.vdic_priv** %8, align 8
  %123 = getelementptr inbounds %struct.vdic_priv, %struct.vdic_priv* %122, i32 0, i32 1
  %124 = call i32 @mutex_unlock(i32* %123)
  %125 = load i32, i32* %11, align 4
  store i32 %125, i32* %4, align 4
  br label %126

126:                                              ; preds = %121, %22
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local %struct.vdic_priv* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vdic_try_fmt(%struct.vdic_priv*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*, %struct.imx_media_pixfmt**) #1

declare dso_local %struct.v4l2_mbus_framefmt* @__vdic_get_fmt(%struct.vdic_priv*, %struct.v4l2_subdev_pad_config*, i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
