; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_connector-analog-tv.c_tvc_probe_pdata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_connector-analog-tv.c_tvc_probe_pdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.panel_drv_data = type { %struct.omap_dss_device, i32, %struct.omap_dss_device* }
%struct.omap_dss_device = type { i32 }
%struct.connector_atv_platform_data = type { i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"Failed to find video source\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tvc_probe_pdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tvc_probe_pdata(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.panel_drv_data*, align 8
  %5 = alloca %struct.connector_atv_platform_data*, align 8
  %6 = alloca %struct.omap_dss_device*, align 8
  %7 = alloca %struct.omap_dss_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = call %struct.panel_drv_data* @platform_get_drvdata(%struct.platform_device* %8)
  store %struct.panel_drv_data* %9, %struct.panel_drv_data** %4, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = call %struct.connector_atv_platform_data* @dev_get_platdata(i32* %11)
  store %struct.connector_atv_platform_data* %12, %struct.connector_atv_platform_data** %5, align 8
  %13 = load %struct.connector_atv_platform_data*, %struct.connector_atv_platform_data** %5, align 8
  %14 = getelementptr inbounds %struct.connector_atv_platform_data, %struct.connector_atv_platform_data* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.omap_dss_device* @omap_dss_find_output(i32 %15)
  store %struct.omap_dss_device* %16, %struct.omap_dss_device** %6, align 8
  %17 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %18 = icmp eq %struct.omap_dss_device* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = call i32 @dev_err(i32* %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EPROBE_DEFER, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %41

25:                                               ; preds = %1
  %26 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %27 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %28 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %27, i32 0, i32 2
  store %struct.omap_dss_device* %26, %struct.omap_dss_device** %28, align 8
  %29 = load %struct.connector_atv_platform_data*, %struct.connector_atv_platform_data** %5, align 8
  %30 = getelementptr inbounds %struct.connector_atv_platform_data, %struct.connector_atv_platform_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %33 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %35 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %34, i32 0, i32 0
  store %struct.omap_dss_device* %35, %struct.omap_dss_device** %7, align 8
  %36 = load %struct.connector_atv_platform_data*, %struct.connector_atv_platform_data** %5, align 8
  %37 = getelementptr inbounds %struct.connector_atv_platform_data, %struct.connector_atv_platform_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.omap_dss_device*, %struct.omap_dss_device** %7, align 8
  %40 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %25, %19
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.panel_drv_data* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.connector_atv_platform_data* @dev_get_platdata(i32*) #1

declare dso_local %struct.omap_dss_device* @omap_dss_find_output(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
