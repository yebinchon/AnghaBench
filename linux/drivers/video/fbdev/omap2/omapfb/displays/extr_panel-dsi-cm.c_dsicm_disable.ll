; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-dsi-cm.c_dsicm_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-dsi-cm.c_dsicm_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)* }
%struct.panel_drv_data = type { i32, %struct.TYPE_6__*, %struct.omap_dss_device* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"disable\0A\00", align 1
@OMAP_DSS_DISPLAY_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_dss_device*)* @dsicm_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsicm_disable(%struct.omap_dss_device* %0) #0 {
  %2 = alloca %struct.omap_dss_device*, align 8
  %3 = alloca %struct.panel_drv_data*, align 8
  %4 = alloca %struct.omap_dss_device*, align 8
  %5 = alloca i32, align 4
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %2, align 8
  %6 = load %struct.omap_dss_device*, %struct.omap_dss_device** %2, align 8
  %7 = call %struct.panel_drv_data* @to_panel_data(%struct.omap_dss_device* %6)
  store %struct.panel_drv_data* %7, %struct.panel_drv_data** %3, align 8
  %8 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %9 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %8, i32 0, i32 2
  %10 = load %struct.omap_dss_device*, %struct.omap_dss_device** %9, align 8
  store %struct.omap_dss_device* %10, %struct.omap_dss_device** %4, align 8
  %11 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %12 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %11, i32 0, i32 1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = call i32 @dev_dbg(i32* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %17 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %20 = call i32 @dsicm_cancel_ulps_work(%struct.panel_drv_data* %19)
  %21 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %22 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)** %25, align 8
  %27 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %28 = call i32 %26(%struct.omap_dss_device* %27)
  %29 = load %struct.omap_dss_device*, %struct.omap_dss_device** %2, align 8
  %30 = call i64 @omapdss_device_is_enabled(%struct.omap_dss_device* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %1
  %33 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %34 = call i32 @dsicm_wake_up(%struct.panel_drv_data* %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %39 = call i32 @dsicm_power_off(%struct.panel_drv_data* %38)
  br label %40

40:                                               ; preds = %37, %32
  br label %41

41:                                               ; preds = %40, %1
  %42 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %43 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)** %46, align 8
  %48 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %49 = call i32 %47(%struct.omap_dss_device* %48)
  %50 = load i32, i32* @OMAP_DSS_DISPLAY_DISABLED, align 4
  %51 = load %struct.omap_dss_device*, %struct.omap_dss_device** %2, align 8
  %52 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %54 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %53, i32 0, i32 0
  %55 = call i32 @mutex_unlock(i32* %54)
  ret void
}

declare dso_local %struct.panel_drv_data* @to_panel_data(%struct.omap_dss_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dsicm_cancel_ulps_work(%struct.panel_drv_data*) #1

declare dso_local i64 @omapdss_device_is_enabled(%struct.omap_dss_device*) #1

declare dso_local i32 @dsicm_wake_up(%struct.panel_drv_data*) #1

declare dso_local i32 @dsicm_power_off(%struct.panel_drv_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
