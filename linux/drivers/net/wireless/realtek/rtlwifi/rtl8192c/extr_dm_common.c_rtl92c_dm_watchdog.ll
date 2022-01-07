; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192c/extr_dm_common.c_rtl92c_dm_watchdog.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192c/extr_dm_common.c_rtl92c_dm_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.ieee80211_hw*, i32, i32*)* }
%struct.rtl_ps_ctl = type { i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@HW_VAR_FW_PSMODE_STATUS = common dso_local global i32 0, align 4
@HW_VAR_FWLPS_RF_ON = common dso_local global i32 0, align 4
@ERFON = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92c_dm_watchdog(%struct.ieee80211_hw* %0) #0 {
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
  %13 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32 (%struct.ieee80211_hw*, i32, i32*)*, i32 (%struct.ieee80211_hw*, i32, i32*)** %17, align 8
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %20 = load i32, i32* @HW_VAR_FW_PSMODE_STATUS, align 4
  %21 = call i32 %18(%struct.ieee80211_hw* %19, i32 %20, i32* %5)
  %22 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %23 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32 (%struct.ieee80211_hw*, i32, i32*)*, i32 (%struct.ieee80211_hw*, i32, i32*)** %27, align 8
  %29 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %30 = load i32, i32* @HW_VAR_FWLPS_RF_ON, align 4
  %31 = call i32 %28(%struct.ieee80211_hw* %29, i32 %30, i32* %6)
  %32 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %4, align 8
  %33 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %38

38:                                               ; preds = %37, %1
  %39 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %4, align 8
  %40 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @ERFON, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %72

44:                                               ; preds = %38
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %72, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %72

50:                                               ; preds = %47
  %51 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %4, align 8
  %52 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %72, label %55

55:                                               ; preds = %50
  %56 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %57 = call i32 @rtl92c_dm_pwdb_monitor(%struct.ieee80211_hw* %56)
  %58 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %59 = call i32 @rtl92c_dm_dig(%struct.ieee80211_hw* %58)
  %60 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %61 = call i32 @rtl92c_dm_false_alarm_counter_statistics(%struct.ieee80211_hw* %60)
  %62 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %63 = call i32 @rtl92c_dm_dynamic_bb_powersaving(%struct.ieee80211_hw* %62)
  %64 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %65 = call i32 @rtl92c_dm_dynamic_txpower(%struct.ieee80211_hw* %64)
  %66 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %67 = call i32 @rtl92c_dm_check_txpower_tracking(%struct.ieee80211_hw* %66)
  %68 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %69 = call i32 @rtl92c_dm_bt_coexist(%struct.ieee80211_hw* %68)
  %70 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %71 = call i32 @rtl92c_dm_check_edca_turbo(%struct.ieee80211_hw* %70)
  br label %72

72:                                               ; preds = %55, %50, %47, %44, %38
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv*) #1

declare dso_local i32 @rtl92c_dm_pwdb_monitor(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl92c_dm_dig(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl92c_dm_false_alarm_counter_statistics(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl92c_dm_dynamic_bb_powersaving(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl92c_dm_dynamic_txpower(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl92c_dm_check_txpower_tracking(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl92c_dm_bt_coexist(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl92c_dm_check_edca_turbo(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
