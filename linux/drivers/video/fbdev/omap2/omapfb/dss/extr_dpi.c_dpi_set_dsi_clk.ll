; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dpi.c_dpi_set_dsi_clk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dpi.c_dpi_set_dsi_clk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpi_data = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.dpi_clk_calc_ctx = type { %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64* }

@EINVAL = common dso_local global i32 0, align 4
@HSDIV_DISPC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpi_data*, i32, i64, i64*, i32*, i32*)* @dpi_set_dsi_clk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpi_set_dsi_clk(%struct.dpi_data* %0, i32 %1, i64 %2, i64* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.dpi_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.dpi_clk_calc_ctx, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.dpi_data* %0, %struct.dpi_data** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i64* %3, i64** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load %struct.dpi_data*, %struct.dpi_data** %8, align 8
  %18 = load i64, i64* %10, align 8
  %19 = call i32 @dpi_dsi_clk_calc(%struct.dpi_data* %17, i64 %18, %struct.dpi_clk_calc_ctx* %14)
  store i32 %19, i32* %16, align 4
  %20 = load i32, i32* %16, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %6
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  br label %61

25:                                               ; preds = %6
  %26 = load %struct.dpi_data*, %struct.dpi_data** %8, align 8
  %27 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.dpi_clk_calc_ctx, %struct.dpi_clk_calc_ctx* %14, i32 0, i32 1
  %30 = call i32 @dss_pll_set_config(i32 %28, %struct.TYPE_6__* %29)
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %15, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32, i32* %15, align 4
  store i32 %34, i32* %7, align 4
  br label %61

35:                                               ; preds = %25
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @dpi_get_alt_clk_src(i32 %37)
  %39 = call i32 @dss_select_lcd_clk_source(i32 %36, i32 %38)
  %40 = load %struct.dpi_data*, %struct.dpi_data** %8, align 8
  %41 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.dpi_clk_calc_ctx, %struct.dpi_clk_calc_ctx* %14, i32 0, i32 0
  %44 = bitcast %struct.TYPE_5__* %42 to i8*
  %45 = bitcast %struct.TYPE_5__* %43 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %44, i8* align 8 %45, i64 8, i1 false)
  %46 = getelementptr inbounds %struct.dpi_clk_calc_ctx, %struct.dpi_clk_calc_ctx* %14, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = load i64, i64* @HSDIV_DISPC, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = load i64*, i64** %11, align 8
  store i64 %51, i64* %52, align 8
  %53 = getelementptr inbounds %struct.dpi_clk_calc_ctx, %struct.dpi_clk_calc_ctx* %14, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32*, i32** %12, align 8
  store i32 %55, i32* %56, align 4
  %57 = getelementptr inbounds %struct.dpi_clk_calc_ctx, %struct.dpi_clk_calc_ctx* %14, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %13, align 8
  store i32 %59, i32* %60, align 4
  store i32 0, i32* %7, align 4
  br label %61

61:                                               ; preds = %35, %33, %22
  %62 = load i32, i32* %7, align 4
  ret i32 %62
}

declare dso_local i32 @dpi_dsi_clk_calc(%struct.dpi_data*, i64, %struct.dpi_clk_calc_ctx*) #1

declare dso_local i32 @dss_pll_set_config(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @dss_select_lcd_clk_source(i32, i32) #1

declare dso_local i32 @dpi_get_alt_clk_src(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
