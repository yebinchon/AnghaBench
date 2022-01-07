; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_output.c_dss_mgr_set_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_output.c_dss_mgr_set_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.omap_overlay_manager*, %struct.omap_video_timings*)* }
%struct.omap_overlay_manager = type { i32 }
%struct.omap_video_timings = type { i32 }

@dss_mgr_ops = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dss_mgr_set_timings(%struct.omap_overlay_manager* %0, %struct.omap_video_timings* %1) #0 {
  %3 = alloca %struct.omap_overlay_manager*, align 8
  %4 = alloca %struct.omap_video_timings*, align 8
  store %struct.omap_overlay_manager* %0, %struct.omap_overlay_manager** %3, align 8
  store %struct.omap_video_timings* %1, %struct.omap_video_timings** %4, align 8
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dss_mgr_ops, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32 (%struct.omap_overlay_manager*, %struct.omap_video_timings*)*, i32 (%struct.omap_overlay_manager*, %struct.omap_video_timings*)** %6, align 8
  %8 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %3, align 8
  %9 = load %struct.omap_video_timings*, %struct.omap_video_timings** %4, align 8
  %10 = call i32 %7(%struct.omap_overlay_manager* %8, %struct.omap_video_timings* %9)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
