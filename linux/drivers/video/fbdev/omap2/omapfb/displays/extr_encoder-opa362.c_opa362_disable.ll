; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_encoder-opa362.c_opa362_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_encoder-opa362.c_opa362_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.omap_dss_device*)* }
%struct.panel_drv_data = type { i64, %struct.omap_dss_device* }

@.str = private unnamed_addr constant [9 x i8] c"disable\0A\00", align 1
@OMAP_DSS_DISPLAY_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_dss_device*)* @opa362_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opa362_disable(%struct.omap_dss_device* %0) #0 {
  %2 = alloca %struct.omap_dss_device*, align 8
  %3 = alloca %struct.panel_drv_data*, align 8
  %4 = alloca %struct.omap_dss_device*, align 8
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %2, align 8
  %5 = load %struct.omap_dss_device*, %struct.omap_dss_device** %2, align 8
  %6 = call %struct.panel_drv_data* @to_panel_data(%struct.omap_dss_device* %5)
  store %struct.panel_drv_data* %6, %struct.panel_drv_data** %3, align 8
  %7 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %8 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %7, i32 0, i32 1
  %9 = load %struct.omap_dss_device*, %struct.omap_dss_device** %8, align 8
  store %struct.omap_dss_device* %9, %struct.omap_dss_device** %4, align 8
  %10 = load %struct.omap_dss_device*, %struct.omap_dss_device** %2, align 8
  %11 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @dev_dbg(i32 %12, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.omap_dss_device*, %struct.omap_dss_device** %2, align 8
  %15 = call i32 @omapdss_device_is_enabled(%struct.omap_dss_device* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %40

18:                                               ; preds = %1
  %19 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %20 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %25 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @gpiod_set_value_cansleep(i64 %26, i32 0)
  br label %28

28:                                               ; preds = %23, %18
  %29 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %30 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)** %33, align 8
  %35 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %36 = call i32 %34(%struct.omap_dss_device* %35)
  %37 = load i32, i32* @OMAP_DSS_DISPLAY_DISABLED, align 4
  %38 = load %struct.omap_dss_device*, %struct.omap_dss_device** %2, align 8
  %39 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  br label %40

40:                                               ; preds = %28, %17
  ret void
}

declare dso_local %struct.panel_drv_data* @to_panel_data(%struct.omap_dss_device*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @omapdss_device_is_enabled(%struct.omap_dss_device*) #1

declare dso_local i32 @gpiod_set_value_cansleep(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
