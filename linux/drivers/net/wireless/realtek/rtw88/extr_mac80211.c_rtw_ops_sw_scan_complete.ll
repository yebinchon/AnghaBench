; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_mac80211.c_rtw_ops_sw_scan_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_mac80211.c_rtw_ops_sw_scan_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rtw_dev* }
%struct.rtw_dev = type { i32 }
%struct.ieee80211_vif = type { i32, i64 }
%struct.rtw_vif = type { i32 }

@RTW_FLAG_SCANNING = common dso_local global i32 0, align 4
@RTW_FLAG_DIG_DISABLE = common dso_local global i32 0, align 4
@PORT_SET_MAC_ADDR = common dso_local global i32 0, align 4
@COEX_SCAN_FINISH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*)* @rtw_ops_sw_scan_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_ops_sw_scan_complete(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.rtw_dev*, align 8
  %6 = alloca %struct.rtw_vif*, align 8
  %7 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %9 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %8, i32 0, i32 0
  %10 = load %struct.rtw_dev*, %struct.rtw_dev** %9, align 8
  store %struct.rtw_dev* %10, %struct.rtw_dev** %5, align 8
  %11 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %12 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.rtw_vif*
  store %struct.rtw_vif* %14, %struct.rtw_vif** %6, align 8
  store i32 0, i32* %7, align 4
  %15 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %16 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %19 = load i32, i32* @RTW_FLAG_SCANNING, align 4
  %20 = call i32 @rtw_flag_clear(%struct.rtw_dev* %18, i32 %19)
  %21 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %22 = load i32, i32* @RTW_FLAG_DIG_DISABLE, align 4
  %23 = call i32 @rtw_flag_clear(%struct.rtw_dev* %21, i32 %22)
  %24 = load %struct.rtw_vif*, %struct.rtw_vif** %6, align 8
  %25 = getelementptr inbounds %struct.rtw_vif, %struct.rtw_vif* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %28 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @ether_addr_copy(i32 %26, i32 %29)
  %31 = load i32, i32* @PORT_SET_MAC_ADDR, align 4
  %32 = load i32, i32* %7, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %7, align 4
  %34 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %35 = load %struct.rtw_vif*, %struct.rtw_vif** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @rtw_vif_port_config(%struct.rtw_dev* %34, %struct.rtw_vif* %35, i32 %36)
  %38 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %39 = load i32, i32* @COEX_SCAN_FINISH, align 4
  %40 = call i32 @rtw_coex_scan_notify(%struct.rtw_dev* %38, i32 %39)
  %41 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %42 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %41, i32 0, i32 0
  %43 = call i32 @mutex_unlock(i32* %42)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rtw_flag_clear(%struct.rtw_dev*, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @rtw_vif_port_config(%struct.rtw_dev*, %struct.rtw_vif*, i32) #1

declare dso_local i32 @rtw_coex_scan_notify(%struct.rtw_dev*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
