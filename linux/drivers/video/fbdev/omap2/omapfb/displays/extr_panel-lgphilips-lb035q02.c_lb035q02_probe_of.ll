; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-lgphilips-lb035q02.c_lb035q02_probe_of.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-lgphilips-lb035q02.c_lb035q02_probe_of.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.panel_drv_data = type { %struct.omap_dss_device*, i32, %struct.omap_dss_device* }
%struct.omap_dss_device = type { i32 }
%struct.gpio_desc = type opaque

@.str = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to parse enable gpio\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to find video source\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @lb035q02_probe_of to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lb035q02_probe_of(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.panel_drv_data*, align 8
  %6 = alloca %struct.omap_dss_device*, align 8
  %7 = alloca %struct.gpio_desc*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %4, align 8
  %12 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %13 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %12, i32 0, i32 0
  %14 = call %struct.panel_drv_data* @dev_get_drvdata(%struct.TYPE_4__* %13)
  store %struct.panel_drv_data* %14, %struct.panel_drv_data** %5, align 8
  %15 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %16 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %15, i32 0, i32 0
  %17 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %18 = call %struct.omap_dss_device* @devm_gpiod_get(%struct.TYPE_4__* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = bitcast %struct.omap_dss_device* %18 to %struct.gpio_desc*
  store %struct.gpio_desc* %19, %struct.gpio_desc** %7, align 8
  %20 = load %struct.gpio_desc*, %struct.gpio_desc** %7, align 8
  %21 = bitcast %struct.gpio_desc* %20 to %struct.omap_dss_device*
  %22 = call i64 @IS_ERR(%struct.omap_dss_device* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %1
  %25 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %26 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %25, i32 0, i32 0
  %27 = call i32 @dev_err(%struct.TYPE_4__* %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.gpio_desc*, %struct.gpio_desc** %7, align 8
  %29 = bitcast %struct.gpio_desc* %28 to %struct.omap_dss_device*
  %30 = call i32 @PTR_ERR(%struct.omap_dss_device* %29)
  store i32 %30, i32* %2, align 4
  br label %55

31:                                               ; preds = %1
  %32 = load %struct.gpio_desc*, %struct.gpio_desc** %7, align 8
  %33 = bitcast %struct.gpio_desc* %32 to %struct.omap_dss_device*
  %34 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %35 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %34, i32 0, i32 2
  store %struct.omap_dss_device* %33, %struct.omap_dss_device** %35, align 8
  %36 = load i32, i32* @ENOENT, align 4
  %37 = sub nsw i32 0, %36
  %38 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %39 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = load %struct.device_node*, %struct.device_node** %4, align 8
  %41 = call %struct.omap_dss_device* @omapdss_of_find_source_for_first_ep(%struct.device_node* %40)
  store %struct.omap_dss_device* %41, %struct.omap_dss_device** %6, align 8
  %42 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %43 = call i64 @IS_ERR(%struct.omap_dss_device* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %31
  %46 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %47 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %46, i32 0, i32 0
  %48 = call i32 @dev_err(%struct.TYPE_4__* %47, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %49 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %50 = call i32 @PTR_ERR(%struct.omap_dss_device* %49)
  store i32 %50, i32* %2, align 4
  br label %55

51:                                               ; preds = %31
  %52 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %53 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %54 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %53, i32 0, i32 0
  store %struct.omap_dss_device* %52, %struct.omap_dss_device** %54, align 8
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %51, %45, %24
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.panel_drv_data* @dev_get_drvdata(%struct.TYPE_4__*) #1

declare dso_local %struct.omap_dss_device* @devm_gpiod_get(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.omap_dss_device*) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.omap_dss_device*) #1

declare dso_local %struct.omap_dss_device* @omapdss_of_find_source_for_first_ep(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
