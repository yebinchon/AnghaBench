; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-dsi-cm.c_dsicm_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-dsi-cm.c_dsicm_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.omap_dss_device*, %struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*, i32*)*, i32 (%struct.omap_dss_device*, i32, i32)*, i32 (%struct.omap_dss_device*, %struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*, i32)* }
%struct.panel_drv_data = type { i32, %struct.omap_dss_device*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"Failed to connect to video source\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"failed to get virtual channel\0A\00", align 1
@TCH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"failed to set VC_ID\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_dss_device*)* @dsicm_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsicm_connect(%struct.omap_dss_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_dss_device*, align 8
  %4 = alloca %struct.panel_drv_data*, align 8
  %5 = alloca %struct.omap_dss_device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %3, align 8
  %8 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %9 = call %struct.panel_drv_data* @to_panel_data(%struct.omap_dss_device* %8)
  store %struct.panel_drv_data* %9, %struct.panel_drv_data** %4, align 8
  %10 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %11 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %10, i32 0, i32 1
  %12 = load %struct.omap_dss_device*, %struct.omap_dss_device** %11, align 8
  store %struct.omap_dss_device* %12, %struct.omap_dss_device** %5, align 8
  %13 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %14 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %13, i32 0, i32 2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store %struct.device* %16, %struct.device** %6, align 8
  %17 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %18 = call i64 @omapdss_device_is_connected(%struct.omap_dss_device* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %101

21:                                               ; preds = %1
  %22 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %23 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32 (%struct.omap_dss_device*, %struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*, %struct.omap_dss_device*)** %26, align 8
  %28 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %29 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %30 = call i32 %27(%struct.omap_dss_device* %28, %struct.omap_dss_device* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %21
  %34 = load %struct.device*, %struct.device** %6, align 8
  %35 = call i32 @dev_err(%struct.device* %34, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %2, align 4
  br label %101

37:                                               ; preds = %21
  %38 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %39 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32 (%struct.omap_dss_device*, i32*)*, i32 (%struct.omap_dss_device*, i32*)** %42, align 8
  %44 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %45 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %44, i32 0, i32 1
  %46 = load %struct.omap_dss_device*, %struct.omap_dss_device** %45, align 8
  %47 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %48 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %47, i32 0, i32 0
  %49 = call i32 %43(%struct.omap_dss_device* %46, i32* %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %37
  %53 = load %struct.device*, %struct.device** %6, align 8
  %54 = call i32 @dev_err(%struct.device* %53, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  br label %90

55:                                               ; preds = %37
  %56 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %57 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 2
  %61 = load i32 (%struct.omap_dss_device*, i32, i32)*, i32 (%struct.omap_dss_device*, i32, i32)** %60, align 8
  %62 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %63 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %62, i32 0, i32 1
  %64 = load %struct.omap_dss_device*, %struct.omap_dss_device** %63, align 8
  %65 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %66 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @TCH, align 4
  %69 = call i32 %61(%struct.omap_dss_device* %64, i32 %67, i32 %68)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %55
  %73 = load %struct.device*, %struct.device** %6, align 8
  %74 = call i32 @dev_err(%struct.device* %73, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %76

75:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %101

76:                                               ; preds = %72
  %77 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %78 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 4
  %82 = load i32 (%struct.omap_dss_device*, i32)*, i32 (%struct.omap_dss_device*, i32)** %81, align 8
  %83 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %84 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %83, i32 0, i32 1
  %85 = load %struct.omap_dss_device*, %struct.omap_dss_device** %84, align 8
  %86 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %87 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 %82(%struct.omap_dss_device* %85, i32 %88)
  br label %90

90:                                               ; preds = %76, %52
  %91 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %92 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 3
  %96 = load i32 (%struct.omap_dss_device*, %struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*, %struct.omap_dss_device*)** %95, align 8
  %97 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %98 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %99 = call i32 %96(%struct.omap_dss_device* %97, %struct.omap_dss_device* %98)
  %100 = load i32, i32* %7, align 4
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %90, %75, %33, %20
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local %struct.panel_drv_data* @to_panel_data(%struct.omap_dss_device*) #1

declare dso_local i64 @omapdss_device_is_connected(%struct.omap_dss_device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
