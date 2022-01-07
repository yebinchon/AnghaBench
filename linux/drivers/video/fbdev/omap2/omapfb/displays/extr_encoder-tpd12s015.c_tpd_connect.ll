; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_encoder-tpd12s015.c_tpd_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_encoder-tpd12s015.c_tpd_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { %struct.omap_dss_device*, %struct.omap_dss_device*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { {}* }
%struct.panel_drv_data = type { i64, %struct.omap_dss_device* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_dss_device*, %struct.omap_dss_device*)* @tpd_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpd_connect(%struct.omap_dss_device* %0, %struct.omap_dss_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.omap_dss_device*, align 8
  %5 = alloca %struct.omap_dss_device*, align 8
  %6 = alloca %struct.panel_drv_data*, align 8
  %7 = alloca %struct.omap_dss_device*, align 8
  %8 = alloca i32, align 4
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %4, align 8
  store %struct.omap_dss_device* %1, %struct.omap_dss_device** %5, align 8
  %9 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %10 = call %struct.panel_drv_data* @to_panel_data(%struct.omap_dss_device* %9)
  store %struct.panel_drv_data* %10, %struct.panel_drv_data** %6, align 8
  %11 = load %struct.panel_drv_data*, %struct.panel_drv_data** %6, align 8
  %12 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %11, i32 0, i32 1
  %13 = load %struct.omap_dss_device*, %struct.omap_dss_device** %12, align 8
  store %struct.omap_dss_device* %13, %struct.omap_dss_device** %7, align 8
  %14 = load %struct.omap_dss_device*, %struct.omap_dss_device** %7, align 8
  %15 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = bitcast {}** %18 to i32 (%struct.omap_dss_device*, %struct.omap_dss_device*)**
  %20 = load i32 (%struct.omap_dss_device*, %struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*, %struct.omap_dss_device*)** %19, align 8
  %21 = load %struct.omap_dss_device*, %struct.omap_dss_device** %7, align 8
  %22 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %23 = call i32 %20(%struct.omap_dss_device* %21, %struct.omap_dss_device* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %3, align 4
  br label %46

28:                                               ; preds = %2
  %29 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %30 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %31 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %30, i32 0, i32 1
  store %struct.omap_dss_device* %29, %struct.omap_dss_device** %31, align 8
  %32 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %33 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %34 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %33, i32 0, i32 0
  store %struct.omap_dss_device* %32, %struct.omap_dss_device** %34, align 8
  %35 = load %struct.panel_drv_data*, %struct.panel_drv_data** %6, align 8
  %36 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %28
  %40 = load %struct.panel_drv_data*, %struct.panel_drv_data** %6, align 8
  %41 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @gpiod_set_value_cansleep(i64 %42, i32 1)
  %44 = call i32 @udelay(i32 300)
  br label %45

45:                                               ; preds = %39, %28
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %26
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.panel_drv_data* @to_panel_data(%struct.omap_dss_device*) #1

declare dso_local i32 @gpiod_set_value_cansleep(i64, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
