; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-camera/extr_bcm2835-camera.c_set_camera_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-camera/extr_bcm2835-camera.c_set_camera_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vchiq_mmal_instance = type { i32 }
%struct.vchiq_mmal_component = type { i32 }
%struct.bm2835_mmal_dev = type { i32, i32 }
%struct.mmal_parameter_camera_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@max_video_width = common dso_local global i32 0, align 4
@max_video_height = common dso_local global i32 0, align 4
@MMAL_PARAM_TIMESTAMP_MODE_RAW_STC = common dso_local global i32 0, align 4
@MMAL_PARAMETER_CAMERA_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vchiq_mmal_instance*, %struct.vchiq_mmal_component*, %struct.bm2835_mmal_dev*)* @set_camera_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_camera_parameters(%struct.vchiq_mmal_instance* %0, %struct.vchiq_mmal_component* %1, %struct.bm2835_mmal_dev* %2) #0 {
  %4 = alloca %struct.vchiq_mmal_instance*, align 8
  %5 = alloca %struct.vchiq_mmal_component*, align 8
  %6 = alloca %struct.bm2835_mmal_dev*, align 8
  %7 = alloca %struct.mmal_parameter_camera_config, align 4
  store %struct.vchiq_mmal_instance* %0, %struct.vchiq_mmal_instance** %4, align 8
  store %struct.vchiq_mmal_component* %1, %struct.vchiq_mmal_component** %5, align 8
  store %struct.bm2835_mmal_dev* %2, %struct.bm2835_mmal_dev** %6, align 8
  %8 = getelementptr inbounds %struct.mmal_parameter_camera_config, %struct.mmal_parameter_camera_config* %7, i32 0, i32 0
  store i32 1, i32* %8, align 4
  %9 = getelementptr inbounds %struct.mmal_parameter_camera_config, %struct.mmal_parameter_camera_config* %7, i32 0, i32 1
  store i32 1, i32* %9, align 4
  %10 = getelementptr inbounds %struct.mmal_parameter_camera_config, %struct.mmal_parameter_camera_config* %7, i32 0, i32 2
  %11 = load i32, i32* @max_video_width, align 4
  %12 = icmp sgt i32 %11, 1920
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @max_video_width, align 4
  br label %16

15:                                               ; preds = %3
  br label %16

16:                                               ; preds = %15, %13
  %17 = phi i32 [ %14, %13 ], [ 1920, %15 ]
  store i32 %17, i32* %10, align 4
  %18 = getelementptr inbounds %struct.mmal_parameter_camera_config, %struct.mmal_parameter_camera_config* %7, i32 0, i32 3
  %19 = load i32, i32* @max_video_height, align 4
  %20 = icmp sgt i32 %19, 1088
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* @max_video_height, align 4
  br label %24

23:                                               ; preds = %16
  br label %24

24:                                               ; preds = %23, %21
  %25 = phi i32 [ %22, %21 ], [ 1088, %23 ]
  store i32 %25, i32* %18, align 4
  %26 = getelementptr inbounds %struct.mmal_parameter_camera_config, %struct.mmal_parameter_camera_config* %7, i32 0, i32 4
  store i32 3, i32* %26, align 4
  %27 = getelementptr inbounds %struct.mmal_parameter_camera_config, %struct.mmal_parameter_camera_config* %7, i32 0, i32 5
  %28 = load i32, i32* @MMAL_PARAM_TIMESTAMP_MODE_RAW_STC, align 4
  store i32 %28, i32* %27, align 4
  %29 = getelementptr inbounds %struct.mmal_parameter_camera_config, %struct.mmal_parameter_camera_config* %7, i32 0, i32 6
  store i32 0, i32* %29, align 4
  %30 = getelementptr inbounds %struct.mmal_parameter_camera_config, %struct.mmal_parameter_camera_config* %7, i32 0, i32 7
  store i32 0, i32* %30, align 4
  %31 = getelementptr inbounds %struct.mmal_parameter_camera_config, %struct.mmal_parameter_camera_config* %7, i32 0, i32 8
  %32 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %6, align 8
  %33 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %31, align 4
  %35 = getelementptr inbounds %struct.mmal_parameter_camera_config, %struct.mmal_parameter_camera_config* %7, i32 0, i32 9
  %36 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %6, align 8
  %37 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %35, align 4
  %39 = load %struct.vchiq_mmal_instance*, %struct.vchiq_mmal_instance** %4, align 8
  %40 = load %struct.vchiq_mmal_component*, %struct.vchiq_mmal_component** %5, align 8
  %41 = getelementptr inbounds %struct.vchiq_mmal_component, %struct.vchiq_mmal_component* %40, i32 0, i32 0
  %42 = load i32, i32* @MMAL_PARAMETER_CAMERA_CONFIG, align 4
  %43 = call i32 @vchiq_mmal_port_parameter_set(%struct.vchiq_mmal_instance* %39, i32* %41, i32 %42, %struct.mmal_parameter_camera_config* %7, i32 40)
  ret i32 %43
}

declare dso_local i32 @vchiq_mmal_port_parameter_set(%struct.vchiq_mmal_instance*, i32*, i32, %struct.mmal_parameter_camera_config*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
