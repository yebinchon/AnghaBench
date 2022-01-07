; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_ov5642.c_ov5642_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_ov5642.c_ov5642_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.i2c_device_id = type { i32 }
%struct.ov5642 = type { i32, i32, i32, %struct.TYPE_2__, i32*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.soc_camera_subdev_desc = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"OV5642: missing platform data!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ov5642_subdev_ops = common dso_local global i32 0, align 4
@ov5642_colour_fmts = common dso_local global i32* null, align 8
@OV5642_DEFAULT_WIDTH = common dso_local global i32 0, align 4
@OV5642_DEFAULT_HEIGHT = common dso_local global i32 0, align 4
@OV5642_MAX_WIDTH = common dso_local global i32 0, align 4
@OV5642_MAX_HEIGHT = common dso_local global i32 0, align 4
@BLANKING_EXTRA_WIDTH = common dso_local global i32 0, align 4
@BLANKING_MIN_HEIGHT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"mclk\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @ov5642_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov5642_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.ov5642*, align 8
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
  %16 = call i32 @dev_err(i32* %15, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %95

19:                                               ; preds = %2
  %20 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %21 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %20, i32 0, i32 0
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.ov5642* @devm_kzalloc(i32* %21, i32 48, i32 %22)
  store %struct.ov5642* %23, %struct.ov5642** %6, align 8
  %24 = load %struct.ov5642*, %struct.ov5642** %6, align 8
  %25 = icmp ne %struct.ov5642* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %19
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %95

29:                                               ; preds = %19
  %30 = load %struct.ov5642*, %struct.ov5642** %6, align 8
  %31 = getelementptr inbounds %struct.ov5642, %struct.ov5642* %30, i32 0, i32 5
  %32 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %33 = call i32 @v4l2_i2c_subdev_init(i32* %31, %struct.i2c_client* %32, i32* @ov5642_subdev_ops)
  %34 = load i32*, i32** @ov5642_colour_fmts, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load %struct.ov5642*, %struct.ov5642** %6, align 8
  %37 = getelementptr inbounds %struct.ov5642, %struct.ov5642* %36, i32 0, i32 4
  store i32* %35, i32** %37, align 8
  %38 = load i32, i32* @OV5642_DEFAULT_WIDTH, align 4
  %39 = load %struct.ov5642*, %struct.ov5642** %6, align 8
  %40 = getelementptr inbounds %struct.ov5642, %struct.ov5642* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* @OV5642_DEFAULT_HEIGHT, align 4
  %43 = load %struct.ov5642*, %struct.ov5642** %6, align 8
  %44 = getelementptr inbounds %struct.ov5642, %struct.ov5642* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* @OV5642_MAX_WIDTH, align 4
  %47 = load i32, i32* @OV5642_DEFAULT_WIDTH, align 4
  %48 = sub nsw i32 %46, %47
  %49 = sdiv i32 %48, 2
  %50 = load %struct.ov5642*, %struct.ov5642** %6, align 8
  %51 = getelementptr inbounds %struct.ov5642, %struct.ov5642* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  store i32 %49, i32* %52, align 4
  %53 = load i32, i32* @OV5642_MAX_HEIGHT, align 4
  %54 = load i32, i32* @OV5642_DEFAULT_HEIGHT, align 4
  %55 = sub nsw i32 %53, %54
  %56 = sdiv i32 %55, 2
  %57 = load %struct.ov5642*, %struct.ov5642** %6, align 8
  %58 = getelementptr inbounds %struct.ov5642, %struct.ov5642* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 3
  store i32 %56, i32* %59, align 4
  %60 = load i32, i32* @OV5642_DEFAULT_WIDTH, align 4
  %61 = load i32, i32* @BLANKING_EXTRA_WIDTH, align 4
  %62 = add nsw i32 %60, %61
  %63 = load %struct.ov5642*, %struct.ov5642** %6, align 8
  %64 = getelementptr inbounds %struct.ov5642, %struct.ov5642* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* @BLANKING_MIN_HEIGHT, align 4
  %66 = load %struct.ov5642*, %struct.ov5642** %6, align 8
  %67 = getelementptr inbounds %struct.ov5642, %struct.ov5642* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  %68 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %69 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %68, i32 0, i32 0
  %70 = call i32 @v4l2_clk_get(i32* %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %71 = load %struct.ov5642*, %struct.ov5642** %6, align 8
  %72 = getelementptr inbounds %struct.ov5642, %struct.ov5642* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.ov5642*, %struct.ov5642** %6, align 8
  %74 = getelementptr inbounds %struct.ov5642, %struct.ov5642* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @IS_ERR(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %29
  %79 = load %struct.ov5642*, %struct.ov5642** %6, align 8
  %80 = getelementptr inbounds %struct.ov5642, %struct.ov5642* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @PTR_ERR(i32 %81)
  store i32 %82, i32* %3, align 4
  br label %95

83:                                               ; preds = %29
  %84 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %85 = call i32 @ov5642_video_probe(%struct.i2c_client* %84)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load %struct.ov5642*, %struct.ov5642** %6, align 8
  %90 = getelementptr inbounds %struct.ov5642, %struct.ov5642* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @v4l2_clk_put(i32 %91)
  br label %93

93:                                               ; preds = %88, %83
  %94 = load i32, i32* %8, align 4
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %93, %78, %26, %13
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local %struct.soc_camera_subdev_desc* @soc_camera_i2c_to_desc(%struct.i2c_client*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.ov5642* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @v4l2_i2c_subdev_init(i32*, %struct.i2c_client*, i32*) #1

declare dso_local i32 @v4l2_clk_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @ov5642_video_probe(%struct.i2c_client*) #1

declare dso_local i32 @v4l2_clk_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
