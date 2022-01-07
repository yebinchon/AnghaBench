; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_disable_video_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_disable_video_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { i32 }
%struct.platform_device = type { i32 }
%struct.dsi_data = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.omap_overlay_manager* }
%struct.omap_overlay_manager = type { i32 }

@OMAP_DSS_DSI_VIDEO_MODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_dss_device*, i32)* @dsi_disable_video_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsi_disable_video_output(%struct.omap_dss_device* %0, i32 %1) #0 {
  %3 = alloca %struct.omap_dss_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.dsi_data*, align 8
  %7 = alloca %struct.omap_overlay_manager*, align 8
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %9 = call %struct.platform_device* @dsi_get_dsidev_from_dssdev(%struct.omap_dss_device* %8)
  store %struct.platform_device* %9, %struct.platform_device** %5, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %11 = call %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device* %10)
  store %struct.dsi_data* %11, %struct.dsi_data** %6, align 8
  %12 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %13 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %14, align 8
  store %struct.omap_overlay_manager* %15, %struct.omap_overlay_manager** %7, align 8
  %16 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %17 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @OMAP_DSS_DSI_VIDEO_MODE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %2
  %22 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %23 = call i32 @dsi_if_enable(%struct.platform_device* %22, i32 0)
  %24 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @dsi_vc_enable(%struct.platform_device* %24, i32 %25, i32 0)
  %27 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @DSI_VC_CTRL(i32 %28)
  %30 = call i32 @REG_FLD_MOD(%struct.platform_device* %27, i32 %29, i32 0, i32 4, i32 4)
  %31 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @dsi_vc_enable(%struct.platform_device* %31, i32 %32, i32 1)
  %34 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %35 = call i32 @dsi_if_enable(%struct.platform_device* %34, i32 1)
  br label %36

36:                                               ; preds = %21, %2
  %37 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %7, align 8
  %38 = call i32 @dss_mgr_disable(%struct.omap_overlay_manager* %37)
  %39 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %40 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %7, align 8
  %41 = call i32 @dsi_display_uninit_dispc(%struct.platform_device* %39, %struct.omap_overlay_manager* %40)
  ret void
}

declare dso_local %struct.platform_device* @dsi_get_dsidev_from_dssdev(%struct.omap_dss_device*) #1

declare dso_local %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device*) #1

declare dso_local i32 @dsi_if_enable(%struct.platform_device*, i32) #1

declare dso_local i32 @dsi_vc_enable(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @REG_FLD_MOD(%struct.platform_device*, i32, i32, i32, i32) #1

declare dso_local i32 @DSI_VC_CTRL(i32) #1

declare dso_local i32 @dss_mgr_disable(%struct.omap_overlay_manager*) #1

declare dso_local i32 @dsi_display_uninit_dispc(%struct.platform_device*, %struct.omap_overlay_manager*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
