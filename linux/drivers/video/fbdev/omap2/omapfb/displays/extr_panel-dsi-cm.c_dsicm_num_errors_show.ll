; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-dsi-cm.c_dsicm_num_errors_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-dsi-cm.c_dsicm_num_errors_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.panel_drv_data = type { i32, i64, %struct.omap_dss_device* }
%struct.omap_dss_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)* }

@DCS_READ_NUM_ERRORS = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @dsicm_num_errors_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsicm_num_errors_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.panel_drv_data*, align 8
  %9 = alloca %struct.omap_dss_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.panel_drv_data* @dev_get_drvdata(%struct.device* %12)
  store %struct.panel_drv_data* %13, %struct.panel_drv_data** %8, align 8
  %14 = load %struct.panel_drv_data*, %struct.panel_drv_data** %8, align 8
  %15 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %14, i32 0, i32 2
  %16 = load %struct.omap_dss_device*, %struct.omap_dss_device** %15, align 8
  store %struct.omap_dss_device* %16, %struct.omap_dss_device** %9, align 8
  store i32 0, i32* %10, align 4
  %17 = load %struct.panel_drv_data*, %struct.panel_drv_data** %8, align 8
  %18 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.panel_drv_data*, %struct.panel_drv_data** %8, align 8
  %21 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %50

24:                                               ; preds = %3
  %25 = load %struct.omap_dss_device*, %struct.omap_dss_device** %9, align 8
  %26 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)** %29, align 8
  %31 = load %struct.omap_dss_device*, %struct.omap_dss_device** %9, align 8
  %32 = call i32 %30(%struct.omap_dss_device* %31)
  %33 = load %struct.panel_drv_data*, %struct.panel_drv_data** %8, align 8
  %34 = call i32 @dsicm_wake_up(%struct.panel_drv_data* %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %24
  %38 = load %struct.panel_drv_data*, %struct.panel_drv_data** %8, align 8
  %39 = load i32, i32* @DCS_READ_NUM_ERRORS, align 4
  %40 = call i32 @dsicm_dcs_read_1(%struct.panel_drv_data* %38, i32 %39, i32* %10)
  store i32 %40, i32* %11, align 4
  br label %41

41:                                               ; preds = %37, %24
  %42 = load %struct.omap_dss_device*, %struct.omap_dss_device** %9, align 8
  %43 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)** %46, align 8
  %48 = load %struct.omap_dss_device*, %struct.omap_dss_device** %9, align 8
  %49 = call i32 %47(%struct.omap_dss_device* %48)
  br label %53

50:                                               ; preds = %3
  %51 = load i32, i32* @ENODEV, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %11, align 4
  br label %53

53:                                               ; preds = %50, %41
  %54 = load %struct.panel_drv_data*, %struct.panel_drv_data** %8, align 8
  %55 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %54, i32 0, i32 0
  %56 = call i32 @mutex_unlock(i32* %55)
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* %4, align 4
  br label %66

61:                                               ; preds = %53
  %62 = load i8*, i8** %7, align 8
  %63 = load i32, i32* @PAGE_SIZE, align 4
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @snprintf(i8* %62, i32 %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %64)
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %61, %59
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local %struct.panel_drv_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dsicm_wake_up(%struct.panel_drv_data*) #1

declare dso_local i32 @dsicm_dcs_read_1(%struct.panel_drv_data*, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
