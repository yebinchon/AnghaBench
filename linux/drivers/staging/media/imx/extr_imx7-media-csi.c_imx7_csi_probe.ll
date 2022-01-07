; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx7-media-csi.c_imx7_csi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx7-media-csi.c_imx7_csi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.imx_media_dev = type { i32, i32, i32 }
%struct.imx7_csi = type { i64, i32, i32, %struct.imx_media_dev*, %struct.TYPE_8__, %struct.imx_media_dev*, i32, %struct.imx_media_dev*, %struct.imx_media_dev*, %struct.device* }
%struct.TYPE_8__ = type { i32*, %struct.device*, i32, i32, i32, i32, %struct.TYPE_7__, i32* }
%struct.TYPE_7__ = type { i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"mclk\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Failed to get mclk: %d\00", align 1
@imx7_csi_irq_handler = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"csi\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Request CSI IRQ failed.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@imx7_csi_subdev_ops = common dso_local global i32 0, align 4
@imx7_csi_internal_ops = common dso_local global i32 0, align 4
@imx7_csi_entity_ops = common dso_local global i32 0, align 4
@MEDIA_ENT_F_VID_IF_BRIDGE = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@V4L2_SUBDEV_FL_HAS_DEVNODE = common dso_local global i32 0, align 4
@IMX_MEDIA_GRP_ID_CSI = common dso_local global i32 0, align 4
@IMX7_CSI_PAD_SRC = common dso_local global i32 0, align 4
@imx7_csi_parse_endpoint = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @imx7_csi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx7_csi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.imx_media_dev*, align 8
  %7 = alloca %struct.imx7_csi*, align 8
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %5, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.imx7_csi* @devm_kzalloc(%struct.device* %15, i32 120, i32 %16)
  store %struct.imx7_csi* %17, %struct.imx7_csi** %7, align 8
  %18 = load %struct.imx7_csi*, %struct.imx7_csi** %7, align 8
  %19 = icmp ne %struct.imx7_csi* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %244

23:                                               ; preds = %1
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = load %struct.imx7_csi*, %struct.imx7_csi** %7, align 8
  %26 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %25, i32 0, i32 9
  store %struct.device* %24, %struct.device** %26, align 8
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = call %struct.imx_media_dev* @devm_clk_get(%struct.device* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.imx7_csi*, %struct.imx7_csi** %7, align 8
  %31 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %30, i32 0, i32 8
  store %struct.imx_media_dev* %29, %struct.imx_media_dev** %31, align 8
  %32 = load %struct.imx7_csi*, %struct.imx7_csi** %7, align 8
  %33 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %32, i32 0, i32 8
  %34 = load %struct.imx_media_dev*, %struct.imx_media_dev** %33, align 8
  %35 = call i64 @IS_ERR(%struct.imx_media_dev* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %23
  %38 = load %struct.imx7_csi*, %struct.imx7_csi** %7, align 8
  %39 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %38, i32 0, i32 8
  %40 = load %struct.imx_media_dev*, %struct.imx_media_dev** %39, align 8
  %41 = call i32 @PTR_ERR(%struct.imx_media_dev* %40)
  store i32 %41, i32* %8, align 4
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %42, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %2, align 4
  br label %244

46:                                               ; preds = %23
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = call i64 @platform_get_irq(%struct.platform_device* %47, i32 0)
  %49 = load %struct.imx7_csi*, %struct.imx7_csi** %7, align 8
  %50 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load %struct.imx7_csi*, %struct.imx7_csi** %7, align 8
  %52 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %46
  %56 = load %struct.imx7_csi*, %struct.imx7_csi** %7, align 8
  %57 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %2, align 4
  br label %244

60:                                               ; preds = %46
  %61 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %62 = call %struct.imx_media_dev* @devm_platform_ioremap_resource(%struct.platform_device* %61, i32 0)
  %63 = load %struct.imx7_csi*, %struct.imx7_csi** %7, align 8
  %64 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %63, i32 0, i32 7
  store %struct.imx_media_dev* %62, %struct.imx_media_dev** %64, align 8
  %65 = load %struct.imx7_csi*, %struct.imx7_csi** %7, align 8
  %66 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %65, i32 0, i32 7
  %67 = load %struct.imx_media_dev*, %struct.imx_media_dev** %66, align 8
  %68 = call i64 @IS_ERR(%struct.imx_media_dev* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %60
  %71 = load %struct.imx7_csi*, %struct.imx7_csi** %7, align 8
  %72 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %71, i32 0, i32 7
  %73 = load %struct.imx_media_dev*, %struct.imx_media_dev** %72, align 8
  %74 = call i32 @PTR_ERR(%struct.imx_media_dev* %73)
  store i32 %74, i32* %2, align 4
  br label %244

75:                                               ; preds = %60
  %76 = load %struct.imx7_csi*, %struct.imx7_csi** %7, align 8
  %77 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %76, i32 0, i32 6
  %78 = call i32 @spin_lock_init(i32* %77)
  %79 = load %struct.imx7_csi*, %struct.imx7_csi** %7, align 8
  %80 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %79, i32 0, i32 1
  %81 = call i32 @mutex_init(i32* %80)
  %82 = load %struct.device*, %struct.device** %4, align 8
  %83 = load %struct.imx7_csi*, %struct.imx7_csi** %7, align 8
  %84 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = trunc i64 %85 to i32
  %87 = load i32, i32* @imx7_csi_irq_handler, align 4
  %88 = load %struct.imx7_csi*, %struct.imx7_csi** %7, align 8
  %89 = bitcast %struct.imx7_csi* %88 to i8*
  %90 = call i32 @devm_request_irq(%struct.device* %82, i32 %86, i32 %87, i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %89)
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %75
  %94 = load %struct.device*, %struct.device** %4, align 8
  %95 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %94, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %239

96:                                               ; preds = %75
  %97 = load %struct.device*, %struct.device** %4, align 8
  %98 = call %struct.imx_media_dev* @imx_media_dev_init(%struct.device* %97, i32* null)
  store %struct.imx_media_dev* %98, %struct.imx_media_dev** %6, align 8
  %99 = load %struct.imx_media_dev*, %struct.imx_media_dev** %6, align 8
  %100 = call i64 @IS_ERR(%struct.imx_media_dev* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %96
  %103 = load %struct.imx_media_dev*, %struct.imx_media_dev** %6, align 8
  %104 = call i32 @PTR_ERR(%struct.imx_media_dev* %103)
  store i32 %104, i32* %8, align 4
  br label %239

105:                                              ; preds = %96
  %106 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %107 = load %struct.imx7_csi*, %struct.imx7_csi** %7, align 8
  %108 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %107, i32 0, i32 4
  %109 = call i32 @platform_set_drvdata(%struct.platform_device* %106, %struct.TYPE_8__* %108)
  %110 = load %struct.imx_media_dev*, %struct.imx_media_dev** %6, align 8
  %111 = load %struct.device_node*, %struct.device_node** %5, align 8
  %112 = call i32 @imx_media_of_add_csi(%struct.imx_media_dev* %110, %struct.device_node* %111)
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* %8, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %126

115:                                              ; preds = %105
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* @ENODEV, align 4
  %118 = sub nsw i32 0, %117
  %119 = icmp ne i32 %116, %118
  br i1 %119, label %120, label %126

120:                                              ; preds = %115
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* @EEXIST, align 4
  %123 = sub nsw i32 0, %122
  %124 = icmp ne i32 %121, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %120
  br label %226

126:                                              ; preds = %120, %115, %105
  %127 = load %struct.imx_media_dev*, %struct.imx_media_dev** %6, align 8
  %128 = call i32 @imx_media_dev_notifier_register(%struct.imx_media_dev* %127, i32* null)
  store i32 %128, i32* %8, align 4
  %129 = load i32, i32* %8, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %126
  br label %226

132:                                              ; preds = %126
  %133 = load %struct.imx_media_dev*, %struct.imx_media_dev** %6, align 8
  %134 = load %struct.imx7_csi*, %struct.imx7_csi** %7, align 8
  %135 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %134, i32 0, i32 5
  store %struct.imx_media_dev* %133, %struct.imx_media_dev** %135, align 8
  %136 = load %struct.imx7_csi*, %struct.imx7_csi** %7, align 8
  %137 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %136, i32 0, i32 4
  %138 = call i32 @v4l2_subdev_init(%struct.TYPE_8__* %137, i32* @imx7_csi_subdev_ops)
  %139 = load %struct.imx7_csi*, %struct.imx7_csi** %7, align 8
  %140 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %139, i32 0, i32 4
  %141 = load %struct.imx7_csi*, %struct.imx7_csi** %7, align 8
  %142 = call i32 @v4l2_set_subdevdata(%struct.TYPE_8__* %140, %struct.imx7_csi* %141)
  %143 = load %struct.imx7_csi*, %struct.imx7_csi** %7, align 8
  %144 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %143, i32 0, i32 4
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 7
  store i32* @imx7_csi_internal_ops, i32** %145, align 8
  %146 = load %struct.imx7_csi*, %struct.imx7_csi** %7, align 8
  %147 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %146, i32 0, i32 4
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 6
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 1
  store i32* @imx7_csi_entity_ops, i32** %149, align 8
  %150 = load i32, i32* @MEDIA_ENT_F_VID_IF_BRIDGE, align 4
  %151 = load %struct.imx7_csi*, %struct.imx7_csi** %7, align 8
  %152 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %151, i32 0, i32 4
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 6
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  store i32 %150, i32* %154, align 8
  %155 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %156 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %155, i32 0, i32 0
  %157 = load %struct.imx7_csi*, %struct.imx7_csi** %7, align 8
  %158 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %157, i32 0, i32 4
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 1
  store %struct.device* %156, %struct.device** %159, align 8
  %160 = load i32, i32* @THIS_MODULE, align 4
  %161 = load %struct.imx7_csi*, %struct.imx7_csi** %7, align 8
  %162 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %161, i32 0, i32 4
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 5
  store i32 %160, i32* %163, align 4
  %164 = load i32, i32* @V4L2_SUBDEV_FL_HAS_DEVNODE, align 4
  %165 = load %struct.imx7_csi*, %struct.imx7_csi** %7, align 8
  %166 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %165, i32 0, i32 4
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 4
  store i32 %164, i32* %167, align 8
  %168 = load i32, i32* @IMX_MEDIA_GRP_ID_CSI, align 4
  %169 = load %struct.imx7_csi*, %struct.imx7_csi** %7, align 8
  %170 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %169, i32 0, i32 4
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 3
  store i32 %168, i32* %171, align 4
  %172 = load %struct.imx7_csi*, %struct.imx7_csi** %7, align 8
  %173 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %172, i32 0, i32 4
  %174 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @snprintf(i32 %175, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %177 = load %struct.imx7_csi*, %struct.imx7_csi** %7, align 8
  %178 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %177, i32 0, i32 4
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 1
  %180 = load %struct.device*, %struct.device** %179, align 8
  %181 = load %struct.imx7_csi*, %struct.imx7_csi** %7, align 8
  %182 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %181, i32 0, i32 4
  %183 = load i32, i32* @IMX7_CSI_PAD_SRC, align 4
  %184 = call %struct.imx_media_dev* @imx_media_capture_device_init(%struct.device* %180, %struct.TYPE_8__* %182, i32 %183)
  %185 = load %struct.imx7_csi*, %struct.imx7_csi** %7, align 8
  %186 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %185, i32 0, i32 3
  store %struct.imx_media_dev* %184, %struct.imx_media_dev** %186, align 8
  %187 = load %struct.imx7_csi*, %struct.imx7_csi** %7, align 8
  %188 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %187, i32 0, i32 3
  %189 = load %struct.imx_media_dev*, %struct.imx_media_dev** %188, align 8
  %190 = call i64 @IS_ERR(%struct.imx_media_dev* %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %197

192:                                              ; preds = %132
  %193 = load %struct.imx7_csi*, %struct.imx7_csi** %7, align 8
  %194 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %193, i32 0, i32 3
  %195 = load %struct.imx_media_dev*, %struct.imx_media_dev** %194, align 8
  %196 = call i32 @PTR_ERR(%struct.imx_media_dev* %195)
  store i32 %196, i32* %2, align 4
  br label %244

197:                                              ; preds = %132
  %198 = load %struct.imx7_csi*, %struct.imx7_csi** %7, align 8
  %199 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %198, i32 0, i32 2
  %200 = call i32 @v4l2_ctrl_handler_init(i32* %199, i32 0)
  %201 = load %struct.imx7_csi*, %struct.imx7_csi** %7, align 8
  %202 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %201, i32 0, i32 2
  %203 = load %struct.imx7_csi*, %struct.imx7_csi** %7, align 8
  %204 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %203, i32 0, i32 4
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 0
  store i32* %202, i32** %205, align 8
  %206 = load %struct.imx7_csi*, %struct.imx7_csi** %7, align 8
  %207 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %206, i32 0, i32 4
  %208 = load i32, i32* @imx7_csi_parse_endpoint, align 4
  %209 = call i32 @v4l2_async_register_fwnode_subdev(%struct.TYPE_8__* %207, i32 4, i32* null, i32 0, i32 %208)
  store i32 %209, i32* %8, align 4
  %210 = load i32, i32* %8, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %197
  br label %214

213:                                              ; preds = %197
  store i32 0, i32* %2, align 4
  br label %244

214:                                              ; preds = %212
  %215 = load %struct.imx7_csi*, %struct.imx7_csi** %7, align 8
  %216 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %215, i32 0, i32 3
  %217 = load %struct.imx_media_dev*, %struct.imx_media_dev** %216, align 8
  %218 = call i32 @imx_media_capture_device_unregister(%struct.imx_media_dev* %217)
  %219 = load %struct.imx7_csi*, %struct.imx7_csi** %7, align 8
  %220 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %219, i32 0, i32 3
  %221 = load %struct.imx_media_dev*, %struct.imx_media_dev** %220, align 8
  %222 = call i32 @imx_media_capture_device_remove(%struct.imx_media_dev* %221)
  %223 = load %struct.imx7_csi*, %struct.imx7_csi** %7, align 8
  %224 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %223, i32 0, i32 2
  %225 = call i32 @v4l2_ctrl_handler_free(i32* %224)
  br label %226

226:                                              ; preds = %214, %131, %125
  %227 = load %struct.imx_media_dev*, %struct.imx_media_dev** %6, align 8
  %228 = getelementptr inbounds %struct.imx_media_dev, %struct.imx_media_dev* %227, i32 0, i32 2
  %229 = call i32 @v4l2_async_notifier_cleanup(i32* %228)
  %230 = load %struct.imx_media_dev*, %struct.imx_media_dev** %6, align 8
  %231 = getelementptr inbounds %struct.imx_media_dev, %struct.imx_media_dev* %230, i32 0, i32 1
  %232 = call i32 @v4l2_device_unregister(i32* %231)
  %233 = load %struct.imx_media_dev*, %struct.imx_media_dev** %6, align 8
  %234 = getelementptr inbounds %struct.imx_media_dev, %struct.imx_media_dev* %233, i32 0, i32 0
  %235 = call i32 @media_device_unregister(i32* %234)
  %236 = load %struct.imx_media_dev*, %struct.imx_media_dev** %6, align 8
  %237 = getelementptr inbounds %struct.imx_media_dev, %struct.imx_media_dev* %236, i32 0, i32 0
  %238 = call i32 @media_device_cleanup(i32* %237)
  br label %239

239:                                              ; preds = %226, %102, %93
  %240 = load %struct.imx7_csi*, %struct.imx7_csi** %7, align 8
  %241 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %240, i32 0, i32 1
  %242 = call i32 @mutex_destroy(i32* %241)
  %243 = load i32, i32* %8, align 4
  store i32 %243, i32* %2, align 4
  br label %244

244:                                              ; preds = %239, %213, %192, %70, %55, %37, %20
  %245 = load i32, i32* %2, align 4
  ret i32 %245
}

declare dso_local %struct.imx7_csi* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.imx_media_dev* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.imx_media_dev*) #1

declare dso_local i32 @PTR_ERR(%struct.imx_media_dev*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i64 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local %struct.imx_media_dev* @devm_platform_ioremap_resource(%struct.platform_device*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, i8*) #1

declare dso_local %struct.imx_media_dev* @imx_media_dev_init(%struct.device*, i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.TYPE_8__*) #1

declare dso_local i32 @imx_media_of_add_csi(%struct.imx_media_dev*, %struct.device_node*) #1

declare dso_local i32 @imx_media_dev_notifier_register(%struct.imx_media_dev*, i32*) #1

declare dso_local i32 @v4l2_subdev_init(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @v4l2_set_subdevdata(%struct.TYPE_8__*, %struct.imx7_csi*) #1

declare dso_local i32 @snprintf(i32, i32, i8*) #1

declare dso_local %struct.imx_media_dev* @imx_media_capture_device_init(%struct.device*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_init(i32*, i32) #1

declare dso_local i32 @v4l2_async_register_fwnode_subdev(%struct.TYPE_8__*, i32, i32*, i32, i32) #1

declare dso_local i32 @imx_media_capture_device_unregister(%struct.imx_media_dev*) #1

declare dso_local i32 @imx_media_capture_device_remove(%struct.imx_media_dev*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(i32*) #1

declare dso_local i32 @v4l2_async_notifier_cleanup(i32*) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

declare dso_local i32 @media_device_unregister(i32*) #1

declare dso_local i32 @media_device_cleanup(i32*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
