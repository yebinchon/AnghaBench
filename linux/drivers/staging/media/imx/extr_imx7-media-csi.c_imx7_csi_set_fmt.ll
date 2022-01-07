; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx7-media-csi.c_imx7_csi_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx7-media-csi.c_imx7_csi_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { i64, i32, %struct.v4l2_mbus_framefmt }
%struct.v4l2_mbus_framefmt = type { i32 }
%struct.imx7_csi = type { i32, %struct.imx_media_pixfmt**, i64 }
%struct.imx_media_pixfmt = type { i32 }

@IMX7_CSI_PADS_NUM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@IMX7_CSI_PAD_SINK = common dso_local global i64 0, align 8
@IMX7_CSI_PAD_SRC = common dso_local global i64 0, align 8
@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)* @imx7_csi_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx7_csi_set_fmt(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_format*, align 8
  %8 = alloca %struct.imx7_csi*, align 8
  %9 = alloca %struct.imx_media_pixfmt*, align 8
  %10 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %11 = alloca %struct.imx_media_pixfmt*, align 8
  %12 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %13 = alloca %struct.v4l2_subdev_format, align 8
  %14 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %7, align 8
  %15 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %16 = call %struct.imx7_csi* @v4l2_get_subdevdata(%struct.v4l2_subdev* %15)
  store %struct.imx7_csi* %16, %struct.imx7_csi** %8, align 8
  store i32 0, i32* %14, align 4
  %17 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %18 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @IMX7_CSI_PADS_NUM, align 8
  %21 = icmp uge i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %135

25:                                               ; preds = %3
  %26 = load %struct.imx7_csi*, %struct.imx7_csi** %8, align 8
  %27 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.imx7_csi*, %struct.imx7_csi** %8, align 8
  %30 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %25
  %34 = load i32, i32* @EBUSY, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %14, align 4
  br label %130

36:                                               ; preds = %25
  %37 = load %struct.imx7_csi*, %struct.imx7_csi** %8, align 8
  %38 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %39 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %40 = call i32 @imx7_csi_try_fmt(%struct.imx7_csi* %37, %struct.v4l2_subdev_pad_config* %38, %struct.v4l2_subdev_format* %39, %struct.imx_media_pixfmt** %11)
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* %14, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %130

44:                                               ; preds = %36
  %45 = load %struct.imx7_csi*, %struct.imx7_csi** %8, align 8
  %46 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %47 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %48 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %51 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call %struct.v4l2_mbus_framefmt* @imx7_csi_get_format(%struct.imx7_csi* %45, %struct.v4l2_subdev_pad_config* %46, i64 %49, i32 %52)
  store %struct.v4l2_mbus_framefmt* %53, %struct.v4l2_mbus_framefmt** %12, align 8
  %54 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %12, align 8
  %55 = icmp ne %struct.v4l2_mbus_framefmt* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %44
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %14, align 4
  br label %130

59:                                               ; preds = %44
  %60 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %12, align 8
  %61 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %62 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %61, i32 0, i32 2
  %63 = bitcast %struct.v4l2_mbus_framefmt* %60 to i8*
  %64 = bitcast %struct.v4l2_mbus_framefmt* %62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %63, i8* align 4 %64, i64 4, i1 false)
  %65 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %66 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @IMX7_CSI_PAD_SINK, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %114

70:                                               ; preds = %59
  %71 = load i64, i64* @IMX7_CSI_PAD_SRC, align 8
  %72 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %13, i32 0, i32 0
  store i64 %71, i64* %72, align 8
  %73 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %74 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %13, i32 0, i32 1
  store i32 %75, i32* %76, align 8
  %77 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %13, i32 0, i32 2
  %78 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %79 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %78, i32 0, i32 2
  %80 = bitcast %struct.v4l2_mbus_framefmt* %77 to i8*
  %81 = bitcast %struct.v4l2_mbus_framefmt* %79 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %80, i8* align 4 %81, i64 4, i1 false)
  %82 = load %struct.imx7_csi*, %struct.imx7_csi** %8, align 8
  %83 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %84 = call i32 @imx7_csi_try_fmt(%struct.imx7_csi* %82, %struct.v4l2_subdev_pad_config* %83, %struct.v4l2_subdev_format* %13, %struct.imx_media_pixfmt** %9)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %70
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %14, align 4
  br label %130

89:                                               ; preds = %70
  %90 = load %struct.imx7_csi*, %struct.imx7_csi** %8, align 8
  %91 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %92 = load i64, i64* @IMX7_CSI_PAD_SRC, align 8
  %93 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %94 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = call %struct.v4l2_mbus_framefmt* @imx7_csi_get_format(%struct.imx7_csi* %90, %struct.v4l2_subdev_pad_config* %91, i64 %92, i32 %95)
  store %struct.v4l2_mbus_framefmt* %96, %struct.v4l2_mbus_framefmt** %10, align 8
  %97 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %10, align 8
  %98 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %13, i32 0, i32 2
  %99 = bitcast %struct.v4l2_mbus_framefmt* %97 to i8*
  %100 = bitcast %struct.v4l2_mbus_framefmt* %98 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %99, i8* align 4 %100, i64 4, i1 false)
  %101 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %102 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %106, label %113

106:                                              ; preds = %89
  %107 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %9, align 8
  %108 = load %struct.imx7_csi*, %struct.imx7_csi** %8, align 8
  %109 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %108, i32 0, i32 1
  %110 = load %struct.imx_media_pixfmt**, %struct.imx_media_pixfmt*** %109, align 8
  %111 = load i64, i64* @IMX7_CSI_PAD_SRC, align 8
  %112 = getelementptr inbounds %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %110, i64 %111
  store %struct.imx_media_pixfmt* %107, %struct.imx_media_pixfmt** %112, align 8
  br label %113

113:                                              ; preds = %106, %89
  br label %114

114:                                              ; preds = %113, %59
  %115 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %116 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %129

120:                                              ; preds = %114
  %121 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %11, align 8
  %122 = load %struct.imx7_csi*, %struct.imx7_csi** %8, align 8
  %123 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %122, i32 0, i32 1
  %124 = load %struct.imx_media_pixfmt**, %struct.imx_media_pixfmt*** %123, align 8
  %125 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %126 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = getelementptr inbounds %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %124, i64 %127
  store %struct.imx_media_pixfmt* %121, %struct.imx_media_pixfmt** %128, align 8
  br label %129

129:                                              ; preds = %120, %114
  br label %130

130:                                              ; preds = %129, %86, %56, %43, %33
  %131 = load %struct.imx7_csi*, %struct.imx7_csi** %8, align 8
  %132 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %131, i32 0, i32 0
  %133 = call i32 @mutex_unlock(i32* %132)
  %134 = load i32, i32* %14, align 4
  store i32 %134, i32* %4, align 4
  br label %135

135:                                              ; preds = %130, %22
  %136 = load i32, i32* %4, align 4
  ret i32 %136
}

declare dso_local %struct.imx7_csi* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @imx7_csi_try_fmt(%struct.imx7_csi*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*, %struct.imx_media_pixfmt**) #1

declare dso_local %struct.v4l2_mbus_framefmt* @imx7_csi_get_format(%struct.imx7_csi*, %struct.v4l2_subdev_pad_config*, i64, i32) #1

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
