; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-camera/extr_bcm2835-camera.c_bm2835_mmal_init_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/bcm2835-camera/extr_bcm2835-camera.c_bm2835_mmal_init_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_device = type { i32*, i32*, i32* }
%struct.bm2835_mmal_dev = type { i64, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@vdev_template = common dso_local global %struct.video_device zeroinitializer, align 8
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@video_nr = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [52 x i8] c"V4L2 device registered as %s - stills mode > %dx%d\0A\00", align 1
@max_video_width = common dso_local global i32 0, align 4
@max_video_height = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bm2835_mmal_dev*, %struct.video_device*)* @bm2835_mmal_init_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bm2835_mmal_init_device(%struct.bm2835_mmal_dev* %0, %struct.video_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bm2835_mmal_dev*, align 8
  %5 = alloca %struct.video_device*, align 8
  %6 = alloca i32, align 4
  store %struct.bm2835_mmal_dev* %0, %struct.bm2835_mmal_dev** %4, align 8
  store %struct.video_device* %1, %struct.video_device** %5, align 8
  %7 = load %struct.video_device*, %struct.video_device** %5, align 8
  %8 = bitcast %struct.video_device* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 bitcast (%struct.video_device* @vdev_template to i8*), i64 24, i1 false)
  %9 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %4, align 8
  %10 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %9, i32 0, i32 3
  %11 = load %struct.video_device*, %struct.video_device** %5, align 8
  %12 = getelementptr inbounds %struct.video_device, %struct.video_device* %11, i32 0, i32 0
  store i32* %10, i32** %12, align 8
  %13 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %4, align 8
  %14 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %13, i32 0, i32 2
  %15 = load %struct.video_device*, %struct.video_device** %5, align 8
  %16 = getelementptr inbounds %struct.video_device, %struct.video_device* %15, i32 0, i32 2
  store i32* %14, i32** %16, align 8
  %17 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %4, align 8
  %18 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.video_device*, %struct.video_device** %5, align 8
  %21 = getelementptr inbounds %struct.video_device, %struct.video_device* %20, i32 0, i32 1
  store i32* %19, i32** %21, align 8
  %22 = load %struct.video_device*, %struct.video_device** %5, align 8
  %23 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %4, align 8
  %24 = call i32 @video_set_drvdata(%struct.video_device* %22, %struct.bm2835_mmal_dev* %23)
  %25 = load %struct.video_device*, %struct.video_device** %5, align 8
  %26 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %27 = load i32*, i32** @video_nr, align 8
  %28 = load %struct.bm2835_mmal_dev*, %struct.bm2835_mmal_dev** %4, align 8
  %29 = getelementptr inbounds %struct.bm2835_mmal_dev, %struct.bm2835_mmal_dev* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @video_register_device(%struct.video_device* %25, i32 %26, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %2
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %47

38:                                               ; preds = %2
  %39 = load %struct.video_device*, %struct.video_device** %5, align 8
  %40 = getelementptr inbounds %struct.video_device, %struct.video_device* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.video_device*, %struct.video_device** %5, align 8
  %43 = call i32 @video_device_node_name(%struct.video_device* %42)
  %44 = load i32, i32* @max_video_width, align 4
  %45 = load i32, i32* @max_video_height, align 4
  %46 = call i32 @v4l2_info(i32* %41, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44, i32 %45)
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %38, %36
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @video_set_drvdata(%struct.video_device*, %struct.bm2835_mmal_dev*) #2

declare dso_local i32 @video_register_device(%struct.video_device*, i32, i32) #2

declare dso_local i32 @v4l2_info(i32*, i8*, i32, i32, i32) #2

declare dso_local i32 @video_device_node_name(%struct.video_device*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
