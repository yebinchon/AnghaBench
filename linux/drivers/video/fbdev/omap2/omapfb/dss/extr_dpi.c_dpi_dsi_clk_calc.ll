; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dpi.c_dpi_dsi_clk_calc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dpi.c_dpi_dsi_clk_calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpi_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dpi_clk_calc_ctx = type { i64, i64, %struct.TYPE_2__* }

@dpi_calc_pll_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpi_data*, i64, %struct.dpi_clk_calc_ctx*)* @dpi_dsi_clk_calc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpi_dsi_clk_calc(%struct.dpi_data* %0, i64 %1, %struct.dpi_clk_calc_ctx* %2) #0 {
  %4 = alloca %struct.dpi_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.dpi_clk_calc_ctx*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.dpi_data* %0, %struct.dpi_data** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.dpi_clk_calc_ctx* %2, %struct.dpi_clk_calc_ctx** %6, align 8
  %10 = load %struct.dpi_clk_calc_ctx*, %struct.dpi_clk_calc_ctx** %6, align 8
  %11 = call i32 @memset(%struct.dpi_clk_calc_ctx* %10, i32 0, i32 24)
  %12 = load %struct.dpi_data*, %struct.dpi_data** %4, align 8
  %13 = getelementptr inbounds %struct.dpi_data, %struct.dpi_data* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load %struct.dpi_clk_calc_ctx*, %struct.dpi_clk_calc_ctx** %6, align 8
  %16 = getelementptr inbounds %struct.dpi_clk_calc_ctx, %struct.dpi_clk_calc_ctx* %15, i32 0, i32 2
  store %struct.TYPE_2__* %14, %struct.TYPE_2__** %16, align 8
  %17 = load i64, i64* %5, align 8
  %18 = sub i64 %17, 1000
  %19 = load %struct.dpi_clk_calc_ctx*, %struct.dpi_clk_calc_ctx** %6, align 8
  %20 = getelementptr inbounds %struct.dpi_clk_calc_ctx, %struct.dpi_clk_calc_ctx* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load i64, i64* %5, align 8
  %22 = add i64 %21, 1000
  %23 = load %struct.dpi_clk_calc_ctx*, %struct.dpi_clk_calc_ctx** %6, align 8
  %24 = getelementptr inbounds %struct.dpi_clk_calc_ctx, %struct.dpi_clk_calc_ctx* %23, i32 0, i32 1
  store i64 %22, i64* %24, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %25 = load %struct.dpi_clk_calc_ctx*, %struct.dpi_clk_calc_ctx** %6, align 8
  %26 = getelementptr inbounds %struct.dpi_clk_calc_ctx, %struct.dpi_clk_calc_ctx* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @clk_get_rate(i32 %29)
  store i64 %30, i64* %7, align 8
  %31 = load %struct.dpi_clk_calc_ctx*, %struct.dpi_clk_calc_ctx** %6, align 8
  %32 = getelementptr inbounds %struct.dpi_clk_calc_ctx, %struct.dpi_clk_calc_ctx* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load i32, i32* @dpi_calc_pll_cb, align 4
  %38 = load %struct.dpi_clk_calc_ctx*, %struct.dpi_clk_calc_ctx** %6, align 8
  %39 = call i32 @dss_pll_calc(%struct.TYPE_2__* %33, i64 %34, i64 %35, i64 %36, i32 %37, %struct.dpi_clk_calc_ctx* %38)
  ret i32 %39
}

declare dso_local i32 @memset(%struct.dpi_clk_calc_ctx*, i32, i32) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @dss_pll_calc(%struct.TYPE_2__*, i64, i64, i64, i32, %struct.dpi_clk_calc_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
