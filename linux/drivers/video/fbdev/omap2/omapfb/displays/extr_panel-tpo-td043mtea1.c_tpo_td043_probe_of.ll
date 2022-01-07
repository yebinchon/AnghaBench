; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-tpo-td043mtea1.c_tpo_td043_probe_of.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-tpo-td043mtea1.c_tpo_td043_probe_of.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.panel_drv_data = type { i32, %struct.omap_dss_device* }
%struct.omap_dss_device = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"reset-gpios\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"failed to parse enable gpio\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to find video source\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @tpo_td043_probe_of to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpo_td043_probe_of(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.panel_drv_data*, align 8
  %6 = alloca %struct.omap_dss_device*, align 8
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %4, align 8
  %12 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %13 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %12, i32 0, i32 0
  %14 = call %struct.panel_drv_data* @dev_get_drvdata(%struct.TYPE_3__* %13)
  store %struct.panel_drv_data* %14, %struct.panel_drv_data** %5, align 8
  %15 = load %struct.device_node*, %struct.device_node** %4, align 8
  %16 = call i32 @of_get_named_gpio(%struct.device_node* %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @gpio_is_valid(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %1
  %21 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %22 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %21, i32 0, i32 0
  %23 = call i32 @dev_err(%struct.TYPE_3__* %22, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %2, align 4
  br label %44

25:                                               ; preds = %1
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %28 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.device_node*, %struct.device_node** %4, align 8
  %30 = call %struct.omap_dss_device* @omapdss_of_find_source_for_first_ep(%struct.device_node* %29)
  store %struct.omap_dss_device* %30, %struct.omap_dss_device** %6, align 8
  %31 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %32 = call i64 @IS_ERR(%struct.omap_dss_device* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %25
  %35 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %36 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %35, i32 0, i32 0
  %37 = call i32 @dev_err(%struct.TYPE_3__* %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %38 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %39 = call i32 @PTR_ERR(%struct.omap_dss_device* %38)
  store i32 %39, i32* %2, align 4
  br label %44

40:                                               ; preds = %25
  %41 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %42 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %43 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %42, i32 0, i32 1
  store %struct.omap_dss_device* %41, %struct.omap_dss_device** %43, align 8
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %40, %34, %20
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.panel_drv_data* @dev_get_drvdata(%struct.TYPE_3__*) #1

declare dso_local i32 @of_get_named_gpio(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @gpio_is_valid(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_3__*, i8*) #1

declare dso_local %struct.omap_dss_device* @omapdss_of_find_source_for_first_ep(%struct.device_node*) #1

declare dso_local i64 @IS_ERR(%struct.omap_dss_device*) #1

declare dso_local i32 @PTR_ERR(%struct.omap_dss_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
