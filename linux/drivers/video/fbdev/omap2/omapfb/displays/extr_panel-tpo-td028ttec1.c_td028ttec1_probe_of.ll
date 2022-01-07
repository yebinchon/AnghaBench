; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-tpo-td028ttec1.c_td028ttec1_probe_of.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-tpo-td028ttec1.c_td028ttec1_probe_of.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.panel_drv_data = type { %struct.omap_dss_device* }
%struct.omap_dss_device = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"failed to find video source\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @td028ttec1_probe_of to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @td028ttec1_probe_of(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.panel_drv_data*, align 8
  %6 = alloca %struct.omap_dss_device*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.device_node*, %struct.device_node** %9, align 8
  store %struct.device_node* %10, %struct.device_node** %4, align 8
  %11 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %12 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %11, i32 0, i32 0
  %13 = call %struct.panel_drv_data* @dev_get_drvdata(%struct.TYPE_3__* %12)
  store %struct.panel_drv_data* %13, %struct.panel_drv_data** %5, align 8
  %14 = load %struct.device_node*, %struct.device_node** %4, align 8
  %15 = call %struct.omap_dss_device* @omapdss_of_find_source_for_first_ep(%struct.device_node* %14)
  store %struct.omap_dss_device* %15, %struct.omap_dss_device** %6, align 8
  %16 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %17 = call i64 @IS_ERR(%struct.omap_dss_device* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %21 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %20, i32 0, i32 0
  %22 = call i32 @dev_err(%struct.TYPE_3__* %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %24 = call i32 @PTR_ERR(%struct.omap_dss_device* %23)
  store i32 %24, i32* %2, align 4
  br label %29

25:                                               ; preds = %1
  %26 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %27 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %28 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %27, i32 0, i32 0
  store %struct.omap_dss_device* %26, %struct.omap_dss_device** %28, align 8
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %25, %19
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local %struct.panel_drv_data* @dev_get_drvdata(%struct.TYPE_3__*) #1

declare dso_local %struct.omap_dss_device* @omapdss_of_find_source_for_first_ep(%struct.device_node*) #1

declare dso_local i64 @IS_ERR(%struct.omap_dss_device*) #1

declare dso_local i32 @dev_err(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.omap_dss_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
