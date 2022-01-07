; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-dsi-cm.c_dsicm_probe_of.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-dsi-cm.c_dsicm_probe_of.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.panel_drv_data = type { i32, i32, %struct.omap_dss_device* }
%struct.omap_dss_device = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"reset-gpios\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"failed to parse reset gpio\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"te-gpios\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"failed to parse TE gpio\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"failed to find video source\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dsicm_probe_of to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsicm_probe_of(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.panel_drv_data*, align 8
  %6 = alloca %struct.omap_dss_device*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %4, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %13 = call %struct.panel_drv_data* @platform_get_drvdata(%struct.platform_device* %12)
  store %struct.panel_drv_data* %13, %struct.panel_drv_data** %5, align 8
  %14 = load %struct.device_node*, %struct.device_node** %4, align 8
  %15 = call i32 @of_get_named_gpio(%struct.device_node* %14, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i64 @gpio_is_valid(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = call i32 @dev_err(%struct.TYPE_2__* %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %2, align 4
  br label %63

24:                                               ; preds = %1
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %27 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.device_node*, %struct.device_node** %4, align 8
  %29 = call i32 @of_get_named_gpio(%struct.device_node* %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 0)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i64 @gpio_is_valid(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %24
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @ENOENT, align 4
  %36 = sub nsw i32 0, %35
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %33, %24
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %41 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  br label %47

42:                                               ; preds = %33
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = call i32 @dev_err(%struct.TYPE_2__* %44, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %46 = load i32, i32* %7, align 4
  store i32 %46, i32* %2, align 4
  br label %63

47:                                               ; preds = %38
  %48 = load %struct.device_node*, %struct.device_node** %4, align 8
  %49 = call %struct.omap_dss_device* @omapdss_of_find_source_for_first_ep(%struct.device_node* %48)
  store %struct.omap_dss_device* %49, %struct.omap_dss_device** %6, align 8
  %50 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %51 = call i64 @IS_ERR(%struct.omap_dss_device* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %55 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %54, i32 0, i32 0
  %56 = call i32 @dev_err(%struct.TYPE_2__* %55, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %57 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %58 = call i32 @PTR_ERR(%struct.omap_dss_device* %57)
  store i32 %58, i32* %2, align 4
  br label %63

59:                                               ; preds = %47
  %60 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %61 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %62 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %61, i32 0, i32 2
  store %struct.omap_dss_device* %60, %struct.omap_dss_device** %62, align 8
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %59, %53, %42, %19
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local %struct.panel_drv_data* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @of_get_named_gpio(%struct.device_node*, i8*, i32) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_2__*, i8*) #1

declare dso_local %struct.omap_dss_device* @omapdss_of_find_source_for_first_ep(%struct.device_node*) #1

declare dso_local i64 @IS_ERR(%struct.omap_dss_device*) #1

declare dso_local i32 @PTR_ERR(%struct.omap_dss_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
