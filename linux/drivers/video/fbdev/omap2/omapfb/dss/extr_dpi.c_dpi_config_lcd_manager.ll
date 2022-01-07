; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dpi.c_dpi_config_lcd_manager.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dpi.c_dpi_config_lcd_manager.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpi_data = type { %struct.TYPE_2__, i32, %struct.omap_dss_device }
%struct.TYPE_2__ = type { i32, i32, i64, i32, i32 }
%struct.omap_dss_device = type { %struct.omap_overlay_manager* }
%struct.omap_overlay_manager = type { i32 }

@DSS_IO_PAD_MODE_BYPASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dpi_data*)* @dpi_config_lcd_manager to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpi_config_lcd_manager(%struct.dpi_data* %0) #0 {
  %2 = alloca %struct.dpi_data*, align 8
  %3 = alloca %struct.omap_dss_device*, align 8
  %4 = alloca %struct.omap_overlay_manager*, align 8
  store %struct.dpi_data* %0, %struct.dpi_data** %2, align 8
  %5 = load %struct.dpi_data*, %struct.dpi_data** %2, align 8
  %6 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %5, i32 0, i32 2
  store %struct.omap_dss_device* %6, %struct.omap_dss_device** %3, align 8
  %7 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %8 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %7, i32 0, i32 0
  %9 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %8, align 8
  store %struct.omap_overlay_manager* %9, %struct.omap_overlay_manager** %4, align 8
  %10 = load i32, i32* @DSS_IO_PAD_MODE_BYPASS, align 4
  %11 = load %struct.dpi_data*, %struct.dpi_data** %2, align 8
  %12 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 4
  store i32 %10, i32* %13, align 4
  %14 = load %struct.dpi_data*, %struct.dpi_data** %2, align 8
  %15 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 0, i32* %16, align 8
  %17 = load %struct.dpi_data*, %struct.dpi_data** %2, align 8
  %18 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  store i32 0, i32* %19, align 4
  %20 = load %struct.dpi_data*, %struct.dpi_data** %2, align 8
  %21 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.dpi_data*, %struct.dpi_data** %2, align 8
  %24 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 3
  store i32 %22, i32* %25, align 8
  %26 = load %struct.dpi_data*, %struct.dpi_data** %2, align 8
  %27 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %4, align 8
  %30 = load %struct.dpi_data*, %struct.dpi_data** %2, align 8
  %31 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %30, i32 0, i32 0
  %32 = call i32 @dss_mgr_set_lcd_config(%struct.omap_overlay_manager* %29, %struct.TYPE_2__* %31)
  ret void
}

declare dso_local i32 @dss_mgr_set_lcd_config(%struct.omap_overlay_manager*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
