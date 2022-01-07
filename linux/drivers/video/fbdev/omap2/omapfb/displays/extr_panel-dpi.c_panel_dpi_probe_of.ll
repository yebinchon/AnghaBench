; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-dpi.c_panel_dpi_probe_of.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-dpi.c_panel_dpi_probe_of.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.panel_drv_data = type { %struct.omap_dss_device*, i32, i32, %struct.omap_dss_device* }
%struct.omap_dss_device = type { i32 }
%struct.display_timing = type { i32 }
%struct.videomode = type { i32 }
%struct.gpio_desc = type opaque

@.str = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"panel-timing\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"failed to get video timing\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"failed to find video source\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @panel_dpi_probe_of to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @panel_dpi_probe_of(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.panel_drv_data*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.omap_dss_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.display_timing, align 4
  %9 = alloca %struct.videomode, align 4
  %10 = alloca %struct.gpio_desc*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = call %struct.panel_drv_data* @platform_get_drvdata(%struct.platform_device* %11)
  store %struct.panel_drv_data* %12, %struct.panel_drv_data** %4, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %5, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %17, i32 0, i32 0
  %19 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %20 = call %struct.omap_dss_device* @devm_gpiod_get_optional(%struct.TYPE_3__* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = bitcast %struct.omap_dss_device* %20 to %struct.gpio_desc*
  store %struct.gpio_desc* %21, %struct.gpio_desc** %10, align 8
  %22 = load %struct.gpio_desc*, %struct.gpio_desc** %10, align 8
  %23 = bitcast %struct.gpio_desc* %22 to %struct.omap_dss_device*
  %24 = call i64 @IS_ERR(%struct.omap_dss_device* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %1
  %27 = load %struct.gpio_desc*, %struct.gpio_desc** %10, align 8
  %28 = bitcast %struct.gpio_desc* %27 to %struct.omap_dss_device*
  %29 = call i32 @PTR_ERR(%struct.omap_dss_device* %28)
  store i32 %29, i32* %2, align 4
  br label %68

30:                                               ; preds = %1
  %31 = load %struct.gpio_desc*, %struct.gpio_desc** %10, align 8
  %32 = bitcast %struct.gpio_desc* %31 to %struct.omap_dss_device*
  %33 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %34 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %33, i32 0, i32 3
  store %struct.omap_dss_device* %32, %struct.omap_dss_device** %34, align 8
  %35 = load i32, i32* @ENOENT, align 4
  %36 = sub nsw i32 0, %35
  %37 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %38 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load %struct.device_node*, %struct.device_node** %5, align 8
  %40 = call i32 @of_get_display_timing(%struct.device_node* %39, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), %struct.display_timing* %8)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %30
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %44, i32 0, i32 0
  %46 = call i32 @dev_err(%struct.TYPE_3__* %45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %2, align 4
  br label %68

48:                                               ; preds = %30
  %49 = call i32 @videomode_from_timing(%struct.display_timing* %8, %struct.videomode* %9)
  %50 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %51 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %50, i32 0, i32 1
  %52 = call i32 @videomode_to_omap_video_timings(%struct.videomode* %9, i32* %51)
  %53 = load %struct.device_node*, %struct.device_node** %5, align 8
  %54 = call %struct.omap_dss_device* @omapdss_of_find_source_for_first_ep(%struct.device_node* %53)
  store %struct.omap_dss_device* %54, %struct.omap_dss_device** %6, align 8
  %55 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %56 = call i64 @IS_ERR(%struct.omap_dss_device* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %48
  %59 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %60 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %59, i32 0, i32 0
  %61 = call i32 @dev_err(%struct.TYPE_3__* %60, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %62 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %63 = call i32 @PTR_ERR(%struct.omap_dss_device* %62)
  store i32 %63, i32* %2, align 4
  br label %68

64:                                               ; preds = %48
  %65 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %66 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %67 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %66, i32 0, i32 0
  store %struct.omap_dss_device* %65, %struct.omap_dss_device** %67, align 8
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %64, %58, %43, %26
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local %struct.panel_drv_data* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.omap_dss_device* @devm_gpiod_get_optional(%struct.TYPE_3__*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.omap_dss_device*) #1

declare dso_local i32 @PTR_ERR(%struct.omap_dss_device*) #1

declare dso_local i32 @of_get_display_timing(%struct.device_node*, i8*, %struct.display_timing*) #1

declare dso_local i32 @dev_err(%struct.TYPE_3__*, i8*) #1

declare dso_local i32 @videomode_from_timing(%struct.display_timing*, %struct.videomode*) #1

declare dso_local i32 @videomode_to_omap_video_timings(%struct.videomode*, i32*) #1

declare dso_local %struct.omap_dss_device* @omapdss_of_find_source_for_first_ep(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
