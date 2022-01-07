; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_output.c_omapdss_find_mgr_from_display.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_output.c_omapdss_find_mgr_from_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_overlay_manager = type { i32 }
%struct.omap_dss_device = type { %struct.omap_overlay_manager* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.omap_overlay_manager* @omapdss_find_mgr_from_display(%struct.omap_dss_device* %0) #0 {
  %2 = alloca %struct.omap_overlay_manager*, align 8
  %3 = alloca %struct.omap_dss_device*, align 8
  %4 = alloca %struct.omap_dss_device*, align 8
  %5 = alloca %struct.omap_overlay_manager*, align 8
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %3, align 8
  %6 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %7 = call %struct.omap_dss_device* @omapdss_find_output_from_display(%struct.omap_dss_device* %6)
  store %struct.omap_dss_device* %7, %struct.omap_dss_device** %4, align 8
  %8 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %9 = icmp eq %struct.omap_dss_device* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store %struct.omap_overlay_manager* null, %struct.omap_overlay_manager** %2, align 8
  br label %18

11:                                               ; preds = %1
  %12 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %13 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %12, i32 0, i32 0
  %14 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %13, align 8
  store %struct.omap_overlay_manager* %14, %struct.omap_overlay_manager** %5, align 8
  %15 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %16 = call i32 @omap_dss_put_device(%struct.omap_dss_device* %15)
  %17 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %5, align 8
  store %struct.omap_overlay_manager* %17, %struct.omap_overlay_manager** %2, align 8
  br label %18

18:                                               ; preds = %11, %10
  %19 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %2, align 8
  ret %struct.omap_overlay_manager* %19
}

declare dso_local %struct.omap_dss_device* @omapdss_find_output_from_display(%struct.omap_dss_device*) #1

declare dso_local i32 @omap_dss_put_device(%struct.omap_dss_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
