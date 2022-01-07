; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_hdmi_wp.c_hdmi_wp_video_config_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_hdmi_wp.c_hdmi_wp_video_config_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_wp_data = type { i32 }
%struct.omap_video_timings = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"Enter hdmi_wp_video_config_timing\0A\00", align 1
@HDMI_WP_VIDEO_TIMING_H = common dso_local global i32 0, align 4
@HDMI_WP_VIDEO_TIMING_V = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hdmi_wp_video_config_timing(%struct.hdmi_wp_data* %0, %struct.omap_video_timings* %1) #0 {
  %3 = alloca %struct.hdmi_wp_data*, align 8
  %4 = alloca %struct.omap_video_timings*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.hdmi_wp_data* %0, %struct.hdmi_wp_data** %3, align 8
  store %struct.omap_video_timings* %1, %struct.omap_video_timings** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = call i32 @DSSDBG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.omap_video_timings*, %struct.omap_video_timings** %4, align 8
  %9 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @FLD_VAL(i32 %10, i32 31, i32 20)
  %12 = load i32, i32* %5, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %5, align 4
  %14 = load %struct.omap_video_timings*, %struct.omap_video_timings** %4, align 8
  %15 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @FLD_VAL(i32 %16, i32 19, i32 8)
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %5, align 4
  %20 = load %struct.omap_video_timings*, %struct.omap_video_timings** %4, align 8
  %21 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @FLD_VAL(i32 %22, i32 7, i32 0)
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %5, align 4
  %26 = load %struct.hdmi_wp_data*, %struct.hdmi_wp_data** %3, align 8
  %27 = getelementptr inbounds %struct.hdmi_wp_data, %struct.hdmi_wp_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @HDMI_WP_VIDEO_TIMING_H, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @hdmi_write_reg(i32 %28, i32 %29, i32 %30)
  %32 = load %struct.omap_video_timings*, %struct.omap_video_timings** %4, align 8
  %33 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @FLD_VAL(i32 %34, i32 31, i32 20)
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %6, align 4
  %38 = load %struct.omap_video_timings*, %struct.omap_video_timings** %4, align 8
  %39 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @FLD_VAL(i32 %40, i32 19, i32 8)
  %42 = load i32, i32* %6, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %6, align 4
  %44 = load %struct.omap_video_timings*, %struct.omap_video_timings** %4, align 8
  %45 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @FLD_VAL(i32 %46, i32 7, i32 0)
  %48 = load i32, i32* %6, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %6, align 4
  %50 = load %struct.hdmi_wp_data*, %struct.hdmi_wp_data** %3, align 8
  %51 = getelementptr inbounds %struct.hdmi_wp_data, %struct.hdmi_wp_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @HDMI_WP_VIDEO_TIMING_V, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @hdmi_write_reg(i32 %52, i32 %53, i32 %54)
  ret void
}

declare dso_local i32 @DSSDBG(i8*) #1

declare dso_local i32 @FLD_VAL(i32, i32, i32) #1

declare dso_local i32 @hdmi_write_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
