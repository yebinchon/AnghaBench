; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_display_uninit_dispc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_display_uninit_dispc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.omap_overlay_manager = type { i32 }
%struct.dsi_data = type { i64 }

@OMAP_DSS_DSI_CMD_MODE = common dso_local global i64 0, align 8
@dsi_framedone_irq_callback = common dso_local global i32 0, align 4
@OMAP_DSS_CLK_SRC_FCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*, %struct.omap_overlay_manager*)* @dsi_display_uninit_dispc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsi_display_uninit_dispc(%struct.platform_device* %0, %struct.omap_overlay_manager* %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.omap_overlay_manager*, align 8
  %5 = alloca %struct.dsi_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.omap_overlay_manager* %1, %struct.omap_overlay_manager** %4, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = call %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device* %6)
  store %struct.dsi_data* %7, %struct.dsi_data** %5, align 8
  %8 = load %struct.dsi_data*, %struct.dsi_data** %5, align 8
  %9 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @OMAP_DSS_DSI_CMD_MODE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %4, align 8
  %15 = load i32, i32* @dsi_framedone_irq_callback, align 4
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = call i32 @dss_mgr_unregister_framedone_handler(%struct.omap_overlay_manager* %14, i32 %15, %struct.platform_device* %16)
  br label %18

18:                                               ; preds = %13, %2
  %19 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %4, align 8
  %20 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @OMAP_DSS_CLK_SRC_FCK, align 4
  %23 = call i32 @dss_select_lcd_clk_source(i32 %21, i32 %22)
  ret void
}

declare dso_local %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device*) #1

declare dso_local i32 @dss_mgr_unregister_framedone_handler(%struct.omap_overlay_manager*, i32, %struct.platform_device*) #1

declare dso_local i32 @dss_select_lcd_clk_source(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
