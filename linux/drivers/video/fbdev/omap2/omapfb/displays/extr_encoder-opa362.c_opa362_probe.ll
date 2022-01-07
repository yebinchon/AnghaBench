; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_encoder-opa362.c_opa362_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_encoder-opa362.c_opa362_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.panel_drv_data = type { %struct.omap_dss_device*, %struct.omap_dss_device, %struct.omap_dss_device* }
%struct.omap_dss_device = type { i32, i8*, i8*, %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.gpio_desc = type { i32, i8*, i8*, %struct.TYPE_7__*, %struct.TYPE_6__ }

@.str = private unnamed_addr constant [7 x i8] c"probe\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Unable to find device tree\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"failed to find video source\0A\00", align 1
@opa362_atv_ops = common dso_local global i32 0, align 4
@OMAP_DISPLAY_TYPE_VENC = common dso_local global i8* null, align 8
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Failed to register output\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @opa362_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opa362_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.panel_drv_data*, align 8
  %6 = alloca %struct.omap_dss_device*, align 8
  %7 = alloca %struct.omap_dss_device*, align 8
  %8 = alloca %struct.gpio_desc*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %4, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call i32 @dev_dbg(%struct.TYPE_7__* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.device_node*, %struct.device_node** %4, align 8
  %18 = icmp eq %struct.device_node* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = call i32 @dev_err(%struct.TYPE_7__* %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %105

25:                                               ; preds = %1
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.panel_drv_data* @devm_kzalloc(%struct.TYPE_7__* %27, i32 56, i32 %28)
  store %struct.panel_drv_data* %29, %struct.panel_drv_data** %5, align 8
  %30 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %31 = icmp ne %struct.panel_drv_data* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %105

35:                                               ; preds = %25
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %38 = call i32 @platform_set_drvdata(%struct.platform_device* %36, %struct.panel_drv_data* %37)
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %42 = call %struct.omap_dss_device* @devm_gpiod_get_optional(%struct.TYPE_7__* %40, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  %43 = bitcast %struct.omap_dss_device* %42 to %struct.gpio_desc*
  store %struct.gpio_desc* %43, %struct.gpio_desc** %8, align 8
  %44 = load %struct.gpio_desc*, %struct.gpio_desc** %8, align 8
  %45 = bitcast %struct.gpio_desc* %44 to %struct.omap_dss_device*
  %46 = call i64 @IS_ERR(%struct.omap_dss_device* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %35
  %49 = load %struct.gpio_desc*, %struct.gpio_desc** %8, align 8
  %50 = bitcast %struct.gpio_desc* %49 to %struct.omap_dss_device*
  %51 = call i32 @PTR_ERR(%struct.omap_dss_device* %50)
  store i32 %51, i32* %2, align 4
  br label %105

52:                                               ; preds = %35
  %53 = load %struct.gpio_desc*, %struct.gpio_desc** %8, align 8
  %54 = bitcast %struct.gpio_desc* %53 to %struct.omap_dss_device*
  %55 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %56 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %55, i32 0, i32 2
  store %struct.omap_dss_device* %54, %struct.omap_dss_device** %56, align 8
  %57 = load %struct.device_node*, %struct.device_node** %4, align 8
  %58 = call %struct.omap_dss_device* @omapdss_of_find_source_for_first_ep(%struct.device_node* %57)
  store %struct.omap_dss_device* %58, %struct.omap_dss_device** %7, align 8
  %59 = load %struct.omap_dss_device*, %struct.omap_dss_device** %7, align 8
  %60 = call i64 @IS_ERR(%struct.omap_dss_device* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %52
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 0
  %65 = call i32 @dev_err(%struct.TYPE_7__* %64, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %66 = load %struct.omap_dss_device*, %struct.omap_dss_device** %7, align 8
  %67 = call i32 @PTR_ERR(%struct.omap_dss_device* %66)
  store i32 %67, i32* %2, align 4
  br label %105

68:                                               ; preds = %52
  %69 = load %struct.omap_dss_device*, %struct.omap_dss_device** %7, align 8
  %70 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %71 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %70, i32 0, i32 0
  store %struct.omap_dss_device* %69, %struct.omap_dss_device** %71, align 8
  %72 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %73 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %72, i32 0, i32 1
  store %struct.omap_dss_device* %73, %struct.omap_dss_device** %6, align 8
  %74 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %75 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  store i32* @opa362_atv_ops, i32** %76, align 8
  %77 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %78 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %77, i32 0, i32 0
  %79 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %80 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %79, i32 0, i32 3
  store %struct.TYPE_7__* %78, %struct.TYPE_7__** %80, align 8
  %81 = load i8*, i8** @OMAP_DISPLAY_TYPE_VENC, align 8
  %82 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %83 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %82, i32 0, i32 2
  store i8* %81, i8** %83, align 8
  %84 = load i8*, i8** @OMAP_DISPLAY_TYPE_VENC, align 8
  %85 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %86 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %85, i32 0, i32 1
  store i8* %84, i8** %86, align 8
  %87 = load i32, i32* @THIS_MODULE, align 4
  %88 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %89 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %91 = call i32 @omapdss_register_output(%struct.omap_dss_device* %90)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %68
  %95 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %96 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %95, i32 0, i32 0
  %97 = call i32 @dev_err(%struct.TYPE_7__* %96, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %99

98:                                               ; preds = %68
  store i32 0, i32* %2, align 4
  br label %105

99:                                               ; preds = %94
  %100 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %101 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %100, i32 0, i32 0
  %102 = load %struct.omap_dss_device*, %struct.omap_dss_device** %101, align 8
  %103 = call i32 @omap_dss_put_device(%struct.omap_dss_device* %102)
  %104 = load i32, i32* %9, align 4
  store i32 %104, i32* %2, align 4
  br label %105

105:                                              ; preds = %99, %98, %62, %48, %32, %19
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i32 @dev_dbg(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*) #1

declare dso_local %struct.panel_drv_data* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.panel_drv_data*) #1

declare dso_local %struct.omap_dss_device* @devm_gpiod_get_optional(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.omap_dss_device*) #1

declare dso_local i32 @PTR_ERR(%struct.omap_dss_device*) #1

declare dso_local %struct.omap_dss_device* @omapdss_of_find_source_for_first_ep(%struct.device_node*) #1

declare dso_local i32 @omapdss_register_output(%struct.omap_dss_device*) #1

declare dso_local i32 @omap_dss_put_device(%struct.omap_dss_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
