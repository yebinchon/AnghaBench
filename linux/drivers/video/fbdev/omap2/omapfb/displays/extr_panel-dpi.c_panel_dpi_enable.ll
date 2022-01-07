; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-dpi.c_panel_dpi_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-dpi.c_panel_dpi_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { {}*, i32 (%struct.omap_dss_device*, i32*)*, i32 (%struct.omap_dss_device*, i64)* }
%struct.panel_drv_data = type { i32, i32, i32, i64, %struct.omap_dss_device* }

@ENODEV = common dso_local global i32 0, align 4
@OMAP_DSS_DISPLAY_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_dss_device*)* @panel_dpi_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @panel_dpi_enable(%struct.omap_dss_device* %0) #0 {
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
  %10 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %9, i32 0, i32 4
  %11 = load %struct.omap_dss_device*, %struct.omap_dss_device** %10, align 8
  store %struct.omap_dss_device* %11, %struct.omap_dss_device** %5, align 8
  %12 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %13 = call i32 @omapdss_device_is_connected(%struct.omap_dss_device* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %83

18:                                               ; preds = %1
  %19 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %20 = call i64 @omapdss_device_is_enabled(%struct.omap_dss_device* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %83

23:                                               ; preds = %18
  %24 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %25 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %23
  %29 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %30 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load i32 (%struct.omap_dss_device*, i64)*, i32 (%struct.omap_dss_device*, i64)** %33, align 8
  %35 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %36 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %37 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = call i32 %34(%struct.omap_dss_device* %35, i64 %38)
  br label %40

40:                                               ; preds = %28, %23
  %41 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %42 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32 (%struct.omap_dss_device*, i32*)*, i32 (%struct.omap_dss_device*, i32*)** %45, align 8
  %47 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %48 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %49 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %48, i32 0, i32 2
  %50 = call i32 %46(%struct.omap_dss_device* %47, i32* %49)
  %51 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %52 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = bitcast {}** %55 to i32 (%struct.omap_dss_device*)**
  %57 = load i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)** %56, align 8
  %58 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %59 = call i32 %57(%struct.omap_dss_device* %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %40
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %2, align 4
  br label %83

64:                                               ; preds = %40
  %65 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %66 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @gpiod_set_value_cansleep(i32 %67, i32 1)
  %69 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %70 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @gpio_is_valid(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %64
  %75 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %76 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @gpio_set_value_cansleep(i32 %77, i32 1)
  br label %79

79:                                               ; preds = %74, %64
  %80 = load i32, i32* @OMAP_DSS_DISPLAY_ACTIVE, align 4
  %81 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %82 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %79, %62, %22, %15
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local %struct.panel_drv_data* @to_panel_data(%struct.omap_dss_device*) #1

declare dso_local i32 @omapdss_device_is_connected(%struct.omap_dss_device*) #1

declare dso_local i64 @omapdss_device_is_enabled(%struct.omap_dss_device*) #1

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @gpio_set_value_cansleep(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
