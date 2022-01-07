; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_encoder-tpd12s015.c_tpd_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_encoder-tpd12s015.c_tpd_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { %struct.TYPE_4__, %struct.omap_dss_device*, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.omap_dss_device*, i32*)* }
%struct.panel_drv_data = type { i32, i32, %struct.omap_dss_device* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_dss_device*, %struct.omap_dss_device*)* @tpd_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tpd_disconnect(%struct.omap_dss_device* %0, %struct.omap_dss_device* %1) #0 {
  %3 = alloca %struct.omap_dss_device*, align 8
  %4 = alloca %struct.omap_dss_device*, align 8
  %5 = alloca %struct.panel_drv_data*, align 8
  %6 = alloca %struct.omap_dss_device*, align 8
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %3, align 8
  store %struct.omap_dss_device* %1, %struct.omap_dss_device** %4, align 8
  %7 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %8 = call %struct.panel_drv_data* @to_panel_data(%struct.omap_dss_device* %7)
  store %struct.panel_drv_data* %8, %struct.panel_drv_data** %5, align 8
  %9 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %10 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %9, i32 0, i32 2
  %11 = load %struct.omap_dss_device*, %struct.omap_dss_device** %10, align 8
  store %struct.omap_dss_device* %11, %struct.omap_dss_device** %6, align 8
  %12 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %13 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %14 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %13, i32 0, i32 1
  %15 = load %struct.omap_dss_device*, %struct.omap_dss_device** %14, align 8
  %16 = icmp ne %struct.omap_dss_device* %12, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @WARN_ON(i32 %17)
  %19 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %20 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %21 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %20, i32 0, i32 1
  %22 = load %struct.omap_dss_device*, %struct.omap_dss_device** %21, align 8
  %23 = icmp ne %struct.omap_dss_device* %19, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %44

25:                                               ; preds = %2
  %26 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %27 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @gpiod_set_value_cansleep(i32 %28, i32 0)
  %30 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %31 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %30, i32 0, i32 2
  store i32* null, i32** %31, align 8
  %32 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %33 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %32, i32 0, i32 1
  store %struct.omap_dss_device* null, %struct.omap_dss_device** %33, align 8
  %34 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %35 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32 (%struct.omap_dss_device*, i32*)*, i32 (%struct.omap_dss_device*, i32*)** %38, align 8
  %40 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %41 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %42 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %41, i32 0, i32 0
  %43 = call i32 %39(%struct.omap_dss_device* %40, i32* %42)
  br label %44

44:                                               ; preds = %25, %24
  ret void
}

declare dso_local %struct.panel_drv_data* @to_panel_data(%struct.omap_dss_device*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @gpiod_set_value_cansleep(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
