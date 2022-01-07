; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_mt9t031.c_mt9t031_runtime_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_mt9t031.c_mt9t031_runtime_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.video_device = type { i32 }
%struct.v4l2_subdev = type { i32 }
%struct.i2c_client = type { i32 }
%struct.mt9t031 = type { i32, i32 }

@MT9T031_COLUMN_ADDRESS_MODE = common dso_local global i32 0, align 4
@MT9T031_ROW_ADDRESS_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @mt9t031_runtime_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9t031_runtime_resume(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.video_device*, align 8
  %5 = alloca %struct.v4l2_subdev*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.mt9t031*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = call %struct.video_device* @to_video_device(%struct.device* %11)
  store %struct.video_device* %12, %struct.video_device** %4, align 8
  %13 = load %struct.video_device*, %struct.video_device** %4, align 8
  %14 = call %struct.v4l2_subdev* @soc_camera_vdev_to_subdev(%struct.video_device* %13)
  store %struct.v4l2_subdev* %14, %struct.v4l2_subdev** %5, align 8
  %15 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %5, align 8
  %16 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %15)
  store %struct.i2c_client* %16, %struct.i2c_client** %6, align 8
  %17 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %18 = call %struct.mt9t031* @to_mt9t031(%struct.i2c_client* %17)
  store %struct.mt9t031* %18, %struct.mt9t031** %7, align 8
  %19 = load %struct.mt9t031*, %struct.mt9t031** %7, align 8
  %20 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @min(i32 %21, i32 3)
  store i32 %22, i32* %9, align 4
  %23 = load %struct.mt9t031*, %struct.mt9t031** %7, align 8
  %24 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @min(i32 %25, i32 3)
  store i32 %26, i32* %10, align 4
  %27 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %28 = load i32, i32* @MT9T031_COLUMN_ADDRESS_MODE, align 4
  %29 = load i32, i32* %9, align 4
  %30 = sub nsw i32 %29, 1
  %31 = shl i32 %30, 4
  %32 = load %struct.mt9t031*, %struct.mt9t031** %7, align 8
  %33 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sub nsw i32 %34, 1
  %36 = or i32 %31, %35
  %37 = call i32 @reg_write(%struct.i2c_client* %27, i32 %28, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %1
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %2, align 4
  br label %59

42:                                               ; preds = %1
  %43 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %44 = load i32, i32* @MT9T031_ROW_ADDRESS_MODE, align 4
  %45 = load i32, i32* %10, align 4
  %46 = sub nsw i32 %45, 1
  %47 = shl i32 %46, 4
  %48 = load %struct.mt9t031*, %struct.mt9t031** %7, align 8
  %49 = getelementptr inbounds %struct.mt9t031, %struct.mt9t031* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 %50, 1
  %52 = or i32 %47, %51
  %53 = call i32 @reg_write(%struct.i2c_client* %43, i32 %44, i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* %8, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %42
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %2, align 4
  br label %59

58:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %58, %56, %40
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local %struct.video_device* @to_video_device(%struct.device*) #1

declare dso_local %struct.v4l2_subdev* @soc_camera_vdev_to_subdev(%struct.video_device*) #1

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.mt9t031* @to_mt9t031(%struct.i2c_client*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @reg_write(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
