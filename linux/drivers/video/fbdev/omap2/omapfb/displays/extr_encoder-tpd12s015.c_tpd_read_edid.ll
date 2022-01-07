; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_encoder-tpd12s015.c_tpd_read_edid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_encoder-tpd12s015.c_tpd_read_edid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { {}* }
%struct.panel_drv_data = type { i32, i32, %struct.omap_dss_device* }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_dss_device*, i32*, i32)* @tpd_read_edid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpd_read_edid(%struct.omap_dss_device* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.omap_dss_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.panel_drv_data*, align 8
  %9 = alloca %struct.omap_dss_device*, align 8
  %10 = alloca i32, align 4
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %12 = call %struct.panel_drv_data* @to_panel_data(%struct.omap_dss_device* %11)
  store %struct.panel_drv_data* %12, %struct.panel_drv_data** %8, align 8
  %13 = load %struct.panel_drv_data*, %struct.panel_drv_data** %8, align 8
  %14 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %13, i32 0, i32 2
  %15 = load %struct.omap_dss_device*, %struct.omap_dss_device** %14, align 8
  store %struct.omap_dss_device* %15, %struct.omap_dss_device** %9, align 8
  %16 = load %struct.panel_drv_data*, %struct.panel_drv_data** %8, align 8
  %17 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @gpiod_get_value_cansleep(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %45

24:                                               ; preds = %3
  %25 = load %struct.panel_drv_data*, %struct.panel_drv_data** %8, align 8
  %26 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @gpiod_set_value_cansleep(i32 %27, i32 1)
  %29 = load %struct.omap_dss_device*, %struct.omap_dss_device** %9, align 8
  %30 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = bitcast {}** %33 to i32 (%struct.omap_dss_device*, i32*, i32)**
  %35 = load i32 (%struct.omap_dss_device*, i32*, i32)*, i32 (%struct.omap_dss_device*, i32*, i32)** %34, align 8
  %36 = load %struct.omap_dss_device*, %struct.omap_dss_device** %9, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 %35(%struct.omap_dss_device* %36, i32* %37, i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load %struct.panel_drv_data*, %struct.panel_drv_data** %8, align 8
  %41 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @gpiod_set_value_cansleep(i32 %42, i32 0)
  %44 = load i32, i32* %10, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %24, %21
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.panel_drv_data* @to_panel_data(%struct.omap_dss_device*) #1

declare dso_local i32 @gpiod_get_value_cansleep(i32) #1

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
