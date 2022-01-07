; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_encoder-tfp410.c_tfp410_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_encoder-tfp410.c_tfp410_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { %struct.TYPE_4__, %struct.omap_dss_device*, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.omap_dss_device*, i32*)* }
%struct.panel_drv_data = type { i32, %struct.omap_dss_device* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_dss_device*, %struct.omap_dss_device*)* @tfp410_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tfp410_disconnect(%struct.omap_dss_device* %0, %struct.omap_dss_device* %1) #0 {
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
  %10 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %9, i32 0, i32 1
  %11 = load %struct.omap_dss_device*, %struct.omap_dss_device** %10, align 8
  store %struct.omap_dss_device* %11, %struct.omap_dss_device** %6, align 8
  %12 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %13 = call i32 @omapdss_device_is_connected(%struct.omap_dss_device* %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @WARN_ON(i32 %16)
  %18 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %19 = call i32 @omapdss_device_is_connected(%struct.omap_dss_device* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  br label %51

22:                                               ; preds = %2
  %23 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %24 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %25 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %24, i32 0, i32 1
  %26 = load %struct.omap_dss_device*, %struct.omap_dss_device** %25, align 8
  %27 = icmp ne %struct.omap_dss_device* %23, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @WARN_ON(i32 %28)
  %30 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %31 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %32 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %31, i32 0, i32 1
  %33 = load %struct.omap_dss_device*, %struct.omap_dss_device** %32, align 8
  %34 = icmp ne %struct.omap_dss_device* %30, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %22
  br label %51

36:                                               ; preds = %22
  %37 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %38 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %37, i32 0, i32 2
  store i32* null, i32** %38, align 8
  %39 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %40 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %39, i32 0, i32 1
  store %struct.omap_dss_device* null, %struct.omap_dss_device** %40, align 8
  %41 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %42 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32 (%struct.omap_dss_device*, i32*)*, i32 (%struct.omap_dss_device*, i32*)** %45, align 8
  %47 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %48 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %49 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %48, i32 0, i32 0
  %50 = call i32 %46(%struct.omap_dss_device* %47, i32* %49)
  br label %51

51:                                               ; preds = %36, %35, %21
  ret void
}

declare dso_local %struct.panel_drv_data* @to_panel_data(%struct.omap_dss_device*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @omapdss_device_is_connected(%struct.omap_dss_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
