; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_camera.c_soc_camera_video_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/soc_camera/extr_soc_camera.c_soc_camera_video_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.soc_camera_device = type { %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.device_type* }
%struct.device_type = type opaque

@ENODEV = common dso_local global i32 0, align 4
@VIDIOC_G_STD = common dso_local global i32 0, align 4
@VIDIOC_S_STD = common dso_local global i32 0, align 4
@VIDIOC_ENUMSTD = common dso_local global i32 0, align 4
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"video_register_device failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.soc_camera_device*)* @soc_camera_video_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soc_camera_video_start(%struct.soc_camera_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.soc_camera_device*, align 8
  %4 = alloca %struct.device_type*, align 8
  %5 = alloca i32, align 4
  store %struct.soc_camera_device* %0, %struct.soc_camera_device** %3, align 8
  %6 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %7 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %6, i32 0, i32 0
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.device_type*, %struct.device_type** %10, align 8
  store %struct.device_type* %11, %struct.device_type** %4, align 8
  %12 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %13 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %69

19:                                               ; preds = %1
  %20 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %21 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %24 = call i32 @video_set_drvdata(%struct.TYPE_6__* %22, %struct.soc_camera_device* %23)
  %25 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %26 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %19
  %32 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %33 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %32, i32 0, i32 0
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = load i32, i32* @VIDIOC_G_STD, align 4
  %36 = call i32 @v4l2_disable_ioctl(%struct.TYPE_6__* %34, i32 %35)
  %37 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %38 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = load i32, i32* @VIDIOC_S_STD, align 4
  %41 = call i32 @v4l2_disable_ioctl(%struct.TYPE_6__* %39, i32 %40)
  %42 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %43 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = load i32, i32* @VIDIOC_ENUMSTD, align 4
  %46 = call i32 @v4l2_disable_ioctl(%struct.TYPE_6__* %44, i32 %45)
  br label %47

47:                                               ; preds = %31, %19
  %48 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %49 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %52 = call i32 @video_register_device(%struct.TYPE_6__* %50, i32 %51, i32 -1)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %47
  %56 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %57 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @dev_err(i32 %58, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* %5, align 4
  store i32 %61, i32* %2, align 4
  br label %69

62:                                               ; preds = %47
  %63 = load %struct.device_type*, %struct.device_type** %4, align 8
  %64 = load %struct.soc_camera_device*, %struct.soc_camera_device** %3, align 8
  %65 = getelementptr inbounds %struct.soc_camera_device, %struct.soc_camera_device* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  store %struct.device_type* %63, %struct.device_type** %68, align 8
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %62, %55, %16
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @video_set_drvdata(%struct.TYPE_6__*, %struct.soc_camera_device*) #1

declare dso_local i32 @v4l2_disable_ioctl(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @video_register_device(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
