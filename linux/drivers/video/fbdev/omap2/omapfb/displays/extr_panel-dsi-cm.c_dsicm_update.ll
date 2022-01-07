; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-dsi-cm.c_dsicm_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-dsi-cm.c_dsicm_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (%struct.omap_dss_device*, i32, i32, %struct.panel_drv_data*)*, i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)* }
%struct.panel_drv_data = type { i32, i32, i32, i32, i32, i64, i32, %struct.TYPE_6__*, %struct.omap_dss_device* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"update %d, %d, %d x %d\0A\00", align 1
@dsicm_framedone_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_dss_device*, i32, i32, i32, i32)* @dsicm_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsicm_update(%struct.omap_dss_device* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.omap_dss_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.panel_drv_data*, align 8
  %13 = alloca %struct.omap_dss_device*, align 8
  %14 = alloca i32, align 4
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.omap_dss_device*, %struct.omap_dss_device** %7, align 8
  %16 = call %struct.panel_drv_data* @to_panel_data(%struct.omap_dss_device* %15)
  store %struct.panel_drv_data* %16, %struct.panel_drv_data** %12, align 8
  %17 = load %struct.panel_drv_data*, %struct.panel_drv_data** %12, align 8
  %18 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %17, i32 0, i32 8
  %19 = load %struct.omap_dss_device*, %struct.omap_dss_device** %18, align 8
  store %struct.omap_dss_device* %19, %struct.omap_dss_device** %13, align 8
  %20 = load %struct.panel_drv_data*, %struct.panel_drv_data** %12, align 8
  %21 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %20, i32 0, i32 7
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %11, align 4
  %28 = call i32 @dev_dbg(i32* %23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25, i32 %26, i32 %27)
  %29 = load %struct.panel_drv_data*, %struct.panel_drv_data** %12, align 8
  %30 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %29, i32 0, i32 0
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.omap_dss_device*, %struct.omap_dss_device** %13, align 8
  %33 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 2
  %37 = load i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)** %36, align 8
  %38 = load %struct.omap_dss_device*, %struct.omap_dss_device** %13, align 8
  %39 = call i32 %37(%struct.omap_dss_device* %38)
  %40 = load %struct.panel_drv_data*, %struct.panel_drv_data** %12, align 8
  %41 = call i32 @dsicm_wake_up(%struct.panel_drv_data* %40)
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %14, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %5
  br label %108

45:                                               ; preds = %5
  %46 = load %struct.panel_drv_data*, %struct.panel_drv_data** %12, align 8
  %47 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  store i32 0, i32* %14, align 4
  br label %108

51:                                               ; preds = %45
  %52 = load %struct.panel_drv_data*, %struct.panel_drv_data** %12, align 8
  %53 = load %struct.omap_dss_device*, %struct.omap_dss_device** %7, align 8
  %54 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.omap_dss_device*, %struct.omap_dss_device** %7, align 8
  %59 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @dsicm_set_update_window(%struct.panel_drv_data* %52, i32 0, i32 0, i32 %57, i32 %62)
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %14, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %51
  br label %108

67:                                               ; preds = %51
  %68 = load %struct.panel_drv_data*, %struct.panel_drv_data** %12, align 8
  %69 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %68, i32 0, i32 5
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %67
  %73 = load %struct.panel_drv_data*, %struct.panel_drv_data** %12, align 8
  %74 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @gpio_is_valid(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %72
  %79 = load %struct.panel_drv_data*, %struct.panel_drv_data** %12, align 8
  %80 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %79, i32 0, i32 3
  %81 = call i32 @msecs_to_jiffies(i32 250)
  %82 = call i32 @schedule_delayed_work(i32* %80, i32 %81)
  %83 = load %struct.panel_drv_data*, %struct.panel_drv_data** %12, align 8
  %84 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %83, i32 0, i32 2
  %85 = call i32 @atomic_set(i32* %84, i32 1)
  br label %104

86:                                               ; preds = %72, %67
  %87 = load %struct.omap_dss_device*, %struct.omap_dss_device** %13, align 8
  %88 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i32 (%struct.omap_dss_device*, i32, i32, %struct.panel_drv_data*)*, i32 (%struct.omap_dss_device*, i32, i32, %struct.panel_drv_data*)** %91, align 8
  %93 = load %struct.omap_dss_device*, %struct.omap_dss_device** %13, align 8
  %94 = load %struct.panel_drv_data*, %struct.panel_drv_data** %12, align 8
  %95 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @dsicm_framedone_cb, align 4
  %98 = load %struct.panel_drv_data*, %struct.panel_drv_data** %12, align 8
  %99 = call i32 %92(%struct.omap_dss_device* %93, i32 %96, i32 %97, %struct.panel_drv_data* %98)
  store i32 %99, i32* %14, align 4
  %100 = load i32, i32* %14, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %86
  br label %108

103:                                              ; preds = %86
  br label %104

104:                                              ; preds = %103, %78
  %105 = load %struct.panel_drv_data*, %struct.panel_drv_data** %12, align 8
  %106 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %105, i32 0, i32 0
  %107 = call i32 @mutex_unlock(i32* %106)
  store i32 0, i32* %6, align 4
  br label %121

108:                                              ; preds = %102, %66, %50, %44
  %109 = load %struct.omap_dss_device*, %struct.omap_dss_device** %13, align 8
  %110 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 1
  %114 = load i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)** %113, align 8
  %115 = load %struct.omap_dss_device*, %struct.omap_dss_device** %13, align 8
  %116 = call i32 %114(%struct.omap_dss_device* %115)
  %117 = load %struct.panel_drv_data*, %struct.panel_drv_data** %12, align 8
  %118 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %117, i32 0, i32 0
  %119 = call i32 @mutex_unlock(i32* %118)
  %120 = load i32, i32* %14, align 4
  store i32 %120, i32* %6, align 4
  br label %121

121:                                              ; preds = %108, %104
  %122 = load i32, i32* %6, align 4
  ret i32 %122
}

declare dso_local %struct.panel_drv_data* @to_panel_data(%struct.omap_dss_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dsicm_wake_up(%struct.panel_drv_data*) #1

declare dso_local i32 @dsicm_set_update_window(%struct.panel_drv_data*, i32, i32, i32, i32) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
