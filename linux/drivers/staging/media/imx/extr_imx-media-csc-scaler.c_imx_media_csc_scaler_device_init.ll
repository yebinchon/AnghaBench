; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-csc-scaler.c_imx_media_csc_scaler_device_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-csc-scaler.c_imx_media_csc_scaler_device_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_device = type { i32* }
%struct.imx_media_video_dev = type { i32, %struct.video_device* }
%struct.imx_media_dev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ipu_csc_scaler_priv = type { %struct.imx_media_video_dev, i32, i32, i32, %struct.imx_media_dev* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ipu_csc_scaler_videodev_template = common dso_local global %struct.video_device zeroinitializer, align 8
@m2m_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to init mem2mem device: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.imx_media_video_dev* @imx_media_csc_scaler_device_init(%struct.imx_media_dev* %0) #0 {
  %2 = alloca %struct.imx_media_video_dev*, align 8
  %3 = alloca %struct.imx_media_dev*, align 8
  %4 = alloca %struct.ipu_csc_scaler_priv*, align 8
  %5 = alloca %struct.video_device*, align 8
  %6 = alloca i32, align 4
  store %struct.imx_media_dev* %0, %struct.imx_media_dev** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.ipu_csc_scaler_priv* @kzalloc(i32 40, i32 %7)
  store %struct.ipu_csc_scaler_priv* %8, %struct.ipu_csc_scaler_priv** %4, align 8
  %9 = load %struct.ipu_csc_scaler_priv*, %struct.ipu_csc_scaler_priv** %4, align 8
  %10 = icmp ne %struct.ipu_csc_scaler_priv* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.imx_media_video_dev* @ERR_PTR(i32 %13)
  store %struct.imx_media_video_dev* %14, %struct.imx_media_video_dev** %2, align 8
  br label %80

15:                                               ; preds = %1
  %16 = load %struct.imx_media_dev*, %struct.imx_media_dev** %3, align 8
  %17 = load %struct.ipu_csc_scaler_priv*, %struct.ipu_csc_scaler_priv** %4, align 8
  %18 = getelementptr inbounds %struct.ipu_csc_scaler_priv, %struct.ipu_csc_scaler_priv* %17, i32 0, i32 4
  store %struct.imx_media_dev* %16, %struct.imx_media_dev** %18, align 8
  %19 = load %struct.imx_media_dev*, %struct.imx_media_dev** %3, align 8
  %20 = getelementptr inbounds %struct.imx_media_dev, %struct.imx_media_dev* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ipu_csc_scaler_priv*, %struct.ipu_csc_scaler_priv** %4, align 8
  %24 = getelementptr inbounds %struct.ipu_csc_scaler_priv, %struct.ipu_csc_scaler_priv* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 8
  %25 = load %struct.ipu_csc_scaler_priv*, %struct.ipu_csc_scaler_priv** %4, align 8
  %26 = getelementptr inbounds %struct.ipu_csc_scaler_priv, %struct.ipu_csc_scaler_priv* %25, i32 0, i32 2
  %27 = call i32 @mutex_init(i32* %26)
  %28 = call %struct.video_device* (...) @video_device_alloc()
  store %struct.video_device* %28, %struct.video_device** %5, align 8
  %29 = load %struct.video_device*, %struct.video_device** %5, align 8
  %30 = icmp ne %struct.video_device* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %15
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  br label %75

34:                                               ; preds = %15
  %35 = load %struct.video_device*, %struct.video_device** %5, align 8
  %36 = bitcast %struct.video_device* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %36, i8* align 8 bitcast (%struct.video_device* @ipu_csc_scaler_videodev_template to i8*), i64 8, i1 false)
  %37 = load %struct.ipu_csc_scaler_priv*, %struct.ipu_csc_scaler_priv** %4, align 8
  %38 = getelementptr inbounds %struct.ipu_csc_scaler_priv, %struct.ipu_csc_scaler_priv* %37, i32 0, i32 2
  %39 = load %struct.video_device*, %struct.video_device** %5, align 8
  %40 = getelementptr inbounds %struct.video_device, %struct.video_device* %39, i32 0, i32 0
  store i32* %38, i32** %40, align 8
  %41 = load %struct.video_device*, %struct.video_device** %5, align 8
  %42 = load %struct.ipu_csc_scaler_priv*, %struct.ipu_csc_scaler_priv** %4, align 8
  %43 = getelementptr inbounds %struct.ipu_csc_scaler_priv, %struct.ipu_csc_scaler_priv* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.imx_media_video_dev, %struct.imx_media_video_dev* %43, i32 0, i32 1
  store %struct.video_device* %41, %struct.video_device** %44, align 8
  %45 = load %struct.ipu_csc_scaler_priv*, %struct.ipu_csc_scaler_priv** %4, align 8
  %46 = getelementptr inbounds %struct.ipu_csc_scaler_priv, %struct.ipu_csc_scaler_priv* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.imx_media_video_dev, %struct.imx_media_video_dev* %46, i32 0, i32 0
  %48 = call i32 @INIT_LIST_HEAD(i32* %47)
  %49 = load %struct.video_device*, %struct.video_device** %5, align 8
  %50 = load %struct.ipu_csc_scaler_priv*, %struct.ipu_csc_scaler_priv** %4, align 8
  %51 = call i32 @video_set_drvdata(%struct.video_device* %49, %struct.ipu_csc_scaler_priv* %50)
  %52 = call i32 @v4l2_m2m_init(i32* @m2m_ops)
  %53 = load %struct.ipu_csc_scaler_priv*, %struct.ipu_csc_scaler_priv** %4, align 8
  %54 = getelementptr inbounds %struct.ipu_csc_scaler_priv, %struct.ipu_csc_scaler_priv* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  %55 = load %struct.ipu_csc_scaler_priv*, %struct.ipu_csc_scaler_priv** %4, align 8
  %56 = getelementptr inbounds %struct.ipu_csc_scaler_priv, %struct.ipu_csc_scaler_priv* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @IS_ERR(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %34
  %61 = load %struct.ipu_csc_scaler_priv*, %struct.ipu_csc_scaler_priv** %4, align 8
  %62 = getelementptr inbounds %struct.ipu_csc_scaler_priv, %struct.ipu_csc_scaler_priv* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @PTR_ERR(i32 %63)
  store i32 %64, i32* %6, align 4
  %65 = load %struct.imx_media_dev*, %struct.imx_media_dev** %3, align 8
  %66 = getelementptr inbounds %struct.imx_media_dev, %struct.imx_media_dev* %65, i32 0, i32 0
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @v4l2_err(i32* %66, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %67)
  br label %72

69:                                               ; preds = %34
  %70 = load %struct.ipu_csc_scaler_priv*, %struct.ipu_csc_scaler_priv** %4, align 8
  %71 = getelementptr inbounds %struct.ipu_csc_scaler_priv, %struct.ipu_csc_scaler_priv* %70, i32 0, i32 0
  store %struct.imx_media_video_dev* %71, %struct.imx_media_video_dev** %2, align 8
  br label %80

72:                                               ; preds = %60
  %73 = load %struct.video_device*, %struct.video_device** %5, align 8
  %74 = call i32 @video_set_drvdata(%struct.video_device* %73, %struct.ipu_csc_scaler_priv* null)
  br label %75

75:                                               ; preds = %72, %31
  %76 = load %struct.ipu_csc_scaler_priv*, %struct.ipu_csc_scaler_priv** %4, align 8
  %77 = call i32 @kfree(%struct.ipu_csc_scaler_priv* %76)
  %78 = load i32, i32* %6, align 4
  %79 = call %struct.imx_media_video_dev* @ERR_PTR(i32 %78)
  store %struct.imx_media_video_dev* %79, %struct.imx_media_video_dev** %2, align 8
  br label %80

80:                                               ; preds = %75, %69, %11
  %81 = load %struct.imx_media_video_dev*, %struct.imx_media_video_dev** %2, align 8
  ret %struct.imx_media_video_dev* %81
}

declare dso_local %struct.ipu_csc_scaler_priv* @kzalloc(i32, i32) #1

declare dso_local %struct.imx_media_video_dev* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.video_device* @video_device_alloc(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @video_set_drvdata(%struct.video_device*, %struct.ipu_csc_scaler_priv*) #1

declare dso_local i32 @v4l2_m2m_init(i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @v4l2_err(i32*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.ipu_csc_scaler_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
