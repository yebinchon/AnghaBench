; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-csc-scaler.c_imx_media_csc_scaler_device_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-csc-scaler.c_imx_media_csc_scaler_device_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_media_video_dev = type { %struct.video_device* }
%struct.video_device = type { i32, i32* }
%struct.ipu_csc_scaler_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to register video device\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Registered %s as /dev/%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @imx_media_csc_scaler_device_register(%struct.imx_media_video_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.imx_media_video_dev*, align 8
  %4 = alloca %struct.ipu_csc_scaler_priv*, align 8
  %5 = alloca %struct.video_device*, align 8
  %6 = alloca i32, align 4
  store %struct.imx_media_video_dev* %0, %struct.imx_media_video_dev** %3, align 8
  %7 = load %struct.imx_media_video_dev*, %struct.imx_media_video_dev** %3, align 8
  %8 = call %struct.ipu_csc_scaler_priv* @vdev_to_priv(%struct.imx_media_video_dev* %7)
  store %struct.ipu_csc_scaler_priv* %8, %struct.ipu_csc_scaler_priv** %4, align 8
  %9 = load %struct.imx_media_video_dev*, %struct.imx_media_video_dev** %3, align 8
  %10 = getelementptr inbounds %struct.imx_media_video_dev, %struct.imx_media_video_dev* %9, i32 0, i32 0
  %11 = load %struct.video_device*, %struct.video_device** %10, align 8
  store %struct.video_device* %11, %struct.video_device** %5, align 8
  %12 = load %struct.ipu_csc_scaler_priv*, %struct.ipu_csc_scaler_priv** %4, align 8
  %13 = getelementptr inbounds %struct.ipu_csc_scaler_priv, %struct.ipu_csc_scaler_priv* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.video_device*, %struct.video_device** %5, align 8
  %17 = getelementptr inbounds %struct.video_device, %struct.video_device* %16, i32 0, i32 1
  store i32* %15, i32** %17, align 8
  %18 = load %struct.video_device*, %struct.video_device** %5, align 8
  %19 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %20 = call i32 @video_register_device(%struct.video_device* %18, i32 %19, i32 -1)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load %struct.video_device*, %struct.video_device** %5, align 8
  %25 = getelementptr inbounds %struct.video_device, %struct.video_device* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @v4l2_err(i32* %26, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %2, align 4
  br label %39

29:                                               ; preds = %1
  %30 = load %struct.video_device*, %struct.video_device** %5, align 8
  %31 = getelementptr inbounds %struct.video_device, %struct.video_device* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.video_device*, %struct.video_device** %5, align 8
  %34 = getelementptr inbounds %struct.video_device, %struct.video_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.video_device*, %struct.video_device** %5, align 8
  %37 = call i32 @video_device_node_name(%struct.video_device* %36)
  %38 = call i32 @v4l2_info(i32* %32, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %37)
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %29, %23
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local %struct.ipu_csc_scaler_priv* @vdev_to_priv(%struct.imx_media_video_dev*) #1

declare dso_local i32 @video_register_device(%struct.video_device*, i32, i32) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

declare dso_local i32 @v4l2_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @video_device_node_name(%struct.video_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
