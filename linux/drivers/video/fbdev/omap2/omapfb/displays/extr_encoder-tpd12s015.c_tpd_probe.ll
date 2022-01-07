; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_encoder-tpd12s015.c_tpd_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_encoder-tpd12s015.c_tpd_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.omap_dss_device = type { i32, i32, i8*, i8*, %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.panel_drv_data = type { i32, %struct.omap_dss_device, %struct.gpio_desc*, %struct.gpio_desc*, %struct.gpio_desc* }
%struct.gpio_desc = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@GPIOD_IN = common dso_local global i32 0, align 4
@tpd_hdmi_ops = common dso_local global i32 0, align 4
@OMAP_DISPLAY_TYPE_HDMI = common dso_local global i8* null, align 8
@THIS_MODULE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Failed to register output\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tpd_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpd_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.omap_dss_device*, align 8
  %5 = alloca %struct.panel_drv_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gpio_desc*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %8, i32 0, i32 0
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.panel_drv_data* @devm_kzalloc(%struct.TYPE_7__* %9, i32 72, i32 %10)
  store %struct.panel_drv_data* %11, %struct.panel_drv_data** %5, align 8
  %12 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %13 = icmp ne %struct.panel_drv_data* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %116

17:                                               ; preds = %1
  %18 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %19 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %20 = call i32 @platform_set_drvdata(%struct.platform_device* %18, %struct.panel_drv_data* %19)
  %21 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %17
  %27 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %28 = call i32 @tpd_probe_of(%struct.platform_device* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %2, align 4
  br label %116

33:                                               ; preds = %26
  br label %37

34:                                               ; preds = %17
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %116

37:                                               ; preds = %33
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %41 = call %struct.gpio_desc* @devm_gpiod_get_index_optional(%struct.TYPE_7__* %39, i32* null, i32 0, i32 %40)
  store %struct.gpio_desc* %41, %struct.gpio_desc** %7, align 8
  %42 = load %struct.gpio_desc*, %struct.gpio_desc** %7, align 8
  %43 = call i64 @IS_ERR(%struct.gpio_desc* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = load %struct.gpio_desc*, %struct.gpio_desc** %7, align 8
  %47 = call i32 @PTR_ERR(%struct.gpio_desc* %46)
  store i32 %47, i32* %6, align 4
  br label %110

48:                                               ; preds = %37
  %49 = load %struct.gpio_desc*, %struct.gpio_desc** %7, align 8
  %50 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %51 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %50, i32 0, i32 4
  store %struct.gpio_desc* %49, %struct.gpio_desc** %51, align 8
  %52 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %53 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %52, i32 0, i32 0
  %54 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %55 = call %struct.gpio_desc* @devm_gpiod_get_index_optional(%struct.TYPE_7__* %53, i32* null, i32 1, i32 %54)
  store %struct.gpio_desc* %55, %struct.gpio_desc** %7, align 8
  %56 = load %struct.gpio_desc*, %struct.gpio_desc** %7, align 8
  %57 = call i64 @IS_ERR(%struct.gpio_desc* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %48
  %60 = load %struct.gpio_desc*, %struct.gpio_desc** %7, align 8
  %61 = call i32 @PTR_ERR(%struct.gpio_desc* %60)
  store i32 %61, i32* %6, align 4
  br label %110

62:                                               ; preds = %48
  %63 = load %struct.gpio_desc*, %struct.gpio_desc** %7, align 8
  %64 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %65 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %64, i32 0, i32 3
  store %struct.gpio_desc* %63, %struct.gpio_desc** %65, align 8
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %66, i32 0, i32 0
  %68 = load i32, i32* @GPIOD_IN, align 4
  %69 = call %struct.gpio_desc* @devm_gpiod_get_index(%struct.TYPE_7__* %67, i32* null, i32 2, i32 %68)
  store %struct.gpio_desc* %69, %struct.gpio_desc** %7, align 8
  %70 = load %struct.gpio_desc*, %struct.gpio_desc** %7, align 8
  %71 = call i64 @IS_ERR(%struct.gpio_desc* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %62
  %74 = load %struct.gpio_desc*, %struct.gpio_desc** %7, align 8
  %75 = call i32 @PTR_ERR(%struct.gpio_desc* %74)
  store i32 %75, i32* %6, align 4
  br label %110

76:                                               ; preds = %62
  %77 = load %struct.gpio_desc*, %struct.gpio_desc** %7, align 8
  %78 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %79 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %78, i32 0, i32 2
  store %struct.gpio_desc* %77, %struct.gpio_desc** %79, align 8
  %80 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %81 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %80, i32 0, i32 1
  store %struct.omap_dss_device* %81, %struct.omap_dss_device** %4, align 8
  %82 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %83 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %82, i32 0, i32 5
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  store i32* @tpd_hdmi_ops, i32** %84, align 8
  %85 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %86 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %85, i32 0, i32 0
  %87 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %88 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %87, i32 0, i32 4
  store %struct.TYPE_7__* %86, %struct.TYPE_7__** %88, align 8
  %89 = load i8*, i8** @OMAP_DISPLAY_TYPE_HDMI, align 8
  %90 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %91 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %90, i32 0, i32 3
  store i8* %89, i8** %91, align 8
  %92 = load i8*, i8** @OMAP_DISPLAY_TYPE_HDMI, align 8
  %93 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %94 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %93, i32 0, i32 2
  store i8* %92, i8** %94, align 8
  %95 = load i32, i32* @THIS_MODULE, align 4
  %96 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %97 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %99 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %98, i32 0, i32 0
  store i32 1, i32* %99, align 8
  %100 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %101 = call i32 @omapdss_register_output(%struct.omap_dss_device* %100)
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* %6, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %76
  %105 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %106 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %105, i32 0, i32 0
  %107 = call i32 @dev_err(%struct.TYPE_7__* %106, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %109

108:                                              ; preds = %76
  store i32 0, i32* %2, align 4
  br label %116

109:                                              ; preds = %104
  br label %110

110:                                              ; preds = %109, %73, %59, %45
  %111 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %112 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = call i32 @omap_dss_put_device(i32 %113)
  %115 = load i32, i32* %6, align 4
  store i32 %115, i32* %2, align 4
  br label %116

116:                                              ; preds = %110, %108, %34, %31, %14
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local %struct.panel_drv_data* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.panel_drv_data*) #1

declare dso_local i32 @tpd_probe_of(%struct.platform_device*) #1

declare dso_local %struct.gpio_desc* @devm_gpiod_get_index_optional(%struct.TYPE_7__*, i32*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.gpio_desc*) #1

declare dso_local i32 @PTR_ERR(%struct.gpio_desc*) #1

declare dso_local %struct.gpio_desc* @devm_gpiod_get_index(%struct.TYPE_7__*, i32*, i32, i32) #1

declare dso_local i32 @omapdss_register_output(%struct.omap_dss_device*) #1

declare dso_local i32 @dev_err(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @omap_dss_put_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
