; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_ov5642.c_ov5642_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_ov5642.c_ov5642_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.soc_camera_subdev_desc = type { i32 (%struct.soc_camera_subdev_desc*)* }
%struct.ov5642 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @ov5642_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov5642_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.soc_camera_subdev_desc*, align 8
  %4 = alloca %struct.ov5642*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %5 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %6 = call %struct.soc_camera_subdev_desc* @soc_camera_i2c_to_desc(%struct.i2c_client* %5)
  store %struct.soc_camera_subdev_desc* %6, %struct.soc_camera_subdev_desc** %3, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %8 = call %struct.ov5642* @to_ov5642(%struct.i2c_client* %7)
  store %struct.ov5642* %8, %struct.ov5642** %4, align 8
  %9 = load %struct.ov5642*, %struct.ov5642** %4, align 8
  %10 = getelementptr inbounds %struct.ov5642, %struct.ov5642* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @v4l2_clk_put(i32 %11)
  %13 = load %struct.soc_camera_subdev_desc*, %struct.soc_camera_subdev_desc** %3, align 8
  %14 = getelementptr inbounds %struct.soc_camera_subdev_desc, %struct.soc_camera_subdev_desc* %13, i32 0, i32 0
  %15 = load i32 (%struct.soc_camera_subdev_desc*)*, i32 (%struct.soc_camera_subdev_desc*)** %14, align 8
  %16 = icmp ne i32 (%struct.soc_camera_subdev_desc*)* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.soc_camera_subdev_desc*, %struct.soc_camera_subdev_desc** %3, align 8
  %19 = getelementptr inbounds %struct.soc_camera_subdev_desc, %struct.soc_camera_subdev_desc* %18, i32 0, i32 0
  %20 = load i32 (%struct.soc_camera_subdev_desc*)*, i32 (%struct.soc_camera_subdev_desc*)** %19, align 8
  %21 = load %struct.soc_camera_subdev_desc*, %struct.soc_camera_subdev_desc** %3, align 8
  %22 = call i32 %20(%struct.soc_camera_subdev_desc* %21)
  br label %23

23:                                               ; preds = %17, %1
  ret i32 0
}

declare dso_local %struct.soc_camera_subdev_desc* @soc_camera_i2c_to_desc(%struct.i2c_client*) #1

declare dso_local %struct.ov5642* @to_ov5642(%struct.i2c_client*) #1

declare dso_local i32 @v4l2_clk_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
