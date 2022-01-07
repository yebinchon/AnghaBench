; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-sharp-ls037v7dw01.c_sharp_ls_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-sharp-ls037v7dw01.c_sharp_ls_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.panel_drv_data = type { i32, i32, i32, %struct.omap_dss_device }
%struct.omap_dss_device = type { %struct.TYPE_8__, %struct.TYPE_6__, i32, i32, i32*, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sharp_ls_timings = common dso_local global i32 0, align 4
@sharp_ls_ops = common dso_local global i32 0, align 4
@OMAP_DISPLAY_TYPE_DPI = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to register panel\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sharp_ls_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sharp_ls_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.panel_drv_data*, align 8
  %5 = alloca %struct.omap_dss_device*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %81

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.panel_drv_data* @devm_kzalloc(%struct.TYPE_9__* %17, i32 48, i32 %18)
  store %struct.panel_drv_data* %19, %struct.panel_drv_data** %4, align 8
  %20 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %21 = icmp eq %struct.panel_drv_data* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %81

25:                                               ; preds = %15
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %28 = call i32 @platform_set_drvdata(%struct.platform_device* %26, %struct.panel_drv_data* %27)
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = call i32 @sharp_ls_probe_of(%struct.platform_device* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %2, align 4
  br label %81

35:                                               ; preds = %25
  %36 = load i32, i32* @sharp_ls_timings, align 4
  %37 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %38 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %40 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %39, i32 0, i32 3
  store %struct.omap_dss_device* %40, %struct.omap_dss_device** %5, align 8
  %41 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %42 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %41, i32 0, i32 0
  %43 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %44 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %43, i32 0, i32 5
  store %struct.TYPE_9__* %42, %struct.TYPE_9__** %44, align 8
  %45 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %46 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %45, i32 0, i32 4
  store i32* @sharp_ls_ops, i32** %46, align 8
  %47 = load i32, i32* @OMAP_DISPLAY_TYPE_DPI, align 4
  %48 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %49 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @THIS_MODULE, align 4
  %51 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %52 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %54 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %57 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 4
  %59 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %60 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %63 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  store i32 %61, i32* %65, align 8
  %66 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %67 = call i32 @omapdss_register_display(%struct.omap_dss_device* %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %35
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 0
  %73 = call i32 @dev_err(%struct.TYPE_9__* %72, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %75

74:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %81

75:                                               ; preds = %70
  %76 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %77 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @omap_dss_put_device(i32 %78)
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %75, %74, %33, %22, %12
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local %struct.panel_drv_data* @devm_kzalloc(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.panel_drv_data*) #1

declare dso_local i32 @sharp_ls_probe_of(%struct.platform_device*) #1

declare dso_local i32 @omapdss_register_display(%struct.omap_dss_device*) #1

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*) #1

declare dso_local i32 @omap_dss_put_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
