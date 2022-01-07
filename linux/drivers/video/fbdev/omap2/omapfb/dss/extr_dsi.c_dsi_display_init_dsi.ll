; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_display_init_dsi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_display_init_dsi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.dsi_data = type { i64, i32 }

@OMAP_DSS_CLK_SRC_DSI_PLL_HSDIV_DSI = common dso_local global i32 0, align 4
@OMAP_DSS_CLK_SRC_DSI2_PLL_HSDIV_DSI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"PLL OK\0A\00", align 1
@OMAP_DSS_CLK_SRC_FCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dsi_display_init_dsi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_display_init_dsi(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.dsi_data*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = call %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device* %6)
  store %struct.dsi_data* %7, %struct.dsi_data** %4, align 8
  %8 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %9 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %8, i32 0, i32 1
  %10 = call i32 @dss_pll_enable(i32* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %81

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = call i32 @dsi_configure_dsi_clocks(%struct.platform_device* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %77

20:                                               ; preds = %14
  %21 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %22 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %25 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* @OMAP_DSS_CLK_SRC_DSI_PLL_HSDIV_DSI, align 4
  br label %32

30:                                               ; preds = %20
  %31 = load i32, i32* @OMAP_DSS_CLK_SRC_DSI2_PLL_HSDIV_DSI, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  %34 = call i32 @dss_select_dsi_clk_source(i64 %23, i32 %33)
  %35 = call i32 @DSSDBG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %37 = call i32 @dsi_cio_init(%struct.platform_device* %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %71

41:                                               ; preds = %32
  %42 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %43 = call i32 @_dsi_print_reset_status(%struct.platform_device* %42)
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = call i32 @dsi_proto_timings(%struct.platform_device* %44)
  %46 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %47 = call i32 @dsi_set_lp_clk_divisor(%struct.platform_device* %46)
  %48 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %49 = call i32 @_dsi_print_reset_status(%struct.platform_device* %48)
  %50 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %51 = call i32 @dsi_proto_config(%struct.platform_device* %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %41
  br label %68

55:                                               ; preds = %41
  %56 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %57 = call i32 @dsi_vc_enable(%struct.platform_device* %56, i32 0, i32 1)
  %58 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %59 = call i32 @dsi_vc_enable(%struct.platform_device* %58, i32 1, i32 1)
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = call i32 @dsi_vc_enable(%struct.platform_device* %60, i32 2, i32 1)
  %62 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %63 = call i32 @dsi_vc_enable(%struct.platform_device* %62, i32 3, i32 1)
  %64 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %65 = call i32 @dsi_if_enable(%struct.platform_device* %64, i32 1)
  %66 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %67 = call i32 @dsi_force_tx_stop_mode_io(%struct.platform_device* %66)
  store i32 0, i32* %2, align 4
  br label %83

68:                                               ; preds = %54
  %69 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %70 = call i32 @dsi_cio_uninit(%struct.platform_device* %69)
  br label %71

71:                                               ; preds = %68, %40
  %72 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %73 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* @OMAP_DSS_CLK_SRC_FCK, align 4
  %76 = call i32 @dss_select_dsi_clk_source(i64 %74, i32 %75)
  br label %77

77:                                               ; preds = %71, %19
  %78 = load %struct.dsi_data*, %struct.dsi_data** %4, align 8
  %79 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %78, i32 0, i32 1
  %80 = call i32 @dss_pll_disable(i32* %79)
  br label %81

81:                                               ; preds = %77, %13
  %82 = load i32, i32* %5, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %81, %55
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device*) #1

declare dso_local i32 @dss_pll_enable(i32*) #1

declare dso_local i32 @dsi_configure_dsi_clocks(%struct.platform_device*) #1

declare dso_local i32 @dss_select_dsi_clk_source(i64, i32) #1

declare dso_local i32 @DSSDBG(i8*) #1

declare dso_local i32 @dsi_cio_init(%struct.platform_device*) #1

declare dso_local i32 @_dsi_print_reset_status(%struct.platform_device*) #1

declare dso_local i32 @dsi_proto_timings(%struct.platform_device*) #1

declare dso_local i32 @dsi_set_lp_clk_divisor(%struct.platform_device*) #1

declare dso_local i32 @dsi_proto_config(%struct.platform_device*) #1

declare dso_local i32 @dsi_vc_enable(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dsi_if_enable(%struct.platform_device*, i32) #1

declare dso_local i32 @dsi_force_tx_stop_mode_io(%struct.platform_device*) #1

declare dso_local i32 @dsi_cio_uninit(%struct.platform_device*) #1

declare dso_local i32 @dss_pll_disable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
