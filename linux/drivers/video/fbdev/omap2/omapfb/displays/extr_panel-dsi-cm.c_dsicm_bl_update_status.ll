; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-dsi-cm.c_dsicm_bl_update_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-dsi-cm.c_dsicm_bl_update_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backlight_device = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64, i64, i32 }
%struct.panel_drv_data = type { i32, i64, %struct.TYPE_6__*, %struct.omap_dss_device* }
%struct.TYPE_6__ = type { i32 }
%struct.omap_dss_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)* }

@FB_BLANK_UNBLANK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"update brightness to %d\0A\00", align 1
@DCS_BRIGHTNESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.backlight_device*)* @dsicm_bl_update_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsicm_bl_update_status(%struct.backlight_device* %0) #0 {
  %2 = alloca %struct.backlight_device*, align 8
  %3 = alloca %struct.panel_drv_data*, align 8
  %4 = alloca %struct.omap_dss_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.backlight_device* %0, %struct.backlight_device** %2, align 8
  %7 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %8 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %7, i32 0, i32 1
  %9 = call %struct.panel_drv_data* @dev_get_drvdata(i32* %8)
  store %struct.panel_drv_data* %9, %struct.panel_drv_data** %3, align 8
  %10 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %11 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %10, i32 0, i32 3
  %12 = load %struct.omap_dss_device*, %struct.omap_dss_device** %11, align 8
  store %struct.omap_dss_device* %12, %struct.omap_dss_device** %4, align 8
  %13 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %14 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @FB_BLANK_UNBLANK, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %1
  %20 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %21 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @FB_BLANK_UNBLANK, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load %struct.backlight_device*, %struct.backlight_device** %2, align 8
  %28 = getelementptr inbounds %struct.backlight_device, %struct.backlight_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %6, align 4
  br label %32

31:                                               ; preds = %19, %1
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %31, %26
  %33 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %34 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %33, i32 0, i32 2
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @dev_dbg(i32* %36, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %40 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %39, i32 0, i32 0
  %41 = call i32 @mutex_lock(i32* %40)
  %42 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %43 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %73

46:                                               ; preds = %32
  %47 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %48 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)** %51, align 8
  %53 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %54 = call i32 %52(%struct.omap_dss_device* %53)
  %55 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %56 = call i32 @dsicm_wake_up(%struct.panel_drv_data* %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %46
  %60 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %61 = load i32, i32* @DCS_BRIGHTNESS, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @dsicm_dcs_write_1(%struct.panel_drv_data* %60, i32 %61, i32 %62)
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %59, %46
  %65 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %66 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = load i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)** %69, align 8
  %71 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %72 = call i32 %70(%struct.omap_dss_device* %71)
  br label %74

73:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %74

74:                                               ; preds = %73, %64
  %75 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %76 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %75, i32 0, i32 0
  %77 = call i32 @mutex_unlock(i32* %76)
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local %struct.panel_drv_data* @dev_get_drvdata(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dsicm_wake_up(%struct.panel_drv_data*) #1

declare dso_local i32 @dsicm_dcs_write_1(%struct.panel_drv_data*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
