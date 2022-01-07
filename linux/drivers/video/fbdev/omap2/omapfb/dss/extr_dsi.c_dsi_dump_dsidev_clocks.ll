; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_dump_dsidev_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_dump_dsidev_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.seq_file = type { i32 }
%struct.dsi_data = type { i32, %struct.TYPE_2__, %struct.dss_pll }
%struct.TYPE_2__ = type { i32 }
%struct.dss_pll = type { i32, %struct.dss_pll_clock_info }
%struct.dss_pll_clock_info = type { i32, i32*, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"- DSI%d PLL -\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"dsi pll clkin\09%lu\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Fint\09\09%-16lun %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"CLKIN4DDR\09%-16lum %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"DSI_PLL_HSDIV_DISPC (%s)\09%-16lum_dispc %u\09(%s)\0A\00", align 1
@OMAP_DSS_CLK_SRC_DSI_PLL_HSDIV_DISPC = common dso_local global i32 0, align 4
@OMAP_DSS_CLK_SRC_DSI2_PLL_HSDIV_DISPC = common dso_local global i32 0, align 4
@HSDIV_DISPC = common dso_local global i64 0, align 8
@OMAP_DSS_CLK_SRC_FCK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"DSI_PLL_HSDIV_DSI (%s)\09%-16lum_dsi %u\09(%s)\0A\00", align 1
@OMAP_DSS_CLK_SRC_DSI_PLL_HSDIV_DSI = common dso_local global i32 0, align 4
@OMAP_DSS_CLK_SRC_DSI2_PLL_HSDIV_DSI = common dso_local global i32 0, align 4
@HSDIV_DSI = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [11 x i8] c"- DSI%d -\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"dsi fclk source = %s (%s)\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"DSI_FCLK\09%lu\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"DDR_CLK\09\09%lu\0A\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"TxByteClkHS\09%lu\0A\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"LP_CLK\09\09%lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*, %struct.seq_file*)* @dsi_dump_dsidev_clocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsi_dump_dsidev_clocks(%struct.platform_device* %0, %struct.seq_file* %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.dsi_data*, align 8
  %6 = alloca %struct.dss_pll_clock_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dss_pll*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.seq_file* %1, %struct.seq_file** %4, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = call %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device* %11)
  store %struct.dsi_data* %12, %struct.dsi_data** %5, align 8
  %13 = load %struct.dsi_data*, %struct.dsi_data** %5, align 8
  %14 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.dss_pll, %struct.dss_pll* %14, i32 0, i32 1
  store %struct.dss_pll_clock_info* %15, %struct.dss_pll_clock_info** %6, align 8
  %16 = load %struct.dsi_data*, %struct.dsi_data** %5, align 8
  %17 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %9, align 4
  %19 = load %struct.dsi_data*, %struct.dsi_data** %5, align 8
  %20 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %19, i32 0, i32 2
  store %struct.dss_pll* %20, %struct.dss_pll** %10, align 8
  %21 = call i32 (...) @dss_get_dispc_clk_source()
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @dss_get_dsi_clk_source(i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %25 = call i64 @dsi_runtime_get(%struct.platform_device* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  br label %143

28:                                               ; preds = %2
  %29 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %30, 1
  %32 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %29, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %34 = load %struct.dss_pll*, %struct.dss_pll** %10, align 8
  %35 = getelementptr inbounds %struct.dss_pll, %struct.dss_pll* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @clk_get_rate(i32 %36)
  %38 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %40 = load %struct.dss_pll_clock_info*, %struct.dss_pll_clock_info** %6, align 8
  %41 = getelementptr inbounds %struct.dss_pll_clock_info, %struct.dss_pll_clock_info* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.dss_pll_clock_info*, %struct.dss_pll_clock_info** %6, align 8
  %44 = getelementptr inbounds %struct.dss_pll_clock_info, %struct.dss_pll_clock_info* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %39, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %42, i32 %45)
  %47 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %48 = load %struct.dss_pll_clock_info*, %struct.dss_pll_clock_info** %6, align 8
  %49 = getelementptr inbounds %struct.dss_pll_clock_info, %struct.dss_pll_clock_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.dss_pll_clock_info*, %struct.dss_pll_clock_info** %6, align 8
  %52 = getelementptr inbounds %struct.dss_pll_clock_info, %struct.dss_pll_clock_info* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %47, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %50, i32 %53)
  %55 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %56 = load i32, i32* %9, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %28
  %59 = load i32, i32* @OMAP_DSS_CLK_SRC_DSI_PLL_HSDIV_DISPC, align 4
  br label %62

60:                                               ; preds = %28
  %61 = load i32, i32* @OMAP_DSS_CLK_SRC_DSI2_PLL_HSDIV_DISPC, align 4
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i32 [ %59, %58 ], [ %61, %60 ]
  %64 = call i32 @dss_feat_get_clk_source_name(i32 %63)
  %65 = load %struct.dss_pll_clock_info*, %struct.dss_pll_clock_info** %6, align 8
  %66 = getelementptr inbounds %struct.dss_pll_clock_info, %struct.dss_pll_clock_info* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* @HSDIV_DISPC, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.dss_pll_clock_info*, %struct.dss_pll_clock_info** %6, align 8
  %72 = getelementptr inbounds %struct.dss_pll_clock_info, %struct.dss_pll_clock_info* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i64, i64* @HSDIV_DISPC, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load i32, i32* @OMAP_DSS_CLK_SRC_FCK, align 4
  %79 = icmp eq i32 %77, %78
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0)
  %82 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %55, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %64, i32 %70, i32 %76, i8* %81)
  %83 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %84 = load i32, i32* %9, align 4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %62
  %87 = load i32, i32* @OMAP_DSS_CLK_SRC_DSI_PLL_HSDIV_DSI, align 4
  br label %90

88:                                               ; preds = %62
  %89 = load i32, i32* @OMAP_DSS_CLK_SRC_DSI2_PLL_HSDIV_DSI, align 4
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi i32 [ %87, %86 ], [ %89, %88 ]
  %92 = call i32 @dss_feat_get_clk_source_name(i32 %91)
  %93 = load %struct.dss_pll_clock_info*, %struct.dss_pll_clock_info** %6, align 8
  %94 = getelementptr inbounds %struct.dss_pll_clock_info, %struct.dss_pll_clock_info* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = load i64, i64* @HSDIV_DSI, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.dss_pll_clock_info*, %struct.dss_pll_clock_info** %6, align 8
  %100 = getelementptr inbounds %struct.dss_pll_clock_info, %struct.dss_pll_clock_info* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = load i64, i64* @HSDIV_DSI, align 8
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @OMAP_DSS_CLK_SRC_FCK, align 4
  %107 = icmp eq i32 %105, %106
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0)
  %110 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %83, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0), i32 %92, i32 %98, i32 %104, i8* %109)
  %111 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %112 = load i32, i32* %9, align 4
  %113 = add nsw i32 %112, 1
  %114 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %111, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 %113)
  %115 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @dss_get_generic_clk_source_name(i32 %116)
  %118 = load i32, i32* %8, align 4
  %119 = call i32 @dss_feat_get_clk_source_name(i32 %118)
  %120 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %115, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0), i32 %117, i32 %119)
  %121 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %122 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %123 = call i32 @dsi_fclk_rate(%struct.platform_device* %122)
  %124 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %121, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 %123)
  %125 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %126 = load %struct.dss_pll_clock_info*, %struct.dss_pll_clock_info** %6, align 8
  %127 = getelementptr inbounds %struct.dss_pll_clock_info, %struct.dss_pll_clock_info* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = sdiv i32 %128, 4
  %130 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %125, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i32 %129)
  %131 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %132 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %133 = call i32 @dsi_get_txbyteclkhs(%struct.platform_device* %132)
  %134 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %131, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i32 %133)
  %135 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %136 = load %struct.dsi_data*, %struct.dsi_data** %5, align 8
  %137 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 (%struct.seq_file*, i8*, i32, ...) @seq_printf(%struct.seq_file* %135, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), i32 %139)
  %141 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %142 = call i32 @dsi_runtime_put(%struct.platform_device* %141)
  br label %143

143:                                              ; preds = %90, %27
  ret void
}

declare dso_local %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device*) #1

declare dso_local i32 @dss_get_dispc_clk_source(...) #1

declare dso_local i32 @dss_get_dsi_clk_source(i32) #1

declare dso_local i64 @dsi_runtime_get(%struct.platform_device*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, ...) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @dss_feat_get_clk_source_name(i32) #1

declare dso_local i32 @dss_get_generic_clk_source_name(i32) #1

declare dso_local i32 @dsi_fclk_rate(%struct.platform_device*) #1

declare dso_local i32 @dsi_get_txbyteclkhs(%struct.platform_device*) #1

declare dso_local i32 @dsi_runtime_put(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
