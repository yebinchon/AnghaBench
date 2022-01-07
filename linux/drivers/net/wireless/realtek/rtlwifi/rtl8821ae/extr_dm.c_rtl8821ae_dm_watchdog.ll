; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_dm.c_rtl8821ae_dm_watchdog.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_dm.c_rtl8821ae_dm_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_12__, %struct.TYPE_10__, %struct.TYPE_8__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.ieee80211_hw*, i32, i32*)* }
%struct.rtl_ps_ctl = type { i64, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.rtl_hal = type { i64 }

@HW_VAR_FW_PSMODE_STATUS = common dso_local global i32 0, align 4
@HW_VAR_FWLPS_RF_ON = common dso_local global i32 0, align 4
@ERFON = common dso_local global i64 0, align 8
@HARDWARE_TYPE_RTL8812AE = common dso_local global i64 0, align 8
@COMP_DIG = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8821ae_dm_watchdog(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_ps_ctl*, align 8
  %5 = alloca %struct.rtl_hal*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %9 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %8)
  store %struct.rtl_priv* %9, %struct.rtl_priv** %3, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %11 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %10)
  %12 = call %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv* %11)
  store %struct.rtl_ps_ctl* %12, %struct.rtl_ps_ctl** %4, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %14 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %13)
  %15 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %14)
  store %struct.rtl_hal* %15, %struct.rtl_hal** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 1, i32* %7, align 4
  %16 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %17 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %16, i32 0, i32 2
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32 (%struct.ieee80211_hw*, i32, i32*)*, i32 (%struct.ieee80211_hw*, i32, i32*)** %21, align 8
  %23 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %24 = load i32, i32* @HW_VAR_FW_PSMODE_STATUS, align 4
  %25 = call i32 %22(%struct.ieee80211_hw* %23, i32 %24, i32* %6)
  %26 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %27 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %26, i32 0, i32 2
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32 (%struct.ieee80211_hw*, i32, i32*)*, i32 (%struct.ieee80211_hw*, i32, i32*)** %31, align 8
  %33 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %34 = load i32, i32* @HW_VAR_FWLPS_RF_ON, align 4
  %35 = call i32 %32(%struct.ieee80211_hw* %33, i32 %34, i32* %7)
  %36 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %4, align 8
  %37 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %41, %1
  %43 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %44 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = call i32 @spin_lock(i32* %45)
  %47 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %4, align 8
  %48 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @ERFON, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %96

52:                                               ; preds = %42
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %96, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %96

58:                                               ; preds = %55
  %59 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %4, align 8
  %60 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %96, label %63

63:                                               ; preds = %58
  %64 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %65 = call i32 @rtl8821ae_dm_common_info_self_update(%struct.ieee80211_hw* %64)
  %66 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %67 = call i32 @rtl8821ae_dm_false_alarm_counter_statistics(%struct.ieee80211_hw* %66)
  %68 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %69 = call i32 @rtl8821ae_dm_check_rssi_monitor(%struct.ieee80211_hw* %68)
  %70 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %71 = call i32 @rtl8821ae_dm_dig(%struct.ieee80211_hw* %70)
  %72 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %73 = call i32 @rtl8821ae_dm_cck_packet_detection_thresh(%struct.ieee80211_hw* %72)
  %74 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %75 = call i32 @rtl8821ae_dm_refresh_rate_adaptive_mask(%struct.ieee80211_hw* %74)
  %76 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %77 = call i32 @rtl8821ae_dm_refresh_basic_rate_mask(%struct.ieee80211_hw* %76)
  %78 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %79 = call i32 @rtl8821ae_dm_check_edca_turbo(%struct.ieee80211_hw* %78)
  %80 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %81 = call i32 @rtl8821ae_dm_dynamic_atc_switch(%struct.ieee80211_hw* %80)
  %82 = load %struct.rtl_hal*, %struct.rtl_hal** %5, align 8
  %83 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @HARDWARE_TYPE_RTL8812AE, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %63
  %88 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %89 = call i32 @rtl8812ae_dm_check_txpower_tracking_thermalmeter(%struct.ieee80211_hw* %88)
  br label %93

90:                                               ; preds = %63
  %91 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %92 = call i32 @rtl8821ae_dm_check_txpower_tracking_thermalmeter(%struct.ieee80211_hw* %91)
  br label %93

93:                                               ; preds = %90, %87
  %94 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %95 = call i32 @rtl8821ae_dm_iq_calibrate(%struct.ieee80211_hw* %94)
  br label %96

96:                                               ; preds = %93, %58, %55, %52, %42
  %97 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %98 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = call i32 @spin_unlock(i32* %99)
  %101 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %102 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  store i64 0, i64* %104, align 8
  %105 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %106 = load i32, i32* @COMP_DIG, align 4
  %107 = load i32, i32* @DBG_DMESG, align 4
  %108 = call i32 @RT_TRACE(%struct.rtl_priv* %105, i32 %106, i32 %107, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @rtl8821ae_dm_common_info_self_update(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl8821ae_dm_false_alarm_counter_statistics(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl8821ae_dm_check_rssi_monitor(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl8821ae_dm_dig(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl8821ae_dm_cck_packet_detection_thresh(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl8821ae_dm_refresh_rate_adaptive_mask(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl8821ae_dm_refresh_basic_rate_mask(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl8821ae_dm_check_edca_turbo(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl8821ae_dm_dynamic_atc_switch(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl8812ae_dm_check_txpower_tracking_thermalmeter(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl8821ae_dm_check_txpower_tracking_thermalmeter(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl8821ae_dm_iq_calibrate(%struct.ieee80211_hw*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
