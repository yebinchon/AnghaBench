; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_encoder-tpd12s015.c_tpd_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_encoder-tpd12s015.c_tpd_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { {}*, i32 (%struct.omap_dss_device*, i32*)* }
%struct.panel_drv_data = type { i32, %struct.omap_dss_device* }

@OMAP_DSS_DISPLAY_ACTIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_dss_device*)* @tpd_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tpd_enable(%struct.omap_dss_device* %0) #0 {
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
  %10 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %9, i32 0, i32 1
  %11 = load %struct.omap_dss_device*, %struct.omap_dss_device** %10, align 8
  store %struct.omap_dss_device* %11, %struct.omap_dss_device** %5, align 8
  %12 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %13 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @OMAP_DSS_DISPLAY_ACTIVE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %47

18:                                               ; preds = %1
  %19 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %20 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32 (%struct.omap_dss_device*, i32*)*, i32 (%struct.omap_dss_device*, i32*)** %23, align 8
  %25 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %26 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %27 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %26, i32 0, i32 0
  %28 = call i32 %24(%struct.omap_dss_device* %25, i32* %27)
  %29 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %30 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = bitcast {}** %33 to i32 (%struct.omap_dss_device*)**
  %35 = load i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)** %34, align 8
  %36 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %37 = call i32 %35(%struct.omap_dss_device* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %18
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %2, align 4
  br label %47

42:                                               ; preds = %18
  %43 = load i64, i64* @OMAP_DSS_DISPLAY_ACTIVE, align 8
  %44 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %45 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %42, %40, %17
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.panel_drv_data* @to_panel_data(%struct.omap_dss_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
