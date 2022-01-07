; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-dpi.c_panel_dpi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-dpi.c_panel_dpi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.panel_drv_data = type { i32, i32, i32, %struct.omap_dss_device, i32 }
%struct.omap_dss_device = type { %struct.TYPE_10__, %struct.TYPE_8__, i32, i32, i32*, %struct.TYPE_11__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GPIOF_OUT_INIT_LOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"panel backlight\00", align 1
@panel_dpi_ops = common dso_local global i32 0, align 4
@OMAP_DISPLAY_TYPE_DPI = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to register panel\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @panel_dpi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @panel_dpi_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.panel_drv_data*, align 8
  %5 = alloca %struct.omap_dss_device*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.panel_drv_data* @devm_kzalloc(%struct.TYPE_11__* %8, i32 56, i32 %9)
  store %struct.panel_drv_data* %10, %struct.panel_drv_data** %4, align 8
  %11 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %12 = icmp eq %struct.panel_drv_data* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %112

16:                                               ; preds = %1
  %17 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %18 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %19 = call i32 @platform_set_drvdata(%struct.platform_device* %17, %struct.panel_drv_data* %18)
  %20 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %21 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %20, i32 0, i32 0
  %22 = call i64 @dev_get_platdata(%struct.TYPE_11__* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %16
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = call i32 @panel_dpi_probe_pdata(%struct.platform_device* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %2, align 4
  br label %112

31:                                               ; preds = %24
  br label %50

32:                                               ; preds = %16
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %32
  %39 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %40 = call i32 @panel_dpi_probe_of(%struct.platform_device* %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %2, align 4
  br label %112

45:                                               ; preds = %38
  br label %49

46:                                               ; preds = %32
  %47 = load i32, i32* @ENODEV, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %112

49:                                               ; preds = %45
  br label %50

50:                                               ; preds = %49, %31
  %51 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %52 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @gpio_is_valid(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %68

56:                                               ; preds = %50
  %57 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %58 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %57, i32 0, i32 0
  %59 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %60 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @GPIOF_OUT_INIT_LOW, align 4
  %63 = call i32 @devm_gpio_request_one(%struct.TYPE_11__* %58, i32 %61, i32 %62, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %56
  br label %106

67:                                               ; preds = %56
  br label %68

68:                                               ; preds = %67, %50
  %69 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %70 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %69, i32 0, i32 3
  store %struct.omap_dss_device* %70, %struct.omap_dss_device** %5, align 8
  %71 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %72 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 0
  %73 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %74 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %73, i32 0, i32 5
  store %struct.TYPE_11__* %72, %struct.TYPE_11__** %74, align 8
  %75 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %76 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %75, i32 0, i32 4
  store i32* @panel_dpi_ops, i32** %76, align 8
  %77 = load i32, i32* @OMAP_DISPLAY_TYPE_DPI, align 4
  %78 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %79 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %78, i32 0, i32 3
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* @THIS_MODULE, align 4
  %81 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %82 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  %83 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %84 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %87 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  store i32 %85, i32* %88, align 4
  %89 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %90 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %93 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  store i32 %91, i32* %95, align 8
  %96 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %97 = call i32 @omapdss_register_display(%struct.omap_dss_device* %96)
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %6, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %68
  %101 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %102 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %101, i32 0, i32 0
  %103 = call i32 @dev_err(%struct.TYPE_11__* %102, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %105

104:                                              ; preds = %68
  store i32 0, i32* %2, align 4
  br label %112

105:                                              ; preds = %100
  br label %106

106:                                              ; preds = %105, %66
  %107 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %108 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @omap_dss_put_device(i32 %109)
  %111 = load i32, i32* %6, align 4
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %106, %104, %46, %43, %29, %13
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local %struct.panel_drv_data* @devm_kzalloc(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.panel_drv_data*) #1

declare dso_local i64 @dev_get_platdata(%struct.TYPE_11__*) #1

declare dso_local i32 @panel_dpi_probe_pdata(%struct.platform_device*) #1

declare dso_local i32 @panel_dpi_probe_of(%struct.platform_device*) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @devm_gpio_request_one(%struct.TYPE_11__*, i32, i32, i8*) #1

declare dso_local i32 @omapdss_register_display(%struct.omap_dss_device*) #1

declare dso_local i32 @dev_err(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @omap_dss_put_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
