; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-capture.c_imx_media_capture_device_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-capture.c_imx_media_capture_device_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_device = type { i32*, i32*, i32 }
%struct.imx_media_video_dev = type { i32, %struct.video_device* }
%struct.device = type { i32 }
%struct.v4l2_subdev = type { i8* }
%struct.capture_priv = type { i32, %struct.imx_media_video_dev, i32, i32, i32, i32, %struct.device*, %struct.v4l2_subdev* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@capture_videodev = common dso_local global %struct.video_device zeroinitializer, align 8
@.str = private unnamed_addr constant [11 x i8] c"%s capture\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.imx_media_video_dev* @imx_media_capture_device_init(%struct.device* %0, %struct.v4l2_subdev* %1, i32 %2) #0 {
  %4 = alloca %struct.imx_media_video_dev*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.v4l2_subdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.capture_priv*, align 8
  %9 = alloca %struct.video_device*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.v4l2_subdev* %1, %struct.v4l2_subdev** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.device*, %struct.device** %5, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.capture_priv* @devm_kzalloc(%struct.device* %10, i32 56, i32 %11)
  store %struct.capture_priv* %12, %struct.capture_priv** %8, align 8
  %13 = load %struct.capture_priv*, %struct.capture_priv** %8, align 8
  %14 = icmp ne %struct.capture_priv* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.imx_media_video_dev* @ERR_PTR(i32 %17)
  store %struct.imx_media_video_dev* %18, %struct.imx_media_video_dev** %4, align 8
  br label %74

19:                                               ; preds = %3
  %20 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %21 = load %struct.capture_priv*, %struct.capture_priv** %8, align 8
  %22 = getelementptr inbounds %struct.capture_priv, %struct.capture_priv* %21, i32 0, i32 7
  store %struct.v4l2_subdev* %20, %struct.v4l2_subdev** %22, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.capture_priv*, %struct.capture_priv** %8, align 8
  %25 = getelementptr inbounds %struct.capture_priv, %struct.capture_priv* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.device*, %struct.device** %5, align 8
  %27 = load %struct.capture_priv*, %struct.capture_priv** %8, align 8
  %28 = getelementptr inbounds %struct.capture_priv, %struct.capture_priv* %27, i32 0, i32 6
  store %struct.device* %26, %struct.device** %28, align 8
  %29 = load %struct.capture_priv*, %struct.capture_priv** %8, align 8
  %30 = getelementptr inbounds %struct.capture_priv, %struct.capture_priv* %29, i32 0, i32 4
  %31 = call i32 @mutex_init(i32* %30)
  %32 = load %struct.capture_priv*, %struct.capture_priv** %8, align 8
  %33 = getelementptr inbounds %struct.capture_priv, %struct.capture_priv* %32, i32 0, i32 5
  %34 = call i32 @spin_lock_init(i32* %33)
  %35 = load i32, i32* getelementptr inbounds (%struct.video_device, %struct.video_device* @capture_videodev, i32 0, i32 2), align 8
  %36 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %37 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @snprintf(i32 %35, i32 4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %38)
  %40 = call %struct.video_device* (...) @video_device_alloc()
  store %struct.video_device* %40, %struct.video_device** %9, align 8
  %41 = load %struct.video_device*, %struct.video_device** %9, align 8
  %42 = icmp ne %struct.video_device* %41, null
  br i1 %42, label %47, label %43

43:                                               ; preds = %19
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = sub nsw i32 0, %44
  %46 = call %struct.imx_media_video_dev* @ERR_PTR(i32 %45)
  store %struct.imx_media_video_dev* %46, %struct.imx_media_video_dev** %4, align 8
  br label %74

47:                                               ; preds = %19
  %48 = load %struct.video_device*, %struct.video_device** %9, align 8
  %49 = bitcast %struct.video_device* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %49, i8* align 8 bitcast (%struct.video_device* @capture_videodev to i8*), i64 24, i1 false)
  %50 = load %struct.capture_priv*, %struct.capture_priv** %8, align 8
  %51 = getelementptr inbounds %struct.capture_priv, %struct.capture_priv* %50, i32 0, i32 4
  %52 = load %struct.video_device*, %struct.video_device** %9, align 8
  %53 = getelementptr inbounds %struct.video_device, %struct.video_device* %52, i32 0, i32 1
  store i32* %51, i32** %53, align 8
  %54 = load %struct.capture_priv*, %struct.capture_priv** %8, align 8
  %55 = getelementptr inbounds %struct.capture_priv, %struct.capture_priv* %54, i32 0, i32 3
  %56 = load %struct.video_device*, %struct.video_device** %9, align 8
  %57 = getelementptr inbounds %struct.video_device, %struct.video_device* %56, i32 0, i32 0
  store i32* %55, i32** %57, align 8
  %58 = load %struct.video_device*, %struct.video_device** %9, align 8
  %59 = load %struct.capture_priv*, %struct.capture_priv** %8, align 8
  %60 = getelementptr inbounds %struct.capture_priv, %struct.capture_priv* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.imx_media_video_dev, %struct.imx_media_video_dev* %60, i32 0, i32 1
  store %struct.video_device* %58, %struct.video_device** %61, align 8
  %62 = load %struct.capture_priv*, %struct.capture_priv** %8, align 8
  %63 = getelementptr inbounds %struct.capture_priv, %struct.capture_priv* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.imx_media_video_dev, %struct.imx_media_video_dev* %63, i32 0, i32 0
  %65 = call i32 @INIT_LIST_HEAD(i32* %64)
  %66 = load %struct.video_device*, %struct.video_device** %9, align 8
  %67 = load %struct.capture_priv*, %struct.capture_priv** %8, align 8
  %68 = call i32 @video_set_drvdata(%struct.video_device* %66, %struct.capture_priv* %67)
  %69 = load %struct.capture_priv*, %struct.capture_priv** %8, align 8
  %70 = getelementptr inbounds %struct.capture_priv, %struct.capture_priv* %69, i32 0, i32 2
  %71 = call i32 @v4l2_ctrl_handler_init(i32* %70, i32 0)
  %72 = load %struct.capture_priv*, %struct.capture_priv** %8, align 8
  %73 = getelementptr inbounds %struct.capture_priv, %struct.capture_priv* %72, i32 0, i32 1
  store %struct.imx_media_video_dev* %73, %struct.imx_media_video_dev** %4, align 8
  br label %74

74:                                               ; preds = %47, %43, %15
  %75 = load %struct.imx_media_video_dev*, %struct.imx_media_video_dev** %4, align 8
  ret %struct.imx_media_video_dev* %75
}

declare dso_local %struct.capture_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local %struct.imx_media_video_dev* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local %struct.video_device* @video_device_alloc(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @video_set_drvdata(%struct.video_device*, %struct.capture_priv*) #1

declare dso_local i32 @v4l2_ctrl_handler_init(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
