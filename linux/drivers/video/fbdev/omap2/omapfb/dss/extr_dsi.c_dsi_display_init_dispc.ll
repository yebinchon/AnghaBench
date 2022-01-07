; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_display_init_dispc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_display_init_dispc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.omap_overlay_manager = type { i32 }
%struct.dsi_data = type { i64, i64, %struct.TYPE_4__, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i64, i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i8*, i32, i8*, i8* }

@OMAP_DSS_CLK_SRC_DSI_PLL_HSDIV_DISPC = common dso_local global i32 0, align 4
@OMAP_DSS_CLK_SRC_DSI2_PLL_HSDIV_DISPC = common dso_local global i32 0, align 4
@OMAP_DSS_DSI_CMD_MODE = common dso_local global i64 0, align 8
@dsi_framedone_irq_callback = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"can't register FRAMEDONE handler\0A\00", align 1
@OMAPDSS_SIG_ACTIVE_HIGH = common dso_local global i8* null, align 8
@OMAPDSS_DRIVE_SIG_RISING_EDGE = common dso_local global i32 0, align 4
@OMAPDSS_DRIVE_SIG_FALLING_EDGE = common dso_local global i32 0, align 4
@DSS_IO_PAD_MODE_BYPASS = common dso_local global i32 0, align 4
@OMAP_DSS_CLK_SRC_FCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, %struct.omap_overlay_manager*)* @dsi_display_init_dispc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_display_init_dispc(%struct.platform_device* %0, %struct.omap_overlay_manager* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca %struct.omap_overlay_manager*, align 8
  %6 = alloca %struct.dsi_data*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store %struct.omap_overlay_manager* %1, %struct.omap_overlay_manager** %5, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %9 = call %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device* %8)
  store %struct.dsi_data* %9, %struct.dsi_data** %6, align 8
  %10 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %5, align 8
  %11 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %14 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @OMAP_DSS_CLK_SRC_DSI_PLL_HSDIV_DISPC, align 4
  br label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @OMAP_DSS_CLK_SRC_DSI2_PLL_HSDIV_DISPC, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  %23 = call i32 @dss_select_lcd_clk_source(i32 %12, i32 %22)
  %24 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %25 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @OMAP_DSS_DSI_CMD_MODE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %45

29:                                               ; preds = %21
  %30 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %5, align 8
  %31 = load i32, i32* @dsi_framedone_irq_callback, align 4
  %32 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %33 = call i32 @dss_mgr_register_framedone_handler(%struct.omap_overlay_manager* %30, i32 %31, %struct.platform_device* %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = call i32 @DSSERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %116

38:                                               ; preds = %29
  %39 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %40 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %43 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  store i32 1, i32* %44, align 4
  br label %52

45:                                               ; preds = %21
  %46 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %47 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i32 0, i32* %48, align 8
  %49 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %50 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  store i32 0, i32* %51, align 4
  br label %52

52:                                               ; preds = %45, %38
  %53 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %54 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  store i32 0, i32* %55, align 8
  %56 = load i8*, i8** @OMAPDSS_SIG_ACTIVE_HIGH, align 8
  %57 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %58 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 5
  store i8* %56, i8** %59, align 8
  %60 = load i8*, i8** @OMAPDSS_SIG_ACTIVE_HIGH, align 8
  %61 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %62 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 4
  store i8* %60, i8** %63, align 8
  %64 = load i32, i32* @OMAPDSS_DRIVE_SIG_RISING_EDGE, align 4
  %65 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %66 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 3
  store i32 %64, i32* %67, align 8
  %68 = load i8*, i8** @OMAPDSS_SIG_ACTIVE_HIGH, align 8
  %69 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %70 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  store i8* %68, i8** %71, align 8
  %72 = load i32, i32* @OMAPDSS_DRIVE_SIG_FALLING_EDGE, align 4
  %73 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %74 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  store i32 %72, i32* %75, align 4
  %76 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %5, align 8
  %77 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %78 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %77, i32 0, i32 4
  %79 = call i32 @dss_mgr_set_timings(%struct.omap_overlay_manager* %76, %struct.TYPE_3__* %78)
  %80 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %81 = call i32 @dsi_configure_dispc_clocks(%struct.platform_device* %80)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %52
  br label %104

85:                                               ; preds = %52
  %86 = load i32, i32* @DSS_IO_PAD_MODE_BYPASS, align 4
  %87 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %88 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 4
  store i32 %86, i32* %89, align 4
  %90 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %91 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @dsi_get_pixel_size(i32 %92)
  %94 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %95 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 3
  store i32 %93, i32* %96, align 8
  %97 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %98 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 2
  store i64 0, i64* %99, align 8
  %100 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %5, align 8
  %101 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %102 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %101, i32 0, i32 2
  %103 = call i32 @dss_mgr_set_lcd_config(%struct.omap_overlay_manager* %100, %struct.TYPE_4__* %102)
  store i32 0, i32* %3, align 4
  br label %123

104:                                              ; preds = %84
  %105 = load %struct.dsi_data*, %struct.dsi_data** %6, align 8
  %106 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @OMAP_DSS_DSI_CMD_MODE, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %104
  %111 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %5, align 8
  %112 = load i32, i32* @dsi_framedone_irq_callback, align 4
  %113 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %114 = call i32 @dss_mgr_unregister_framedone_handler(%struct.omap_overlay_manager* %111, i32 %112, %struct.platform_device* %113)
  br label %115

115:                                              ; preds = %110, %104
  br label %116

116:                                              ; preds = %115, %36
  %117 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %5, align 8
  %118 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @OMAP_DSS_CLK_SRC_FCK, align 4
  %121 = call i32 @dss_select_lcd_clk_source(i32 %119, i32 %120)
  %122 = load i32, i32* %7, align 4
  store i32 %122, i32* %3, align 4
  br label %123

123:                                              ; preds = %116, %85
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device*) #1

declare dso_local i32 @dss_select_lcd_clk_source(i32, i32) #1

declare dso_local i32 @dss_mgr_register_framedone_handler(%struct.omap_overlay_manager*, i32, %struct.platform_device*) #1

declare dso_local i32 @DSSERR(i8*) #1

declare dso_local i32 @dss_mgr_set_timings(%struct.omap_overlay_manager*, %struct.TYPE_3__*) #1

declare dso_local i32 @dsi_configure_dispc_clocks(%struct.platform_device*) #1

declare dso_local i32 @dsi_get_pixel_size(i32) #1

declare dso_local i32 @dss_mgr_set_lcd_config(%struct.omap_overlay_manager*, %struct.TYPE_4__*) #1

declare dso_local i32 @dss_mgr_unregister_framedone_handler(%struct.omap_overlay_manager*, i32, %struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
