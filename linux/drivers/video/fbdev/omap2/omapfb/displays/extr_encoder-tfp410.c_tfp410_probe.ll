; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_encoder-tfp410.c_tfp410_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_encoder-tfp410.c_tfp410_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.panel_drv_data = type { i32, i32, %struct.omap_dss_device, i32 }
%struct.omap_dss_device = type { i32, %struct.TYPE_9__, i32, i32, i32, %struct.TYPE_10__*, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32* }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GPIOF_OUT_INIT_LOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"tfp410 PD\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to request PD GPIO %d\0A\00", align 1
@tfp410_dvi_ops = common dso_local global i32 0, align 4
@OMAP_DISPLAY_TYPE_DPI = common dso_local global i32 0, align 4
@OMAP_DISPLAY_TYPE_DVI = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Failed to register output\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tfp410_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tfp410_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.panel_drv_data*, align 8
  %5 = alloca %struct.omap_dss_device*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %103

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.panel_drv_data* @devm_kzalloc(%struct.TYPE_10__* %17, i32 56, i32 %18)
  store %struct.panel_drv_data* %19, %struct.panel_drv_data** %4, align 8
  %20 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %21 = icmp ne %struct.panel_drv_data* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %103

25:                                               ; preds = %15
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %28 = call i32 @platform_set_drvdata(%struct.platform_device* %26, %struct.panel_drv_data* %27)
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = call i32 @tfp410_probe_of(%struct.platform_device* %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %2, align 4
  br label %103

35:                                               ; preds = %25
  %36 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %37 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @gpio_is_valid(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %59

41:                                               ; preds = %35
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %42, i32 0, i32 0
  %44 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %45 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @GPIOF_OUT_INIT_LOW, align 4
  %48 = call i32 @devm_gpio_request_one(%struct.TYPE_10__* %43, i32 %46, i32 %47, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %41
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %55 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %53, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  br label %97

58:                                               ; preds = %41
  br label %59

59:                                               ; preds = %58, %35
  %60 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %61 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %60, i32 0, i32 2
  store %struct.omap_dss_device* %61, %struct.omap_dss_device** %5, align 8
  %62 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %63 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %62, i32 0, i32 6
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  store i32* @tfp410_dvi_ops, i32** %64, align 8
  %65 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %65, i32 0, i32 0
  %67 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %68 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %67, i32 0, i32 5
  store %struct.TYPE_10__* %66, %struct.TYPE_10__** %68, align 8
  %69 = load i32, i32* @OMAP_DISPLAY_TYPE_DPI, align 4
  %70 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %71 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %70, i32 0, i32 4
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* @OMAP_DISPLAY_TYPE_DVI, align 4
  %73 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %74 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* @THIS_MODULE, align 4
  %76 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %77 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %79 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %82 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  store i32 %80, i32* %84, align 4
  %85 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %86 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %85, i32 0, i32 0
  store i32 1, i32* %86, align 8
  %87 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %88 = call i32 @omapdss_register_output(%struct.omap_dss_device* %87)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %59
  %92 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %93 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %92, i32 0, i32 0
  %94 = call i32 (%struct.TYPE_10__*, i8*, ...) @dev_err(%struct.TYPE_10__* %93, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %96

95:                                               ; preds = %59
  store i32 0, i32* %2, align 4
  br label %103

96:                                               ; preds = %91
  br label %97

97:                                               ; preds = %96, %51
  %98 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %99 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @omap_dss_put_device(i32 %100)
  %102 = load i32, i32* %6, align 4
  store i32 %102, i32* %2, align 4
  br label %103

103:                                              ; preds = %97, %95, %33, %22, %12
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local %struct.panel_drv_data* @devm_kzalloc(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.panel_drv_data*) #1

declare dso_local i32 @tfp410_probe_of(%struct.platform_device*) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @devm_gpio_request_one(%struct.TYPE_10__*, i32, i32, i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_10__*, i8*, ...) #1

declare dso_local i32 @omapdss_register_output(%struct.omap_dss_device*) #1

declare dso_local i32 @omap_dss_put_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
