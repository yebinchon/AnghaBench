; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-dsi-cm.c__dsicm_enable_te.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-dsi-cm.c__dsicm_enable_te.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.panel_drv_data = type { i32, %struct.omap_dss_device* }
%struct.omap_dss_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.omap_dss_device*, i32)* }

@MIPI_DCS_SET_TEAR_ON = common dso_local global i32 0, align 4
@MIPI_DCS_SET_TEAR_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.panel_drv_data*, i32)* @_dsicm_enable_te to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_dsicm_enable_te(%struct.panel_drv_data* %0, i32 %1) #0 {
  %3 = alloca %struct.panel_drv_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.omap_dss_device*, align 8
  %6 = alloca i32, align 4
  store %struct.panel_drv_data* %0, %struct.panel_drv_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %8 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %7, i32 0, i32 1
  %9 = load %struct.omap_dss_device*, %struct.omap_dss_device** %8, align 8
  store %struct.omap_dss_device* %9, %struct.omap_dss_device** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %14 = load i32, i32* @MIPI_DCS_SET_TEAR_ON, align 4
  %15 = call i32 @dsicm_dcs_write_1(%struct.panel_drv_data* %13, i32 %14, i32 0)
  store i32 %15, i32* %6, align 4
  br label %20

16:                                               ; preds = %2
  %17 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %18 = load i32, i32* @MIPI_DCS_SET_TEAR_OFF, align 4
  %19 = call i32 @dsicm_dcs_write_0(%struct.panel_drv_data* %17, i32 %18)
  store i32 %19, i32* %6, align 4
  br label %20

20:                                               ; preds = %16, %12
  %21 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %22 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @gpio_is_valid(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %20
  %27 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %28 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32 (%struct.omap_dss_device*, i32)*, i32 (%struct.omap_dss_device*, i32)** %31, align 8
  %33 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 %32(%struct.omap_dss_device* %33, i32 %34)
  br label %36

36:                                               ; preds = %26, %20
  %37 = call i32 @msleep(i32 100)
  %38 = load i32, i32* %6, align 4
  ret i32 %38
}

declare dso_local i32 @dsicm_dcs_write_1(%struct.panel_drv_data*, i32, i32) #1

declare dso_local i32 @dsicm_dcs_write_0(%struct.panel_drv_data*, i32) #1

declare dso_local i32 @gpio_is_valid(i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
