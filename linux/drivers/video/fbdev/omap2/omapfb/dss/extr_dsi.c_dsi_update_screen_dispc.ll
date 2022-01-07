; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_update_screen_dispc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dsi.c_dsi_update_screen_dispc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.dsi_data = type { i32, i32, i32, i64, %struct.TYPE_4__, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { %struct.omap_overlay_manager* }
%struct.omap_overlay_manager = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"dsi_update_screen_dispc(%dx%d)\0A\00", align 1
@DSI_VC_SOURCE_VP = common dso_local global i32 0, align 4
@MIPI_DSI_DCS_LONG_WRITE = common dso_local global i32 0, align 4
@DSI_TIMING2 = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.platform_device*)* @dsi_update_screen_dispc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsi_update_screen_dispc(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.dsi_data*, align 8
  %4 = alloca %struct.omap_overlay_manager*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %17 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %18 = call %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device* %17)
  store %struct.dsi_data* %18, %struct.dsi_data** %3, align 8
  %19 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %20 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %19, i32 0, i32 7
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %21, align 8
  store %struct.omap_overlay_manager* %22, %struct.omap_overlay_manager** %4, align 8
  %23 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %24 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %13, align 4
  %26 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %27 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %14, align 4
  %29 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %30 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %15, align 4
  %33 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %34 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %16, align 4
  %37 = load i32, i32* %15, align 4
  %38 = load i32, i32* %16, align 4
  %39 = call i32 @DSSDBG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38)
  %40 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* @DSI_VC_SOURCE_VP, align 4
  %43 = call i32 @dsi_vc_config_source(%struct.platform_device* %40, i32 %41, i32 %42)
  %44 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %45 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dsi_get_pixel_size(i32 %46)
  %48 = sdiv i32 %47, 8
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* %5, align 4
  %51 = mul i32 %49, %50
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %16, align 4
  %54 = mul i32 %52, %53
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %14, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %1
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %9, align 4
  br label %66

60:                                               ; preds = %1
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %6, align 4
  %63 = udiv i32 %61, %62
  %64 = load i32, i32* %6, align 4
  %65 = mul i32 %63, %64
  store i32 %65, i32* %9, align 4
  br label %66

66:                                               ; preds = %60, %58
  %67 = load i32, i32* %9, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %9, align 4
  %71 = udiv i32 %69, %70
  %72 = load i32, i32* %10, align 4
  %73 = mul i32 %71, %72
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %9, align 4
  %76 = urem i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %66
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %9, align 4
  %81 = urem i32 %79, %80
  %82 = add i32 %81, 1
  %83 = load i32, i32* %8, align 4
  %84 = add i32 %83, %82
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %78, %66
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @FLD_VAL(i32 %86, i32 23, i32 0)
  store i32 %87, i32* %11, align 4
  %88 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %89 = load i32, i32* %13, align 4
  %90 = call i32 @DSI_VC_TE(i32 %89)
  %91 = load i32, i32* %11, align 4
  %92 = call i32 @dsi_write_reg(%struct.platform_device* %88, i32 %90, i32 %91)
  %93 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %94 = load i32, i32* %13, align 4
  %95 = load i32, i32* @MIPI_DSI_DCS_LONG_WRITE, align 4
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @dsi_vc_write_long_header(%struct.platform_device* %93, i32 %94, i32 %95, i32 %96, i32 0)
  %98 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %99 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %85
  %103 = load i32, i32* %11, align 4
  %104 = call i32 @FLD_MOD(i32 %103, i32 1, i32 30, i32 30)
  store i32 %104, i32* %11, align 4
  br label %108

105:                                              ; preds = %85
  %106 = load i32, i32* %11, align 4
  %107 = call i32 @FLD_MOD(i32 %106, i32 1, i32 31, i32 31)
  store i32 %107, i32* %11, align 4
  br label %108

108:                                              ; preds = %105, %102
  %109 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %110 = load i32, i32* %13, align 4
  %111 = call i32 @DSI_VC_TE(i32 %110)
  %112 = load i32, i32* %11, align 4
  %113 = call i32 @dsi_write_reg(%struct.platform_device* %109, i32 %111, i32 %112)
  %114 = call i32 (...) @dispc_disable_sidle()
  %115 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %116 = call i32 @dsi_perf_mark_start(%struct.platform_device* %115)
  %117 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %118 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %117, i32 0, i32 5
  %119 = call i64 @msecs_to_jiffies(i32 250)
  %120 = call i32 @schedule_delayed_work(i32* %118, i64 %119)
  store i32 %120, i32* %12, align 4
  %121 = load i32, i32* %12, align 4
  %122 = icmp eq i32 %121, 0
  %123 = zext i1 %122 to i32
  %124 = call i32 @BUG_ON(i32 %123)
  %125 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %4, align 8
  %126 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %127 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %126, i32 0, i32 4
  %128 = call i32 @dss_mgr_set_timings(%struct.omap_overlay_manager* %125, %struct.TYPE_4__* %127)
  %129 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %4, align 8
  %130 = call i32 @dss_mgr_start_update(%struct.omap_overlay_manager* %129)
  %131 = load %struct.dsi_data*, %struct.dsi_data** %3, align 8
  %132 = getelementptr inbounds %struct.dsi_data, %struct.dsi_data* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %108
  %136 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %137 = load i32, i32* @DSI_TIMING2, align 4
  %138 = call i32 @REG_FLD_MOD(%struct.platform_device* %136, i32 %137, i32 0, i32 15, i32 15)
  %139 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %140 = load i32, i32* %13, align 4
  %141 = call i32 @dsi_vc_send_bta(%struct.platform_device* %139, i32 %140)
  br label %142

142:                                              ; preds = %135, %108
  ret void
}

declare dso_local %struct.dsi_data* @dsi_get_dsidrv_data(%struct.platform_device*) #1

declare dso_local i32 @DSSDBG(i8*, i32, i32) #1

declare dso_local i32 @dsi_vc_config_source(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @dsi_get_pixel_size(i32) #1

declare dso_local i32 @FLD_VAL(i32, i32, i32) #1

declare dso_local i32 @dsi_write_reg(%struct.platform_device*, i32, i32) #1

declare dso_local i32 @DSI_VC_TE(i32) #1

declare dso_local i32 @dsi_vc_write_long_header(%struct.platform_device*, i32, i32, i32, i32) #1

declare dso_local i32 @FLD_MOD(i32, i32, i32, i32) #1

declare dso_local i32 @dispc_disable_sidle(...) #1

declare dso_local i32 @dsi_perf_mark_start(%struct.platform_device*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dss_mgr_set_timings(%struct.omap_overlay_manager*, %struct.TYPE_4__*) #1

declare dso_local i32 @dss_mgr_start_update(%struct.omap_overlay_manager*) #1

declare dso_local i32 @REG_FLD_MOD(%struct.platform_device*, i32, i32, i32, i32) #1

declare dso_local i32 @dsi_vc_send_bta(%struct.platform_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
