; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_connector-analog-tv.c_tvc_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_connector-analog-tv.c_tvc_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { {}*, i32 (%struct.omap_dss_device*, i32)*, i32 (%struct.omap_dss_device*, i32)*, i32 (%struct.omap_dss_device*, i32*)* }
%struct.panel_drv_data = type { i32, %struct.TYPE_6__*, i32, %struct.omap_dss_device* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"enable\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@OMAP_DSS_VENC_TYPE_COMPOSITE = common dso_local global i32 0, align 4
@OMAP_DSS_DISPLAY_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_dss_device*)* @tvc_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tvc_enable(%struct.omap_dss_device* %0) #0 {
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
  %10 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %9, i32 0, i32 3
  %11 = load %struct.omap_dss_device*, %struct.omap_dss_device** %10, align 8
  store %struct.omap_dss_device* %11, %struct.omap_dss_device** %5, align 8
  %12 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %13 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %12, i32 0, i32 1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = call i32 @dev_dbg(%struct.TYPE_6__* %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %17 = call i32 @omapdss_device_is_connected(%struct.omap_dss_device* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %84

22:                                               ; preds = %1
  %23 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %24 = call i64 @omapdss_device_is_enabled(%struct.omap_dss_device* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %84

27:                                               ; preds = %22
  %28 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %29 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 3
  %33 = load i32 (%struct.omap_dss_device*, i32*)*, i32 (%struct.omap_dss_device*, i32*)** %32, align 8
  %34 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %35 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %36 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %35, i32 0, i32 2
  %37 = call i32 %33(%struct.omap_dss_device* %34, i32* %36)
  %38 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %39 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %65, label %44

44:                                               ; preds = %27
  %45 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %46 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  %50 = load i32 (%struct.omap_dss_device*, i32)*, i32 (%struct.omap_dss_device*, i32)** %49, align 8
  %51 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %52 = load i32, i32* @OMAP_DSS_VENC_TYPE_COMPOSITE, align 4
  %53 = call i32 %50(%struct.omap_dss_device* %51, i32 %52)
  %54 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %55 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32 (%struct.omap_dss_device*, i32)*, i32 (%struct.omap_dss_device*, i32)** %58, align 8
  %60 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %61 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %62 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 %59(%struct.omap_dss_device* %60, i32 %63)
  br label %65

65:                                               ; preds = %44, %27
  %66 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %67 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = bitcast {}** %70 to i32 (%struct.omap_dss_device*)**
  %72 = load i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)** %71, align 8
  %73 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %74 = call i32 %72(%struct.omap_dss_device* %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %65
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %2, align 4
  br label %84

79:                                               ; preds = %65
  %80 = load i32, i32* @OMAP_DSS_DISPLAY_ACTIVE, align 4
  %81 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %82 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* %6, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %79, %77, %26, %19
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local %struct.panel_drv_data* @to_panel_data(%struct.omap_dss_device*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @omapdss_device_is_connected(%struct.omap_dss_device*) #1

declare dso_local i64 @omapdss_device_is_enabled(%struct.omap_dss_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
