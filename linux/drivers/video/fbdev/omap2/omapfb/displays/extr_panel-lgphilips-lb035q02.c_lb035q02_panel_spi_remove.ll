; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-lgphilips-lb035q02.c_lb035q02_panel_spi_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-lgphilips-lb035q02.c_lb035q02_panel_spi_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.panel_drv_data = type { %struct.omap_dss_device*, %struct.omap_dss_device }
%struct.omap_dss_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @lb035q02_panel_spi_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lb035q02_panel_spi_remove(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  %3 = alloca %struct.panel_drv_data*, align 8
  %4 = alloca %struct.omap_dss_device*, align 8
  %5 = alloca %struct.omap_dss_device*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  %6 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %7 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %6, i32 0, i32 0
  %8 = call %struct.panel_drv_data* @dev_get_drvdata(i32* %7)
  store %struct.panel_drv_data* %8, %struct.panel_drv_data** %3, align 8
  %9 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %10 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %9, i32 0, i32 1
  store %struct.omap_dss_device* %10, %struct.omap_dss_device** %4, align 8
  %11 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %12 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %11, i32 0, i32 0
  %13 = load %struct.omap_dss_device*, %struct.omap_dss_device** %12, align 8
  store %struct.omap_dss_device* %13, %struct.omap_dss_device** %5, align 8
  %14 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %15 = call i32 @omapdss_unregister_display(%struct.omap_dss_device* %14)
  %16 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %17 = call i32 @lb035q02_disable(%struct.omap_dss_device* %16)
  %18 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %19 = call i32 @lb035q02_disconnect(%struct.omap_dss_device* %18)
  %20 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %21 = call i32 @omap_dss_put_device(%struct.omap_dss_device* %20)
  ret i32 0
}

declare dso_local %struct.panel_drv_data* @dev_get_drvdata(i32*) #1

declare dso_local i32 @omapdss_unregister_display(%struct.omap_dss_device*) #1

declare dso_local i32 @lb035q02_disable(%struct.omap_dss_device*) #1

declare dso_local i32 @lb035q02_disconnect(%struct.omap_dss_device*) #1

declare dso_local i32 @omap_dss_put_device(%struct.omap_dss_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
