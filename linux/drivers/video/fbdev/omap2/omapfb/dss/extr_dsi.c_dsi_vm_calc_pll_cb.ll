; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_vm_calc_pll_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_vm_calc_pll_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsi_clk_calc_ctx = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64, i64 }

@FEAT_PARAM_DSS_FCK = common dso_local global i32 0, align 4
@dsi_vm_calc_hsdiv_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64, i64, i8*)* @dsi_vm_calc_pll_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_vm_calc_pll_cb(i32 %0, i32 %1, i64 %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.dsi_clk_calc_ctx*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  %12 = load i8*, i8** %10, align 8
  %13 = bitcast i8* %12 to %struct.dsi_clk_calc_ctx*
  store %struct.dsi_clk_calc_ctx* %13, %struct.dsi_clk_calc_ctx** %11, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %11, align 8
  %16 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 %14, i32* %17, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %11, align 8
  %20 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  store i32 %18, i32* %21, align 4
  %22 = load i64, i64* %8, align 8
  %23 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %11, align 8
  %24 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  store i64 %22, i64* %25, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %11, align 8
  %28 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 3
  store i64 %26, i64* %29, align 8
  %30 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %11, align 8
  %31 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* %9, align 8
  %34 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %11, align 8
  %35 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @FEAT_PARAM_DSS_FCK, align 4
  %38 = call i32 @dss_feat_get_param_max(i32 %37)
  %39 = load i32, i32* @dsi_vm_calc_hsdiv_cb, align 4
  %40 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %11, align 8
  %41 = call i32 @dss_pll_hsdiv_calc(i32 %32, i64 %33, i32 %36, i32 %38, i32 %39, %struct.dsi_clk_calc_ctx* %40)
  ret i32 %41
}

declare dso_local i32 @dss_pll_hsdiv_calc(i32, i64, i32, i32, i32, %struct.dsi_clk_calc_ctx*) #1

declare dso_local i32 @dss_feat_get_param_max(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
