; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_hdmi5.c_hdmi_power_on_full.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_hdmi5.c_hdmi_power_on_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__, i32, %struct.TYPE_7__, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
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
@.str.3 = private unnamed_addr constant [21 x i8] c"Failed to start PHY\0A\00", align 1
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
  %7 = alloca %struct.dss_pll_clock_info, align 8
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %3, align 8
  %8 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hdmi, i32 0, i32 5, i32 0), align 8
  store %struct.omap_overlay_manager* %8, %struct.omap_overlay_manager** %6, align 8
  %9 = bitcast %struct.dss_pll_clock_info* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 16, i1 false)
  %10 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %11 = call i32 @hdmi_power_on_core(%struct.omap_dss_device* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %95

16:                                               ; preds = %1
  store %struct.omap_video_timings* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hdmi, i32 0, i32 2, i32 0), %struct.omap_video_timings** %5, align 8
  %17 = load %struct.omap_video_timings*, %struct.omap_video_timings** %5, align 8
  %18 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.omap_video_timings*, %struct.omap_video_timings** %5, align 8
  %21 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 (i8*, ...) @DSSDBG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %22)
  %24 = load %struct.omap_video_timings*, %struct.omap_video_timings** %5, align 8
  %25 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @hdmi_pll_compute(%struct.TYPE_6__* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hdmi, i32 0, i32 0), i32 %26, %struct.dss_pll_clock_info* %7)
  %28 = call i32 @hdmi_wp_clear_irqenable(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hdmi, i32 0, i32 1), i32 -1)
  %29 = call i32 @hdmi_wp_get_irqstatus(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hdmi, i32 0, i32 1))
  %30 = call i32 @hdmi_wp_set_irqstatus(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hdmi, i32 0, i32 1), i32 %29)
  %31 = call i32 @dss_pll_enable(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hdmi, i32 0, i32 0, i32 0))
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %16
  %35 = call i32 @DSSERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %90

36:                                               ; preds = %16
  %37 = call i32 @dss_pll_set_config(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hdmi, i32 0, i32 0, i32 0), %struct.dss_pll_clock_info* %7)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = call i32 @DSSERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %88

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.dss_pll_clock_info, %struct.dss_pll_clock_info* %7, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds %struct.dss_pll_clock_info, %struct.dss_pll_clock_info* %7, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @hdmi_phy_configure(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hdmi, i32 0, i32 4), i32 %44, i32 %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %42
  %53 = call i32 (i8*, ...) @DSSDBG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %87

54:                                               ; preds = %42
  %55 = load i32, i32* @HDMI_PHYPWRCMD_LDOON, align 4
  %56 = call i32 @hdmi_wp_set_phy_pwr(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hdmi, i32 0, i32 1), i32 %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %86

60:                                               ; preds = %54
  %61 = call i32 @hdmi5_configure(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hdmi, i32 0, i32 3), i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hdmi, i32 0, i32 1), %struct.TYPE_7__* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hdmi, i32 0, i32 2))
  %62 = call i32 @dispc_enable_gamma_table(i32 0)
  %63 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %6, align 8
  %64 = load %struct.omap_video_timings*, %struct.omap_video_timings** %5, align 8
  %65 = call i32 @dss_mgr_set_timings(%struct.omap_overlay_manager* %63, %struct.omap_video_timings* %64)
  %66 = call i32 @hdmi_wp_video_start(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hdmi, i32 0, i32 1))
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  br label %83

70:                                               ; preds = %60
  %71 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %6, align 8
  %72 = call i32 @dss_mgr_enable(%struct.omap_overlay_manager* %71)
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* %4, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70
  br label %81

76:                                               ; preds = %70
  %77 = load i32, i32* @HDMI_IRQ_LINK_CONNECT, align 4
  %78 = load i32, i32* @HDMI_IRQ_LINK_DISCONNECT, align 4
  %79 = or i32 %77, %78
  %80 = call i32 @hdmi_wp_set_irqenable(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hdmi, i32 0, i32 1), i32 %79)
  store i32 0, i32* %2, align 4
  br label %95

81:                                               ; preds = %75
  %82 = call i32 @hdmi_wp_video_stop(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hdmi, i32 0, i32 1))
  br label %83

83:                                               ; preds = %81, %69
  %84 = load i32, i32* @HDMI_PHYPWRCMD_OFF, align 4
  %85 = call i32 @hdmi_wp_set_phy_pwr(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hdmi, i32 0, i32 1), i32 %84)
  br label %86

86:                                               ; preds = %83, %59
  br label %87

87:                                               ; preds = %86, %52
  br label %88

88:                                               ; preds = %87, %40
  %89 = call i32 @dss_pll_disable(i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @hdmi, i32 0, i32 0, i32 0))
  br label %90

90:                                               ; preds = %88, %34
  %91 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %92 = call i32 @hdmi_power_off_core(%struct.omap_dss_device* %91)
  %93 = load i32, i32* @EIO, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %90, %76, %14
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @hdmi_power_on_core(%struct.omap_dss_device*) #2

declare dso_local i32 @DSSDBG(i8*, ...) #2

declare dso_local i32 @hdmi_pll_compute(%struct.TYPE_6__*, i32, %struct.dss_pll_clock_info*) #2

declare dso_local i32 @hdmi_wp_clear_irqenable(i32*, i32) #2

declare dso_local i32 @hdmi_wp_set_irqstatus(i32*, i32) #2

declare dso_local i32 @hdmi_wp_get_irqstatus(i32*) #2

declare dso_local i32 @dss_pll_enable(i32*) #2

declare dso_local i32 @DSSERR(i8*) #2

declare dso_local i32 @dss_pll_set_config(i32*, %struct.dss_pll_clock_info*) #2

declare dso_local i32 @hdmi_phy_configure(i32*, i32, i32) #2

declare dso_local i32 @hdmi_wp_set_phy_pwr(i32*, i32) #2

declare dso_local i32 @hdmi5_configure(i32*, i32*, %struct.TYPE_7__*) #2

declare dso_local i32 @dispc_enable_gamma_table(i32) #2

declare dso_local i32 @dss_mgr_set_timings(%struct.omap_overlay_manager*, %struct.omap_video_timings*) #2

declare dso_local i32 @hdmi_wp_video_start(i32*) #2

declare dso_local i32 @dss_mgr_enable(%struct.omap_overlay_manager*) #2

declare dso_local i32 @hdmi_wp_set_irqenable(i32*, i32) #2

declare dso_local i32 @hdmi_wp_video_stop(i32*) #2

declare dso_local i32 @dss_pll_disable(i32*) #2

declare dso_local i32 @hdmi_power_off_core(%struct.omap_dss_device*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
