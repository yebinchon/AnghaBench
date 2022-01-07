; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_ov9740.c_ov9740_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_ov9740.c_ov9740_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.ov9740_priv = type { %struct.TYPE_6__, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.soc_camera_subdev_desc = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"Missing platform_data for driver\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ov9740_subdev_ops = common dso_local global i32 0, align 4
@ov9740_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_VFLIP = common dso_local global i32 0, align 4
@V4L2_CID_HFLIP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"mclk\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ov9740_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov9740_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.ov9740_priv*, align 8
  %7 = alloca %struct.soc_camera_subdev_desc*, align 8
  %8 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %10 = call %struct.soc_camera_subdev_desc* @soc_camera_i2c_to_desc(%struct.i2c_client* %9)
  store %struct.soc_camera_subdev_desc* %10, %struct.soc_camera_subdev_desc** %7, align 8
  %11 = load %struct.soc_camera_subdev_desc*, %struct.soc_camera_subdev_desc** %7, align 8
  %12 = icmp ne %struct.soc_camera_subdev_desc* %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 0
  %16 = call i32 @dev_err(i32* %15, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %92

19:                                               ; preds = %2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 0
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.ov9740_priv* @devm_kzalloc(i32* %21, i32 16, i32 %22)
  store %struct.ov9740_priv* %23, %struct.ov9740_priv** %6, align 8
  %24 = load %struct.ov9740_priv*, %struct.ov9740_priv** %6, align 8
  %25 = icmp ne %struct.ov9740_priv* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %92

29:                                               ; preds = %19
  %30 = load %struct.ov9740_priv*, %struct.ov9740_priv** %6, align 8
  %31 = getelementptr inbounds %struct.ov9740_priv, %struct.ov9740_priv* %30, i32 0, i32 2
  %32 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %33 = call i32 @v4l2_i2c_subdev_init(%struct.TYPE_5__* %31, %struct.i2c_client* %32, i32* @ov9740_subdev_ops)
  %34 = load %struct.ov9740_priv*, %struct.ov9740_priv** %6, align 8
  %35 = getelementptr inbounds %struct.ov9740_priv, %struct.ov9740_priv* %34, i32 0, i32 0
  %36 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_6__* %35, i32 13)
  %37 = load %struct.ov9740_priv*, %struct.ov9740_priv** %6, align 8
  %38 = getelementptr inbounds %struct.ov9740_priv, %struct.ov9740_priv* %37, i32 0, i32 0
  %39 = load i32, i32* @V4L2_CID_VFLIP, align 4
  %40 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_6__* %38, i32* @ov9740_ctrl_ops, i32 %39, i32 0, i32 1, i32 1, i32 0)
  %41 = load %struct.ov9740_priv*, %struct.ov9740_priv** %6, align 8
  %42 = getelementptr inbounds %struct.ov9740_priv, %struct.ov9740_priv* %41, i32 0, i32 0
  %43 = load i32, i32* @V4L2_CID_HFLIP, align 4
  %44 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_6__* %42, i32* @ov9740_ctrl_ops, i32 %43, i32 0, i32 1, i32 1, i32 0)
  %45 = load %struct.ov9740_priv*, %struct.ov9740_priv** %6, align 8
  %46 = getelementptr inbounds %struct.ov9740_priv, %struct.ov9740_priv* %45, i32 0, i32 0
  %47 = load %struct.ov9740_priv*, %struct.ov9740_priv** %6, align 8
  %48 = getelementptr inbounds %struct.ov9740_priv, %struct.ov9740_priv* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  store %struct.TYPE_6__* %46, %struct.TYPE_6__** %49, align 8
  %50 = load %struct.ov9740_priv*, %struct.ov9740_priv** %6, align 8
  %51 = getelementptr inbounds %struct.ov9740_priv, %struct.ov9740_priv* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %29
  %56 = load %struct.ov9740_priv*, %struct.ov9740_priv** %6, align 8
  %57 = getelementptr inbounds %struct.ov9740_priv, %struct.ov9740_priv* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %3, align 4
  br label %92

60:                                               ; preds = %29
  %61 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %62 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %61, i32 0, i32 0
  %63 = call i32 @v4l2_clk_get(i32* %62, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %64 = load %struct.ov9740_priv*, %struct.ov9740_priv** %6, align 8
  %65 = getelementptr inbounds %struct.ov9740_priv, %struct.ov9740_priv* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.ov9740_priv*, %struct.ov9740_priv** %6, align 8
  %67 = getelementptr inbounds %struct.ov9740_priv, %struct.ov9740_priv* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @IS_ERR(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %60
  %72 = load %struct.ov9740_priv*, %struct.ov9740_priv** %6, align 8
  %73 = getelementptr inbounds %struct.ov9740_priv, %struct.ov9740_priv* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @PTR_ERR(i32 %74)
  store i32 %75, i32* %8, align 4
  br label %86

76:                                               ; preds = %60
  %77 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %78 = call i32 @ov9740_video_probe(%struct.i2c_client* %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %8, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %76
  %82 = load %struct.ov9740_priv*, %struct.ov9740_priv** %6, align 8
  %83 = getelementptr inbounds %struct.ov9740_priv, %struct.ov9740_priv* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @v4l2_clk_put(i32 %84)
  br label %86

86:                                               ; preds = %81, %71
  %87 = load %struct.ov9740_priv*, %struct.ov9740_priv** %6, align 8
  %88 = getelementptr inbounds %struct.ov9740_priv, %struct.ov9740_priv* %87, i32 0, i32 0
  %89 = call i32 @v4l2_ctrl_handler_free(%struct.TYPE_6__* %88)
  br label %90

90:                                               ; preds = %86, %76
  %91 = load i32, i32* %8, align 4
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %90, %55, %26, %13
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local %struct.soc_camera_subdev_desc* @soc_camera_i2c_to_desc(%struct.i2c_client*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.ov9740_priv* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.TYPE_5__*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std(%struct.TYPE_6__*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_clk_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @ov9740_video_probe(%struct.i2c_client*) #1

declare dso_local i32 @v4l2_clk_put(i32) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
