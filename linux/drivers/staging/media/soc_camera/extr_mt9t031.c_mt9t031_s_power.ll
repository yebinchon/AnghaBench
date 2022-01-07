; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_mt9t031.c_mt9t031_s_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_mt9t031.c_mt9t031_s_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.i2c_client = type { i32 }
%struct.soc_camera_subdev_desc = type { i32 }
%struct.video_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.mt9t031 = type { i32 }

@mt9t031_dev_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @mt9t031_s_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9t031_s_power(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.soc_camera_subdev_desc*, align 8
  %8 = alloca %struct.video_device*, align 8
  %9 = alloca %struct.mt9t031*, align 8
  %10 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %12 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %11)
  store %struct.i2c_client* %12, %struct.i2c_client** %6, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %14 = call %struct.soc_camera_subdev_desc* @soc_camera_i2c_to_desc(%struct.i2c_client* %13)
  store %struct.soc_camera_subdev_desc* %14, %struct.soc_camera_subdev_desc** %7, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %16 = call %struct.video_device* @soc_camera_i2c_to_vdev(%struct.i2c_client* %15)
  store %struct.video_device* %16, %struct.video_device** %8, align 8
  %17 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %18 = call %struct.mt9t031* @to_mt9t031(%struct.i2c_client* %17)
  store %struct.mt9t031* %18, %struct.mt9t031** %9, align 8
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %41

21:                                               ; preds = %2
  %22 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %23 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %22, i32 0, i32 0
  %24 = load %struct.soc_camera_subdev_desc*, %struct.soc_camera_subdev_desc** %7, align 8
  %25 = load %struct.mt9t031*, %struct.mt9t031** %9, align 8
  %26 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @soc_camera_power_on(i32* %23, %struct.soc_camera_subdev_desc* %24, i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %3, align 4
  br label %57

33:                                               ; preds = %21
  %34 = load %struct.video_device*, %struct.video_device** %8, align 8
  %35 = icmp ne %struct.video_device* %34, null
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load %struct.video_device*, %struct.video_device** %8, align 8
  %38 = getelementptr inbounds %struct.video_device, %struct.video_device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32* @mt9t031_dev_type, i32** %39, align 8
  br label %40

40:                                               ; preds = %36, %33
  br label %56

41:                                               ; preds = %2
  %42 = load %struct.video_device*, %struct.video_device** %8, align 8
  %43 = icmp ne %struct.video_device* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load %struct.video_device*, %struct.video_device** %8, align 8
  %46 = getelementptr inbounds %struct.video_device, %struct.video_device* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32* null, i32** %47, align 8
  br label %48

48:                                               ; preds = %44, %41
  %49 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %50 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %49, i32 0, i32 0
  %51 = load %struct.soc_camera_subdev_desc*, %struct.soc_camera_subdev_desc** %7, align 8
  %52 = load %struct.mt9t031*, %struct.mt9t031** %9, align 8
  %53 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @soc_camera_power_off(i32* %50, %struct.soc_camera_subdev_desc* %51, i32 %54)
  br label %56

56:                                               ; preds = %48, %40
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %31
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.soc_camera_subdev_desc* @soc_camera_i2c_to_desc(%struct.i2c_client*) #1

declare dso_local %struct.video_device* @soc_camera_i2c_to_vdev(%struct.i2c_client*) #1

declare dso_local %struct.mt9t031* @to_mt9t031(%struct.i2c_client*) #1

declare dso_local i32 @soc_camera_power_on(i32*, %struct.soc_camera_subdev_desc*, i32) #1

declare dso_local i32 @soc_camera_power_off(i32*, %struct.soc_camera_subdev_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
