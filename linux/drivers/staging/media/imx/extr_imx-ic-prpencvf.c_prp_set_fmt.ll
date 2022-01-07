; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-ic-prpencvf.c_prp_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-ic-prpencvf.c_prp_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { i64, i32, %struct.v4l2_mbus_framefmt }
%struct.v4l2_mbus_framefmt = type { i32 }
%struct.prp_priv = type { i64, i32, %struct.imx_media_pixfmt** }
%struct.imx_media_pixfmt = type { i32 }

@PRPENCVF_NUM_PADS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@PRPENCVF_SINK_PAD = common dso_local global i64 0, align 8
@PRPENCVF_SRC_PAD = common dso_local global i64 0, align 8
@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)* @prp_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prp_set_fmt(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_format*, align 8
  %8 = alloca %struct.prp_priv*, align 8
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
  %16 = call %struct.prp_priv* @sd_to_priv(%struct.v4l2_subdev* %15)
  store %struct.prp_priv* %16, %struct.prp_priv** %8, align 8
  store i32 0, i32* %11, align 4
  %17 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %18 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PRPENCVF_NUM_PADS, align 8
  %21 = icmp uge i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %120

25:                                               ; preds = %3
  %26 = load %struct.prp_priv*, %struct.prp_priv** %8, align 8
  %27 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %26, i32 0, i32 1
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.prp_priv*, %struct.prp_priv** %8, align 8
  %30 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load i32, i32* @EBUSY, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %11, align 4
  br label %115

36:                                               ; preds = %25
  %37 = load %struct.prp_priv*, %struct.prp_priv** %8, align 8
  %38 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %39 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %40 = call i32 @prp_try_fmt(%struct.prp_priv* %37, %struct.v4l2_subdev_pad_config* %38, %struct.v4l2_subdev_format* %39, %struct.imx_media_pixfmt** %9)
  %41 = load %struct.prp_priv*, %struct.prp_priv** %8, align 8
  %42 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %43 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %44 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %47 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call %struct.v4l2_mbus_framefmt* @__prp_get_fmt(%struct.prp_priv* %41, %struct.v4l2_subdev_pad_config* %42, i64 %45, i32 %48)
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
  %58 = load i64, i64* @PRPENCVF_SINK_PAD, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %99

60:                                               ; preds = %36
  %61 = load i64, i64* @PRPENCVF_SRC_PAD, align 8
  %62 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %14, i32 0, i32 0
  store i64 %61, i64* %62, align 8
  %63 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %64 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %14, i32 0, i32 1
  store i32 %65, i32* %66, align 8
  %67 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %14, i32 0, i32 2
  %68 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %69 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %68, i32 0, i32 2
  %70 = bitcast %struct.v4l2_mbus_framefmt* %67 to i8*
  %71 = bitcast %struct.v4l2_mbus_framefmt* %69 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %70, i8* align 4 %71, i64 4, i1 false)
  %72 = load %struct.prp_priv*, %struct.prp_priv** %8, align 8
  %73 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %74 = call i32 @prp_try_fmt(%struct.prp_priv* %72, %struct.v4l2_subdev_pad_config* %73, %struct.v4l2_subdev_format* %14, %struct.imx_media_pixfmt** %12)
  %75 = load %struct.prp_priv*, %struct.prp_priv** %8, align 8
  %76 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %77 = load i64, i64* @PRPENCVF_SRC_PAD, align 8
  %78 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %79 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call %struct.v4l2_mbus_framefmt* @__prp_get_fmt(%struct.prp_priv* %75, %struct.v4l2_subdev_pad_config* %76, i64 %77, i32 %80)
  store %struct.v4l2_mbus_framefmt* %81, %struct.v4l2_mbus_framefmt** %13, align 8
  %82 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %13, align 8
  %83 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %14, i32 0, i32 2
  %84 = bitcast %struct.v4l2_mbus_framefmt* %82 to i8*
  %85 = bitcast %struct.v4l2_mbus_framefmt* %83 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %84, i8* align 4 %85, i64 4, i1 false)
  %86 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %87 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %60
  %92 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %12, align 8
  %93 = load %struct.prp_priv*, %struct.prp_priv** %8, align 8
  %94 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %93, i32 0, i32 2
  %95 = load %struct.imx_media_pixfmt**, %struct.imx_media_pixfmt*** %94, align 8
  %96 = load i64, i64* @PRPENCVF_SRC_PAD, align 8
  %97 = getelementptr inbounds %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %95, i64 %96
  store %struct.imx_media_pixfmt* %92, %struct.imx_media_pixfmt** %97, align 8
  br label %98

98:                                               ; preds = %91, %60
  br label %99

99:                                               ; preds = %98, %36
  %100 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %101 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  %104 = icmp eq i32 %102, %103
  br i1 %104, label %105, label %114

105:                                              ; preds = %99
  %106 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %9, align 8
  %107 = load %struct.prp_priv*, %struct.prp_priv** %8, align 8
  %108 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %107, i32 0, i32 2
  %109 = load %struct.imx_media_pixfmt**, %struct.imx_media_pixfmt*** %108, align 8
  %110 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %111 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %109, i64 %112
  store %struct.imx_media_pixfmt* %106, %struct.imx_media_pixfmt** %113, align 8
  br label %114

114:                                              ; preds = %105, %99
  br label %115

115:                                              ; preds = %114, %33
  %116 = load %struct.prp_priv*, %struct.prp_priv** %8, align 8
  %117 = getelementptr inbounds %struct.prp_priv, %struct.prp_priv* %116, i32 0, i32 1
  %118 = call i32 @mutex_unlock(i32* %117)
  %119 = load i32, i32* %11, align 4
  store i32 %119, i32* %4, align 4
  br label %120

120:                                              ; preds = %115, %22
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local %struct.prp_priv* @sd_to_priv(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @prp_try_fmt(%struct.prp_priv*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*, %struct.imx_media_pixfmt**) #1

declare dso_local %struct.v4l2_mbus_framefmt* @__prp_get_fmt(%struct.prp_priv*, %struct.v4l2_subdev_pad_config*, i64, i32) #1

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
