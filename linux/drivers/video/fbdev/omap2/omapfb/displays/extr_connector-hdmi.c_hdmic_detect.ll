; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_connector-hdmi.c_hdmic_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_connector-hdmi.c_hdmic_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { {}* }
%struct.panel_drv_data = type { i32, %struct.omap_dss_device* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_dss_device*)* @hdmic_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmic_detect(%struct.omap_dss_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_dss_device*, align 8
  %4 = alloca %struct.panel_drv_data*, align 8
  %5 = alloca %struct.omap_dss_device*, align 8
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %3, align 8
  %6 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %7 = call %struct.panel_drv_data* @to_panel_data(%struct.omap_dss_device* %6)
  store %struct.panel_drv_data* %7, %struct.panel_drv_data** %4, align 8
  %8 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %9 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %8, i32 0, i32 1
  %10 = load %struct.omap_dss_device*, %struct.omap_dss_device** %9, align 8
  store %struct.omap_dss_device* %10, %struct.omap_dss_device** %5, align 8
  %11 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %12 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @gpio_is_valid(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %18 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @gpio_get_value_cansleep(i32 %19)
  store i32 %20, i32* %2, align 4
  br label %31

21:                                               ; preds = %1
  %22 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %23 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = bitcast {}** %26 to i32 (%struct.omap_dss_device*)**
  %28 = load i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)** %27, align 8
  %29 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %30 = call i32 %28(%struct.omap_dss_device* %29)
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %21, %16
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local %struct.panel_drv_data* @to_panel_data(%struct.omap_dss_device*) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @gpio_get_value_cansleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
