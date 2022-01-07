; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-csi.c_imx_csi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-csi.c_imx_csi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, %struct.ipu_client_platformdata*, i32 }
%struct.ipu_client_platformdata = type { i64, i32 }
%struct.pinctrl = type { i32 }
%struct.csi_priv = type { i64, i32, %struct.pinctrl*, i32, i32, %struct.TYPE_13__*, %struct.TYPE_12__, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32*, %struct.TYPE_13__*, i32, i32, i32, i32, %struct.TYPE_11__, i32* }
%struct.TYPE_11__ = type { i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CSI_SRC_PAD_IDMAC = common dso_local global i32 0, align 4
@csi_idmac_eof_timeout = common dso_local global i32 0, align 4
@csi_subdev_ops = common dso_local global i32 0, align 4
@csi_internal_ops = common dso_local global i32 0, align 4
@csi_entity_ops = common dso_local global i32 0, align 4
@MEDIA_ENT_F_PROC_VIDEO_PIXEL_FORMATTER = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FL_HAS_DEVNODE = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FL_HAS_EVENTS = common dso_local global i32 0, align 4
@IMX_MEDIA_GRP_ID_IPU_CSI1 = common dso_local global i32 0, align 4
@IMX_MEDIA_GRP_ID_IPU_CSI0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"devm_pinctrl_get_select_default() failed: %d\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @imx_csi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_csi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.ipu_client_platformdata*, align 8
  %5 = alloca %struct.pinctrl*, align 8
  %6 = alloca %struct.csi_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.csi_priv* @devm_kzalloc(%struct.TYPE_13__* %9, i32 120, i32 %10)
  store %struct.csi_priv* %11, %struct.csi_priv** %6, align 8
  %12 = load %struct.csi_priv*, %struct.csi_priv** %6, align 8
  %13 = icmp ne %struct.csi_priv* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %218

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = load %struct.csi_priv*, %struct.csi_priv** %6, align 8
  %20 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %19, i32 0, i32 6
  %21 = call i32 @platform_set_drvdata(%struct.platform_device* %18, %struct.TYPE_12__* %20)
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load %struct.csi_priv*, %struct.csi_priv** %6, align 8
  %25 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %24, i32 0, i32 5
  store %struct.TYPE_13__* %23, %struct.TYPE_13__** %25, align 8
  %26 = load %struct.csi_priv*, %struct.csi_priv** %6, align 8
  %27 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %26, i32 0, i32 5
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %27, align 8
  %29 = call i32 @DMA_BIT_MASK(i32 32)
  %30 = call i32 @dma_set_coherent_mask(%struct.TYPE_13__* %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %17
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %2, align 4
  br label %218

35:                                               ; preds = %17
  %36 = load %struct.csi_priv*, %struct.csi_priv** %6, align 8
  %37 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %36, i32 0, i32 5
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @dev_get_drvdata(i32 %40)
  %42 = load %struct.csi_priv*, %struct.csi_priv** %6, align 8
  %43 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %42, i32 0, i32 7
  store i32 %41, i32* %43, align 8
  %44 = load %struct.csi_priv*, %struct.csi_priv** %6, align 8
  %45 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %44, i32 0, i32 5
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 1
  %48 = load %struct.ipu_client_platformdata*, %struct.ipu_client_platformdata** %47, align 8
  store %struct.ipu_client_platformdata* %48, %struct.ipu_client_platformdata** %4, align 8
  %49 = load %struct.ipu_client_platformdata*, %struct.ipu_client_platformdata** %4, align 8
  %50 = getelementptr inbounds %struct.ipu_client_platformdata, %struct.ipu_client_platformdata* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.csi_priv*, %struct.csi_priv** %6, align 8
  %53 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load %struct.csi_priv*, %struct.csi_priv** %6, align 8
  %55 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 0, i32 2
  %60 = load %struct.csi_priv*, %struct.csi_priv** %6, align 8
  %61 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* @CSI_SRC_PAD_IDMAC, align 4
  %63 = load %struct.csi_priv*, %struct.csi_priv** %6, align 8
  %64 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %63, i32 0, i32 10
  store i32 %62, i32* %64, align 4
  %65 = load %struct.csi_priv*, %struct.csi_priv** %6, align 8
  %66 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %65, i32 0, i32 9
  %67 = load i32, i32* @csi_idmac_eof_timeout, align 4
  %68 = call i32 @timer_setup(i32* %66, i32 %67, i32 0)
  %69 = load %struct.csi_priv*, %struct.csi_priv** %6, align 8
  %70 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %69, i32 0, i32 8
  %71 = call i32 @spin_lock_init(i32* %70)
  %72 = load %struct.csi_priv*, %struct.csi_priv** %6, align 8
  %73 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %72, i32 0, i32 6
  %74 = call i32 @v4l2_subdev_init(%struct.TYPE_12__* %73, i32* @csi_subdev_ops)
  %75 = load %struct.csi_priv*, %struct.csi_priv** %6, align 8
  %76 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %75, i32 0, i32 6
  %77 = load %struct.csi_priv*, %struct.csi_priv** %6, align 8
  %78 = call i32 @v4l2_set_subdevdata(%struct.TYPE_12__* %76, %struct.csi_priv* %77)
  %79 = load %struct.csi_priv*, %struct.csi_priv** %6, align 8
  %80 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %79, i32 0, i32 6
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 8
  store i32* @csi_internal_ops, i32** %81, align 8
  %82 = load %struct.csi_priv*, %struct.csi_priv** %6, align 8
  %83 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %82, i32 0, i32 6
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 7
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %84, i32 0, i32 1
  store i32* @csi_entity_ops, i32** %85, align 8
  %86 = load i32, i32* @MEDIA_ENT_F_PROC_VIDEO_PIXEL_FORMATTER, align 4
  %87 = load %struct.csi_priv*, %struct.csi_priv** %6, align 8
  %88 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %87, i32 0, i32 6
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 7
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 0
  store i32 %86, i32* %90, align 8
  %91 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %92 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %91, i32 0, i32 0
  %93 = load %struct.csi_priv*, %struct.csi_priv** %6, align 8
  %94 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %93, i32 0, i32 6
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 2
  store %struct.TYPE_13__* %92, %struct.TYPE_13__** %95, align 8
  %96 = load %struct.ipu_client_platformdata*, %struct.ipu_client_platformdata** %4, align 8
  %97 = getelementptr inbounds %struct.ipu_client_platformdata, %struct.ipu_client_platformdata* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @of_fwnode_handle(i32 %98)
  %100 = load %struct.csi_priv*, %struct.csi_priv** %6, align 8
  %101 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %100, i32 0, i32 6
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 6
  store i32 %99, i32* %102, align 4
  %103 = load i32, i32* @THIS_MODULE, align 4
  %104 = load %struct.csi_priv*, %struct.csi_priv** %6, align 8
  %105 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %104, i32 0, i32 6
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 5
  store i32 %103, i32* %106, align 8
  %107 = load i32, i32* @V4L2_SUBDEV_FL_HAS_DEVNODE, align 4
  %108 = load i32, i32* @V4L2_SUBDEV_FL_HAS_EVENTS, align 4
  %109 = or i32 %107, %108
  %110 = load %struct.csi_priv*, %struct.csi_priv** %6, align 8
  %111 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %110, i32 0, i32 6
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  store i32 %109, i32* %112, align 8
  %113 = load %struct.csi_priv*, %struct.csi_priv** %6, align 8
  %114 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %35
  %118 = load i32, i32* @IMX_MEDIA_GRP_ID_IPU_CSI1, align 4
  br label %121

119:                                              ; preds = %35
  %120 = load i32, i32* @IMX_MEDIA_GRP_ID_IPU_CSI0, align 4
  br label %121

121:                                              ; preds = %119, %117
  %122 = phi i32 [ %118, %117 ], [ %120, %119 ]
  %123 = load %struct.csi_priv*, %struct.csi_priv** %6, align 8
  %124 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %123, i32 0, i32 6
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 3
  store i32 %122, i32* %125, align 8
  %126 = load %struct.csi_priv*, %struct.csi_priv** %6, align 8
  %127 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %126, i32 0, i32 6
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.csi_priv*, %struct.csi_priv** %6, align 8
  %131 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %130, i32 0, i32 6
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.csi_priv*, %struct.csi_priv** %6, align 8
  %135 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %134, i32 0, i32 7
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @ipu_get_num(i32 %136)
  %138 = call i32 @imx_media_grp_id_to_sd_name(i32 %129, i32 4, i32 %133, i32 %137)
  %139 = load %struct.csi_priv*, %struct.csi_priv** %6, align 8
  %140 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %139, i32 0, i32 6
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 2
  %142 = load %struct.TYPE_13__*, %struct.TYPE_13__** %141, align 8
  %143 = load %struct.csi_priv*, %struct.csi_priv** %6, align 8
  %144 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %143, i32 0, i32 6
  %145 = load i32, i32* @CSI_SRC_PAD_IDMAC, align 4
  %146 = call %struct.pinctrl* @imx_media_capture_device_init(%struct.TYPE_13__* %142, %struct.TYPE_12__* %144, i32 %145)
  %147 = load %struct.csi_priv*, %struct.csi_priv** %6, align 8
  %148 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %147, i32 0, i32 2
  store %struct.pinctrl* %146, %struct.pinctrl** %148, align 8
  %149 = load %struct.csi_priv*, %struct.csi_priv** %6, align 8
  %150 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %149, i32 0, i32 2
  %151 = load %struct.pinctrl*, %struct.pinctrl** %150, align 8
  %152 = call i64 @IS_ERR(%struct.pinctrl* %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %121
  %155 = load %struct.csi_priv*, %struct.csi_priv** %6, align 8
  %156 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %155, i32 0, i32 2
  %157 = load %struct.pinctrl*, %struct.pinctrl** %156, align 8
  %158 = call i32 @PTR_ERR(%struct.pinctrl* %157)
  store i32 %158, i32* %2, align 4
  br label %218

159:                                              ; preds = %121
  %160 = load %struct.csi_priv*, %struct.csi_priv** %6, align 8
  %161 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %160, i32 0, i32 3
  %162 = call i32 @mutex_init(i32* %161)
  %163 = load %struct.csi_priv*, %struct.csi_priv** %6, align 8
  %164 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %163, i32 0, i32 4
  %165 = call i32 @v4l2_ctrl_handler_init(i32* %164, i32 0)
  %166 = load %struct.csi_priv*, %struct.csi_priv** %6, align 8
  %167 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %166, i32 0, i32 4
  %168 = load %struct.csi_priv*, %struct.csi_priv** %6, align 8
  %169 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %168, i32 0, i32 6
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 1
  store i32* %167, i32** %170, align 8
  %171 = load %struct.ipu_client_platformdata*, %struct.ipu_client_platformdata** %4, align 8
  %172 = getelementptr inbounds %struct.ipu_client_platformdata, %struct.ipu_client_platformdata* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.csi_priv*, %struct.csi_priv** %6, align 8
  %175 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %174, i32 0, i32 5
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %176, i32 0, i32 0
  store i32 %173, i32* %177, align 8
  %178 = load %struct.csi_priv*, %struct.csi_priv** %6, align 8
  %179 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %178, i32 0, i32 5
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %179, align 8
  %181 = call %struct.pinctrl* @devm_pinctrl_get_select_default(%struct.TYPE_13__* %180)
  store %struct.pinctrl* %181, %struct.pinctrl** %5, align 8
  %182 = load %struct.pinctrl*, %struct.pinctrl** %5, align 8
  %183 = call i64 @IS_ERR(%struct.pinctrl* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %199

185:                                              ; preds = %159
  %186 = load %struct.pinctrl*, %struct.pinctrl** %5, align 8
  %187 = call i32 @PTR_ERR(%struct.pinctrl* %186)
  store i32 %187, i32* %7, align 4
  %188 = load %struct.csi_priv*, %struct.csi_priv** %6, align 8
  %189 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %188, i32 0, i32 5
  %190 = load %struct.TYPE_13__*, %struct.TYPE_13__** %189, align 8
  %191 = load i32, i32* %7, align 4
  %192 = call i32 @dev_dbg(%struct.TYPE_13__* %190, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %191)
  %193 = load i32, i32* %7, align 4
  %194 = load i32, i32* @ENODEV, align 4
  %195 = sub nsw i32 0, %194
  %196 = icmp ne i32 %193, %195
  br i1 %196, label %197, label %198

197:                                              ; preds = %185
  br label %206

198:                                              ; preds = %185
  br label %199

199:                                              ; preds = %198, %159
  %200 = load %struct.csi_priv*, %struct.csi_priv** %6, align 8
  %201 = call i32 @imx_csi_async_register(%struct.csi_priv* %200)
  store i32 %201, i32* %7, align 4
  %202 = load i32, i32* %7, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %199
  br label %206

205:                                              ; preds = %199
  store i32 0, i32* %2, align 4
  br label %218

206:                                              ; preds = %204, %197
  %207 = load %struct.csi_priv*, %struct.csi_priv** %6, align 8
  %208 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %207, i32 0, i32 4
  %209 = call i32 @v4l2_ctrl_handler_free(i32* %208)
  %210 = load %struct.csi_priv*, %struct.csi_priv** %6, align 8
  %211 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %210, i32 0, i32 3
  %212 = call i32 @mutex_destroy(i32* %211)
  %213 = load %struct.csi_priv*, %struct.csi_priv** %6, align 8
  %214 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %213, i32 0, i32 2
  %215 = load %struct.pinctrl*, %struct.pinctrl** %214, align 8
  %216 = call i32 @imx_media_capture_device_remove(%struct.pinctrl* %215)
  %217 = load i32, i32* %7, align 4
  store i32 %217, i32* %2, align 4
  br label %218

218:                                              ; preds = %206, %205, %154, %33, %14
  %219 = load i32, i32* %2, align 4
  ret i32 %219
}

declare dso_local %struct.csi_priv* @devm_kzalloc(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.TYPE_12__*) #1

declare dso_local i32 @dma_set_coherent_mask(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @dev_get_drvdata(i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @v4l2_subdev_init(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @v4l2_set_subdevdata(%struct.TYPE_12__*, %struct.csi_priv*) #1

declare dso_local i32 @of_fwnode_handle(i32) #1

declare dso_local i32 @imx_media_grp_id_to_sd_name(i32, i32, i32, i32) #1

declare dso_local i32 @ipu_get_num(i32) #1

declare dso_local %struct.pinctrl* @imx_media_capture_device_init(%struct.TYPE_13__*, %struct.TYPE_12__*, i32) #1

declare dso_local i64 @IS_ERR(%struct.pinctrl*) #1

declare dso_local i32 @PTR_ERR(%struct.pinctrl*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @v4l2_ctrl_handler_init(i32*, i32) #1

declare dso_local %struct.pinctrl* @devm_pinctrl_get_select_default(%struct.TYPE_13__*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_13__*, i8*, i32) #1

declare dso_local i32 @imx_csi_async_register(%struct.csi_priv*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(i32*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @imx_media_capture_device_remove(%struct.pinctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
