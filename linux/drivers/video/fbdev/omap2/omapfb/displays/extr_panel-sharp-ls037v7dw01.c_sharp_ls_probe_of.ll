; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-sharp-ls037v7dw01.c_sharp_ls_probe_of.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-sharp-ls037v7dw01.c_sharp_ls_probe_of.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.panel_drv_data = type { %struct.omap_dss_device*, i32, i32, i32, i32, i32, %struct.omap_dss_device* }
%struct.omap_dss_device = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"envdd\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to get regulator\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"failed to find video source\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sharp_ls_probe_of to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sharp_ls_probe_of(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.panel_drv_data*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.omap_dss_device*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = call %struct.panel_drv_data* @platform_get_drvdata(%struct.platform_device* %8)
  store %struct.panel_drv_data* %9, %struct.panel_drv_data** %4, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %5, align 8
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call %struct.omap_dss_device* @devm_regulator_get(%struct.TYPE_4__* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %18 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %17, i32 0, i32 6
  store %struct.omap_dss_device* %16, %struct.omap_dss_device** %18, align 8
  %19 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %20 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %19, i32 0, i32 6
  %21 = load %struct.omap_dss_device*, %struct.omap_dss_device** %20, align 8
  %22 = call i64 @IS_ERR(%struct.omap_dss_device* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %1
  %25 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = call i32 @dev_err(%struct.TYPE_4__* %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %29 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %28, i32 0, i32 6
  %30 = load %struct.omap_dss_device*, %struct.omap_dss_device** %29, align 8
  %31 = call i32 @PTR_ERR(%struct.omap_dss_device* %30)
  store i32 %31, i32* %2, align 4
  br label %98

32:                                               ; preds = %1
  %33 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %33, i32 0, i32 0
  %35 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %36 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %35, i32 0, i32 5
  %37 = call i32 @sharp_ls_get_gpio_of(%struct.TYPE_4__* %34, i32 0, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %2, align 4
  br label %98

42:                                               ; preds = %32
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %46 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %45, i32 0, i32 4
  %47 = call i32 @sharp_ls_get_gpio_of(%struct.TYPE_4__* %44, i32 0, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32* %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %2, align 4
  br label %98

52:                                               ; preds = %42
  %53 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %54 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %53, i32 0, i32 0
  %55 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %56 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %55, i32 0, i32 3
  %57 = call i32 @sharp_ls_get_gpio_of(%struct.TYPE_4__* %54, i32 0, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %2, align 4
  br label %98

62:                                               ; preds = %52
  %63 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %64 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %63, i32 0, i32 0
  %65 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %66 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %65, i32 0, i32 2
  %67 = call i32 @sharp_ls_get_gpio_of(%struct.TYPE_4__* %64, i32 1, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %62
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %2, align 4
  br label %98

72:                                               ; preds = %62
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 0
  %75 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %76 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %75, i32 0, i32 1
  %77 = call i32 @sharp_ls_get_gpio_of(%struct.TYPE_4__* %74, i32 2, i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %72
  %81 = load i32, i32* %7, align 4
  store i32 %81, i32* %2, align 4
  br label %98

82:                                               ; preds = %72
  %83 = load %struct.device_node*, %struct.device_node** %5, align 8
  %84 = call %struct.omap_dss_device* @omapdss_of_find_source_for_first_ep(%struct.device_node* %83)
  store %struct.omap_dss_device* %84, %struct.omap_dss_device** %6, align 8
  %85 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %86 = call i64 @IS_ERR(%struct.omap_dss_device* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %82
  %89 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %90 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %89, i32 0, i32 0
  %91 = call i32 @dev_err(%struct.TYPE_4__* %90, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %92 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %93 = call i32 @PTR_ERR(%struct.omap_dss_device* %92)
  store i32 %93, i32* %2, align 4
  br label %98

94:                                               ; preds = %82
  %95 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %96 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %97 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %96, i32 0, i32 0
  store %struct.omap_dss_device* %95, %struct.omap_dss_device** %97, align 8
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %94, %88, %80, %70, %60, %50, %40, %24
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local %struct.panel_drv_data* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.omap_dss_device* @devm_regulator_get(%struct.TYPE_4__*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.omap_dss_device*) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.omap_dss_device*) #1

declare dso_local i32 @sharp_ls_get_gpio_of(%struct.TYPE_4__*, i32, i32, i8*, i32*) #1

declare dso_local %struct.omap_dss_device* @omapdss_of_find_source_for_first_ep(%struct.device_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
