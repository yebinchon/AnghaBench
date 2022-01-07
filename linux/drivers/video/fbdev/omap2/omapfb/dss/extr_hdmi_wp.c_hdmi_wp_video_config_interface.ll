; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_hdmi_wp.c_hdmi_wp_video_config_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_hdmi_wp.c_hdmi_wp_video_config_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_wp_data = type { i32 }
%struct.omap_video_timings = type { i64, i64, i32 }

@.str = private unnamed_addr constant [38 x i8] c"Enter hdmi_wp_video_config_interface\0A\00", align 1
@OMAPDSS_SIG_ACTIVE_HIGH = common dso_local global i64 0, align 8
@HDMI_WP_VIDEO_CFG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hdmi_wp_video_config_interface(%struct.hdmi_wp_data* %0, %struct.omap_video_timings* %1) #0 {
  %3 = alloca %struct.hdmi_wp_data*, align 8
  %4 = alloca %struct.omap_video_timings*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hdmi_wp_data* %0, %struct.hdmi_wp_data** %3, align 8
  store %struct.omap_video_timings* %1, %struct.omap_video_timings** %4, align 8
  %8 = call i32 @DSSDBG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.omap_video_timings*, %struct.omap_video_timings** %4, align 8
  %10 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @OMAPDSS_SIG_ACTIVE_HIGH, align 8
  %13 = icmp eq i64 %11, %12
  %14 = zext i1 %13 to i32
  store i32 %14, i32* %6, align 4
  %15 = load %struct.omap_video_timings*, %struct.omap_video_timings** %4, align 8
  %16 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @OMAPDSS_SIG_ACTIVE_HIGH, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %7, align 4
  %21 = load %struct.hdmi_wp_data*, %struct.hdmi_wp_data** %3, align 8
  %22 = getelementptr inbounds %struct.hdmi_wp_data, %struct.hdmi_wp_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @HDMI_WP_VIDEO_CFG, align 4
  %25 = call i32 @hdmi_read_reg(i32 %23, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @FLD_MOD(i32 %26, i32 %27, i32 7, i32 7)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @FLD_MOD(i32 %29, i32 %30, i32 6, i32 6)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.omap_video_timings*, %struct.omap_video_timings** %4, align 8
  %34 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @FLD_MOD(i32 %32, i32 %35, i32 3, i32 3)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @FLD_MOD(i32 %37, i32 1, i32 1, i32 0)
  store i32 %38, i32* %5, align 4
  %39 = load %struct.hdmi_wp_data*, %struct.hdmi_wp_data** %3, align 8
  %40 = getelementptr inbounds %struct.hdmi_wp_data, %struct.hdmi_wp_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @HDMI_WP_VIDEO_CFG, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @hdmi_write_reg(i32 %41, i32 %42, i32 %43)
  ret void
}

declare dso_local i32 @DSSDBG(i8*) #1

declare dso_local i32 @hdmi_read_reg(i32, i32) #1

declare dso_local i32 @FLD_MOD(i32, i32, i32, i32) #1

declare dso_local i32 @hdmi_write_reg(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
