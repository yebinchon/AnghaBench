; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_config_vp_num_line_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_config_vp_num_line_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.dsi_data = type { i64, i32, %struct.omap_video_timings, i32 }
%struct.omap_video_timings = type { i32 }

@OMAP_DSS_DSI_VIDEO_MODE = common dso_local global i64 0, align 8
@DSI_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*)* @dsi_config_vp_num_line_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsi_config_vp_num_line_buffers(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.dsi_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.omap_video_timings*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = call %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device* %7)
  store %struct.dsi_data* %8, %struct.dsi_data** %3, align 8
  %9 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %10 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @OMAP_DSS_DSI_VIDEO_MODE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %34

14:                                               ; preds = %1
  %15 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %16 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @dsi_get_pixel_size(i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %20 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %19, i32 0, i32 2
  store %struct.omap_video_timings* %20, %struct.omap_video_timings** %6, align 8
  %21 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %22 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.omap_video_timings*, %struct.omap_video_timings** %6, align 8
  %25 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %5, align 4
  %28 = mul nsw i32 %26, %27
  %29 = sdiv i32 %28, 8
  %30 = icmp sle i32 %23, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %33

32:                                               ; preds = %14
  store i32 2, i32* %4, align 4
  br label %33

33:                                               ; preds = %32, %31
  br label %35

34:                                               ; preds = %1
  store i32 2, i32* %4, align 4
  br label %35

35:                                               ; preds = %34, %33
  %36 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %37 = load i32, i32* @DSI_CTRL, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @REG_FLD_MOD(%struct.platform_device* %36, i32 %37, i32 %38, i32 13, i32 12)
  ret void
}

declare dso_local %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device*) #1

declare dso_local i32 @dsi_get_pixel_size(i32) #1

declare dso_local i32 @REG_FLD_MOD(%struct.platform_device*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
