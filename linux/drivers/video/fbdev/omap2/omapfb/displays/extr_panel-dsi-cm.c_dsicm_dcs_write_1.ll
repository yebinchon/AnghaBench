; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-dsi-cm.c_dsicm_dcs_write_1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-dsi-cm.c_dsicm_dcs_write_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.panel_drv_data = type { i32, %struct.omap_dss_device* }
%struct.omap_dss_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.omap_dss_device*, i32, i32*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.panel_drv_data*, i32, i32)* @dsicm_dcs_write_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsicm_dcs_write_1(%struct.panel_drv_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.panel_drv_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.omap_dss_device*, align 8
  %8 = alloca [2 x i32], align 4
  store %struct.panel_drv_data* %0, %struct.panel_drv_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %10 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %9, i32 0, i32 1
  %11 = load %struct.omap_dss_device*, %struct.omap_dss_device** %10, align 8
  store %struct.omap_dss_device* %11, %struct.omap_dss_device** %7, align 8
  %12 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds i32, i32* %12, i64 1
  %15 = load i32, i32* %6, align 4
  store i32 %15, i32* %14, align 4
  %16 = load %struct.omap_dss_device*, %struct.omap_dss_device** %7, align 8
  %17 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32 (%struct.omap_dss_device*, i32, i32*, i32)*, i32 (%struct.omap_dss_device*, i32, i32*, i32)** %20, align 8
  %22 = load %struct.omap_dss_device*, %struct.omap_dss_device** %7, align 8
  %23 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %24 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %27 = call i32 %21(%struct.omap_dss_device* %22, i32 %25, i32* %26, i32 2)
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
