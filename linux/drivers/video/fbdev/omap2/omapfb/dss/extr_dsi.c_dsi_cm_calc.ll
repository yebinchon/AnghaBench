; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_cm_calc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_cm_calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsi_data = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.omap_dss_dsi_config = type { i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.dsi_clk_calc_ctx = type { i64, i64, i64, %struct.TYPE_4__*, %struct.omap_dss_dsi_config*, i32 }

@dsi_cm_calc_pll_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsi_data*, %struct.omap_dss_dsi_config*, %struct.dsi_clk_calc_ctx*)* @dsi_cm_calc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_cm_calc(%struct.dsi_data* %0, %struct.omap_dss_dsi_config* %1, %struct.dsi_clk_calc_ctx* %2) #0 {
  %4 = alloca %struct.dsi_data*, align 8
  %5 = alloca %struct.omap_dss_dsi_config*, align 8
  %6 = alloca %struct.dsi_clk_calc_ctx*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.dsi_data* %0, %struct.dsi_data** %4, align 8
  store %struct.omap_dss_dsi_config* %1, %struct.omap_dss_dsi_config** %5, align 8
  store %struct.dsi_clk_calc_ctx* %2, %struct.dsi_clk_calc_ctx** %6, align 8
  %14 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %15 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @clk_get_rate(i32 %17)
  store i64 %18, i64* %7, align 8
  %19 = load %struct.omap_dss_dsi_config*, %struct.omap_dss_dsi_config** %5, align 8
  %20 = getelementptr inbounds %struct.omap_dss_dsi_config, %struct.omap_dss_dsi_config* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @dsi_get_pixel_size(i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %24 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %25, 1
  store i32 %26, i32* %9, align 4
  %27 = load %struct.omap_dss_dsi_config*, %struct.omap_dss_dsi_config** %5, align 8
  %28 = getelementptr inbounds %struct.omap_dss_dsi_config, %struct.omap_dss_dsi_config* %27, i32 0, i32 2
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %12, align 8
  %32 = load i64, i64* %12, align 8
  %33 = mul i64 %32, 3
  %34 = udiv i64 %33, 2
  store i64 %34, i64* %12, align 8
  %35 = load i64, i64* %12, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 %35, %37
  %39 = udiv i64 %38, 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = udiv i64 %39, %41
  store i64 %42, i64* %13, align 8
  %43 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %6, align 8
  %44 = call i32 @memset(%struct.dsi_clk_calc_ctx* %43, i32 0, i32 48)
  %45 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %46 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %6, align 8
  %49 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %48, i32 0, i32 5
  store i32 %47, i32* %49, align 8
  %50 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %51 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %50, i32 0, i32 1
  %52 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %6, align 8
  %53 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %52, i32 0, i32 3
  store %struct.TYPE_4__* %51, %struct.TYPE_4__** %53, align 8
  %54 = load %struct.omap_dss_dsi_config*, %struct.omap_dss_dsi_config** %5, align 8
  %55 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %6, align 8
  %56 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %55, i32 0, i32 4
  store %struct.omap_dss_dsi_config* %54, %struct.omap_dss_dsi_config** %56, align 8
  %57 = load i64, i64* %12, align 8
  %58 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %6, align 8
  %59 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = load i64, i64* %12, align 8
  %61 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %6, align 8
  %62 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  %63 = load i64, i64* %12, align 8
  %64 = mul i64 %63, 3
  %65 = udiv i64 %64, 2
  %66 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %6, align 8
  %67 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %66, i32 0, i32 2
  store i64 %65, i64* %67, align 8
  %68 = load %struct.omap_dss_dsi_config*, %struct.omap_dss_dsi_config** %5, align 8
  %69 = getelementptr inbounds %struct.omap_dss_dsi_config, %struct.omap_dss_dsi_config* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = mul nsw i32 %70, 4
  %72 = load i64, i64* %13, align 8
  %73 = mul i64 %72, 4
  %74 = mul i64 %73, 4
  %75 = call i64 @max(i32 %71, i64 %74)
  store i64 %75, i64* %10, align 8
  %76 = load %struct.omap_dss_dsi_config*, %struct.omap_dss_dsi_config** %5, align 8
  %77 = getelementptr inbounds %struct.omap_dss_dsi_config, %struct.omap_dss_dsi_config* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = mul nsw i32 %78, 4
  %80 = sext i32 %79 to i64
  store i64 %80, i64* %11, align 8
  %81 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %6, align 8
  %82 = getelementptr inbounds %struct.dsi_clk_calc_ctx, %struct.dsi_clk_calc_ctx* %81, i32 0, i32 3
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = load i64, i64* %7, align 8
  %85 = load i64, i64* %10, align 8
  %86 = load i64, i64* %11, align 8
  %87 = load i32, i32* @dsi_cm_calc_pll_cb, align 4
  %88 = load %struct.dsi_clk_calc_ctx*, %struct.dsi_clk_calc_ctx** %6, align 8
  %89 = call i32 @dss_pll_calc(%struct.TYPE_4__* %83, i64 %84, i64 %85, i64 %86, i32 %87, %struct.dsi_clk_calc_ctx* %88)
  ret i32 %89
}

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @dsi_get_pixel_size(i32) #1

declare dso_local i32 @memset(%struct.dsi_clk_calc_ctx*, i32, i32) #1

declare dso_local i64 @max(i32, i64) #1

declare dso_local i32 @dss_pll_calc(%struct.TYPE_4__*, i64, i64, i64, i32, %struct.dsi_clk_calc_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
