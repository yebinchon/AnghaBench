; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-dsi-cm.c_dsicm_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-dsi-cm.c_dsicm_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { {}*, {}* }
%struct.panel_drv_data = type { i32, %struct.TYPE_6__*, %struct.omap_dss_device* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"enable\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@OMAP_DSS_DISPLAY_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"enable failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_dss_device*)* @dsicm_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsicm_enable(%struct.omap_dss_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_dss_device*, align 8
  %4 = alloca %struct.panel_drv_data*, align 8
  %5 = alloca %struct.omap_dss_device*, align 8
  %6 = alloca i32, align 4
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %3, align 8
  %7 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %8 = call %struct.panel_drv_data* @to_panel_data(%struct.omap_dss_device* %7)
  store %struct.panel_drv_data* %8, %struct.panel_drv_data** %4, align 8
  %9 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %10 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %9, i32 0, i32 2
  %11 = load %struct.omap_dss_device*, %struct.omap_dss_device** %10, align 8
  store %struct.omap_dss_device* %11, %struct.omap_dss_device** %5, align 8
  %12 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %13 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %12, i32 0, i32 1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = call i32 @dev_dbg(i32* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %18 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %21 = call i32 @omapdss_device_is_connected(%struct.omap_dss_device* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %6, align 4
  br label %62

26:                                               ; preds = %1
  %27 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %28 = call i64 @omapdss_device_is_enabled(%struct.omap_dss_device* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  br label %62

31:                                               ; preds = %26
  %32 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %33 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = bitcast {}** %36 to i32 (%struct.omap_dss_device*)**
  %38 = load i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)** %37, align 8
  %39 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %40 = call i32 %38(%struct.omap_dss_device* %39)
  %41 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %42 = call i32 @dsicm_power_on(%struct.panel_drv_data* %41)
  store i32 %42, i32* %6, align 4
  %43 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %44 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = bitcast {}** %47 to i32 (%struct.omap_dss_device*)**
  %49 = load i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)** %48, align 8
  %50 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %51 = call i32 %49(%struct.omap_dss_device* %50)
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %31
  br label %62

55:                                               ; preds = %31
  %56 = load i32, i32* @OMAP_DSS_DISPLAY_ACTIVE, align 4
  %57 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %58 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %60 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %59, i32 0, i32 0
  %61 = call i32 @mutex_unlock(i32* %60)
  store i32 0, i32* %2, align 4
  br label %72

62:                                               ; preds = %54, %30, %23
  %63 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %64 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %63, i32 0, i32 1
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = call i32 @dev_dbg(i32* %66, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %68 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %69 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %68, i32 0, i32 0
  %70 = call i32 @mutex_unlock(i32* %69)
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %62, %55
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local %struct.panel_drv_data* @to_panel_data(%struct.omap_dss_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @omapdss_device_is_connected(%struct.omap_dss_device*) #1

declare dso_local i64 @omapdss_device_is_enabled(%struct.omap_dss_device*) #1

declare dso_local i32 @dsicm_power_on(%struct.panel_drv_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
