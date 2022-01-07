; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dpi.c_dpi_display_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dpi.c_dpi_display_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { i32 }
%struct.dpi_data = type { i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.omap_overlay_manager* }
%struct.omap_overlay_manager = type { i32 }

@OMAP_DSS_CLK_SRC_FCK = common dso_local global i32 0, align 4
@FEAT_DPI_USES_VDDS_DSI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_dss_device*)* @dpi_display_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpi_display_disable(%struct.omap_dss_device* %0) #0 {
  %2 = alloca %struct.omap_dss_device*, align 8
  %3 = alloca %struct.dpi_data*, align 8
  %4 = alloca %struct.omap_overlay_manager*, align 8
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %2, align 8
  %5 = load %struct.omap_dss_device*, %struct.omap_dss_device** %2, align 8
  %6 = call %struct.dpi_data* @dpi_get_data_from_dssdev(%struct.omap_dss_device* %5)
  store %struct.dpi_data* %6, %struct.dpi_data** %3, align 8
  %7 = load %struct.dpi_data*, %struct.dpi_data** %3, align 8
  %8 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %9, align 8
  store %struct.omap_overlay_manager* %10, %struct.omap_overlay_manager** %4, align 8
  %11 = load %struct.dpi_data*, %struct.dpi_data** %3, align 8
  %12 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %4, align 8
  %15 = call i32 @dss_mgr_disable(%struct.omap_overlay_manager* %14)
  %16 = load %struct.dpi_data*, %struct.dpi_data** %3, align 8
  %17 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %1
  %21 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %4, align 8
  %22 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @OMAP_DSS_CLK_SRC_FCK, align 4
  %25 = call i32 @dss_select_lcd_clk_source(i32 %23, i32 %24)
  %26 = load %struct.dpi_data*, %struct.dpi_data** %3, align 8
  %27 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @dss_pll_disable(i64 %28)
  br label %30

30:                                               ; preds = %20, %1
  %31 = call i32 (...) @dispc_runtime_put()
  %32 = load i32, i32* @FEAT_DPI_USES_VDDS_DSI, align 4
  %33 = call i64 @dss_has_feature(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load %struct.dpi_data*, %struct.dpi_data** %3, align 8
  %37 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @regulator_disable(i32 %38)
  br label %40

40:                                               ; preds = %35, %30
  %41 = load %struct.dpi_data*, %struct.dpi_data** %3, align 8
  %42 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %41, i32 0, i32 0
  %43 = call i32 @mutex_unlock(i32* %42)
  ret void
}

declare dso_local %struct.dpi_data* @dpi_get_data_from_dssdev(%struct.omap_dss_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dss_mgr_disable(%struct.omap_overlay_manager*) #1

declare dso_local i32 @dss_select_lcd_clk_source(i32, i32) #1

declare dso_local i32 @dss_pll_disable(i64) #1

declare dso_local i32 @dispc_runtime_put(...) #1

declare dso_local i64 @dss_has_feature(i32) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
