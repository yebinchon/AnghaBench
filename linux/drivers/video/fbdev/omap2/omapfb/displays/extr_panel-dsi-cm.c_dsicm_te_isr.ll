; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-dsi-cm.c_dsicm_te_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-dsi-cm.c_dsicm_te_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.panel_drv_data = type { %struct.TYPE_4__*, i32, i32, i32, %struct.omap_dss_device* }
%struct.TYPE_4__ = type { i32 }
%struct.omap_dss_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.omap_dss_device*, i32, i32, %struct.panel_drv_data*)*, i32 (%struct.omap_dss_device*)* }

@dsicm_framedone_cb = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"start update failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @dsicm_te_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsicm_te_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.panel_drv_data*, align 8
  %7 = alloca %struct.omap_dss_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.panel_drv_data*
  store %struct.panel_drv_data* %11, %struct.panel_drv_data** %6, align 8
  %12 = load %struct.panel_drv_data*, %struct.panel_drv_data** %6, align 8
  %13 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %12, i32 0, i32 4
  %14 = load %struct.omap_dss_device*, %struct.omap_dss_device** %13, align 8
  store %struct.omap_dss_device* %14, %struct.omap_dss_device** %7, align 8
  %15 = load %struct.panel_drv_data*, %struct.panel_drv_data** %6, align 8
  %16 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %15, i32 0, i32 3
  %17 = call i32 @atomic_cmpxchg(i32* %16, i32 1, i32 0)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %41

20:                                               ; preds = %2
  %21 = load %struct.panel_drv_data*, %struct.panel_drv_data** %6, align 8
  %22 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %21, i32 0, i32 2
  %23 = call i32 @cancel_delayed_work(i32* %22)
  %24 = load %struct.omap_dss_device*, %struct.omap_dss_device** %7, align 8
  %25 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32 (%struct.omap_dss_device*, i32, i32, %struct.panel_drv_data*)*, i32 (%struct.omap_dss_device*, i32, i32, %struct.panel_drv_data*)** %28, align 8
  %30 = load %struct.omap_dss_device*, %struct.omap_dss_device** %7, align 8
  %31 = load %struct.panel_drv_data*, %struct.panel_drv_data** %6, align 8
  %32 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @dsicm_framedone_cb, align 4
  %35 = load %struct.panel_drv_data*, %struct.panel_drv_data** %6, align 8
  %36 = call i32 %29(%struct.omap_dss_device* %30, i32 %33, i32 %34, %struct.panel_drv_data* %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %20
  br label %43

40:                                               ; preds = %20
  br label %41

41:                                               ; preds = %40, %2
  %42 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %42, i32* %3, align 4
  br label %58

43:                                               ; preds = %39
  %44 = load %struct.panel_drv_data*, %struct.panel_drv_data** %6, align 8
  %45 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = call i32 @dev_err(i32* %47, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %49 = load %struct.omap_dss_device*, %struct.omap_dss_device** %7, align 8
  %50 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = load i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)** %53, align 8
  %55 = load %struct.omap_dss_device*, %struct.omap_dss_device** %7, align 8
  %56 = call i32 %54(%struct.omap_dss_device* %55)
  %57 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %43, %41
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @atomic_cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
