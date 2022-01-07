; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_mt9t031.c_mt9t031_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_mt9t031.c_mt9t031_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.mt9t031 = type { i32, i32, %struct.TYPE_9__, i32, %struct.TYPE_7__, i64, i32, %struct.TYPE_8__, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.soc_camera_subdev_desc = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"MT9T031 driver needs platform data\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_WORD_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"I2C-Adapter doesn't support I2C_FUNC_SMBUS_WORD\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mt9t031_subdev_ops = common dso_local global i32 0, align 4
@mt9t031_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_VFLIP = common dso_local global i32 0, align 4
@V4L2_CID_HFLIP = common dso_local global i32 0, align 4
@V4L2_CID_GAIN = common dso_local global i32 0, align 4
@V4L2_CID_EXPOSURE_AUTO = common dso_local global i32 0, align 4
@V4L2_EXPOSURE_AUTO = common dso_local global i32 0, align 4
@V4L2_CID_EXPOSURE = common dso_local global i32 0, align 4
@V4L2_EXPOSURE_MANUAL = common dso_local global i32 0, align 4
@MT9T031_COLUMN_SKIP = common dso_local global i32 0, align 4
@MT9T031_ROW_SKIP = common dso_local global i32 0, align 4
@MT9T031_MAX_WIDTH = common dso_local global i32 0, align 4
@MT9T031_MAX_HEIGHT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"mclk\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @mt9t031_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9t031_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.mt9t031*, align 8
  %7 = alloca %struct.soc_camera_subdev_desc*, align 8
  %8 = alloca %struct.i2c_adapter*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = call %struct.soc_camera_subdev_desc* @soc_camera_i2c_to_desc(%struct.i2c_client* %10)
  store %struct.soc_camera_subdev_desc* %11, %struct.soc_camera_subdev_desc** %7, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %13 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %12, i32 0, i32 1
  %14 = load %struct.i2c_adapter*, %struct.i2c_adapter** %13, align 8
  store %struct.i2c_adapter* %14, %struct.i2c_adapter** %8, align 8
  %15 = load %struct.soc_camera_subdev_desc*, %struct.soc_camera_subdev_desc** %7, align 8
  %16 = icmp ne %struct.soc_camera_subdev_desc* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %2
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 0
  %20 = call i32 @dev_err(i32* %19, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %150

23:                                               ; preds = %2
  %24 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %25 = load i32, i32* @I2C_FUNC_SMBUS_WORD_DATA, align 4
  %26 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %23
  %29 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %30 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %29, i32 0, i32 0
  %31 = call i32 @dev_warn(i32* %30, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %150

34:                                               ; preds = %23
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %35, i32 0, i32 0
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.mt9t031* @devm_kzalloc(i32* %36, i32 64, i32 %37)
  store %struct.mt9t031* %38, %struct.mt9t031** %6, align 8
  %39 = load %struct.mt9t031*, %struct.mt9t031** %6, align 8
  %40 = icmp ne %struct.mt9t031* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %150

44:                                               ; preds = %34
  %45 = load %struct.mt9t031*, %struct.mt9t031** %6, align 8
  %46 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %45, i32 0, i32 7
  %47 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %48 = call i32 @v4l2_i2c_subdev_init(%struct.TYPE_8__* %46, %struct.i2c_client* %47, i32* @mt9t031_subdev_ops)
  %49 = load %struct.mt9t031*, %struct.mt9t031** %6, align 8
  %50 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %49, i32 0, i32 2
  %51 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_9__* %50, i32 5)
  %52 = load %struct.mt9t031*, %struct.mt9t031** %6, align 8
  %53 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %52, i32 0, i32 2
  %54 = load i32, i32* @V4L2_CID_VFLIP, align 4
  %55 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_9__* %53, i32* @mt9t031_ctrl_ops, i32 %54, i32 0, i32 1, i32 1, i32 0)
  %56 = load %struct.mt9t031*, %struct.mt9t031** %6, align 8
  %57 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %56, i32 0, i32 2
  %58 = load i32, i32* @V4L2_CID_HFLIP, align 4
  %59 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_9__* %57, i32* @mt9t031_ctrl_ops, i32 %58, i32 0, i32 1, i32 1, i32 0)
  %60 = load %struct.mt9t031*, %struct.mt9t031** %6, align 8
  %61 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %60, i32 0, i32 2
  %62 = load i32, i32* @V4L2_CID_GAIN, align 4
  %63 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_9__* %61, i32* @mt9t031_ctrl_ops, i32 %62, i32 0, i32 127, i32 1, i32 64)
  %64 = load %struct.mt9t031*, %struct.mt9t031** %6, align 8
  %65 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %64, i32 0, i32 2
  %66 = load i32, i32* @V4L2_CID_EXPOSURE_AUTO, align 4
  %67 = load i32, i32* @V4L2_EXPOSURE_AUTO, align 4
  %68 = call i32 @v4l2_ctrl_new_std_menu(%struct.TYPE_9__* %65, i32* @mt9t031_ctrl_ops, i32 %66, i32 1, i32 0, i32 %67)
  %69 = load %struct.mt9t031*, %struct.mt9t031** %6, align 8
  %70 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %69, i32 0, i32 6
  store i32 %68, i32* %70, align 8
  %71 = load %struct.mt9t031*, %struct.mt9t031** %6, align 8
  %72 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %71, i32 0, i32 2
  %73 = load i32, i32* @V4L2_CID_EXPOSURE, align 4
  %74 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_9__* %72, i32* @mt9t031_ctrl_ops, i32 %73, i32 1, i32 255, i32 1, i32 255)
  %75 = load %struct.mt9t031*, %struct.mt9t031** %6, align 8
  %76 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %75, i32 0, i32 8
  store i32 %74, i32* %76, align 8
  %77 = load %struct.mt9t031*, %struct.mt9t031** %6, align 8
  %78 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %77, i32 0, i32 2
  %79 = load %struct.mt9t031*, %struct.mt9t031** %6, align 8
  %80 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %79, i32 0, i32 7
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  store %struct.TYPE_9__* %78, %struct.TYPE_9__** %81, align 8
  %82 = load %struct.mt9t031*, %struct.mt9t031** %6, align 8
  %83 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %44
  %88 = load %struct.mt9t031*, %struct.mt9t031** %6, align 8
  %89 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  store i32 %91, i32* %3, align 4
  br label %150

92:                                               ; preds = %44
  %93 = load %struct.mt9t031*, %struct.mt9t031** %6, align 8
  %94 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %93, i32 0, i32 6
  %95 = load i32, i32* @V4L2_EXPOSURE_MANUAL, align 4
  %96 = call i32 @v4l2_ctrl_auto_cluster(i32 2, i32* %94, i32 %95, i32 1)
  %97 = load %struct.mt9t031*, %struct.mt9t031** %6, align 8
  %98 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %97, i32 0, i32 5
  store i64 0, i64* %98, align 8
  %99 = load i32, i32* @MT9T031_COLUMN_SKIP, align 4
  %100 = load %struct.mt9t031*, %struct.mt9t031** %6, align 8
  %101 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %100, i32 0, i32 4
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 3
  store i32 %99, i32* %102, align 4
  %103 = load i32, i32* @MT9T031_ROW_SKIP, align 4
  %104 = load %struct.mt9t031*, %struct.mt9t031** %6, align 8
  %105 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %104, i32 0, i32 4
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 2
  store i32 %103, i32* %106, align 8
  %107 = load i32, i32* @MT9T031_MAX_WIDTH, align 4
  %108 = load %struct.mt9t031*, %struct.mt9t031** %6, align 8
  %109 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %108, i32 0, i32 4
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  store i32 %107, i32* %110, align 4
  %111 = load i32, i32* @MT9T031_MAX_HEIGHT, align 4
  %112 = load %struct.mt9t031*, %struct.mt9t031** %6, align 8
  %113 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %112, i32 0, i32 4
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  store i32 %111, i32* %114, align 8
  %115 = load %struct.mt9t031*, %struct.mt9t031** %6, align 8
  %116 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %115, i32 0, i32 0
  store i32 1, i32* %116, align 8
  %117 = load %struct.mt9t031*, %struct.mt9t031** %6, align 8
  %118 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %117, i32 0, i32 1
  store i32 1, i32* %118, align 4
  %119 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %120 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %119, i32 0, i32 0
  %121 = call i32 @v4l2_clk_get(i32* %120, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %122 = load %struct.mt9t031*, %struct.mt9t031** %6, align 8
  %123 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %122, i32 0, i32 3
  store i32 %121, i32* %123, align 4
  %124 = load %struct.mt9t031*, %struct.mt9t031** %6, align 8
  %125 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = call i64 @IS_ERR(i32 %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %92
  %130 = load %struct.mt9t031*, %struct.mt9t031** %6, align 8
  %131 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @PTR_ERR(i32 %132)
  store i32 %133, i32* %9, align 4
  br label %144

134:                                              ; preds = %92
  %135 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %136 = call i32 @mt9t031_video_probe(%struct.i2c_client* %135)
  store i32 %136, i32* %9, align 4
  %137 = load i32, i32* %9, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %148

139:                                              ; preds = %134
  %140 = load %struct.mt9t031*, %struct.mt9t031** %6, align 8
  %141 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @v4l2_clk_put(i32 %142)
  br label %144

144:                                              ; preds = %139, %129
  %145 = load %struct.mt9t031*, %struct.mt9t031** %6, align 8
  %146 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %145, i32 0, i32 2
  %147 = call i32 @v4l2_ctrl_handler_free(%struct.TYPE_9__* %146)
  br label %148

148:                                              ; preds = %144, %134
  %149 = load i32, i32* %9, align 4
  store i32 %149, i32* %3, align 4
  br label %150

150:                                              ; preds = %148, %87, %41, %28, %17
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local %struct.soc_camera_subdev_desc* @soc_camera_i2c_to_desc(%struct.i2c_client*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local %struct.mt9t031* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.TYPE_8__*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std(%struct.TYPE_9__*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std_menu(%struct.TYPE_9__*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_auto_cluster(i32, i32*, i32, i32) #1

declare dso_local i32 @v4l2_clk_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @mt9t031_video_probe(%struct.i2c_client*) #1

declare dso_local i32 @v4l2_clk_put(i32) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
