; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_encoder-opa362.c_opa362_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_encoder-opa362.c_opa362_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { {}*, i32 (%struct.omap_dss_device*, i32*)* }
%struct.panel_drv_data = type { i64, i32, %struct.omap_dss_device* }

@.str = private unnamed_addr constant [8 x i8] c"enable\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@OMAP_DSS_DISPLAY_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_dss_device*)* @opa362_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opa362_enable(%struct.omap_dss_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_dss_device*, align 8
  %4 = alloca %struct.panel_drv_data*, align 8
  %5 = alloca %struct.omap_dss_device*, align 8
  %6 = alloca i32, align 4
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %3, align 8
  %7 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %8 = call %struct.panel_drv_data* @to_panel_data(%struct.omap_dss_device* %7)
  store %struct.panel_drv_data* %8, %struct.panel_drv_data** %4, align 8
  %9 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %10 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %9, i32 0, i32 2
  %11 = load %struct.omap_dss_device*, %struct.omap_dss_device** %10, align 8
  store %struct.omap_dss_device* %11, %struct.omap_dss_device** %5, align 8
  %12 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %13 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @dev_dbg(i32 %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %17 = call i32 @omapdss_device_is_connected(%struct.omap_dss_device* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %65

22:                                               ; preds = %1
  %23 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %24 = call i64 @omapdss_device_is_enabled(%struct.omap_dss_device* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %65

27:                                               ; preds = %22
  %28 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %29 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32 (%struct.omap_dss_device*, i32*)*, i32 (%struct.omap_dss_device*, i32*)** %32, align 8
  %34 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %35 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %36 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %35, i32 0, i32 1
  %37 = call i32 %33(%struct.omap_dss_device* %34, i32* %36)
  %38 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %39 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = bitcast {}** %42 to i32 (%struct.omap_dss_device*)**
  %44 = load i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)** %43, align 8
  %45 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %46 = call i32 %44(%struct.omap_dss_device* %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %27
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %2, align 4
  br label %65

51:                                               ; preds = %27
  %52 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %53 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %58 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @gpiod_set_value_cansleep(i64 %59, i32 1)
  br label %61

61:                                               ; preds = %56, %51
  %62 = load i32, i32* @OMAP_DSS_DISPLAY_ACTIVE, align 4
  %63 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %64 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %61, %49, %26, %19
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.panel_drv_data* @to_panel_data(%struct.omap_dss_device*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @omapdss_device_is_connected(%struct.omap_dss_device*) #1

declare dso_local i64 @omapdss_device_is_enabled(%struct.omap_dss_device*) #1

declare dso_local i32 @gpiod_set_value_cansleep(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
