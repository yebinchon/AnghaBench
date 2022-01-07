; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-dsi-cm.c_dsicm_exit_ulps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-dsi-cm.c_dsicm_exit_ulps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.panel_drv_data = type { i32, i32, %struct.TYPE_6__*, i32, %struct.omap_dss_device* }
%struct.TYPE_6__ = type { i32 }
%struct.omap_dss_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*, i32, i32)* }

@.str = private unnamed_addr constant [22 x i8] c"failed to enable DSI\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"failed to re-enable TE\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"failed to exit ULPS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.panel_drv_data*)* @dsicm_exit_ulps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsicm_exit_ulps(%struct.panel_drv_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.panel_drv_data*, align 8
  %4 = alloca %struct.omap_dss_device*, align 8
  %5 = alloca i32, align 4
  store %struct.panel_drv_data* %0, %struct.panel_drv_data** %3, align 8
  %6 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %7 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %6, i32 0, i32 4
  %8 = load %struct.omap_dss_device*, %struct.omap_dss_device** %7, align 8
  store %struct.omap_dss_device* %8, %struct.omap_dss_device** %4, align 8
  %9 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %10 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %100

14:                                               ; preds = %1
  %15 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %16 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)** %19, align 8
  %21 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %22 = call i32 %20(%struct.omap_dss_device* %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %14
  %26 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %27 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %26, i32 0, i32 2
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = call i32 @dev_err(i32* %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %96

31:                                               ; preds = %14
  %32 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %33 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32 (%struct.omap_dss_device*, i32, i32)*, i32 (%struct.omap_dss_device*, i32, i32)** %36, align 8
  %38 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %39 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %40 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call i32 %37(%struct.omap_dss_device* %38, i32 %41, i32 1)
  %43 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %44 = call i32 @_dsicm_enable_te(%struct.panel_drv_data* %43, i32 1)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %31
  %48 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %49 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %48, i32 0, i32 2
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = call i32 @dev_err(i32* %51, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %70

53:                                               ; preds = %31
  %54 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %55 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @gpio_is_valid(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %61 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @gpio_to_irq(i32 %62)
  %64 = call i32 @enable_irq(i32 %63)
  br label %65

65:                                               ; preds = %59, %53
  %66 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %67 = call i32 @dsicm_queue_ulps_work(%struct.panel_drv_data* %66)
  %68 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %69 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %68, i32 0, i32 0
  store i32 0, i32* %69, align 8
  store i32 0, i32* %2, align 4
  br label %100

70:                                               ; preds = %47
  %71 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %72 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %71, i32 0, i32 2
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = call i32 @dev_err(i32* %74, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %76 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %77 = call i32 @dsicm_panel_reset(%struct.panel_drv_data* %76)
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %95, label %80

80:                                               ; preds = %70
  %81 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %82 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @gpio_is_valid(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %80
  %87 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %88 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @gpio_to_irq(i32 %89)
  %91 = call i32 @enable_irq(i32 %90)
  br label %92

92:                                               ; preds = %86, %80
  %93 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %94 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %93, i32 0, i32 0
  store i32 0, i32* %94, align 8
  br label %95

95:                                               ; preds = %92, %70
  br label %96

96:                                               ; preds = %95, %25
  %97 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %98 = call i32 @dsicm_queue_ulps_work(%struct.panel_drv_data* %97)
  %99 = load i32, i32* %5, align 4
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %96, %65, %13
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @_dsicm_enable_te(%struct.panel_drv_data*, i32) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @gpio_to_irq(i32) #1

declare dso_local i32 @dsicm_queue_ulps_work(%struct.panel_drv_data*) #1

declare dso_local i32 @dsicm_panel_reset(%struct.panel_drv_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
