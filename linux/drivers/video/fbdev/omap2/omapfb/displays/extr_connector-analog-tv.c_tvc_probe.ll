; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_connector-analog-tv.c_tvc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_connector-analog-tv.c_tvc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.panel_drv_data = type { i32, %struct.omap_dss_device, i8*, %struct.TYPE_6__* }
%struct.omap_dss_device = type { %struct.TYPE_5__, i32, i32, %struct.TYPE_6__*, i32* }
%struct.TYPE_5__ = type { i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@tvc_pal_timings = common dso_local global i8* null, align 8
@tvc_driver = common dso_local global i32 0, align 4
@OMAP_DISPLAY_TYPE_VENC = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to register panel\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tvc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tvc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.panel_drv_data*, align 8
  %5 = alloca %struct.omap_dss_device*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.panel_drv_data* @devm_kzalloc(%struct.TYPE_6__* %8, i32 56, i32 %9)
  store %struct.panel_drv_data* %10, %struct.panel_drv_data** %4, align 8
  %11 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %12 = icmp ne %struct.panel_drv_data* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %91

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %19 = call i32 @platform_set_drvdata(%struct.platform_device* %17, %struct.panel_drv_data* %18)
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %23 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %22, i32 0, i32 3
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %23, align 8
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = call i64 @dev_get_platdata(%struct.TYPE_6__* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %16
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = call i32 @tvc_probe_pdata(%struct.platform_device* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %2, align 4
  br label %91

35:                                               ; preds = %28
  br label %54

36:                                               ; preds = %16
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %36
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = call i32 @tvc_probe_of(%struct.platform_device* %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %2, align 4
  br label %91

49:                                               ; preds = %42
  br label %53

50:                                               ; preds = %36
  %51 = load i32, i32* @ENODEV, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %91

53:                                               ; preds = %49
  br label %54

54:                                               ; preds = %53, %35
  %55 = load i8*, i8** @tvc_pal_timings, align 8
  %56 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %57 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %56, i32 0, i32 2
  store i8* %55, i8** %57, align 8
  %58 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %59 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %58, i32 0, i32 1
  store %struct.omap_dss_device* %59, %struct.omap_dss_device** %5, align 8
  %60 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %61 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %60, i32 0, i32 4
  store i32* @tvc_driver, i32** %61, align 8
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %62, i32 0, i32 0
  %64 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %65 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %64, i32 0, i32 3
  store %struct.TYPE_6__* %63, %struct.TYPE_6__** %65, align 8
  %66 = load i32, i32* @OMAP_DISPLAY_TYPE_VENC, align 4
  %67 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %68 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @THIS_MODULE, align 4
  %70 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %71 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 8
  %72 = load i8*, i8** @tvc_pal_timings, align 8
  %73 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %74 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  store i8* %72, i8** %75, align 8
  %76 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %77 = call i32 @omapdss_register_display(%struct.omap_dss_device* %76)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %54
  %81 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %82 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %81, i32 0, i32 0
  %83 = call i32 @dev_err(%struct.TYPE_6__* %82, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %85

84:                                               ; preds = %54
  store i32 0, i32* %2, align 4
  br label %91

85:                                               ; preds = %80
  %86 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %87 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @omap_dss_put_device(i32 %88)
  %90 = load i32, i32* %6, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %85, %84, %50, %47, %33, %13
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local %struct.panel_drv_data* @devm_kzalloc(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.panel_drv_data*) #1

declare dso_local i64 @dev_get_platdata(%struct.TYPE_6__*) #1

declare dso_local i32 @tvc_probe_pdata(%struct.platform_device*) #1

declare dso_local i32 @tvc_probe_of(%struct.platform_device*) #1

declare dso_local i32 @omapdss_register_display(%struct.omap_dss_device*) #1

declare dso_local i32 @dev_err(%struct.TYPE_6__*, i8*) #1

declare dso_local i32 @omap_dss_put_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
