; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-dsi-cm.c_dsicm_enable_te.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-dsi-cm.c_dsicm_enable_te.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)* }
%struct.panel_drv_data = type { i32, i32, i64, %struct.omap_dss_device* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_dss_device*, i32)* @dsicm_enable_te to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsicm_enable_te(%struct.omap_dss_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.omap_dss_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.panel_drv_data*, align 8
  %7 = alloca %struct.omap_dss_device*, align 8
  %8 = alloca i32, align 4
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %10 = call %struct.panel_drv_data* @to_panel_data(%struct.omap_dss_device* %9)
  store %struct.panel_drv_data* %10, %struct.panel_drv_data** %6, align 8
  %11 = load %struct.panel_drv_data*, %struct.panel_drv_data** %6, align 8
  %12 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %11, i32 0, i32 3
  %13 = load %struct.omap_dss_device*, %struct.omap_dss_device** %12, align 8
  store %struct.omap_dss_device* %13, %struct.omap_dss_device** %7, align 8
  %14 = load %struct.panel_drv_data*, %struct.panel_drv_data** %6, align 8
  %15 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %14, i32 0, i32 1
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.panel_drv_data*, %struct.panel_drv_data** %6, align 8
  %18 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %62

23:                                               ; preds = %2
  %24 = load %struct.omap_dss_device*, %struct.omap_dss_device** %7, align 8
  %25 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)** %28, align 8
  %30 = load %struct.omap_dss_device*, %struct.omap_dss_device** %7, align 8
  %31 = call i32 %29(%struct.omap_dss_device* %30)
  %32 = load %struct.panel_drv_data*, %struct.panel_drv_data** %6, align 8
  %33 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %23
  %37 = load %struct.panel_drv_data*, %struct.panel_drv_data** %6, align 8
  %38 = call i32 @dsicm_wake_up(%struct.panel_drv_data* %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %66

42:                                               ; preds = %36
  %43 = load %struct.panel_drv_data*, %struct.panel_drv_data** %6, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @_dsicm_enable_te(%struct.panel_drv_data* %43, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %66

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %49, %23
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.panel_drv_data*, %struct.panel_drv_data** %6, align 8
  %53 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.omap_dss_device*, %struct.omap_dss_device** %7, align 8
  %55 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)** %58, align 8
  %60 = load %struct.omap_dss_device*, %struct.omap_dss_device** %7, align 8
  %61 = call i32 %59(%struct.omap_dss_device* %60)
  br label %62

62:                                               ; preds = %50, %22
  %63 = load %struct.panel_drv_data*, %struct.panel_drv_data** %6, align 8
  %64 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %63, i32 0, i32 1
  %65 = call i32 @mutex_unlock(i32* %64)
  store i32 0, i32* %3, align 4
  br label %79

66:                                               ; preds = %48, %41
  %67 = load %struct.omap_dss_device*, %struct.omap_dss_device** %7, align 8
  %68 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)** %71, align 8
  %73 = load %struct.omap_dss_device*, %struct.omap_dss_device** %7, align 8
  %74 = call i32 %72(%struct.omap_dss_device* %73)
  %75 = load %struct.panel_drv_data*, %struct.panel_drv_data** %6, align 8
  %76 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %75, i32 0, i32 1
  %77 = call i32 @mutex_unlock(i32* %76)
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %66, %62
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.panel_drv_data* @to_panel_data(%struct.omap_dss_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dsicm_wake_up(%struct.panel_drv_data*) #1

declare dso_local i32 @_dsicm_enable_te(%struct.panel_drv_data*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
