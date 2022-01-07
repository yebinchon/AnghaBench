; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dpi.c_dpi_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dpi.c_dpi_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpi_data = type { i64, %struct.omap_video_timings, %struct.omap_dss_device }
%struct.omap_video_timings = type { i64 }
%struct.omap_dss_device = type { %struct.omap_overlay_manager* }
%struct.omap_overlay_manager = type { i32 }

@.str = private unnamed_addr constant [63 x i8] c"Could not find exact pixel clock. Requested %d Hz, got %lu Hz\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpi_data*)* @dpi_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpi_set_mode(%struct.dpi_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dpi_data*, align 8
  %4 = alloca %struct.omap_dss_device*, align 8
  %5 = alloca %struct.omap_overlay_manager*, align 8
  %6 = alloca %struct.omap_video_timings*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.dpi_data* %0, %struct.dpi_data** %3, align 8
  %12 = load %struct.dpi_data*, %struct.dpi_data** %3, align 8
  %13 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %12, i32 0, i32 2
  store %struct.omap_dss_device* %13, %struct.omap_dss_device** %4, align 8
  %14 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %15 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %14, i32 0, i32 0
  %16 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %15, align 8
  store %struct.omap_overlay_manager* %16, %struct.omap_overlay_manager** %5, align 8
  %17 = load %struct.dpi_data*, %struct.dpi_data** %3, align 8
  %18 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %17, i32 0, i32 1
  store %struct.omap_video_timings* %18, %struct.omap_video_timings** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i64 0, i64* %9, align 8
  store i32 0, i32* %11, align 4
  %19 = load %struct.dpi_data*, %struct.dpi_data** %3, align 8
  %20 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %1
  %24 = load %struct.dpi_data*, %struct.dpi_data** %3, align 8
  %25 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %5, align 8
  %26 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.omap_video_timings*, %struct.omap_video_timings** %6, align 8
  %29 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @dpi_set_dsi_clk(%struct.dpi_data* %24, i32 %27, i64 %30, i64* %9, i32* %7, i32* %8)
  store i32 %31, i32* %11, align 4
  br label %38

32:                                               ; preds = %1
  %33 = load %struct.dpi_data*, %struct.dpi_data** %3, align 8
  %34 = load %struct.omap_video_timings*, %struct.omap_video_timings** %6, align 8
  %35 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i32 @dpi_set_dispc_clk(%struct.dpi_data* %33, i64 %36, i64* %9, i32* %7, i32* %8)
  store i32 %37, i32* %11, align 4
  br label %38

38:                                               ; preds = %32, %23
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* %11, align 4
  store i32 %42, i32* %2, align 4
  br label %69

43:                                               ; preds = %38
  %44 = load i64, i64* %9, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = udiv i64 %44, %46
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = udiv i64 %47, %49
  store i64 %50, i64* %10, align 8
  %51 = load i64, i64* %10, align 8
  %52 = load %struct.omap_video_timings*, %struct.omap_video_timings** %6, align 8
  %53 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %51, %54
  br i1 %55, label %56, label %65

56:                                               ; preds = %43
  %57 = load %struct.omap_video_timings*, %struct.omap_video_timings** %6, align 8
  %58 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %10, align 8
  %61 = call i32 @DSSWARN(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i64 %59, i64 %60)
  %62 = load i64, i64* %10, align 8
  %63 = load %struct.omap_video_timings*, %struct.omap_video_timings** %6, align 8
  %64 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  br label %65

65:                                               ; preds = %56, %43
  %66 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %5, align 8
  %67 = load %struct.omap_video_timings*, %struct.omap_video_timings** %6, align 8
  %68 = call i32 @dss_mgr_set_timings(%struct.omap_overlay_manager* %66, %struct.omap_video_timings* %67)
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %65, %41
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @dpi_set_dsi_clk(%struct.dpi_data*, i32, i64, i64*, i32*, i32*) #1

declare dso_local i32 @dpi_set_dispc_clk(%struct.dpi_data*, i64, i64*, i32*, i32*) #1

declare dso_local i32 @DSSWARN(i8*, i64, i64) #1

declare dso_local i32 @dss_mgr_set_timings(%struct.omap_overlay_manager*, %struct.omap_video_timings*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
