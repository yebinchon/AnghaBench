; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_mac80211.c_rtw_ops_sta_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_mac80211.c_rtw_ops_sta_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rtw_dev* }
%struct.rtw_dev = type { i32, i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { i32, i64 }
%struct.rtw_sta_info = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"sta %pM with macid %d left\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_sta*)* @rtw_ops_sta_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw_ops_sta_remove(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.ieee80211_sta*, align 8
  %7 = alloca %struct.rtw_dev*, align 8
  %8 = alloca %struct.rtw_sta_info*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %6, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %10 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %9, i32 0, i32 0
  %11 = load %struct.rtw_dev*, %struct.rtw_dev** %10, align 8
  store %struct.rtw_dev* %11, %struct.rtw_dev** %7, align 8
  %12 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %13 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.rtw_sta_info*
  store %struct.rtw_sta_info* %15, %struct.rtw_sta_info** %8, align 8
  %16 = load %struct.rtw_dev*, %struct.rtw_dev** %7, align 8
  %17 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.rtw_dev*, %struct.rtw_dev** %7, align 8
  %20 = load %struct.rtw_sta_info*, %struct.rtw_sta_info** %8, align 8
  %21 = getelementptr inbounds %struct.rtw_sta_info, %struct.rtw_sta_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @rtw_release_macid(%struct.rtw_dev* %19, i32 %22)
  %24 = load %struct.rtw_dev*, %struct.rtw_dev** %7, align 8
  %25 = load %struct.rtw_sta_info*, %struct.rtw_sta_info** %8, align 8
  %26 = getelementptr inbounds %struct.rtw_sta_info, %struct.rtw_sta_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @rtw_fw_media_status_report(%struct.rtw_dev* %24, i32 %27, i32 0)
  %29 = load %struct.rtw_dev*, %struct.rtw_dev** %7, align 8
  %30 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %30, align 4
  %33 = load %struct.rtw_dev*, %struct.rtw_dev** %7, align 8
  %34 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %35 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.rtw_sta_info*, %struct.rtw_sta_info** %8, align 8
  %38 = getelementptr inbounds %struct.rtw_sta_info, %struct.rtw_sta_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @rtw_info(%struct.rtw_dev* %33, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %39)
  %41 = load %struct.rtw_dev*, %struct.rtw_dev** %7, align 8
  %42 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %41, i32 0, i32 0
  %43 = call i32 @mutex_unlock(i32* %42)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rtw_release_macid(%struct.rtw_dev*, i32) #1

declare dso_local i32 @rtw_fw_media_status_report(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_info(%struct.rtw_dev*, i8*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
