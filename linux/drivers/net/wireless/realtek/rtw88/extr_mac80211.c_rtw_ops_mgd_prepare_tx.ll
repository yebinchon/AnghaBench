; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_mac80211.c_rtw_ops_mgd_prepare_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_mac80211.c_rtw_ops_mgd_prepare_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rtw_dev* }
%struct.rtw_dev = type { i32 }
%struct.ieee80211_vif = type { i32 }

@COEX_ASSOCIATE_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*, i32)* @rtw_ops_mgd_prepare_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_ops_mgd_prepare_tx(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtw_dev*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %9 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %8, i32 0, i32 0
  %10 = load %struct.rtw_dev*, %struct.rtw_dev** %9, align 8
  store %struct.rtw_dev* %10, %struct.rtw_dev** %7, align 8
  %11 = load %struct.rtw_dev*, %struct.rtw_dev** %7, align 8
  %12 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %11, i32 0, i32 0
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load %struct.rtw_dev*, %struct.rtw_dev** %7, align 8
  %15 = load i32, i32* @COEX_ASSOCIATE_START, align 4
  %16 = call i32 @rtw_coex_connect_notify(%struct.rtw_dev* %14, i32 %15)
  %17 = load %struct.rtw_dev*, %struct.rtw_dev** %7, align 8
  %18 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %17, i32 0, i32 0
  %19 = call i32 @mutex_unlock(i32* %18)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rtw_coex_connect_notify(%struct.rtw_dev*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
