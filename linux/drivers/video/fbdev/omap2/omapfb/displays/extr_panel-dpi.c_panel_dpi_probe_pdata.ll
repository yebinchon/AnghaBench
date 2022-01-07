; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-dpi.c_panel_dpi_probe_pdata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-dpi.c_panel_dpi_probe_pdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.panel_dpi_platform_data = type { i32, i32, i32, i32, i32, i32 }
%struct.panel_drv_data = type { %struct.omap_dss_device*, i32, i32, %struct.omap_dss_device, i32, i32 }
%struct.omap_dss_device = type { i32 }
%struct.videomode = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"failed to find video source '%s'\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@GPIOF_OUT_INIT_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"panel enable\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @panel_dpi_probe_pdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @panel_dpi_probe_pdata(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.panel_dpi_platform_data*, align 8
  %5 = alloca %struct.panel_drv_data*, align 8
  %6 = alloca %struct.omap_dss_device*, align 8
  %7 = alloca %struct.omap_dss_device*, align 8
  %8 = alloca %struct.videomode, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = call %struct.panel_drv_data* @platform_get_drvdata(%struct.platform_device* %10)
  store %struct.panel_drv_data* %11, %struct.panel_drv_data** %5, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 0
  %14 = call %struct.panel_dpi_platform_data* @dev_get_platdata(i32* %13)
  store %struct.panel_dpi_platform_data* %14, %struct.panel_dpi_platform_data** %4, align 8
  %15 = load %struct.panel_dpi_platform_data*, %struct.panel_dpi_platform_data** %4, align 8
  %16 = getelementptr inbounds %struct.panel_dpi_platform_data, %struct.panel_dpi_platform_data* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.omap_dss_device* @omap_dss_find_output(i32 %17)
  store %struct.omap_dss_device* %18, %struct.omap_dss_device** %7, align 8
  %19 = load %struct.omap_dss_device*, %struct.omap_dss_device** %7, align 8
  %20 = icmp eq %struct.omap_dss_device* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load %struct.panel_dpi_platform_data*, %struct.panel_dpi_platform_data** %4, align 8
  %25 = getelementptr inbounds %struct.panel_dpi_platform_data, %struct.panel_dpi_platform_data* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dev_err(i32* %23, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @EPROBE_DEFER, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %81

30:                                               ; preds = %1
  %31 = load %struct.omap_dss_device*, %struct.omap_dss_device** %7, align 8
  %32 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %33 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %32, i32 0, i32 0
  store %struct.omap_dss_device* %31, %struct.omap_dss_device** %33, align 8
  %34 = load %struct.panel_dpi_platform_data*, %struct.panel_dpi_platform_data** %4, align 8
  %35 = getelementptr inbounds %struct.panel_dpi_platform_data, %struct.panel_dpi_platform_data* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %38 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 8
  %39 = load %struct.panel_dpi_platform_data*, %struct.panel_dpi_platform_data** %4, align 8
  %40 = getelementptr inbounds %struct.panel_dpi_platform_data, %struct.panel_dpi_platform_data* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @videomode_from_timing(i32 %41, %struct.videomode* %8)
  %43 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %44 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %43, i32 0, i32 4
  %45 = call i32 @videomode_to_omap_video_timings(%struct.videomode* %8, i32* %44)
  %46 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %47 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %46, i32 0, i32 3
  store %struct.omap_dss_device* %47, %struct.omap_dss_device** %6, align 8
  %48 = load %struct.panel_dpi_platform_data*, %struct.panel_dpi_platform_data** %4, align 8
  %49 = getelementptr inbounds %struct.panel_dpi_platform_data, %struct.panel_dpi_platform_data* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %52 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = load %struct.panel_dpi_platform_data*, %struct.panel_dpi_platform_data** %4, align 8
  %56 = getelementptr inbounds %struct.panel_dpi_platform_data, %struct.panel_dpi_platform_data* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @GPIOF_OUT_INIT_LOW, align 4
  %59 = call i32 @devm_gpio_request_one(i32* %54, i32 %57, i32 %58, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %30
  br label %75

63:                                               ; preds = %30
  %64 = load %struct.panel_dpi_platform_data*, %struct.panel_dpi_platform_data** %4, align 8
  %65 = getelementptr inbounds %struct.panel_dpi_platform_data, %struct.panel_dpi_platform_data* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @gpio_to_desc(i32 %66)
  %68 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %69 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  %70 = load %struct.panel_dpi_platform_data*, %struct.panel_dpi_platform_data** %4, align 8
  %71 = getelementptr inbounds %struct.panel_dpi_platform_data, %struct.panel_dpi_platform_data* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %74 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 8
  store i32 0, i32* %2, align 4
  br label %81

75:                                               ; preds = %62
  %76 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %77 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %76, i32 0, i32 0
  %78 = load %struct.omap_dss_device*, %struct.omap_dss_device** %77, align 8
  %79 = call i32 @omap_dss_put_device(%struct.omap_dss_device* %78)
  %80 = load i32, i32* %9, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %75, %63, %21
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local %struct.panel_drv_data* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.panel_dpi_platform_data* @dev_get_platdata(i32*) #1

declare dso_local %struct.omap_dss_device* @omap_dss_find_output(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @videomode_from_timing(i32, %struct.videomode*) #1

declare dso_local i32 @videomode_to_omap_video_timings(%struct.videomode*, i32*) #1

declare dso_local i32 @devm_gpio_request_one(i32*, i32, i32, i8*) #1

declare dso_local i32 @gpio_to_desc(i32) #1

declare dso_local i32 @omap_dss_put_device(%struct.omap_dss_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
