; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_mt9v022.c_mt9v022_g_mbus_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_mt9v022.c_mt9v022_g_mbus_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_mbus_config = type { i32, i32 }
%struct.i2c_client = type { i32 }
%struct.soc_camera_subdev_desc = type { i32 }

@V4L2_MBUS_MASTER = common dso_local global i32 0, align 4
@V4L2_MBUS_SLAVE = common dso_local global i32 0, align 4
@V4L2_MBUS_PCLK_SAMPLE_RISING = common dso_local global i32 0, align 4
@V4L2_MBUS_PCLK_SAMPLE_FALLING = common dso_local global i32 0, align 4
@V4L2_MBUS_HSYNC_ACTIVE_HIGH = common dso_local global i32 0, align 4
@V4L2_MBUS_HSYNC_ACTIVE_LOW = common dso_local global i32 0, align 4
@V4L2_MBUS_VSYNC_ACTIVE_HIGH = common dso_local global i32 0, align 4
@V4L2_MBUS_VSYNC_ACTIVE_LOW = common dso_local global i32 0, align 4
@V4L2_MBUS_DATA_ACTIVE_HIGH = common dso_local global i32 0, align 4
@V4L2_MBUS_PARALLEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_mbus_config*)* @mt9v022_g_mbus_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9v022_g_mbus_config(%struct.v4l2_subdev* %0, %struct.v4l2_mbus_config* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.v4l2_mbus_config*, align 8
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.soc_camera_subdev_desc*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.v4l2_mbus_config* %1, %struct.v4l2_mbus_config** %4, align 8
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %8 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %7)
  store %struct.i2c_client* %8, %struct.i2c_client** %5, align 8
  %9 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %10 = call %struct.soc_camera_subdev_desc* @soc_camera_i2c_to_desc(%struct.i2c_client* %9)
  store %struct.soc_camera_subdev_desc* %10, %struct.soc_camera_subdev_desc** %6, align 8
  %11 = load i32, i32* @V4L2_MBUS_MASTER, align 4
  %12 = load i32, i32* @V4L2_MBUS_SLAVE, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @V4L2_MBUS_PCLK_SAMPLE_RISING, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @V4L2_MBUS_PCLK_SAMPLE_FALLING, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @V4L2_MBUS_HSYNC_ACTIVE_HIGH, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @V4L2_MBUS_HSYNC_ACTIVE_LOW, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @V4L2_MBUS_VSYNC_ACTIVE_HIGH, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @V4L2_MBUS_VSYNC_ACTIVE_LOW, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @V4L2_MBUS_DATA_ACTIVE_HIGH, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.v4l2_mbus_config*, %struct.v4l2_mbus_config** %4, align 8
  %29 = getelementptr inbounds %struct.v4l2_mbus_config, %struct.v4l2_mbus_config* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @V4L2_MBUS_PARALLEL, align 4
  %31 = load %struct.v4l2_mbus_config*, %struct.v4l2_mbus_config** %4, align 8
  %32 = getelementptr inbounds %struct.v4l2_mbus_config, %struct.v4l2_mbus_config* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.soc_camera_subdev_desc*, %struct.soc_camera_subdev_desc** %6, align 8
  %34 = load %struct.v4l2_mbus_config*, %struct.v4l2_mbus_config** %4, align 8
  %35 = call i32 @soc_camera_apply_board_flags(%struct.soc_camera_subdev_desc* %33, %struct.v4l2_mbus_config* %34)
  %36 = load %struct.v4l2_mbus_config*, %struct.v4l2_mbus_config** %4, align 8
  %37 = getelementptr inbounds %struct.v4l2_mbus_config, %struct.v4l2_mbus_config* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  ret i32 0
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.soc_camera_subdev_desc* @soc_camera_i2c_to_desc(%struct.i2c_client*) #1

declare dso_local i32 @soc_camera_apply_board_flags(%struct.soc_camera_subdev_desc*, %struct.v4l2_mbus_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
