; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_pll_calc_dsi_fck.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_pll_calc_dsi_fck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dss_pll_clock_info = type { i32*, i32, i32* }

@FEAT_PARAM_DSI_FCK = common dso_local global i32 0, align 4
@HSDIV_DSI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dss_pll_clock_info*)* @dsi_pll_calc_dsi_fck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsi_pll_calc_dsi_fck(%struct.dss_pll_clock_info* %0) #0 {
  %2 = alloca %struct.dss_pll_clock_info*, align 8
  %3 = alloca i64, align 8
  store %struct.dss_pll_clock_info* %0, %struct.dss_pll_clock_info** %2, align 8
  %4 = load i32, i32* @FEAT_PARAM_DSI_FCK, align 4
  %5 = call i64 @dss_feat_get_param_max(i32 %4)
  store i64 %5, i64* %3, align 8
  %6 = load %struct.dss_pll_clock_info*, %struct.dss_pll_clock_info** %2, align 8
  %7 = getelementptr inbounds %struct.dss_pll_clock_info, %struct.dss_pll_clock_info* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = load i64, i64* %3, align 8
  %10 = call i32 @DIV_ROUND_UP(i32 %8, i64 %9)
  %11 = load %struct.dss_pll_clock_info*, %struct.dss_pll_clock_info** %2, align 8
  %12 = getelementptr inbounds %struct.dss_pll_clock_info, %struct.dss_pll_clock_info* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i64, i64* @HSDIV_DSI, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  store i32 %10, i32* %15, align 4
  %16 = load %struct.dss_pll_clock_info*, %struct.dss_pll_clock_info** %2, align 8
  %17 = getelementptr inbounds %struct.dss_pll_clock_info, %struct.dss_pll_clock_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.dss_pll_clock_info*, %struct.dss_pll_clock_info** %2, align 8
  %20 = getelementptr inbounds %struct.dss_pll_clock_info, %struct.dss_pll_clock_info* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* @HSDIV_DSI, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = sdiv i32 %18, %24
  %26 = load %struct.dss_pll_clock_info*, %struct.dss_pll_clock_info** %2, align 8
  %27 = getelementptr inbounds %struct.dss_pll_clock_info, %struct.dss_pll_clock_info* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* @HSDIV_DSI, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  store i32 %25, i32* %30, align 4
  ret void
}

declare dso_local i64 @dss_feat_get_param_max(i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
