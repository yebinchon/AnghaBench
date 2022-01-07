; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dpi.c_dpi_check_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dpi.c_dpi_check_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { i32 }
%struct.omap_video_timings = type { i64 }
%struct.dpi_data = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.omap_overlay_manager* }
%struct.omap_overlay_manager = type { i32 }
%struct.dpi_clk_calc_ctx = type { i64, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64* }

@EINVAL = common dso_local global i32 0, align 4
@HSDIV_DISPC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_dss_device*, %struct.omap_video_timings*)* @dpi_check_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpi_check_timings(%struct.omap_dss_device* %0, %struct.omap_video_timings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.omap_dss_device*, align 8
  %5 = alloca %struct.omap_video_timings*, align 8
  %6 = alloca %struct.dpi_data*, align 8
  %7 = alloca %struct.omap_overlay_manager*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.dpi_clk_calc_ctx, align 8
  %13 = alloca i32, align 4
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %4, align 8
  store %struct.omap_video_timings* %1, %struct.omap_video_timings** %5, align 8
  %14 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %15 = call %struct.dpi_data* @dpi_get_data_from_dssdev(%struct.omap_dss_device* %14)
  store %struct.dpi_data* %15, %struct.dpi_data** %6, align 8
  %16 = load %struct.dpi_data*, %struct.dpi_data** %6, align 8
  %17 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %18, align 8
  store %struct.omap_overlay_manager* %19, %struct.omap_overlay_manager** %7, align 8
  %20 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %7, align 8
  %21 = icmp ne %struct.omap_overlay_manager* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %2
  %23 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %7, align 8
  %24 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.omap_video_timings*, %struct.omap_video_timings** %5, align 8
  %27 = call i32 @dispc_mgr_timings_ok(i32 %25, %struct.omap_video_timings* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %93

32:                                               ; preds = %22, %2
  %33 = load %struct.omap_video_timings*, %struct.omap_video_timings** %5, align 8
  %34 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %93

40:                                               ; preds = %32
  %41 = load %struct.dpi_data*, %struct.dpi_data** %6, align 8
  %42 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %63

45:                                               ; preds = %40
  %46 = load %struct.dpi_data*, %struct.dpi_data** %6, align 8
  %47 = load %struct.omap_video_timings*, %struct.omap_video_timings** %5, align 8
  %48 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @dpi_dsi_clk_calc(%struct.dpi_data* %46, i64 %49, %struct.dpi_clk_calc_ctx* %12)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %45
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %93

56:                                               ; preds = %45
  %57 = getelementptr inbounds %struct.dpi_clk_calc_ctx, %struct.dpi_clk_calc_ctx* %12, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = load i64, i64* @HSDIV_DISPC, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %10, align 8
  br label %76

63:                                               ; preds = %40
  %64 = load %struct.omap_video_timings*, %struct.omap_video_timings** %5, align 8
  %65 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @dpi_dss_clk_calc(i64 %66, %struct.dpi_clk_calc_ctx* %12)
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %63
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %93

73:                                               ; preds = %63
  %74 = getelementptr inbounds %struct.dpi_clk_calc_ctx, %struct.dpi_clk_calc_ctx* %12, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  store i64 %75, i64* %10, align 8
  br label %76

76:                                               ; preds = %73, %56
  %77 = getelementptr inbounds %struct.dpi_clk_calc_ctx, %struct.dpi_clk_calc_ctx* %12, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %8, align 4
  %80 = getelementptr inbounds %struct.dpi_clk_calc_ctx, %struct.dpi_clk_calc_ctx* %12, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %9, align 4
  %83 = load i64, i64* %10, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = udiv i64 %83, %85
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = udiv i64 %86, %88
  store i64 %89, i64* %11, align 8
  %90 = load i64, i64* %11, align 8
  %91 = load %struct.omap_video_timings*, %struct.omap_video_timings** %5, align 8
  %92 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %76, %70, %53, %37, %29
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local %struct.dpi_data* @dpi_get_data_from_dssdev(%struct.omap_dss_device*) #1

declare dso_local i32 @dispc_mgr_timings_ok(i32, %struct.omap_video_timings*) #1

declare dso_local i32 @dpi_dsi_clk_calc(%struct.dpi_data*, i64, %struct.dpi_clk_calc_ctx*) #1

declare dso_local i32 @dpi_dss_clk_calc(i64, %struct.dpi_clk_calc_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
