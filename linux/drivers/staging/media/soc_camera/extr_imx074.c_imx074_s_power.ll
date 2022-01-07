; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_imx074.c_imx074_s_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_imx074.c_imx074_s_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.i2c_client = type { i32 }
%struct.soc_camera_subdev_desc = type { i32 }
%struct.imx074 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @imx074_s_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx074_s_power(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2c_client*, align 8
  %6 = alloca %struct.soc_camera_subdev_desc*, align 8
  %7 = alloca %struct.imx074*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %9 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %8)
  store %struct.i2c_client* %9, %struct.i2c_client** %5, align 8
  %10 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %11 = call %struct.soc_camera_subdev_desc* @soc_camera_i2c_to_desc(%struct.i2c_client* %10)
  store %struct.soc_camera_subdev_desc* %11, %struct.soc_camera_subdev_desc** %6, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %13 = call %struct.imx074* @to_imx074(%struct.i2c_client* %12)
  store %struct.imx074* %13, %struct.imx074** %7, align 8
  %14 = load %struct.i2c_client*, %struct.i2c_client** %5, align 8
  %15 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %14, i32 0, i32 0
  %16 = load %struct.soc_camera_subdev_desc*, %struct.soc_camera_subdev_desc** %6, align 8
  %17 = load %struct.imx074*, %struct.imx074** %7, align 8
  %18 = getelementptr inbounds %struct.imx074, %struct.imx074* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @soc_camera_set_power(i32* %15, %struct.soc_camera_subdev_desc* %16, i32 %19, i32 %20)
  ret i32 %21
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.soc_camera_subdev_desc* @soc_camera_i2c_to_desc(%struct.i2c_client*) #1

declare dso_local %struct.imx074* @to_imx074(%struct.i2c_client*) #1

declare dso_local i32 @soc_camera_set_power(i32*, %struct.soc_camera_subdev_desc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
