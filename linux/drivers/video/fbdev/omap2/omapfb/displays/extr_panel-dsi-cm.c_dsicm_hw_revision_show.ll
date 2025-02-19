; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-dsi-cm.c_dsicm_hw_revision_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-dsi-cm.c_dsicm_hw_revision_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.panel_drv_data = type { i32, i64, %struct.omap_dss_device* }
%struct.omap_dss_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)* }

@ENODEV = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%02x.%02x.%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @dsicm_hw_revision_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsicm_hw_revision_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.panel_drv_data*, align 8
  %9 = alloca %struct.omap_dss_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call %struct.panel_drv_data* @dev_get_drvdata(%struct.device* %14)
  store %struct.panel_drv_data* %15, %struct.panel_drv_data** %8, align 8
  %16 = load %struct.panel_drv_data*, %struct.panel_drv_data** %8, align 8
  %17 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %16, i32 0, i32 2
  %18 = load %struct.omap_dss_device*, %struct.omap_dss_device** %17, align 8
  store %struct.omap_dss_device* %18, %struct.omap_dss_device** %9, align 8
  %19 = load %struct.panel_drv_data*, %struct.panel_drv_data** %8, align 8
  %20 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.panel_drv_data*, %struct.panel_drv_data** %8, align 8
  %23 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %51

26:                                               ; preds = %3
  %27 = load %struct.omap_dss_device*, %struct.omap_dss_device** %9, align 8
  %28 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)** %31, align 8
  %33 = load %struct.omap_dss_device*, %struct.omap_dss_device** %9, align 8
  %34 = call i32 %32(%struct.omap_dss_device* %33)
  %35 = load %struct.panel_drv_data*, %struct.panel_drv_data** %8, align 8
  %36 = call i32 @dsicm_wake_up(%struct.panel_drv_data* %35)
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %26
  %40 = load %struct.panel_drv_data*, %struct.panel_drv_data** %8, align 8
  %41 = call i32 @dsicm_get_id(%struct.panel_drv_data* %40, i32* %10, i32* %11, i32* %12)
  store i32 %41, i32* %13, align 4
  br label %42

42:                                               ; preds = %39, %26
  %43 = load %struct.omap_dss_device*, %struct.omap_dss_device** %9, align 8
  %44 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)** %47, align 8
  %49 = load %struct.omap_dss_device*, %struct.omap_dss_device** %9, align 8
  %50 = call i32 %48(%struct.omap_dss_device* %49)
  br label %54

51:                                               ; preds = %3
  %52 = load i32, i32* @ENODEV, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %13, align 4
  br label %54

54:                                               ; preds = %51, %42
  %55 = load %struct.panel_drv_data*, %struct.panel_drv_data** %8, align 8
  %56 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %55, i32 0, i32 0
  %57 = call i32 @mutex_unlock(i32* %56)
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* %13, align 4
  store i32 %61, i32* %4, align 4
  br label %69

62:                                               ; preds = %54
  %63 = load i8*, i8** %7, align 8
  %64 = load i32, i32* @PAGE_SIZE, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %12, align 4
  %68 = call i32 @snprintf(i8* %63, i32 %64, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %65, i32 %66, i32 %67)
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %62, %60
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local %struct.panel_drv_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dsicm_wake_up(%struct.panel_drv_data*) #1

declare dso_local i32 @dsicm_get_id(%struct.panel_drv_data*, i32*, i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
