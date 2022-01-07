; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-csi.c_csi_set_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-csi.c_csi_set_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt }
%struct.v4l2_mbus_framefmt = type { i32 }
%struct.csi_priv = type { i64, i32, %struct.imx_media_pixfmt**, i32 }
%struct.imx_media_pixfmt = type { i32 }
%struct.v4l2_fwnode_endpoint = type { i32 }
%struct.v4l2_rect = type { i32 }

@CSI_NUM_PADS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"failed to find upstream endpoint\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@CSI_SINK_PAD = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FORMAT_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*)* @csi_set_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csi_set_fmt(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_format*, align 8
  %8 = alloca %struct.csi_priv*, align 8
  %9 = alloca %struct.v4l2_fwnode_endpoint, align 4
  %10 = alloca %struct.imx_media_pixfmt*, align 8
  %11 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %12 = alloca %struct.v4l2_rect*, align 8
  %13 = alloca %struct.v4l2_rect*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.imx_media_pixfmt*, align 8
  %17 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %18 = alloca %struct.v4l2_subdev_format, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_format* %2, %struct.v4l2_subdev_format** %7, align 8
  %19 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %20 = call %struct.csi_priv* @v4l2_get_subdevdata(%struct.v4l2_subdev* %19)
  store %struct.csi_priv* %20, %struct.csi_priv** %8, align 8
  %21 = bitcast %struct.v4l2_fwnode_endpoint* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %21, i8 0, i64 4, i1 false)
  %22 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %23 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @CSI_NUM_PADS, align 4
  %26 = icmp sge i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %163

30:                                               ; preds = %3
  %31 = load %struct.csi_priv*, %struct.csi_priv** %8, align 8
  %32 = call i32 @csi_get_upstream_endpoint(%struct.csi_priv* %31, %struct.v4l2_fwnode_endpoint* %9)
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %14, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.csi_priv*, %struct.csi_priv** %8, align 8
  %37 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %36, i32 0, i32 3
  %38 = call i32 @v4l2_err(i32* %37, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* %14, align 4
  store i32 %39, i32* %4, align 4
  br label %163

40:                                               ; preds = %30
  %41 = load %struct.csi_priv*, %struct.csi_priv** %8, align 8
  %42 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %41, i32 0, i32 1
  %43 = call i32 @mutex_lock(i32* %42)
  %44 = load %struct.csi_priv*, %struct.csi_priv** %8, align 8
  %45 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load i32, i32* @EBUSY, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %14, align 4
  br label %158

51:                                               ; preds = %40
  %52 = load %struct.csi_priv*, %struct.csi_priv** %8, align 8
  %53 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %54 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %55 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call %struct.v4l2_rect* @__csi_get_crop(%struct.csi_priv* %52, %struct.v4l2_subdev_pad_config* %53, i32 %56)
  store %struct.v4l2_rect* %57, %struct.v4l2_rect** %12, align 8
  %58 = load %struct.csi_priv*, %struct.csi_priv** %8, align 8
  %59 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %60 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %61 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call %struct.v4l2_rect* @__csi_get_compose(%struct.csi_priv* %58, %struct.v4l2_subdev_pad_config* %59, i32 %62)
  store %struct.v4l2_rect* %63, %struct.v4l2_rect** %13, align 8
  %64 = load %struct.csi_priv*, %struct.csi_priv** %8, align 8
  %65 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %66 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %67 = load %struct.v4l2_rect*, %struct.v4l2_rect** %12, align 8
  %68 = load %struct.v4l2_rect*, %struct.v4l2_rect** %13, align 8
  %69 = call i32 @csi_try_fmt(%struct.csi_priv* %64, %struct.v4l2_fwnode_endpoint* %9, %struct.v4l2_subdev_pad_config* %65, %struct.v4l2_subdev_format* %66, %struct.v4l2_rect* %67, %struct.v4l2_rect* %68, %struct.imx_media_pixfmt** %10)
  %70 = load %struct.csi_priv*, %struct.csi_priv** %8, align 8
  %71 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %72 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %73 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %76 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call %struct.v4l2_mbus_framefmt* @__csi_get_fmt(%struct.csi_priv* %70, %struct.v4l2_subdev_pad_config* %71, i32 %74, i32 %77)
  store %struct.v4l2_mbus_framefmt* %78, %struct.v4l2_mbus_framefmt** %11, align 8
  %79 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %11, align 8
  %80 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %81 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %80, i32 0, i32 2
  %82 = bitcast %struct.v4l2_mbus_framefmt* %79 to i8*
  %83 = bitcast %struct.v4l2_mbus_framefmt* %81 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %82, i8* align 4 %83, i64 4, i1 false)
  %84 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %85 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @CSI_SINK_PAD, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %141

89:                                               ; preds = %51
  %90 = load i32, i32* @CSI_SINK_PAD, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %15, align 4
  br label %92

92:                                               ; preds = %137, %89
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* @CSI_NUM_PADS, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %140

96:                                               ; preds = %92
  %97 = load i32, i32* %15, align 4
  %98 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %18, i32 0, i32 0
  store i32 %97, i32* %98, align 4
  %99 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %100 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %18, i32 0, i32 1
  store i32 %101, i32* %102, align 4
  %103 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %18, i32 0, i32 2
  %104 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %105 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %104, i32 0, i32 2
  %106 = bitcast %struct.v4l2_mbus_framefmt* %103 to i8*
  %107 = bitcast %struct.v4l2_mbus_framefmt* %105 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %106, i8* align 4 %107, i64 4, i1 false)
  %108 = load %struct.csi_priv*, %struct.csi_priv** %8, align 8
  %109 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %110 = load %struct.v4l2_rect*, %struct.v4l2_rect** %13, align 8
  %111 = call i32 @csi_try_fmt(%struct.csi_priv* %108, %struct.v4l2_fwnode_endpoint* %9, %struct.v4l2_subdev_pad_config* %109, %struct.v4l2_subdev_format* %18, %struct.v4l2_rect* null, %struct.v4l2_rect* %110, %struct.imx_media_pixfmt** %16)
  %112 = load %struct.csi_priv*, %struct.csi_priv** %8, align 8
  %113 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %114 = load i32, i32* %15, align 4
  %115 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %116 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call %struct.v4l2_mbus_framefmt* @__csi_get_fmt(%struct.csi_priv* %112, %struct.v4l2_subdev_pad_config* %113, i32 %114, i32 %117)
  store %struct.v4l2_mbus_framefmt* %118, %struct.v4l2_mbus_framefmt** %17, align 8
  %119 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %17, align 8
  %120 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %18, i32 0, i32 2
  %121 = bitcast %struct.v4l2_mbus_framefmt* %119 to i8*
  %122 = bitcast %struct.v4l2_mbus_framefmt* %120 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %121, i8* align 4 %122, i64 4, i1 false)
  %123 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %124 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %136

128:                                              ; preds = %96
  %129 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %16, align 8
  %130 = load %struct.csi_priv*, %struct.csi_priv** %8, align 8
  %131 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %130, i32 0, i32 2
  %132 = load %struct.imx_media_pixfmt**, %struct.imx_media_pixfmt*** %131, align 8
  %133 = load i32, i32* %15, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %132, i64 %134
  store %struct.imx_media_pixfmt* %129, %struct.imx_media_pixfmt** %135, align 8
  br label %136

136:                                              ; preds = %128, %96
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %15, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %15, align 4
  br label %92

140:                                              ; preds = %92
  br label %141

141:                                              ; preds = %140, %51
  %142 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %143 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @V4L2_SUBDEV_FORMAT_ACTIVE, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %157

147:                                              ; preds = %141
  %148 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %10, align 8
  %149 = load %struct.csi_priv*, %struct.csi_priv** %8, align 8
  %150 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %149, i32 0, i32 2
  %151 = load %struct.imx_media_pixfmt**, %struct.imx_media_pixfmt*** %150, align 8
  %152 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %7, align 8
  %153 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %151, i64 %155
  store %struct.imx_media_pixfmt* %148, %struct.imx_media_pixfmt** %156, align 8
  br label %157

157:                                              ; preds = %147, %141
  br label %158

158:                                              ; preds = %157, %48
  %159 = load %struct.csi_priv*, %struct.csi_priv** %8, align 8
  %160 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %159, i32 0, i32 1
  %161 = call i32 @mutex_unlock(i32* %160)
  %162 = load i32, i32* %14, align 4
  store i32 %162, i32* %4, align 4
  br label %163

163:                                              ; preds = %158, %35, %27
  %164 = load i32, i32* %4, align 4
  ret i32 %164
}

declare dso_local %struct.csi_priv* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @csi_get_upstream_endpoint(%struct.csi_priv*, %struct.v4l2_fwnode_endpoint*) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.v4l2_rect* @__csi_get_crop(%struct.csi_priv*, %struct.v4l2_subdev_pad_config*, i32) #1

declare dso_local %struct.v4l2_rect* @__csi_get_compose(%struct.csi_priv*, %struct.v4l2_subdev_pad_config*, i32) #1

declare dso_local i32 @csi_try_fmt(%struct.csi_priv*, %struct.v4l2_fwnode_endpoint*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*, %struct.v4l2_rect*, %struct.v4l2_rect*, %struct.imx_media_pixfmt**) #1

declare dso_local %struct.v4l2_mbus_framefmt* @__csi_get_fmt(%struct.csi_priv*, %struct.v4l2_subdev_pad_config*, i32, i32) #1

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
