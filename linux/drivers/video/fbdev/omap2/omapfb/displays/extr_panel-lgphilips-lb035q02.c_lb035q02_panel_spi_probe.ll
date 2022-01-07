; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-lgphilips-lb035q02.c_lb035q02_panel_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-lgphilips-lb035q02.c_lb035q02_panel_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.panel_drv_data = type { i32, i32, i32, %struct.omap_dss_device, i32, %struct.spi_device* }
%struct.omap_dss_device = type { %struct.TYPE_10__, %struct.TYPE_8__, i32, i32, i32*, %struct.TYPE_11__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GPIOF_OUT_INIT_LOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"panel backlight\00", align 1
@lb035q02_timings = common dso_local global i32 0, align 4
@lb035q02_ops = common dso_local global i32 0, align 4
@OMAP_DISPLAY_TYPE_DPI = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to register panel\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @lb035q02_panel_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lb035q02_panel_spi_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.panel_drv_data*, align 8
  %5 = alloca %struct.omap_dss_device*, align 8
  %6 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %104

15:                                               ; preds = %1
  %16 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %17 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %16, i32 0, i32 0
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.panel_drv_data* @devm_kzalloc(%struct.TYPE_11__* %17, i32 64, i32 %18)
  store %struct.panel_drv_data* %19, %struct.panel_drv_data** %4, align 8
  %20 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %21 = icmp eq %struct.panel_drv_data* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %104

25:                                               ; preds = %15
  %26 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %27 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %26, i32 0, i32 0
  %28 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %29 = call i32 @dev_set_drvdata(%struct.TYPE_11__* %27, %struct.panel_drv_data* %28)
  %30 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %31 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %32 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %31, i32 0, i32 5
  store %struct.spi_device* %30, %struct.spi_device** %32, align 8
  %33 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %34 = call i32 @lb035q02_probe_of(%struct.spi_device* %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %25
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %2, align 4
  br label %104

39:                                               ; preds = %25
  %40 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %41 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = call i64 @gpio_is_valid(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %39
  %46 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %47 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %46, i32 0, i32 0
  %48 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %49 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @GPIOF_OUT_INIT_LOW, align 4
  %52 = call i32 @devm_gpio_request_one(%struct.TYPE_11__* %47, i32 %50, i32 %51, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  br label %98

56:                                               ; preds = %45
  br label %57

57:                                               ; preds = %56, %39
  %58 = load i32, i32* @lb035q02_timings, align 4
  %59 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %60 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 8
  %61 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %62 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %61, i32 0, i32 3
  store %struct.omap_dss_device* %62, %struct.omap_dss_device** %5, align 8
  %63 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %64 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %63, i32 0, i32 0
  %65 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %66 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %65, i32 0, i32 5
  store %struct.TYPE_11__* %64, %struct.TYPE_11__** %66, align 8
  %67 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %68 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %67, i32 0, i32 4
  store i32* @lb035q02_ops, i32** %68, align 8
  %69 = load i32, i32* @OMAP_DISPLAY_TYPE_DPI, align 4
  %70 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %71 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @THIS_MODULE, align 4
  %73 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %74 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %76 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %79 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  store i32 %77, i32* %80, align 4
  %81 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %82 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %85 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  store i32 %83, i32* %87, align 8
  %88 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %89 = call i32 @omapdss_register_display(%struct.omap_dss_device* %88)
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* %6, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %57
  %93 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %94 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %93, i32 0, i32 0
  %95 = call i32 @dev_err(%struct.TYPE_11__* %94, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %97

96:                                               ; preds = %57
  store i32 0, i32* %2, align 4
  br label %104

97:                                               ; preds = %92
  br label %98

98:                                               ; preds = %97, %55
  %99 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %100 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @omap_dss_put_device(i32 %101)
  %103 = load i32, i32* %6, align 4
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %98, %96, %37, %22, %12
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local %struct.panel_drv_data* @devm_kzalloc(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_11__*, %struct.panel_drv_data*) #1

declare dso_local i32 @lb035q02_probe_of(%struct.spi_device*) #1

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
