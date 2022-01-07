; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_imx074.c_imx074_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_imx074.c_imx074_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.imx074 = type { i32, i32, i32* }
%struct.soc_camera_subdev_desc = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"IMX074: missing platform data!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"I2C-Adapter doesn't support I2C_FUNC_SMBUS_BYTE\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@imx074_subdev_ops = common dso_local global i32 0, align 4
@imx074_colour_fmts = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"mclk\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Error %ld getting clock\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @imx074_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx074_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.imx074*, align 8
  %7 = alloca %struct.i2c_adapter*, align 8
  %8 = alloca %struct.soc_camera_subdev_desc*, align 8
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %11 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %10, i32 0, i32 1
  %12 = load %struct.i2c_adapter*, %struct.i2c_adapter** %11, align 8
  store %struct.i2c_adapter* %12, %struct.i2c_adapter** %7, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %14 = call %struct.soc_camera_subdev_desc* @soc_camera_i2c_to_desc(%struct.i2c_client* %13)
  store %struct.soc_camera_subdev_desc* %14, %struct.soc_camera_subdev_desc** %8, align 8
  %15 = load %struct.soc_camera_subdev_desc*, %struct.soc_camera_subdev_desc** %8, align 8
  %16 = icmp ne %struct.soc_camera_subdev_desc* %15, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %2
  %18 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 0
  %20 = call i32 @dev_err(i32* %19, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %102

23:                                               ; preds = %2
  %24 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %25 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %26 = call i32 @i2c_check_functionality(%struct.i2c_adapter* %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %23
  %29 = load %struct.i2c_adapter*, %struct.i2c_adapter** %7, align 8
  %30 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %29, i32 0, i32 0
  %31 = call i32 @dev_warn(i32* %30, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %102

34:                                               ; preds = %23
  %35 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %36 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %35, i32 0, i32 0
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.imx074* @devm_kzalloc(i32* %36, i32 16, i32 %37)
  store %struct.imx074* %38, %struct.imx074** %6, align 8
  %39 = load %struct.imx074*, %struct.imx074** %6, align 8
  %40 = icmp ne %struct.imx074* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %102

44:                                               ; preds = %34
  %45 = load %struct.imx074*, %struct.imx074** %6, align 8
  %46 = getelementptr inbounds %struct.imx074, %struct.imx074* %45, i32 0, i32 1
  %47 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %48 = call i32 @v4l2_i2c_subdev_init(i32* %46, %struct.i2c_client* %47, i32* @imx074_subdev_ops)
  %49 = load i32*, i32** @imx074_colour_fmts, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load %struct.imx074*, %struct.imx074** %6, align 8
  %52 = getelementptr inbounds %struct.imx074, %struct.imx074* %51, i32 0, i32 2
  store i32* %50, i32** %52, align 8
  %53 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %54 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %53, i32 0, i32 0
  %55 = call i32 @v4l2_clk_get(i32* %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %56 = load %struct.imx074*, %struct.imx074** %6, align 8
  %57 = getelementptr inbounds %struct.imx074, %struct.imx074* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.imx074*, %struct.imx074** %6, align 8
  %59 = getelementptr inbounds %struct.imx074, %struct.imx074* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i64 @IS_ERR(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %44
  %64 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %65 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %64, i32 0, i32 0
  %66 = load %struct.imx074*, %struct.imx074** %6, align 8
  %67 = getelementptr inbounds %struct.imx074, %struct.imx074* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @PTR_ERR(i32 %68)
  %70 = call i32 @dev_info(i32* %65, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* @EPROBE_DEFER, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %102

73:                                               ; preds = %44
  %74 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %75 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %74, i32 0, i32 0
  %76 = load %struct.soc_camera_subdev_desc*, %struct.soc_camera_subdev_desc** %8, align 8
  %77 = call i32 @soc_camera_power_init(i32* %75, %struct.soc_camera_subdev_desc* %76)
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  br label %95

81:                                               ; preds = %73
  %82 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %83 = call i32 @imx074_video_probe(%struct.i2c_client* %82)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  br label %96

87:                                               ; preds = %81
  %88 = load %struct.imx074*, %struct.imx074** %6, align 8
  %89 = getelementptr inbounds %struct.imx074, %struct.imx074* %88, i32 0, i32 1
  %90 = call i32 @v4l2_async_register_subdev(i32* %89)
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %87
  store i32 0, i32* %3, align 4
  br label %102

94:                                               ; preds = %87
  br label %95

95:                                               ; preds = %94, %80
  br label %96

96:                                               ; preds = %95, %86
  %97 = load %struct.imx074*, %struct.imx074** %6, align 8
  %98 = getelementptr inbounds %struct.imx074, %struct.imx074* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @v4l2_clk_put(i32 %99)
  %101 = load i32, i32* %9, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %96, %93, %63, %41, %28, %17
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local %struct.soc_camera_subdev_desc* @soc_camera_i2c_to_desc(%struct.i2c_client*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @i2c_check_functionality(%struct.i2c_adapter*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local %struct.imx074* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @v4l2_i2c_subdev_init(i32*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @v4l2_clk_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @soc_camera_power_init(i32*, %struct.soc_camera_subdev_desc*) #1

declare dso_local i32 @imx074_video_probe(%struct.i2c_client*) #1

declare dso_local i32 @v4l2_async_register_subdev(i32*) #1

declare dso_local i32 @v4l2_clk_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
