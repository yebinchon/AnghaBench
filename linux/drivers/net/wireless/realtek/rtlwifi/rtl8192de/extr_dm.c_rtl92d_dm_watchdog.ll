; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_dm.c_rtl92d_dm_watchdog.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_dm.c_rtl92d_dm_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_ps_ctl = type { i64, i32 }

@ERFON = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92d_dm_watchdog(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_ps_ctl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %7 = call i32 @rtl_priv(%struct.ieee80211_hw* %6)
  %8 = call %struct.rtl_ps_ctl* @rtl_psc(i32 %7)
  store %struct.rtl_ps_ctl* %8, %struct.rtl_ps_ctl** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 1, i32* %5, align 4
  %9 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %3, align 8
  %10 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ERFON, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %38

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %38, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %17
  %21 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %3, align 8
  %22 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %38, label %25

25:                                               ; preds = %20
  %26 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %27 = call i32 @rtl92d_dm_pwdb_monitor(%struct.ieee80211_hw* %26)
  %28 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %29 = call i32 @rtl92d_dm_false_alarm_counter_statistics(%struct.ieee80211_hw* %28)
  %30 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %31 = call i32 @rtl92d_dm_find_minimum_rssi(%struct.ieee80211_hw* %30)
  %32 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %33 = call i32 @rtl92d_dm_dig(%struct.ieee80211_hw* %32)
  %34 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %35 = call i32 @rtl92d_dm_dynamic_txpower(%struct.ieee80211_hw* %34)
  %36 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %37 = call i32 @rtl92d_dm_check_edca_turbo(%struct.ieee80211_hw* %36)
  br label %38

38:                                               ; preds = %25, %20, %17, %14, %1
  ret void
}

declare dso_local %struct.rtl_ps_ctl* @rtl_psc(i32) #1

declare dso_local i32 @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl92d_dm_pwdb_monitor(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl92d_dm_false_alarm_counter_statistics(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl92d_dm_find_minimum_rssi(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl92d_dm_dig(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl92d_dm_dynamic_txpower(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl92d_dm_check_edca_turbo(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
