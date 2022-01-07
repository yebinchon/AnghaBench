; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_vm_calc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_vm_calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsi_data = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.omap_dss_dsi_config = type { i32, i64, i32, i32, %struct.omap_video_timings* }
%struct.omap_video_timings = type { i64 }
%struct.dsi_clk_calc_ctx = type { %struct.TYPE_2__*, i64, i64, i64, %struct.omap_dss_dsi_config*, i32 }

@OMAP_DSS_DSI_BURST_MODE = common dso_local global i64 0, align 8
@dsi_vm_calc_pll_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsi_data*, %struct.omap_dss_dsi_config*, %struct.dsi_clk_calc_ctx*)* @dsi_vm_calc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_vm_calc(%struct.dsi_data* %0, %struct.omap_dss_dsi_config* %1, %struct.dsi_clk_calc_ctx* %2) #0 {
  %4 = alloca %struct.dsi_data*, align 8
  %5 = alloca %struct.omap_dss_dsi_config*, align 8
  %6 = alloca %struct.dsi_clk_calc_ctx*, align 8
  %7 = alloca %struct.omap_video_timings*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.dsi_data* %0, %struct.dsi_data** %4, align 8
  store %struct.omap_dss_dsi_config* %1, %struct.omap_dss_dsi_config** %5, align 8
  store %struct.dsi_clk_calc_ctx* %2, %struct.dsi_clk_calc_ctx** %6, align 8
  %15 = load %struct.omap_dss_dsi_config*, %struct.omap_dss_dsi_config** %5, align 8
  %16 = getelementptr inbounds %struct.omap_dss_dsi_config, %struct.omap_dss_dsi_config* %15, i32 0, i32 4
  %17 = load %struct.omap_video_timings*, %struct.omap_video_timings** %16, align 8
  store %struct.omap_video_timings* %17, %struct.omap_video_timings** %7, align 8
  %18 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %19 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sub nsw i32 %20, 1
  store i32 %21, i32* %11, align 4
  %22 = load %struct.omap_dss_dsi_config*, %struct.omap_dss_dsi_config** %5, align 8
  %23 = getelementptr inbounds %struct.omap_dss_dsi_config, %struct.omap_dss_dsi_config* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dsi_get_pixel_size(i32 %24)
  store i32 %25, i32* %12, align 4
  %26 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %27 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @clk_get_rate(i32 %29)
  store i64 %30, i64* %8, align 8
  %31 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %6, align 8
  %32 = call i32 @memset(%struct.dsi_clk_calc_ctx* %31, i32 0, i32 48)
  %33 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %34 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %6, align 8
  %37 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 8
  %38 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %39 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %38, i32 0, i32 1
  %40 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %6, align 8
  %41 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %40, i32 0, i32 0
  store %struct.TYPE_2__* %39, %struct.TYPE_2__** %41, align 8
  %42 = load %struct.omap_dss_dsi_config*, %struct.omap_dss_dsi_config** %5, align 8
  %43 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %6, align 8
  %44 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %43, i32 0, i32 4
  store %struct.omap_dss_dsi_config* %42, %struct.omap_dss_dsi_config** %44, align 8
  %45 = load %struct.omap_video_timings*, %struct.omap_video_timings** %7, align 8
  %46 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %47, 1000
  %49 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %6, align 8
  %50 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %49, i32 0, i32 2
  store i64 %48, i64* %50, align 8
  %51 = load %struct.omap_video_timings*, %struct.omap_video_timings** %7, align 8
  %52 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %6, align 8
  %55 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %54, i32 0, i32 3
  store i64 %53, i64* %55, align 8
  %56 = load %struct.omap_video_timings*, %struct.omap_video_timings** %7, align 8
  %57 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, 1000
  %60 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %6, align 8
  %61 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %60, i32 0, i32 1
  store i64 %59, i64* %61, align 8
  %62 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %6, align 8
  %63 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = trunc i64 %64 to i32
  %66 = load i32, i32* %12, align 4
  %67 = mul nsw i32 %65, %66
  %68 = load i32, i32* %11, align 4
  %69 = mul nsw i32 %68, 8
  %70 = call i64 @div64_u64(i32 %67, i32 %69)
  store i64 %70, i64* %13, align 8
  %71 = load %struct.omap_dss_dsi_config*, %struct.omap_dss_dsi_config** %5, align 8
  %72 = getelementptr inbounds %struct.omap_dss_dsi_config, %struct.omap_dss_dsi_config* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = mul nsw i32 %73, 4
  %75 = load i64, i64* %13, align 8
  %76 = mul i64 %75, 4
  %77 = mul i64 %76, 4
  %78 = call i64 @max(i32 %74, i64 %77)
  store i64 %78, i64* %9, align 8
  %79 = load %struct.omap_dss_dsi_config*, %struct.omap_dss_dsi_config** %5, align 8
  %80 = getelementptr inbounds %struct.omap_dss_dsi_config, %struct.omap_dss_dsi_config* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @OMAP_DSS_DSI_BURST_MODE, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %3
  %85 = load %struct.omap_dss_dsi_config*, %struct.omap_dss_dsi_config** %5, align 8
  %86 = getelementptr inbounds %struct.omap_dss_dsi_config, %struct.omap_dss_dsi_config* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = mul nsw i32 %87, 4
  %89 = sext i32 %88 to i64
  store i64 %89, i64* %10, align 8
  br label %103

90:                                               ; preds = %3
  %91 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %6, align 8
  %92 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = trunc i64 %93 to i32
  %95 = load i32, i32* %12, align 4
  %96 = mul nsw i32 %94, %95
  %97 = load i32, i32* %11, align 4
  %98 = mul nsw i32 %97, 8
  %99 = call i64 @div64_u64(i32 %96, i32 %98)
  store i64 %99, i64* %14, align 8
  %100 = load i64, i64* %14, align 8
  %101 = mul i64 %100, 4
  %102 = mul i64 %101, 4
  store i64 %102, i64* %10, align 8
  br label %103

103:                                              ; preds = %90, %84
  %104 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %6, align 8
  %105 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %104, i32 0, i32 0
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = load i64, i64* %8, align 8
  %108 = load i64, i64* %9, align 8
  %109 = load i64, i64* %10, align 8
  %110 = load i32, i32* @dsi_vm_calc_pll_cb, align 4
  %111 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %6, align 8
  %112 = call i32 @dss_pll_calc(%struct.TYPE_2__* %106, i64 %107, i64 %108, i64 %109, i32 %110, %struct.dsi_clk_calc_ctx* %111)
  ret i32 %112
}

declare dso_local i32 @dsi_get_pixel_size(i32) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @memset(%struct.dsi_clk_calc_ctx*, i32, i32) #1

declare dso_local i64 @div64_u64(i32, i32) #1

declare dso_local i64 @max(i32, i64) #1

declare dso_local i32 @dss_pll_calc(%struct.TYPE_2__*, i64, i64, i64, i32, %struct.dsi_clk_calc_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
