; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-csi.c_csi_try_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-csi.c_csi_try_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csi_priv = type { i32 }
%struct.v4l2_fwnode_endpoint = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_format = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.imx_media_pixfmt = type { i32*, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32 }

@CS_SEL_ANY = common dso_local global i32 0, align 4
@IPUV3_COLORSPACE_YUV = common dso_local global i32 0, align 4
@CS_SEL_YUV = common dso_local global i32 0, align 4
@CS_SEL_RGB = common dso_local global i32 0, align 4
@MIN_W = common dso_local global i32 0, align 4
@MAX_W = common dso_local global i32 0, align 4
@W_ALIGN = common dso_local global i32 0, align 4
@MIN_H = common dso_local global i32 0, align 4
@MAX_H = common dso_local global i32 0, align 4
@H_ALIGN = common dso_local global i32 0, align 4
@S_ALIGN = common dso_local global i32 0, align 4
@V4L2_FIELD_ALTERNATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csi_priv*, %struct.v4l2_fwnode_endpoint*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*, %struct.v4l2_rect*, %struct.v4l2_rect*, %struct.imx_media_pixfmt**)* @csi_try_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csi_try_fmt(%struct.csi_priv* %0, %struct.v4l2_fwnode_endpoint* %1, %struct.v4l2_subdev_pad_config* %2, %struct.v4l2_subdev_format* %3, %struct.v4l2_rect* %4, %struct.v4l2_rect* %5, %struct.imx_media_pixfmt** %6) #0 {
  %8 = alloca %struct.csi_priv*, align 8
  %9 = alloca %struct.v4l2_fwnode_endpoint*, align 8
  %10 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %11 = alloca %struct.v4l2_subdev_format*, align 8
  %12 = alloca %struct.v4l2_rect*, align 8
  %13 = alloca %struct.v4l2_rect*, align 8
  %14 = alloca %struct.imx_media_pixfmt**, align 8
  %15 = alloca %struct.imx_media_pixfmt*, align 8
  %16 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.csi_priv* %0, %struct.csi_priv** %8, align 8
  store %struct.v4l2_fwnode_endpoint* %1, %struct.v4l2_fwnode_endpoint** %9, align 8
  store %struct.v4l2_subdev_pad_config* %2, %struct.v4l2_subdev_pad_config** %10, align 8
  store %struct.v4l2_subdev_format* %3, %struct.v4l2_subdev_format** %11, align 8
  store %struct.v4l2_rect* %4, %struct.v4l2_rect** %12, align 8
  store %struct.v4l2_rect* %5, %struct.v4l2_rect** %13, align 8
  store %struct.imx_media_pixfmt** %6, %struct.imx_media_pixfmt*** %14, align 8
  %19 = load %struct.csi_priv*, %struct.csi_priv** %8, align 8
  %20 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %10, align 8
  %21 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %11, align 8
  %22 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.v4l2_mbus_framefmt* @__csi_get_fmt(%struct.csi_priv* %19, %struct.v4l2_subdev_pad_config* %20, i32 130, i32 %23)
  store %struct.v4l2_mbus_framefmt* %24, %struct.v4l2_mbus_framefmt** %16, align 8
  %25 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %11, align 8
  %26 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  switch i32 %27, label %211 [
    i32 129, label %28
    i32 128, label %28
    i32 130, label %116
  ]

28:                                               ; preds = %7, %7
  %29 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %16, align 8
  %30 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @CS_SEL_ANY, align 4
  %33 = call %struct.imx_media_pixfmt* @imx_media_find_mbus_format(i32 %31, i32 %32, i32 1)
  store %struct.imx_media_pixfmt* %33, %struct.imx_media_pixfmt** %15, align 8
  %34 = load %struct.v4l2_rect*, %struct.v4l2_rect** %13, align 8
  %35 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %11, align 8
  %38 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  store i32 %36, i32* %39, align 4
  %40 = load %struct.v4l2_rect*, %struct.v4l2_rect** %13, align 8
  %41 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %11, align 8
  %44 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 4
  %46 = load %struct.v4l2_fwnode_endpoint*, %struct.v4l2_fwnode_endpoint** %9, align 8
  %47 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %16, align 8
  %48 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %15, align 8
  %49 = call i32 @requires_passthrough(%struct.v4l2_fwnode_endpoint* %46, %struct.v4l2_mbus_framefmt* %47, %struct.imx_media_pixfmt* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %28
  %52 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %16, align 8
  %53 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %11, align 8
  %56 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 3
  store i32 %54, i32* %57, align 4
  %58 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %15, align 8
  %59 = load %struct.imx_media_pixfmt**, %struct.imx_media_pixfmt*** %14, align 8
  store %struct.imx_media_pixfmt* %58, %struct.imx_media_pixfmt** %59, align 8
  br label %99

60:                                               ; preds = %28
  %61 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %15, align 8
  %62 = getelementptr inbounds %struct.imx_media_pixfmt, %struct.imx_media_pixfmt* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @IPUV3_COLORSPACE_YUV, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load i32, i32* @CS_SEL_YUV, align 4
  br label %70

68:                                               ; preds = %60
  %69 = load i32, i32* @CS_SEL_RGB, align 4
  br label %70

70:                                               ; preds = %68, %66
  %71 = phi i32 [ %67, %66 ], [ %69, %68 ]
  store i32 %71, i32* %18, align 4
  %72 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %11, align 8
  %73 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %18, align 4
  %77 = call %struct.imx_media_pixfmt* @imx_media_find_ipu_format(i32 %75, i32 %76)
  %78 = load %struct.imx_media_pixfmt**, %struct.imx_media_pixfmt*** %14, align 8
  store %struct.imx_media_pixfmt* %77, %struct.imx_media_pixfmt** %78, align 8
  %79 = load %struct.imx_media_pixfmt**, %struct.imx_media_pixfmt*** %14, align 8
  %80 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %79, align 8
  %81 = icmp ne %struct.imx_media_pixfmt* %80, null
  br i1 %81, label %98, label %82

82:                                               ; preds = %70
  %83 = load i32, i32* %18, align 4
  %84 = call i32 @imx_media_enum_ipu_format(i32* %17, i32 0, i32 %83)
  %85 = load i32, i32* %17, align 4
  %86 = load i32, i32* %18, align 4
  %87 = call %struct.imx_media_pixfmt* @imx_media_find_ipu_format(i32 %85, i32 %86)
  %88 = load %struct.imx_media_pixfmt**, %struct.imx_media_pixfmt*** %14, align 8
  store %struct.imx_media_pixfmt* %87, %struct.imx_media_pixfmt** %88, align 8
  %89 = load %struct.imx_media_pixfmt**, %struct.imx_media_pixfmt*** %14, align 8
  %90 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %89, align 8
  %91 = getelementptr inbounds %struct.imx_media_pixfmt, %struct.imx_media_pixfmt* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %11, align 8
  %96 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 3
  store i32 %94, i32* %97, align 4
  br label %98

98:                                               ; preds = %82, %70
  br label %99

99:                                               ; preds = %98, %51
  %100 = load %struct.csi_priv*, %struct.csi_priv** %8, align 8
  %101 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %10, align 8
  %102 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %11, align 8
  %103 = call i32 @csi_try_field(%struct.csi_priv* %100, %struct.v4l2_subdev_pad_config* %101, %struct.v4l2_subdev_format* %102)
  %104 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %16, align 8
  %105 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %11, align 8
  %108 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 5
  store i32 %106, i32* %109, align 4
  %110 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %16, align 8
  %111 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %11, align 8
  %114 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 4
  store i32 %112, i32* %115, align 4
  br label %211

116:                                              ; preds = %7
  %117 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %11, align 8
  %118 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 2
  %120 = load i32, i32* @MIN_W, align 4
  %121 = load i32, i32* @MAX_W, align 4
  %122 = load i32, i32* @W_ALIGN, align 4
  %123 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %11, align 8
  %124 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  %126 = load i32, i32* @MIN_H, align 4
  %127 = load i32, i32* @MAX_H, align 4
  %128 = load i32, i32* @H_ALIGN, align 4
  %129 = load i32, i32* @S_ALIGN, align 4
  %130 = call i32 @v4l_bound_align_image(i32* %119, i32 %120, i32 %121, i32 %122, i32* %125, i32 %126, i32 %127, i32 %128, i32 %129)
  %131 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %11, align 8
  %132 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @CS_SEL_ANY, align 4
  %136 = call %struct.imx_media_pixfmt* @imx_media_find_mbus_format(i32 %134, i32 %135, i32 1)
  %137 = load %struct.imx_media_pixfmt**, %struct.imx_media_pixfmt*** %14, align 8
  store %struct.imx_media_pixfmt* %136, %struct.imx_media_pixfmt** %137, align 8
  %138 = load %struct.imx_media_pixfmt**, %struct.imx_media_pixfmt*** %14, align 8
  %139 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %138, align 8
  %140 = icmp ne %struct.imx_media_pixfmt* %139, null
  br i1 %140, label %157, label %141

141:                                              ; preds = %116
  %142 = load i32, i32* @CS_SEL_ANY, align 4
  %143 = call i32 @imx_media_enum_mbus_format(i32* %17, i32 0, i32 %142, i32 0)
  %144 = load i32, i32* %17, align 4
  %145 = load i32, i32* @CS_SEL_ANY, align 4
  %146 = call %struct.imx_media_pixfmt* @imx_media_find_mbus_format(i32 %144, i32 %145, i32 0)
  %147 = load %struct.imx_media_pixfmt**, %struct.imx_media_pixfmt*** %14, align 8
  store %struct.imx_media_pixfmt* %146, %struct.imx_media_pixfmt** %147, align 8
  %148 = load %struct.imx_media_pixfmt**, %struct.imx_media_pixfmt*** %14, align 8
  %149 = load %struct.imx_media_pixfmt*, %struct.imx_media_pixfmt** %148, align 8
  %150 = getelementptr inbounds %struct.imx_media_pixfmt, %struct.imx_media_pixfmt* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 0
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %11, align 8
  %155 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 3
  store i32 %153, i32* %156, align 4
  br label %157

157:                                              ; preds = %141, %116
  %158 = load %struct.csi_priv*, %struct.csi_priv** %8, align 8
  %159 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %10, align 8
  %160 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %11, align 8
  %161 = call i32 @csi_try_field(%struct.csi_priv* %158, %struct.v4l2_subdev_pad_config* %159, %struct.v4l2_subdev_format* %160)
  %162 = load %struct.v4l2_rect*, %struct.v4l2_rect** %12, align 8
  %163 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %162, i32 0, i32 3
  store i32 0, i32* %163, align 4
  %164 = load %struct.v4l2_rect*, %struct.v4l2_rect** %12, align 8
  %165 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %164, i32 0, i32 2
  store i32 0, i32* %165, align 4
  %166 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %11, align 8
  %167 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.v4l2_rect*, %struct.v4l2_rect** %12, align 8
  %171 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %170, i32 0, i32 1
  store i32 %169, i32* %171, align 4
  %172 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %11, align 8
  %173 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.v4l2_rect*, %struct.v4l2_rect** %12, align 8
  %177 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %176, i32 0, i32 0
  store i32 %175, i32* %177, align 4
  %178 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %11, align 8
  %179 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @V4L2_FIELD_ALTERNATE, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %184, label %189

184:                                              ; preds = %157
  %185 = load %struct.v4l2_rect*, %struct.v4l2_rect** %12, align 8
  %186 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = mul nsw i32 %187, 2
  store i32 %188, i32* %186, align 4
  br label %189

189:                                              ; preds = %184, %157
  %190 = load %struct.csi_priv*, %struct.csi_priv** %8, align 8
  %191 = load %struct.v4l2_rect*, %struct.v4l2_rect** %12, align 8
  %192 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %10, align 8
  %193 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %11, align 8
  %194 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %193, i32 0, i32 1
  %195 = load %struct.v4l2_fwnode_endpoint*, %struct.v4l2_fwnode_endpoint** %9, align 8
  %196 = call i32 @csi_try_crop(%struct.csi_priv* %190, %struct.v4l2_rect* %191, %struct.v4l2_subdev_pad_config* %192, %struct.TYPE_3__* %194, %struct.v4l2_fwnode_endpoint* %195)
  %197 = load %struct.v4l2_rect*, %struct.v4l2_rect** %13, align 8
  %198 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %197, i32 0, i32 3
  store i32 0, i32* %198, align 4
  %199 = load %struct.v4l2_rect*, %struct.v4l2_rect** %13, align 8
  %200 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %199, i32 0, i32 2
  store i32 0, i32* %200, align 4
  %201 = load %struct.v4l2_rect*, %struct.v4l2_rect** %12, align 8
  %202 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.v4l2_rect*, %struct.v4l2_rect** %13, align 8
  %205 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %204, i32 0, i32 1
  store i32 %203, i32* %205, align 4
  %206 = load %struct.v4l2_rect*, %struct.v4l2_rect** %12, align 8
  %207 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.v4l2_rect*, %struct.v4l2_rect** %13, align 8
  %210 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %209, i32 0, i32 0
  store i32 %208, i32* %210, align 4
  br label %211

211:                                              ; preds = %7, %189, %99
  %212 = load %struct.v4l2_subdev_format*, %struct.v4l2_subdev_format** %11, align 8
  %213 = getelementptr inbounds %struct.v4l2_subdev_format, %struct.v4l2_subdev_format* %212, i32 0, i32 1
  %214 = load %struct.csi_priv*, %struct.csi_priv** %8, align 8
  %215 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = icmp eq i32 %216, 129
  %218 = zext i1 %217 to i32
  %219 = call i32 @imx_media_try_colorimetry(%struct.TYPE_3__* %213, i32 %218)
  ret void
}

declare dso_local %struct.v4l2_mbus_framefmt* @__csi_get_fmt(%struct.csi_priv*, %struct.v4l2_subdev_pad_config*, i32, i32) #1

declare dso_local %struct.imx_media_pixfmt* @imx_media_find_mbus_format(i32, i32, i32) #1

declare dso_local i32 @requires_passthrough(%struct.v4l2_fwnode_endpoint*, %struct.v4l2_mbus_framefmt*, %struct.imx_media_pixfmt*) #1

declare dso_local %struct.imx_media_pixfmt* @imx_media_find_ipu_format(i32, i32) #1

declare dso_local i32 @imx_media_enum_ipu_format(i32*, i32, i32) #1

declare dso_local i32 @csi_try_field(%struct.csi_priv*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_format*) #1

declare dso_local i32 @v4l_bound_align_image(i32*, i32, i32, i32, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @imx_media_enum_mbus_format(i32*, i32, i32, i32) #1

declare dso_local i32 @csi_try_crop(%struct.csi_priv*, %struct.v4l2_rect*, %struct.v4l2_subdev_pad_config*, %struct.TYPE_3__*, %struct.v4l2_fwnode_endpoint*) #1

declare dso_local i32 @imx_media_try_colorimetry(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
