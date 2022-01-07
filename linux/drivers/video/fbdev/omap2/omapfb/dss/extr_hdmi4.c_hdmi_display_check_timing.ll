; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_hdmi4.c_hdmi_display_check_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_hdmi4.c_hdmi_display_check_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.omap_dss_device }
%struct.omap_dss_device = type { i32 }
%struct.omap_video_timings = type { i32 }

@hdmi = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_dss_device*, %struct.omap_video_timings*)* @hdmi_display_check_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_display_check_timing(%struct.omap_dss_device* %0, %struct.omap_video_timings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.omap_dss_device*, align 8
  %5 = alloca %struct.omap_video_timings*, align 8
  %6 = alloca %struct.omap_dss_device*, align 8
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %4, align 8
  store %struct.omap_video_timings* %1, %struct.omap_video_timings** %5, align 8
  store %struct.omap_dss_device* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @hdmi, i32 0, i32 0), %struct.omap_dss_device** %6, align 8
  %7 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %8 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.omap_video_timings*, %struct.omap_video_timings** %5, align 8
  %11 = call i32 @dispc_mgr_timings_ok(i32 %9, %struct.omap_video_timings* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %16, %13
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

declare dso_local i32 @dispc_mgr_timings_ok(i32, %struct.omap_video_timings*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
