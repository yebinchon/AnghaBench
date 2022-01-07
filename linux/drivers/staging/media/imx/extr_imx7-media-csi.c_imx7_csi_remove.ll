; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx7-media-csi.c_imx7_csi_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx7-media-csi.c_imx7_csi_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.v4l2_subdev = type { i32 }
%struct.imx7_csi = type { i32, i32, i32, %struct.imx_media_dev* }
%struct.imx_media_dev = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @imx7_csi_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx7_csi_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.imx7_csi*, align 8
  %5 = alloca %struct.imx_media_dev*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.v4l2_subdev* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.v4l2_subdev* %7, %struct.v4l2_subdev** %3, align 8
  %8 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %9 = call %struct.imx7_csi* @v4l2_get_subdevdata(%struct.v4l2_subdev* %8)
  store %struct.imx7_csi* %9, %struct.imx7_csi** %4, align 8
  %10 = load %struct.imx7_csi*, %struct.imx7_csi** %4, align 8
  %11 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %10, i32 0, i32 3
  %12 = load %struct.imx_media_dev*, %struct.imx_media_dev** %11, align 8
  store %struct.imx_media_dev* %12, %struct.imx_media_dev** %5, align 8
  %13 = load %struct.imx_media_dev*, %struct.imx_media_dev** %5, align 8
  %14 = getelementptr inbounds %struct.imx_media_dev, %struct.imx_media_dev* %13, i32 0, i32 2
  %15 = call i32 @v4l2_async_notifier_unregister(i32* %14)
  %16 = load %struct.imx_media_dev*, %struct.imx_media_dev** %5, align 8
  %17 = getelementptr inbounds %struct.imx_media_dev, %struct.imx_media_dev* %16, i32 0, i32 2
  %18 = call i32 @v4l2_async_notifier_cleanup(i32* %17)
  %19 = load %struct.imx_media_dev*, %struct.imx_media_dev** %5, align 8
  %20 = getelementptr inbounds %struct.imx_media_dev, %struct.imx_media_dev* %19, i32 0, i32 0
  %21 = call i32 @media_device_unregister(i32* %20)
  %22 = load %struct.imx_media_dev*, %struct.imx_media_dev** %5, align 8
  %23 = getelementptr inbounds %struct.imx_media_dev, %struct.imx_media_dev* %22, i32 0, i32 1
  %24 = call i32 @v4l2_device_unregister(i32* %23)
  %25 = load %struct.imx_media_dev*, %struct.imx_media_dev** %5, align 8
  %26 = getelementptr inbounds %struct.imx_media_dev, %struct.imx_media_dev* %25, i32 0, i32 0
  %27 = call i32 @media_device_cleanup(i32* %26)
  %28 = load %struct.imx7_csi*, %struct.imx7_csi** %4, align 8
  %29 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @imx_media_capture_device_unregister(i32 %30)
  %32 = load %struct.imx7_csi*, %struct.imx7_csi** %4, align 8
  %33 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @imx_media_capture_device_remove(i32 %34)
  %36 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %37 = call i32 @v4l2_async_unregister_subdev(%struct.v4l2_subdev* %36)
  %38 = load %struct.imx7_csi*, %struct.imx7_csi** %4, align 8
  %39 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %38, i32 0, i32 1
  %40 = call i32 @v4l2_ctrl_handler_free(i32* %39)
  %41 = load %struct.imx7_csi*, %struct.imx7_csi** %4, align 8
  %42 = getelementptr inbounds %struct.imx7_csi, %struct.imx7_csi* %41, i32 0, i32 0
  %43 = call i32 @mutex_destroy(i32* %42)
  ret i32 0
}

declare dso_local %struct.v4l2_subdev* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.imx7_csi* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_async_notifier_unregister(i32*) #1

declare dso_local i32 @v4l2_async_notifier_cleanup(i32*) #1

declare dso_local i32 @media_device_unregister(i32*) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

declare dso_local i32 @media_device_cleanup(i32*) #1

declare dso_local i32 @imx_media_capture_device_unregister(i32) #1

declare dso_local i32 @imx_media_capture_device_remove(i32) #1

declare dso_local i32 @v4l2_async_unregister_subdev(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(i32*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
