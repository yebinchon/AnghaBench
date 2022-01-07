; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_mac80211.c_rtw_ops_sta_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_mac80211.c_rtw_ops_sta_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rtw_dev* }
%struct.rtw_dev = type { i32, i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { i32, i64 }
%struct.rtw_sta_info = type { i64, i32, i32, %struct.ieee80211_vif*, %struct.ieee80211_sta* }

@RTW_MAX_MAC_ID_NUM = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"sta %pM joined with macid %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_sta*)* @rtw_ops_sta_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw_ops_sta_add(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.ieee80211_sta*, align 8
  %7 = alloca %struct.rtw_dev*, align 8
  %8 = alloca %struct.rtw_sta_info*, align 8
  %9 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %6, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %10, i32 0, i32 0
  %12 = load %struct.rtw_dev*, %struct.rtw_dev** %11, align 8
  store %struct.rtw_dev* %12, %struct.rtw_dev** %7, align 8
  %13 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %14 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.rtw_sta_info*
  store %struct.rtw_sta_info* %16, %struct.rtw_sta_info** %8, align 8
  store i32 0, i32* %9, align 4
  %17 = load %struct.rtw_dev*, %struct.rtw_dev** %7, align 8
  %18 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.rtw_dev*, %struct.rtw_dev** %7, align 8
  %21 = call i64 @rtw_acquire_macid(%struct.rtw_dev* %20)
  %22 = load %struct.rtw_sta_info*, %struct.rtw_sta_info** %8, align 8
  %23 = getelementptr inbounds %struct.rtw_sta_info, %struct.rtw_sta_info* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load %struct.rtw_sta_info*, %struct.rtw_sta_info** %8, align 8
  %25 = getelementptr inbounds %struct.rtw_sta_info, %struct.rtw_sta_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @RTW_MAX_MAC_ID_NUM, align 8
  %28 = icmp sge i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load i32, i32* @ENOSPC, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %9, align 4
  br label %64

32:                                               ; preds = %3
  %33 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %34 = load %struct.rtw_sta_info*, %struct.rtw_sta_info** %8, align 8
  %35 = getelementptr inbounds %struct.rtw_sta_info, %struct.rtw_sta_info* %34, i32 0, i32 4
  store %struct.ieee80211_sta* %33, %struct.ieee80211_sta** %35, align 8
  %36 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %37 = load %struct.rtw_sta_info*, %struct.rtw_sta_info** %8, align 8
  %38 = getelementptr inbounds %struct.rtw_sta_info, %struct.rtw_sta_info* %37, i32 0, i32 3
  store %struct.ieee80211_vif* %36, %struct.ieee80211_vif** %38, align 8
  %39 = load %struct.rtw_sta_info*, %struct.rtw_sta_info** %8, align 8
  %40 = getelementptr inbounds %struct.rtw_sta_info, %struct.rtw_sta_info* %39, i32 0, i32 1
  store i32 1, i32* %40, align 8
  %41 = load %struct.rtw_sta_info*, %struct.rtw_sta_info** %8, align 8
  %42 = getelementptr inbounds %struct.rtw_sta_info, %struct.rtw_sta_info* %41, i32 0, i32 2
  %43 = call i32 @ewma_rssi_init(i32* %42)
  %44 = load %struct.rtw_dev*, %struct.rtw_dev** %7, align 8
  %45 = load %struct.rtw_sta_info*, %struct.rtw_sta_info** %8, align 8
  %46 = call i32 @rtw_update_sta_info(%struct.rtw_dev* %44, %struct.rtw_sta_info* %45)
  %47 = load %struct.rtw_dev*, %struct.rtw_dev** %7, align 8
  %48 = load %struct.rtw_sta_info*, %struct.rtw_sta_info** %8, align 8
  %49 = getelementptr inbounds %struct.rtw_sta_info, %struct.rtw_sta_info* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @rtw_fw_media_status_report(%struct.rtw_dev* %47, i64 %50, i32 1)
  %52 = load %struct.rtw_dev*, %struct.rtw_dev** %7, align 8
  %53 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  %56 = load %struct.rtw_dev*, %struct.rtw_dev** %7, align 8
  %57 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %58 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.rtw_sta_info*, %struct.rtw_sta_info** %8, align 8
  %61 = getelementptr inbounds %struct.rtw_sta_info, %struct.rtw_sta_info* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @rtw_info(%struct.rtw_dev* %56, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %59, i64 %62)
  br label %64

64:                                               ; preds = %32, %29
  %65 = load %struct.rtw_dev*, %struct.rtw_dev** %7, align 8
  %66 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %65, i32 0, i32 0
  %67 = call i32 @mutex_unlock(i32* %66)
  %68 = load i32, i32* %9, align 4
  ret i32 %68
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @rtw_acquire_macid(%struct.rtw_dev*) #1

declare dso_local i32 @ewma_rssi_init(i32*) #1

declare dso_local i32 @rtw_update_sta_info(%struct.rtw_dev*, %struct.rtw_sta_info*) #1

declare dso_local i32 @rtw_fw_media_status_report(%struct.rtw_dev*, i64, i32) #1

declare dso_local i32 @rtw_info(%struct.rtw_dev*, i8*, i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
