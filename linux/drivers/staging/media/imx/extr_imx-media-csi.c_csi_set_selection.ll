; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-csi.c_csi_set_selection.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-csi.c_csi_set_selection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_subdev_pad_config = type { i32 }
%struct.v4l2_subdev_selection = type { i32, i32, i32, i32, %struct.v4l2_rect }
%struct.v4l2_rect = type { i32, i32, i32, i32 }
%struct.csi_priv = type { i64, i32, %struct.v4l2_rect, %struct.v4l2_rect, i32 }
%struct.v4l2_fwnode_endpoint = type { i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32 }

@CSI_SINK_PAD = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"failed to find upstream endpoint\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@V4L2_SEL_FLAG_KEEP_CONFIG = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FORMAT_TRY = common dso_local global i32 0, align 4
@CSI_NUM_PADS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_selection*)* @csi_set_selection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csi_set_selection(%struct.v4l2_subdev* %0, %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_selection* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.v4l2_subdev_pad_config*, align 8
  %7 = alloca %struct.v4l2_subdev_selection*, align 8
  %8 = alloca %struct.csi_priv*, align 8
  %9 = alloca %struct.v4l2_fwnode_endpoint, align 4
  %10 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %11 = alloca %struct.v4l2_rect*, align 8
  %12 = alloca %struct.v4l2_rect*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.v4l2_mbus_framefmt*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %5, align 8
  store %struct.v4l2_subdev_pad_config* %1, %struct.v4l2_subdev_pad_config** %6, align 8
  store %struct.v4l2_subdev_selection* %2, %struct.v4l2_subdev_selection** %7, align 8
  %16 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %17 = call %struct.csi_priv* @v4l2_get_subdevdata(%struct.v4l2_subdev* %16)
  store %struct.csi_priv* %17, %struct.csi_priv** %8, align 8
  %18 = bitcast %struct.v4l2_fwnode_endpoint* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 4, i1 false)
  %19 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @CSI_SINK_PAD, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %222

27:                                               ; preds = %3
  %28 = load %struct.csi_priv*, %struct.csi_priv** %8, align 8
  %29 = call i32 @csi_get_upstream_endpoint(%struct.csi_priv* %28, %struct.v4l2_fwnode_endpoint* %9)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.csi_priv*, %struct.csi_priv** %8, align 8
  %34 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %33, i32 0, i32 4
  %35 = call i32 @v4l2_err(i32* %34, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* %14, align 4
  store i32 %36, i32* %4, align 4
  br label %222

37:                                               ; preds = %27
  %38 = load %struct.csi_priv*, %struct.csi_priv** %8, align 8
  %39 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %38, i32 0, i32 1
  %40 = call i32 @mutex_lock(i32* %39)
  %41 = load %struct.csi_priv*, %struct.csi_priv** %8, align 8
  %42 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load i32, i32* @EBUSY, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %14, align 4
  br label %217

48:                                               ; preds = %37
  %49 = load %struct.csi_priv*, %struct.csi_priv** %8, align 8
  %50 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %51 = load i32, i32* @CSI_SINK_PAD, align 4
  %52 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %53 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = call %struct.v4l2_mbus_framefmt* @__csi_get_fmt(%struct.csi_priv* %49, %struct.v4l2_subdev_pad_config* %50, i32 %51, i32 %54)
  store %struct.v4l2_mbus_framefmt* %55, %struct.v4l2_mbus_framefmt** %10, align 8
  %56 = load %struct.csi_priv*, %struct.csi_priv** %8, align 8
  %57 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %58 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %59 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = call %struct.v4l2_rect* @__csi_get_crop(%struct.csi_priv* %56, %struct.v4l2_subdev_pad_config* %57, i32 %60)
  store %struct.v4l2_rect* %61, %struct.v4l2_rect** %11, align 8
  %62 = load %struct.csi_priv*, %struct.csi_priv** %8, align 8
  %63 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %64 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %65 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call %struct.v4l2_rect* @__csi_get_compose(%struct.csi_priv* %62, %struct.v4l2_subdev_pad_config* %63, i32 %66)
  store %struct.v4l2_rect* %67, %struct.v4l2_rect** %12, align 8
  %68 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %69 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  switch i32 %70, label %185 [
    i32 128, label %71
    i32 129, label %119
  ]

71:                                               ; preds = %48
  %72 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %73 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @V4L2_SEL_FLAG_KEEP_CONFIG, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %97

78:                                               ; preds = %71
  %79 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %80 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %79, i32 0, i32 4
  %81 = load %struct.csi_priv*, %struct.csi_priv** %8, align 8
  %82 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %81, i32 0, i32 3
  %83 = bitcast %struct.v4l2_rect* %80 to i8*
  %84 = bitcast %struct.v4l2_rect* %82 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %83, i8* align 4 %84, i64 16, i1 false)
  %85 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %86 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @V4L2_SUBDEV_FORMAT_TRY, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %78
  %91 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %92 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %93 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %92, i32 0, i32 4
  %94 = bitcast %struct.v4l2_rect* %91 to i8*
  %95 = bitcast %struct.v4l2_rect* %93 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %94, i8* align 4 %95, i64 16, i1 false)
  br label %96

96:                                               ; preds = %90, %78
  br label %217

97:                                               ; preds = %71
  %98 = load %struct.csi_priv*, %struct.csi_priv** %8, align 8
  %99 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %100 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %99, i32 0, i32 4
  %101 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %102 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %10, align 8
  %103 = call i32 @csi_try_crop(%struct.csi_priv* %98, %struct.v4l2_rect* %100, %struct.v4l2_subdev_pad_config* %101, %struct.v4l2_mbus_framefmt* %102, %struct.v4l2_fwnode_endpoint* %9)
  %104 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %105 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %106 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %105, i32 0, i32 4
  %107 = bitcast %struct.v4l2_rect* %104 to i8*
  %108 = bitcast %struct.v4l2_rect* %106 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %107, i8* align 4 %108, i64 16, i1 false)
  %109 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %110 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.v4l2_rect*, %struct.v4l2_rect** %12, align 8
  %113 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  %114 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %115 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.v4l2_rect*, %struct.v4l2_rect** %12, align 8
  %118 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %117, i32 0, i32 0
  store i32 %116, i32* %118, align 4
  br label %188

119:                                              ; preds = %48
  %120 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %121 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @V4L2_SEL_FLAG_KEEP_CONFIG, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %145

126:                                              ; preds = %119
  %127 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %128 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %127, i32 0, i32 4
  %129 = load %struct.csi_priv*, %struct.csi_priv** %8, align 8
  %130 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %129, i32 0, i32 2
  %131 = bitcast %struct.v4l2_rect* %128 to i8*
  %132 = bitcast %struct.v4l2_rect* %130 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %131, i8* align 4 %132, i64 16, i1 false)
  %133 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %134 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @V4L2_SUBDEV_FORMAT_TRY, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %144

138:                                              ; preds = %126
  %139 = load %struct.v4l2_rect*, %struct.v4l2_rect** %12, align 8
  %140 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %141 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %140, i32 0, i32 4
  %142 = bitcast %struct.v4l2_rect* %139 to i8*
  %143 = bitcast %struct.v4l2_rect* %141 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %142, i8* align 4 %143, i64 16, i1 false)
  br label %144

144:                                              ; preds = %138, %126
  br label %217

145:                                              ; preds = %119
  %146 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %147 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %146, i32 0, i32 4
  %148 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %147, i32 0, i32 3
  store i32 0, i32* %148, align 4
  %149 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %150 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %149, i32 0, i32 4
  %151 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %150, i32 0, i32 2
  store i32 0, i32* %151, align 4
  %152 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %153 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %152, i32 0, i32 4
  %154 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %153, i32 0, i32 1
  %155 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %156 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %159 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @csi_set_scale(i32* %154, i32 %157, i32 %160)
  store i32 %161, i32* %14, align 4
  %162 = load i32, i32* %14, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %145
  br label %217

165:                                              ; preds = %145
  %166 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %167 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %166, i32 0, i32 4
  %168 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %167, i32 0, i32 0
  %169 = load %struct.v4l2_rect*, %struct.v4l2_rect** %11, align 8
  %170 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %173 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @csi_set_scale(i32* %168, i32 %171, i32 %174)
  store i32 %175, i32* %14, align 4
  %176 = load i32, i32* %14, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %165
  br label %217

179:                                              ; preds = %165
  %180 = load %struct.v4l2_rect*, %struct.v4l2_rect** %12, align 8
  %181 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %182 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %181, i32 0, i32 4
  %183 = bitcast %struct.v4l2_rect* %180 to i8*
  %184 = bitcast %struct.v4l2_rect* %182 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %183, i8* align 4 %184, i64 16, i1 false)
  br label %188

185:                                              ; preds = %48
  %186 = load i32, i32* @EINVAL, align 4
  %187 = sub nsw i32 0, %186
  store i32 %187, i32* %14, align 4
  br label %217

188:                                              ; preds = %179, %97
  %189 = load i32, i32* @CSI_SINK_PAD, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %13, align 4
  br label %191

191:                                              ; preds = %213, %188
  %192 = load i32, i32* %13, align 4
  %193 = load i32, i32* @CSI_NUM_PADS, align 4
  %194 = icmp slt i32 %192, %193
  br i1 %194, label %195, label %216

195:                                              ; preds = %191
  %196 = load %struct.csi_priv*, %struct.csi_priv** %8, align 8
  %197 = load %struct.v4l2_subdev_pad_config*, %struct.v4l2_subdev_pad_config** %6, align 8
  %198 = load i32, i32* %13, align 4
  %199 = load %struct.v4l2_subdev_selection*, %struct.v4l2_subdev_selection** %7, align 8
  %200 = getelementptr inbounds %struct.v4l2_subdev_selection, %struct.v4l2_subdev_selection* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 4
  %202 = call %struct.v4l2_mbus_framefmt* @__csi_get_fmt(%struct.csi_priv* %196, %struct.v4l2_subdev_pad_config* %197, i32 %198, i32 %201)
  store %struct.v4l2_mbus_framefmt* %202, %struct.v4l2_mbus_framefmt** %15, align 8
  %203 = load %struct.v4l2_rect*, %struct.v4l2_rect** %12, align 8
  %204 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %15, align 8
  %207 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %206, i32 0, i32 1
  store i32 %205, i32* %207, align 4
  %208 = load %struct.v4l2_rect*, %struct.v4l2_rect** %12, align 8
  %209 = getelementptr inbounds %struct.v4l2_rect, %struct.v4l2_rect* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %15, align 8
  %212 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %211, i32 0, i32 0
  store i32 %210, i32* %212, align 4
  br label %213

213:                                              ; preds = %195
  %214 = load i32, i32* %13, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %13, align 4
  br label %191

216:                                              ; preds = %191
  br label %217

217:                                              ; preds = %216, %185, %178, %164, %144, %96, %45
  %218 = load %struct.csi_priv*, %struct.csi_priv** %8, align 8
  %219 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %218, i32 0, i32 1
  %220 = call i32 @mutex_unlock(i32* %219)
  %221 = load i32, i32* %14, align 4
  store i32 %221, i32* %4, align 4
  br label %222

222:                                              ; preds = %217, %32, %24
  %223 = load i32, i32* %4, align 4
  ret i32 %223
}

declare dso_local %struct.csi_priv* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @csi_get_upstream_endpoint(%struct.csi_priv*, %struct.v4l2_fwnode_endpoint*) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.v4l2_mbus_framefmt* @__csi_get_fmt(%struct.csi_priv*, %struct.v4l2_subdev_pad_config*, i32, i32) #1

declare dso_local %struct.v4l2_rect* @__csi_get_crop(%struct.csi_priv*, %struct.v4l2_subdev_pad_config*, i32) #1

declare dso_local %struct.v4l2_rect* @__csi_get_compose(%struct.csi_priv*, %struct.v4l2_subdev_pad_config*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @csi_try_crop(%struct.csi_priv*, %struct.v4l2_rect*, %struct.v4l2_subdev_pad_config*, %struct.v4l2_mbus_framefmt*, %struct.v4l2_fwnode_endpoint*) #1

declare dso_local i32 @csi_set_scale(i32*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
