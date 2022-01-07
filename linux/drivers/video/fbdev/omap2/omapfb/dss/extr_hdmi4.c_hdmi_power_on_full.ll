; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_hdmi4.c_hdmi_power_on_full.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_hdmi4.c_hdmi_power_on_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__, %struct.hdmi_wp_data, %struct.TYPE_7__, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.hdmi_wp_data = type { i32 }
%struct.TYPE_7__ = type { %struct.omap_video_timings }
%struct.omap_video_timings = type { i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.omap_overlay_manager* }
%struct.omap_overlay_manager = type { i32 }
%struct.omap_dss_device = type { i32 }
%struct.dss_pll_clock_info = type { i32*, i32, i32 }

@hdmi = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str = private unnamed_addr constant [36 x i8] c"hdmi_power_on x_res= %d y_res = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Failed to enable PLL\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"Failed to configure PLL\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Failed to configure PHY\0A\00", align 1
@HDMI_PHYPWRCMD_LDOON = common dso_local global i32 0, align 4
@HDMI_IRQ_LINK_CONNECT = common dso_local global i32 0, align 4
@HDMI_IRQ_LINK_DISCONNECT = common dso_local global i32 0, align 4
@HDMI_PHYPWRCMD_OFF = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_dss_device*)* @hdmi_power_on_full to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_power_on_full(%struct.omap_dss_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_dss_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.omap_video_timings*, align 8
  %6 = alloca %struct.omap_overlay_manager*, align 8
  %7 = alloca %struct.hdmi_wp_data*, align 8
  %8 = alloca %struct.dss_pll_clock_info, align 8
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %3, align 8
  %9 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hdmi, i32 0, i32 5, i32 0), align 8
  store %struct.omap_overlay_manager* %9, %struct.omap_overlay_manager** %6, align 8
  store %struct.hdmi_wp_data* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hdmi, i32 0, i32 1), %struct.hdmi_wp_data** %7, align 8
  %10 = bitcast %struct.dss_pll_clock_info* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 16, i1 false)
  %11 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %12 = call i32 @hdmi_power_on_core(%struct.omap_dss_device* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %99

17:                                               ; preds = %1
  %18 = load %struct.hdmi_wp_data*, %struct.hdmi_wp_data** %7, align 8
  %19 = call i32 @hdmi_wp_clear_irqenable(%struct.hdmi_wp_data* %18, i32 -1)
  %20 = load %struct.hdmi_wp_data*, %struct.hdmi_wp_data** %7, align 8
  %21 = call i32 @hdmi_wp_set_irqstatus(%struct.hdmi_wp_data* %20, i32 -1)
  store %struct.omap_video_timings* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hdmi, i32 0, i32 2, i32 0), %struct.omap_video_timings** %5, align 8
  %22 = load %struct.omap_video_timings*, %struct.omap_video_timings** %5, align 8
  %23 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.omap_video_timings*, %struct.omap_video_timings** %5, align 8
  %26 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i8*, ...) @DSSDBG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %27)
  %29 = load %struct.omap_video_timings*, %struct.omap_video_timings** %5, align 8
  %30 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @hdmi_pll_compute(%struct.TYPE_6__* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hdmi, i32 0, i32 0), i32 %31, %struct.dss_pll_clock_info* %8)
  %33 = call i32 @dss_pll_enable(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hdmi, i32 0, i32 0, i32 0))
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %17
  %37 = call i32 @DSSERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %94

38:                                               ; preds = %17
  %39 = call i32 @dss_pll_set_config(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hdmi, i32 0, i32 0, i32 0), %struct.dss_pll_clock_info* %8)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = call i32 @DSSERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %92

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.dss_pll_clock_info, %struct.dss_pll_clock_info* %8, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = getelementptr inbounds %struct.dss_pll_clock_info, %struct.dss_pll_clock_info* %8, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @hdmi_phy_configure(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hdmi, i32 0, i32 4), i32 %46, i32 %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %44
  %55 = call i32 (i8*, ...) @DSSDBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %91

56:                                               ; preds = %44
  %57 = load %struct.hdmi_wp_data*, %struct.hdmi_wp_data** %7, align 8
  %58 = load i32, i32* @HDMI_PHYPWRCMD_LDOON, align 4
  %59 = call i32 @hdmi_wp_set_phy_pwr(%struct.hdmi_wp_data* %57, i32 %58)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %90

63:                                               ; preds = %56
  %64 = call i32 @hdmi4_configure(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hdmi, i32 0, i32 3), %struct.hdmi_wp_data* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hdmi, i32 0, i32 1), %struct.TYPE_7__* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hdmi, i32 0, i32 2))
  %65 = call i32 @dispc_enable_gamma_table(i32 0)
  %66 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %6, align 8
  %67 = load %struct.omap_video_timings*, %struct.omap_video_timings** %5, align 8
  %68 = call i32 @dss_mgr_set_timings(%struct.omap_overlay_manager* %66, %struct.omap_video_timings* %67)
  %69 = call i32 @hdmi_wp_video_start(%struct.hdmi_wp_data* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hdmi, i32 0, i32 1))
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %63
  br label %87

73:                                               ; preds = %63
  %74 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %6, align 8
  %75 = call i32 @dss_mgr_enable(%struct.omap_overlay_manager* %74)
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %73
  br label %85

79:                                               ; preds = %73
  %80 = load %struct.hdmi_wp_data*, %struct.hdmi_wp_data** %7, align 8
  %81 = load i32, i32* @HDMI_IRQ_LINK_CONNECT, align 4
  %82 = load i32, i32* @HDMI_IRQ_LINK_DISCONNECT, align 4
  %83 = or i32 %81, %82
  %84 = call i32 @hdmi_wp_set_irqenable(%struct.hdmi_wp_data* %80, i32 %83)
  store i32 0, i32* %2, align 4
  br label %99

85:                                               ; preds = %78
  %86 = call i32 @hdmi_wp_video_stop(%struct.hdmi_wp_data* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hdmi, i32 0, i32 1))
  br label %87

87:                                               ; preds = %85, %72
  %88 = load i32, i32* @HDMI_PHYPWRCMD_OFF, align 4
  %89 = call i32 @hdmi_wp_set_phy_pwr(%struct.hdmi_wp_data* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hdmi, i32 0, i32 1), i32 %88)
  br label %90

90:                                               ; preds = %87, %62
  br label %91

91:                                               ; preds = %90, %54
  br label %92

92:                                               ; preds = %91, %42
  %93 = call i32 @dss_pll_disable(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hdmi, i32 0, i32 0, i32 0))
  br label %94

94:                                               ; preds = %92, %36
  %95 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %96 = call i32 @hdmi_power_off_core(%struct.omap_dss_device* %95)
  %97 = load i32, i32* @EIO, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %2, align 4
  br label %99

99:                                               ; preds = %94, %79, %15
  %100 = load i32, i32* %2, align 4
  ret i32 %100
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @hdmi_power_on_core(%struct.omap_dss_device*) #2

declare dso_local i32 @hdmi_wp_clear_irqenable(%struct.hdmi_wp_data*, i32) #2

declare dso_local i32 @hdmi_wp_set_irqstatus(%struct.hdmi_wp_data*, i32) #2

declare dso_local i32 @DSSDBG(i8*, ...) #2

declare dso_local i32 @hdmi_pll_compute(%struct.TYPE_6__*, i32, %struct.dss_pll_clock_info*) #2

declare dso_local i32 @dss_pll_enable(i32*) #2

declare dso_local i32 @DSSERR(i8*) #2

declare dso_local i32 @dss_pll_set_config(i32*, %struct.dss_pll_clock_info*) #2

declare dso_local i32 @hdmi_phy_configure(i32*, i32, i32) #2

declare dso_local i32 @hdmi_wp_set_phy_pwr(%struct.hdmi_wp_data*, i32) #2

declare dso_local i32 @hdmi4_configure(i32*, %struct.hdmi_wp_data*, %struct.TYPE_7__*) #2

declare dso_local i32 @dispc_enable_gamma_table(i32) #2

declare dso_local i32 @dss_mgr_set_timings(%struct.omap_overlay_manager*, %struct.omap_video_timings*) #2

declare dso_local i32 @hdmi_wp_video_start(%struct.hdmi_wp_data*) #2

declare dso_local i32 @dss_mgr_enable(%struct.omap_overlay_manager*) #2

declare dso_local i32 @hdmi_wp_set_irqenable(%struct.hdmi_wp_data*, i32) #2

declare dso_local i32 @hdmi_wp_video_stop(%struct.hdmi_wp_data*) #2

declare dso_local i32 @dss_pll_disable(i32*) #2

declare dso_local i32 @hdmi_power_off_core(%struct.omap_dss_device*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
