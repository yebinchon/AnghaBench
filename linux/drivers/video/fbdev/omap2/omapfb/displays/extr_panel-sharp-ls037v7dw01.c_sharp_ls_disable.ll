; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-sharp-ls037v7dw01.c_sharp_ls_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-sharp-ls037v7dw01.c_sharp_ls_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.omap_dss_device*)* }
%struct.panel_drv_data = type { i64, i64, i64, %struct.omap_dss_device* }

@OMAP_DSS_DISPLAY_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_dss_device*)* @sharp_ls_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sharp_ls_disable(%struct.omap_dss_device* %0) #0 {
  %2 = alloca %struct.omap_dss_device*, align 8
  %3 = alloca %struct.panel_drv_data*, align 8
  %4 = alloca %struct.omap_dss_device*, align 8
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %2, align 8
  %5 = load %struct.omap_dss_device*, %struct.omap_dss_device** %2, align 8
  %6 = call %struct.panel_drv_data* @to_panel_data(%struct.omap_dss_device* %5)
  store %struct.panel_drv_data* %6, %struct.panel_drv_data** %3, align 8
  %7 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %8 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %7, i32 0, i32 3
  %9 = load %struct.omap_dss_device*, %struct.omap_dss_device** %8, align 8
  store %struct.omap_dss_device* %9, %struct.omap_dss_device** %4, align 8
  %10 = load %struct.omap_dss_device*, %struct.omap_dss_device** %2, align 8
  %11 = call i32 @omapdss_device_is_enabled(%struct.omap_dss_device* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %57

14:                                               ; preds = %1
  %15 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %16 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %21 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @gpiod_set_value_cansleep(i64 %22, i32 0)
  br label %24

24:                                               ; preds = %19, %14
  %25 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %26 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %31 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @gpiod_set_value_cansleep(i64 %32, i32 0)
  br label %34

34:                                               ; preds = %29, %24
  %35 = call i32 @msleep(i32 100)
  %36 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %37 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)** %40, align 8
  %42 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %43 = call i32 %41(%struct.omap_dss_device* %42)
  %44 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %45 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %34
  %49 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %50 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @regulator_disable(i64 %51)
  br label %53

53:                                               ; preds = %48, %34
  %54 = load i32, i32* @OMAP_DSS_DISPLAY_DISABLED, align 4
  %55 = load %struct.omap_dss_device*, %struct.omap_dss_device** %2, align 8
  %56 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  br label %57

57:                                               ; preds = %53, %13
  ret void
}

declare dso_local %struct.panel_drv_data* @to_panel_data(%struct.omap_dss_device*) #1

declare dso_local i32 @omapdss_device_is_enabled(%struct.omap_dss_device*) #1

declare dso_local i32 @gpiod_set_value_cansleep(i64, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @regulator_disable(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
