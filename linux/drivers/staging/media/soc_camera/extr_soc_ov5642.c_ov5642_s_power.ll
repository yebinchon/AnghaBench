; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_ov5642.c_ov5642_s_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_ov5642.c_ov5642_s_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.i2c_client = type { i32 }
%struct.soc_camera_subdev_desc = type { i32 }
%struct.ov5642 = type { i32 }

@ov5642_default_regs_init = common dso_local global i32 0, align 4
@ov5642_default_regs_finalise = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @ov5642_s_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov5642_s_power(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.soc_camera_subdev_desc*, align 8
  %8 = alloca %struct.ov5642*, align 8
  %9 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %11 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %10)
  store %struct.i2c_client* %11, %struct.i2c_client** %6, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %13 = call %struct.soc_camera_subdev_desc* @soc_camera_i2c_to_desc(%struct.i2c_client* %12)
  store %struct.soc_camera_subdev_desc* %13, %struct.soc_camera_subdev_desc** %7, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %15 = call %struct.ov5642* @to_ov5642(%struct.i2c_client* %14)
  store %struct.ov5642* %15, %struct.ov5642** %8, align 8
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 0
  %21 = load %struct.soc_camera_subdev_desc*, %struct.soc_camera_subdev_desc** %7, align 8
  %22 = load %struct.ov5642*, %struct.ov5642** %8, align 8
  %23 = getelementptr inbounds %struct.ov5642, %struct.ov5642* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @soc_camera_power_off(i32* %20, %struct.soc_camera_subdev_desc* %21, i32 %24)
  store i32 %25, i32* %3, align 4
  br label %56

26:                                               ; preds = %2
  %27 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %28 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %27, i32 0, i32 0
  %29 = load %struct.soc_camera_subdev_desc*, %struct.soc_camera_subdev_desc** %7, align 8
  %30 = load %struct.ov5642*, %struct.ov5642** %8, align 8
  %31 = getelementptr inbounds %struct.ov5642, %struct.ov5642* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @soc_camera_power_on(i32* %28, %struct.soc_camera_subdev_desc* %29, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %26
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %3, align 4
  br label %56

38:                                               ; preds = %26
  %39 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %40 = load i32, i32* @ov5642_default_regs_init, align 4
  %41 = call i32 @ov5642_write_array(%struct.i2c_client* %39, i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %38
  %45 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %46 = call i32 @ov5642_set_resolution(%struct.v4l2_subdev* %45)
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %44, %38
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %47
  %51 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %52 = load i32, i32* @ov5642_default_regs_finalise, align 4
  %53 = call i32 @ov5642_write_array(%struct.i2c_client* %51, i32 %52)
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %50, %47
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %54, %36, %18
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.soc_camera_subdev_desc* @soc_camera_i2c_to_desc(%struct.i2c_client*) #1

declare dso_local %struct.ov5642* @to_ov5642(%struct.i2c_client*) #1

declare dso_local i32 @soc_camera_power_off(i32*, %struct.soc_camera_subdev_desc*, i32) #1

declare dso_local i32 @soc_camera_power_on(i32*, %struct.soc_camera_subdev_desc*, i32) #1

declare dso_local i32 @ov5642_write_array(%struct.i2c_client*, i32) #1

declare dso_local i32 @ov5642_set_resolution(%struct.v4l2_subdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
