; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_mt9v022.c_mt9v022_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_mt9v022.c_mt9v022_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.mt9v022 = type { %struct.TYPE_9__, i32, %struct.TYPE_7__, i32, i32, i8*, i8*, %struct.TYPE_8__, i8*, i8*, i8*, i8* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.soc_camera_subdev_desc = type { %struct.mt9v022_platform_data* }
%struct.mt9v022_platform_data = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"MT9V022 driver needs platform data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_WORD_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"I2C-Adapter doesn't support I2C_FUNC_SMBUS_WORD\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mt9v022_subdev_ops = common dso_local global i32 0, align 4
@mt9v022_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_VFLIP = common dso_local global i32 0, align 4
@V4L2_CID_HFLIP = common dso_local global i32 0, align 4
@V4L2_CID_AUTOGAIN = common dso_local global i32 0, align 4
@V4L2_CID_GAIN = common dso_local global i32 0, align 4
@V4L2_CID_EXPOSURE_AUTO = common dso_local global i32 0, align 4
@V4L2_EXPOSURE_AUTO = common dso_local global i32 0, align 4
@V4L2_CID_EXPOSURE = common dso_local global i32 0, align 4
@V4L2_CID_HBLANK = common dso_local global i32 0, align 4
@MT9V022_HORIZONTAL_BLANKING_MIN = common dso_local global i32 0, align 4
@MT9V022_HORIZONTAL_BLANKING_MAX = common dso_local global i32 0, align 4
@MT9V022_HORIZONTAL_BLANKING_DEF = common dso_local global i32 0, align 4
@V4L2_CID_VBLANK = common dso_local global i32 0, align 4
@MT9V022_VERTICAL_BLANKING_MIN = common dso_local global i32 0, align 4
@MT9V022_VERTICAL_BLANKING_MAX = common dso_local global i32 0, align 4
@MT9V022_VERTICAL_BLANKING_DEF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"control initialisation err %d\0A\00", align 1
@V4L2_EXPOSURE_MANUAL = common dso_local global i32 0, align 4
@MT9V022_CHIP_CONTROL_DEFAULT = common dso_local global i32 0, align 4
@MT9V022_COLUMN_SKIP = common dso_local global i32 0, align 4
@MT9V022_ROW_SKIP = common dso_local global i32 0, align 4
@MT9V022_MAX_WIDTH = common dso_local global i32 0, align 4
@MT9V022_MAX_HEIGHT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"mclk\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @mt9v022_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9v022_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.mt9v022*, align 8
  %7 = alloca %struct.soc_camera_subdev_desc*, align 8
  %8 = alloca %struct.i2c_adapter*, align 8
  %9 = alloca %struct.mt9v022_platform_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = call %struct.soc_camera_subdev_desc* @soc_camera_i2c_to_desc(%struct.i2c_client* %12)
  store %struct.soc_camera_subdev_desc* %13, %struct.soc_camera_subdev_desc** %7, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 1
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %15, align 8
  store %struct.i2c_adapter* %16, %struct.i2c_adapter** %8, align 8
  %17 = load %struct.soc_camera_subdev_desc*, %struct.soc_camera_subdev_desc** %7, align 8
  %18 = icmp ne %struct.soc_camera_subdev_desc* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 0
  %22 = call i32 (i32*, i8*, ...) @dev_err(i32* %21, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %197

25:                                               ; preds = %2
  %26 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %27 = load i32, i32* @I2C_FUNC_SMBUS_WORD_DATA, align 4
  %28 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %25
  %31 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %32 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %31, i32 0, i32 0
  %33 = call i32 @dev_warn(i32* %32, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i32, i32* @EIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %197

36:                                               ; preds = %25
  %37 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %38 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %37, i32 0, i32 0
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call %struct.mt9v022* @devm_kzalloc(i32* %38, i32 88, i32 %39)
  store %struct.mt9v022* %40, %struct.mt9v022** %6, align 8
  %41 = load %struct.mt9v022*, %struct.mt9v022** %6, align 8
  %42 = icmp ne %struct.mt9v022* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %36
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %197

46:                                               ; preds = %36
  %47 = load %struct.soc_camera_subdev_desc*, %struct.soc_camera_subdev_desc** %7, align 8
  %48 = getelementptr inbounds %struct.soc_camera_subdev_desc, %struct.soc_camera_subdev_desc* %47, i32 0, i32 0
  %49 = load %struct.mt9v022_platform_data*, %struct.mt9v022_platform_data** %48, align 8
  store %struct.mt9v022_platform_data* %49, %struct.mt9v022_platform_data** %9, align 8
  %50 = load %struct.mt9v022*, %struct.mt9v022** %6, align 8
  %51 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %50, i32 0, i32 7
  %52 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %53 = call i32 @v4l2_i2c_subdev_init(%struct.TYPE_8__* %51, %struct.i2c_client* %52, i32* @mt9v022_subdev_ops)
  %54 = load %struct.mt9v022*, %struct.mt9v022** %6, align 8
  %55 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %54, i32 0, i32 0
  %56 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_9__* %55, i32 6)
  %57 = load %struct.mt9v022*, %struct.mt9v022** %6, align 8
  %58 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %57, i32 0, i32 0
  %59 = load i32, i32* @V4L2_CID_VFLIP, align 4
  %60 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_9__* %58, i32* @mt9v022_ctrl_ops, i32 %59, i32 0, i32 1, i32 1, i32 0)
  %61 = load %struct.mt9v022*, %struct.mt9v022** %6, align 8
  %62 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %61, i32 0, i32 0
  %63 = load i32, i32* @V4L2_CID_HFLIP, align 4
  %64 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_9__* %62, i32* @mt9v022_ctrl_ops, i32 %63, i32 0, i32 1, i32 1, i32 0)
  %65 = load %struct.mt9v022*, %struct.mt9v022** %6, align 8
  %66 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %65, i32 0, i32 0
  %67 = load i32, i32* @V4L2_CID_AUTOGAIN, align 4
  %68 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_9__* %66, i32* @mt9v022_ctrl_ops, i32 %67, i32 0, i32 1, i32 1, i32 1)
  %69 = load %struct.mt9v022*, %struct.mt9v022** %6, align 8
  %70 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %69, i32 0, i32 5
  store i8* %68, i8** %70, align 8
  %71 = load %struct.mt9v022*, %struct.mt9v022** %6, align 8
  %72 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %71, i32 0, i32 0
  %73 = load i32, i32* @V4L2_CID_GAIN, align 4
  %74 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_9__* %72, i32* @mt9v022_ctrl_ops, i32 %73, i32 0, i32 127, i32 1, i32 64)
  %75 = load %struct.mt9v022*, %struct.mt9v022** %6, align 8
  %76 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %75, i32 0, i32 11
  store i8* %74, i8** %76, align 8
  %77 = load %struct.mt9v022*, %struct.mt9v022** %6, align 8
  %78 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %77, i32 0, i32 0
  %79 = load i32, i32* @V4L2_CID_EXPOSURE_AUTO, align 4
  %80 = load i32, i32* @V4L2_EXPOSURE_AUTO, align 4
  %81 = call i8* @v4l2_ctrl_new_std_menu(%struct.TYPE_9__* %78, i32* @mt9v022_ctrl_ops, i32 %79, i32 1, i32 0, i32 %80)
  %82 = load %struct.mt9v022*, %struct.mt9v022** %6, align 8
  %83 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %82, i32 0, i32 6
  store i8* %81, i8** %83, align 8
  %84 = load %struct.mt9v022*, %struct.mt9v022** %6, align 8
  %85 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %84, i32 0, i32 0
  %86 = load i32, i32* @V4L2_CID_EXPOSURE, align 4
  %87 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_9__* %85, i32* @mt9v022_ctrl_ops, i32 %86, i32 1, i32 255, i32 1, i32 255)
  %88 = load %struct.mt9v022*, %struct.mt9v022** %6, align 8
  %89 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %88, i32 0, i32 10
  store i8* %87, i8** %89, align 8
  %90 = load %struct.mt9v022*, %struct.mt9v022** %6, align 8
  %91 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %90, i32 0, i32 0
  %92 = load i32, i32* @V4L2_CID_HBLANK, align 4
  %93 = load i32, i32* @MT9V022_HORIZONTAL_BLANKING_MIN, align 4
  %94 = load i32, i32* @MT9V022_HORIZONTAL_BLANKING_MAX, align 4
  %95 = load i32, i32* @MT9V022_HORIZONTAL_BLANKING_DEF, align 4
  %96 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_9__* %91, i32* @mt9v022_ctrl_ops, i32 %92, i32 %93, i32 %94, i32 1, i32 %95)
  %97 = load %struct.mt9v022*, %struct.mt9v022** %6, align 8
  %98 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %97, i32 0, i32 9
  store i8* %96, i8** %98, align 8
  %99 = load %struct.mt9v022*, %struct.mt9v022** %6, align 8
  %100 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %99, i32 0, i32 0
  %101 = load i32, i32* @V4L2_CID_VBLANK, align 4
  %102 = load i32, i32* @MT9V022_VERTICAL_BLANKING_MIN, align 4
  %103 = load i32, i32* @MT9V022_VERTICAL_BLANKING_MAX, align 4
  %104 = load i32, i32* @MT9V022_VERTICAL_BLANKING_DEF, align 4
  %105 = call i8* @v4l2_ctrl_new_std(%struct.TYPE_9__* %100, i32* @mt9v022_ctrl_ops, i32 %101, i32 %102, i32 %103, i32 1, i32 %104)
  %106 = load %struct.mt9v022*, %struct.mt9v022** %6, align 8
  %107 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %106, i32 0, i32 8
  store i8* %105, i8** %107, align 8
  %108 = load %struct.mt9v022*, %struct.mt9v022** %6, align 8
  %109 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %108, i32 0, i32 0
  %110 = load %struct.mt9v022*, %struct.mt9v022** %6, align 8
  %111 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %110, i32 0, i32 7
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  store %struct.TYPE_9__* %109, %struct.TYPE_9__** %112, align 8
  %113 = load %struct.mt9v022*, %struct.mt9v022** %6, align 8
  %114 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %128

118:                                              ; preds = %46
  %119 = load %struct.mt9v022*, %struct.mt9v022** %6, align 8
  %120 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  store i32 %122, i32* %11, align 4
  %123 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %124 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %123, i32 0, i32 0
  %125 = load i32, i32* %11, align 4
  %126 = call i32 (i32*, i8*, ...) @dev_err(i32* %124, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %125)
  %127 = load i32, i32* %11, align 4
  store i32 %127, i32* %3, align 4
  br label %197

128:                                              ; preds = %46
  %129 = load %struct.mt9v022*, %struct.mt9v022** %6, align 8
  %130 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %129, i32 0, i32 6
  %131 = load i32, i32* @V4L2_EXPOSURE_MANUAL, align 4
  %132 = call i32 @v4l2_ctrl_auto_cluster(i32 2, i8** %130, i32 %131, i32 1)
  %133 = load %struct.mt9v022*, %struct.mt9v022** %6, align 8
  %134 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %133, i32 0, i32 5
  %135 = call i32 @v4l2_ctrl_auto_cluster(i32 2, i8** %134, i32 0, i32 1)
  %136 = load i32, i32* @MT9V022_CHIP_CONTROL_DEFAULT, align 4
  %137 = load %struct.mt9v022*, %struct.mt9v022** %6, align 8
  %138 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %137, i32 0, i32 4
  store i32 %136, i32* %138, align 4
  %139 = load %struct.mt9v022_platform_data*, %struct.mt9v022_platform_data** %9, align 8
  %140 = icmp ne %struct.mt9v022_platform_data* %139, null
  br i1 %140, label %141, label %145

141:                                              ; preds = %128
  %142 = load %struct.mt9v022_platform_data*, %struct.mt9v022_platform_data** %9, align 8
  %143 = getelementptr inbounds %struct.mt9v022_platform_data, %struct.mt9v022_platform_data* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  br label %146

145:                                              ; preds = %128
  br label %146

146:                                              ; preds = %145, %141
  %147 = phi i32 [ %144, %141 ], [ 0, %145 ]
  %148 = load %struct.mt9v022*, %struct.mt9v022** %6, align 8
  %149 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %148, i32 0, i32 3
  store i32 %147, i32* %149, align 8
  %150 = load i32, i32* @MT9V022_COLUMN_SKIP, align 4
  %151 = load %struct.mt9v022*, %struct.mt9v022** %6, align 8
  %152 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 3
  store i32 %150, i32* %153, align 4
  %154 = load i32, i32* @MT9V022_ROW_SKIP, align 4
  %155 = load %struct.mt9v022*, %struct.mt9v022** %6, align 8
  %156 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 2
  store i32 %154, i32* %157, align 8
  %158 = load i32, i32* @MT9V022_MAX_WIDTH, align 4
  %159 = load %struct.mt9v022*, %struct.mt9v022** %6, align 8
  %160 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 1
  store i32 %158, i32* %161, align 4
  %162 = load i32, i32* @MT9V022_MAX_HEIGHT, align 4
  %163 = load %struct.mt9v022*, %struct.mt9v022** %6, align 8
  %164 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 0
  store i32 %162, i32* %165, align 8
  %166 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %167 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %166, i32 0, i32 0
  %168 = call i32 @v4l2_clk_get(i32* %167, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %169 = load %struct.mt9v022*, %struct.mt9v022** %6, align 8
  %170 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %169, i32 0, i32 1
  store i32 %168, i32* %170, align 4
  %171 = load %struct.mt9v022*, %struct.mt9v022** %6, align 8
  %172 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = call i64 @IS_ERR(i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %181

176:                                              ; preds = %146
  %177 = load %struct.mt9v022*, %struct.mt9v022** %6, align 8
  %178 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = call i32 @PTR_ERR(i32 %179)
  store i32 %180, i32* %10, align 4
  br label %191

181:                                              ; preds = %146
  %182 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %183 = call i32 @mt9v022_video_probe(%struct.i2c_client* %182)
  store i32 %183, i32* %10, align 4
  %184 = load i32, i32* %10, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %195

186:                                              ; preds = %181
  %187 = load %struct.mt9v022*, %struct.mt9v022** %6, align 8
  %188 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @v4l2_clk_put(i32 %189)
  br label %191

191:                                              ; preds = %186, %176
  %192 = load %struct.mt9v022*, %struct.mt9v022** %6, align 8
  %193 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %192, i32 0, i32 0
  %194 = call i32 @v4l2_ctrl_handler_free(%struct.TYPE_9__* %193)
  br label %195

195:                                              ; preds = %191, %181
  %196 = load i32, i32* %10, align 4
  store i32 %196, i32* %3, align 4
  br label %197

197:                                              ; preds = %195, %118, %43, %30, %19
  %198 = load i32, i32* %3, align 4
  ret i32 %198
}

declare dso_local %struct.soc_camera_subdev_desc* @soc_camera_i2c_to_desc(%struct.i2c_client*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local %struct.mt9v022* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.TYPE_8__*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_9__*, i32) #1

declare dso_local i8* @v4l2_ctrl_new_std(%struct.TYPE_9__*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i8* @v4l2_ctrl_new_std_menu(%struct.TYPE_9__*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_auto_cluster(i32, i8**, i32, i32) #1

declare dso_local i32 @v4l2_clk_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @mt9v022_video_probe(%struct.i2c_client*) #1

declare dso_local i32 @v4l2_clk_put(i32) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
