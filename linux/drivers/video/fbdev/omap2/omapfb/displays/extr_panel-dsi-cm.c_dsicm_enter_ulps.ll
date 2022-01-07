; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-dsi-cm.c_dsicm_enter_ulps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-dsi-cm.c_dsicm_enter_ulps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.panel_drv_data = type { i32, %struct.TYPE_6__*, i32, %struct.omap_dss_device* }
%struct.TYPE_6__ = type { i32 }
%struct.omap_dss_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.omap_dss_device*, i32, i32)* }

@.str = private unnamed_addr constant [18 x i8] c"enter ULPS failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.panel_drv_data*)* @dsicm_enter_ulps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsicm_enter_ulps(%struct.panel_drv_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.panel_drv_data*, align 8
  %4 = alloca %struct.omap_dss_device*, align 8
  %5 = alloca i32, align 4
  store %struct.panel_drv_data* %0, %struct.panel_drv_data** %3, align 8
  %6 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %7 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %6, i32 0, i32 3
  %8 = load %struct.omap_dss_device*, %struct.omap_dss_device** %7, align 8
  store %struct.omap_dss_device* %8, %struct.omap_dss_device** %4, align 8
  %9 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %10 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %58

14:                                               ; preds = %1
  %15 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %16 = call i32 @dsicm_cancel_ulps_work(%struct.panel_drv_data* %15)
  %17 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %18 = call i32 @_dsicm_enable_te(%struct.panel_drv_data* %17, i32 0)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14
  br label %45

22:                                               ; preds = %14
  %23 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %24 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @gpio_is_valid(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %30 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @gpio_to_irq(i32 %31)
  %33 = call i32 @disable_irq(i32 %32)
  br label %34

34:                                               ; preds = %28, %22
  %35 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %36 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32 (%struct.omap_dss_device*, i32, i32)*, i32 (%struct.omap_dss_device*, i32, i32)** %39, align 8
  %41 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %42 = call i32 %40(%struct.omap_dss_device* %41, i32 0, i32 1)
  %43 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %44 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  store i32 0, i32* %2, align 4
  br label %58

45:                                               ; preds = %21
  %46 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %47 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %46, i32 0, i32 1
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = call i32 @dev_err(i32* %49, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %51 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %52 = call i32 @dsicm_panel_reset(%struct.panel_drv_data* %51)
  %53 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %54 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %53, i32 0, i32 0
  store i32 0, i32* %54, align 8
  %55 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %56 = call i32 @dsicm_queue_ulps_work(%struct.panel_drv_data* %55)
  %57 = load i32, i32* %5, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %45, %34, %13
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @dsicm_cancel_ulps_work(%struct.panel_drv_data*) #1

declare dso_local i32 @_dsicm_enable_te(%struct.panel_drv_data*, i32) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @gpio_to_irq(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dsicm_panel_reset(%struct.panel_drv_data*) #1

declare dso_local i32 @dsicm_queue_ulps_work(%struct.panel_drv_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
