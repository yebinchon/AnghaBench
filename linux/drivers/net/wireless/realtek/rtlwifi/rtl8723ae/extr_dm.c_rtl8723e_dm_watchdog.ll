; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_dm.c_rtl8723e_dm_watchdog.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_dm.c_rtl8723e_dm_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.ieee80211_hw*, i32, i32*)* }
%struct.rtl_ps_ctl = type { i64, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@HW_VAR_FW_PSMODE_STATUS = common dso_local global i32 0, align 4
@HW_VAR_FWLPS_RF_ON = common dso_local global i32 0, align 4
@ERFON = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8723e_dm_watchdog(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_ps_ctl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %8 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %7)
  store %struct.rtl_priv* %8, %struct.rtl_priv** %3, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %10 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %9)
  %11 = call %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv* %10)
  store %struct.rtl_ps_ctl* %11, %struct.rtl_ps_ctl** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %12 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %13 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %12, i32 0, i32 2
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32 (%struct.ieee80211_hw*, i32, i32*)*, i32 (%struct.ieee80211_hw*, i32, i32*)** %17, align 8
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %20 = load i32, i32* @HW_VAR_FW_PSMODE_STATUS, align 4
  %21 = call i32 %18(%struct.ieee80211_hw* %19, i32 %20, i32* %5)
  %22 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %23 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %22, i32 0, i32 2
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32 (%struct.ieee80211_hw*, i32, i32*)*, i32 (%struct.ieee80211_hw*, i32, i32*)** %27, align 8
  %29 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %30 = load i32, i32* @HW_VAR_FWLPS_RF_ON, align 4
  %31 = call i32 %28(%struct.ieee80211_hw* %29, i32 %30, i32* %6)
  %32 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %4, align 8
  %33 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %38

38:                                               ; preds = %37, %1
  %39 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %40 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = call i32 @spin_lock(i32* %41)
  %43 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %4, align 8
  %44 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @ERFON, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %78

48:                                               ; preds = %38
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %78, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %78

54:                                               ; preds = %51
  %55 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %4, align 8
  %56 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %78, label %59

59:                                               ; preds = %54
  %60 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %61 = call i32 @rtl8723e_dm_pwdb_monitor(%struct.ieee80211_hw* %60)
  %62 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %63 = call i32 @rtl8723e_dm_dig(%struct.ieee80211_hw* %62)
  %64 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %65 = call i32 @rtl8723e_dm_false_alarm_counter_statistics(%struct.ieee80211_hw* %64)
  %66 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %67 = call i32 @rtl8723e_dm_dynamic_bb_powersaving(%struct.ieee80211_hw* %66)
  %68 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %69 = call i32 @rtl8723e_dm_dynamic_txpower(%struct.ieee80211_hw* %68)
  %70 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %71 = call i32 @rtl8723e_dm_check_txpower_tracking(%struct.ieee80211_hw* %70)
  %72 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %73 = call i32 @rtl8723e_dm_refresh_rate_adaptive_mask(%struct.ieee80211_hw* %72)
  %74 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %75 = call i32 @rtl8723e_dm_bt_coexist(%struct.ieee80211_hw* %74)
  %76 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %77 = call i32 @rtl8723e_dm_check_edca_turbo(%struct.ieee80211_hw* %76)
  br label %78

78:                                               ; preds = %59, %54, %51, %48, %38
  %79 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %80 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = call i32 @spin_unlock(i32* %81)
  %83 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %84 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %78
  %89 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %90 = call i32 @rtl_write_byte(%struct.rtl_priv* %89, i32 1902, i32 12)
  br label %91

91:                                               ; preds = %88, %78
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @rtl8723e_dm_pwdb_monitor(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl8723e_dm_dig(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl8723e_dm_false_alarm_counter_statistics(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl8723e_dm_dynamic_bb_powersaving(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl8723e_dm_dynamic_txpower(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl8723e_dm_check_txpower_tracking(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl8723e_dm_refresh_rate_adaptive_mask(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl8723e_dm_bt_coexist(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl8723e_dm_check_edca_turbo(%struct.ieee80211_hw*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
