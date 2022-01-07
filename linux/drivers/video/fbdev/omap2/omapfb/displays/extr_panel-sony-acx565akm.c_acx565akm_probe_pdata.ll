; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-sony-acx565akm.c_acx565akm_probe_pdata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-sony-acx565akm.c_acx565akm_probe_pdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.panel_acx565akm_platform_data = type { i32, i32, i32, i32 }
%struct.panel_drv_data = type { %struct.omap_dss_device, i32, %struct.omap_dss_device*, i32 }
%struct.omap_dss_device = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"failed to find video source '%s'\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @acx565akm_probe_pdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acx565akm_probe_pdata(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.panel_acx565akm_platform_data*, align 8
  %5 = alloca %struct.panel_drv_data*, align 8
  %6 = alloca %struct.omap_dss_device*, align 8
  %7 = alloca %struct.omap_dss_device*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 0
  %10 = call %struct.panel_drv_data* @dev_get_drvdata(i32* %9)
  store %struct.panel_drv_data* %10, %struct.panel_drv_data** %5, align 8
  %11 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %12 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %11, i32 0, i32 0
  %13 = call %struct.panel_acx565akm_platform_data* @dev_get_platdata(i32* %12)
  store %struct.panel_acx565akm_platform_data* %13, %struct.panel_acx565akm_platform_data** %4, align 8
  %14 = load %struct.panel_acx565akm_platform_data*, %struct.panel_acx565akm_platform_data** %4, align 8
  %15 = getelementptr inbounds %struct.panel_acx565akm_platform_data, %struct.panel_acx565akm_platform_data* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %18 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 8
  %19 = load %struct.panel_acx565akm_platform_data*, %struct.panel_acx565akm_platform_data** %4, align 8
  %20 = getelementptr inbounds %struct.panel_acx565akm_platform_data, %struct.panel_acx565akm_platform_data* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.omap_dss_device* @omap_dss_find_output(i32 %21)
  store %struct.omap_dss_device* %22, %struct.omap_dss_device** %7, align 8
  %23 = load %struct.omap_dss_device*, %struct.omap_dss_device** %7, align 8
  %24 = icmp eq %struct.omap_dss_device* %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %1
  %26 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %27 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %26, i32 0, i32 0
  %28 = load %struct.panel_acx565akm_platform_data*, %struct.panel_acx565akm_platform_data** %4, align 8
  %29 = getelementptr inbounds %struct.panel_acx565akm_platform_data, %struct.panel_acx565akm_platform_data* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @EPROBE_DEFER, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %50

34:                                               ; preds = %1
  %35 = load %struct.omap_dss_device*, %struct.omap_dss_device** %7, align 8
  %36 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %37 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %36, i32 0, i32 2
  store %struct.omap_dss_device* %35, %struct.omap_dss_device** %37, align 8
  %38 = load %struct.panel_acx565akm_platform_data*, %struct.panel_acx565akm_platform_data** %4, align 8
  %39 = getelementptr inbounds %struct.panel_acx565akm_platform_data, %struct.panel_acx565akm_platform_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %42 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %44 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %43, i32 0, i32 0
  store %struct.omap_dss_device* %44, %struct.omap_dss_device** %6, align 8
  %45 = load %struct.panel_acx565akm_platform_data*, %struct.panel_acx565akm_platform_data** %4, align 8
  %46 = getelementptr inbounds %struct.panel_acx565akm_platform_data, %struct.panel_acx565akm_platform_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %49 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %34, %25
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.panel_drv_data* @dev_get_drvdata(i32*) #1

declare dso_local %struct.panel_acx565akm_platform_data* @dev_get_platdata(i32*) #1

declare dso_local %struct.omap_dss_device* @omap_dss_find_output(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
