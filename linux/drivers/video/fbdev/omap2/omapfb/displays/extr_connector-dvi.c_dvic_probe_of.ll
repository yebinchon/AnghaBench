; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_connector-dvi.c_dvic_probe_of.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_connector-dvi.c_dvic_probe_of.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.panel_drv_data = type { %struct.i2c_adapter*, %struct.omap_dss_device* }
%struct.i2c_adapter = type { i32 }
%struct.omap_dss_device = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"failed to find video source\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"ddc-i2c-bus\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to parse ddc-i2c-bus\0A\00", align 1
@EPROBE_DEFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dvic_probe_of to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvic_probe_of(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.panel_drv_data*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.omap_dss_device*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.i2c_adapter*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = call %struct.panel_drv_data* @platform_get_drvdata(%struct.platform_device* %9)
  store %struct.panel_drv_data* %10, %struct.panel_drv_data** %4, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %5, align 8
  %15 = load %struct.device_node*, %struct.device_node** %5, align 8
  %16 = call %struct.omap_dss_device* @omapdss_of_find_source_for_first_ep(%struct.device_node* %15)
  store %struct.omap_dss_device* %16, %struct.omap_dss_device** %6, align 8
  %17 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %18 = call i64 @IS_ERR(%struct.omap_dss_device* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = call i32 @dev_err(%struct.TYPE_2__* %22, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %25 = call i32 @PTR_ERR(%struct.omap_dss_device* %24)
  store i32 %25, i32* %2, align 4
  br label %54

26:                                               ; preds = %1
  %27 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %28 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %29 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %28, i32 0, i32 1
  store %struct.omap_dss_device* %27, %struct.omap_dss_device** %29, align 8
  %30 = load %struct.device_node*, %struct.device_node** %5, align 8
  %31 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %30, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store %struct.device_node* %31, %struct.device_node** %7, align 8
  %32 = load %struct.device_node*, %struct.device_node** %7, align 8
  %33 = icmp ne %struct.device_node* %32, null
  br i1 %33, label %34, label %53

34:                                               ; preds = %26
  %35 = load %struct.device_node*, %struct.device_node** %7, align 8
  %36 = call %struct.i2c_adapter* @of_get_i2c_adapter_by_node(%struct.device_node* %35)
  store %struct.i2c_adapter* %36, %struct.i2c_adapter** %8, align 8
  %37 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %38 = icmp eq %struct.i2c_adapter* %37, null
  br i1 %38, label %39, label %49

39:                                               ; preds = %34
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = call i32 @dev_err(%struct.TYPE_2__* %41, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %43 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %44 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %43, i32 0, i32 1
  %45 = load %struct.omap_dss_device*, %struct.omap_dss_device** %44, align 8
  %46 = call i32 @omap_dss_put_device(%struct.omap_dss_device* %45)
  %47 = load i32, i32* @EPROBE_DEFER, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %54

49:                                               ; preds = %34
  %50 = load %struct.i2c_adapter*, %struct.i2c_adapter** %8, align 8
  %51 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %52 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %51, i32 0, i32 0
  store %struct.i2c_adapter* %50, %struct.i2c_adapter** %52, align 8
  br label %53

53:                                               ; preds = %49, %26
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %53, %39, %20
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local %struct.panel_drv_data* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.omap_dss_device* @omapdss_of_find_source_for_first_ep(%struct.device_node*) #1

declare dso_local i64 @IS_ERR(%struct.omap_dss_device*) #1

declare dso_local i32 @dev_err(%struct.TYPE_2__*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.omap_dss_device*) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local %struct.i2c_adapter* @of_get_i2c_adapter_by_node(%struct.device_node*) #1

declare dso_local i32 @omap_dss_put_device(%struct.omap_dss_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
