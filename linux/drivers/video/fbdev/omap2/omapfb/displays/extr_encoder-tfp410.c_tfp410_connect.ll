; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_encoder-tfp410.c_tfp410_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_encoder-tfp410.c_tfp410_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { %struct.omap_dss_device*, %struct.omap_dss_device*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { {}* }
%struct.panel_drv_data = type { %struct.omap_dss_device* }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_dss_device*, %struct.omap_dss_device*)* @tfp410_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tfp410_connect(%struct.omap_dss_device* %0, %struct.omap_dss_device* %1) #0 {
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
  %12 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %11, i32 0, i32 0
  %13 = load %struct.omap_dss_device*, %struct.omap_dss_device** %12, align 8
  store %struct.omap_dss_device* %13, %struct.omap_dss_device** %7, align 8
  %14 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %15 = call i64 @omapdss_device_is_connected(%struct.omap_dss_device* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EBUSY, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %42

20:                                               ; preds = %2
  %21 = load %struct.omap_dss_device*, %struct.omap_dss_device** %7, align 8
  %22 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = bitcast {}** %25 to i32 (%struct.omap_dss_device*, %struct.omap_dss_device*)**
  %27 = load i32 (%struct.omap_dss_device*, %struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*, %struct.omap_dss_device*)** %26, align 8
  %28 = load %struct.omap_dss_device*, %struct.omap_dss_device** %7, align 8
  %29 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %30 = call i32 %27(%struct.omap_dss_device* %28, %struct.omap_dss_device* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %20
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %3, align 4
  br label %42

35:                                               ; preds = %20
  %36 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %37 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %38 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %37, i32 0, i32 1
  store %struct.omap_dss_device* %36, %struct.omap_dss_device** %38, align 8
  %39 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %40 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %41 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %40, i32 0, i32 0
  store %struct.omap_dss_device* %39, %struct.omap_dss_device** %41, align 8
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %35, %33, %17
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.panel_drv_data* @to_panel_data(%struct.omap_dss_device*) #1

declare dso_local i64 @omapdss_device_is_connected(%struct.omap_dss_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
