; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_ov9740.c_ov9740_s_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_ov9740.c_ov9740_s_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.i2c_client = type { i32 }
%struct.soc_camera_subdev_desc = type { i32 }
%struct.ov9740_priv = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @ov9740_s_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov9740_s_power(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.soc_camera_subdev_desc*, align 8
  %8 = alloca %struct.ov9740_priv*, align 8
  %9 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %11 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %10)
  store %struct.i2c_client* %11, %struct.i2c_client** %6, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %13 = call %struct.soc_camera_subdev_desc* @soc_camera_i2c_to_desc(%struct.i2c_client* %12)
  store %struct.soc_camera_subdev_desc* %13, %struct.soc_camera_subdev_desc** %7, align 8
  %14 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %15 = call %struct.ov9740_priv* @to_ov9740(%struct.v4l2_subdev* %14)
  store %struct.ov9740_priv* %15, %struct.ov9740_priv** %8, align 8
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %43

18:                                               ; preds = %2
  %19 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %20 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %19, i32 0, i32 0
  %21 = load %struct.soc_camera_subdev_desc*, %struct.soc_camera_subdev_desc** %7, align 8
  %22 = load %struct.ov9740_priv*, %struct.ov9740_priv** %8, align 8
  %23 = getelementptr inbounds %struct.ov9740_priv, %struct.ov9740_priv* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @soc_camera_power_on(i32* %20, %struct.soc_camera_subdev_desc* %21, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = load i32, i32* %9, align 4
  store i32 %29, i32* %3, align 4
  br label %62

30:                                               ; preds = %18
  %31 = load %struct.ov9740_priv*, %struct.ov9740_priv** %8, align 8
  %32 = getelementptr inbounds %struct.ov9740_priv, %struct.ov9740_priv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %37 = load %struct.ov9740_priv*, %struct.ov9740_priv** %8, align 8
  %38 = getelementptr inbounds %struct.ov9740_priv, %struct.ov9740_priv* %37, i32 0, i32 2
  %39 = call i32 @ov9740_s_fmt(%struct.v4l2_subdev* %36, i32* %38)
  %40 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %41 = call i32 @ov9740_s_stream(%struct.v4l2_subdev* %40, i32 1)
  br label %42

42:                                               ; preds = %35, %30
  br label %61

43:                                               ; preds = %2
  %44 = load %struct.ov9740_priv*, %struct.ov9740_priv** %8, align 8
  %45 = getelementptr inbounds %struct.ov9740_priv, %struct.ov9740_priv* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %50 = call i32 @ov9740_s_stream(%struct.v4l2_subdev* %49, i32 0)
  %51 = load %struct.ov9740_priv*, %struct.ov9740_priv** %8, align 8
  %52 = getelementptr inbounds %struct.ov9740_priv, %struct.ov9740_priv* %51, i32 0, i32 0
  store i32 1, i32* %52, align 4
  br label %53

53:                                               ; preds = %48, %43
  %54 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %55 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %54, i32 0, i32 0
  %56 = load %struct.soc_camera_subdev_desc*, %struct.soc_camera_subdev_desc** %7, align 8
  %57 = load %struct.ov9740_priv*, %struct.ov9740_priv** %8, align 8
  %58 = getelementptr inbounds %struct.ov9740_priv, %struct.ov9740_priv* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @soc_camera_power_off(i32* %55, %struct.soc_camera_subdev_desc* %56, i32 %59)
  br label %61

61:                                               ; preds = %53, %42
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %28
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.soc_camera_subdev_desc* @soc_camera_i2c_to_desc(%struct.i2c_client*) #1

declare dso_local %struct.ov9740_priv* @to_ov9740(%struct.v4l2_subdev*) #1

declare dso_local i32 @soc_camera_power_on(i32*, %struct.soc_camera_subdev_desc*, i32) #1

declare dso_local i32 @ov9740_s_fmt(%struct.v4l2_subdev*, i32*) #1

declare dso_local i32 @ov9740_s_stream(%struct.v4l2_subdev*, i32) #1

declare dso_local i32 @soc_camera_power_off(i32*, %struct.soc_camera_subdev_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
