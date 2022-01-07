; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-csi.c_imx_csi_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/imx/extr_imx-media-csi.c_imx_csi_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.v4l2_subdev = type { i32 }
%struct.csi_priv = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @imx_csi_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx_csi_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.csi_priv*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.v4l2_subdev* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.v4l2_subdev* %6, %struct.v4l2_subdev** %3, align 8
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %8 = call %struct.csi_priv* @sd_to_dev(%struct.v4l2_subdev* %7)
  store %struct.csi_priv* %8, %struct.csi_priv** %4, align 8
  %9 = load %struct.csi_priv*, %struct.csi_priv** %4, align 8
  %10 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %9, i32 0, i32 2
  %11 = call i32 @v4l2_ctrl_handler_free(i32* %10)
  %12 = load %struct.csi_priv*, %struct.csi_priv** %4, align 8
  %13 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %12, i32 0, i32 1
  %14 = call i32 @mutex_destroy(i32* %13)
  %15 = load %struct.csi_priv*, %struct.csi_priv** %4, align 8
  %16 = getelementptr inbounds %struct.csi_priv, %struct.csi_priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @imx_media_capture_device_remove(i32 %17)
  %19 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %20 = call i32 @v4l2_async_unregister_subdev(%struct.v4l2_subdev* %19)
  %21 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %22 = getelementptr inbounds %struct.v4l2_subdev, %struct.v4l2_subdev* %21, i32 0, i32 0
  %23 = call i32 @media_entity_cleanup(i32* %22)
  ret i32 0
}

declare dso_local %struct.v4l2_subdev* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.csi_priv* @sd_to_dev(%struct.v4l2_subdev*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(i32*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @imx_media_capture_device_remove(i32) #1

declare dso_local i32 @v4l2_async_unregister_subdev(%struct.v4l2_subdev*) #1

declare dso_local i32 @media_entity_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
