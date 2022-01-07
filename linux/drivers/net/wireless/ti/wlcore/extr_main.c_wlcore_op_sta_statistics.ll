; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_op_sta_statistics.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_op_sta_statistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.wl1271* }
%struct.wl1271 = type { i64, i32, i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.station_info = type { i32, i32 }
%struct.wl12xx_vif = type { i32 }

@DEBUG_MAC80211 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"mac80211 get_rssi\00", align 1
@WLCORE_STATE_ON = common dso_local global i64 0, align 8
@NL80211_STA_INFO_SIGNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_sta*, %struct.station_info*)* @wlcore_op_sta_statistics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlcore_op_sta_statistics(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2, %struct.station_info* %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca %struct.station_info*, align 8
  %9 = alloca %struct.wl1271*, align 8
  %10 = alloca %struct.wl12xx_vif*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %7, align 8
  store %struct.station_info* %3, %struct.station_info** %8, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %13, i32 0, i32 0
  %15 = load %struct.wl1271*, %struct.wl1271** %14, align 8
  store %struct.wl1271* %15, %struct.wl1271** %9, align 8
  %16 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %17 = call %struct.wl12xx_vif* @wl12xx_vif_to_data(%struct.ieee80211_vif* %16)
  store %struct.wl12xx_vif* %17, %struct.wl12xx_vif** %10, align 8
  %18 = load i32, i32* @DEBUG_MAC80211, align 4
  %19 = call i32 @wl1271_debug(i32 %18, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %21 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %20, i32 0, i32 1
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %24 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @WLCORE_STATE_ON, align 8
  %27 = icmp ne i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %4
  br label %70

32:                                               ; preds = %4
  %33 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %34 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @pm_runtime_get_sync(i32 %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %41 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @pm_runtime_put_noidle(i32 %42)
  br label %61

44:                                               ; preds = %32
  %45 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %46 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %10, align 8
  %47 = call i32 @wlcore_acx_average_rssi(%struct.wl1271* %45, %struct.wl12xx_vif* %46, i32* %11)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  br label %61

51:                                               ; preds = %44
  %52 = load i32, i32* @NL80211_STA_INFO_SIGNAL, align 4
  %53 = call i32 @BIT_ULL(i32 %52)
  %54 = load %struct.station_info*, %struct.station_info** %8, align 8
  %55 = getelementptr inbounds %struct.station_info, %struct.station_info* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.station_info*, %struct.station_info** %8, align 8
  %60 = getelementptr inbounds %struct.station_info, %struct.station_info* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %51, %50, %39
  %62 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %63 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @pm_runtime_mark_last_busy(i32 %64)
  %66 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %67 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @pm_runtime_put_autosuspend(i32 %68)
  br label %70

70:                                               ; preds = %61, %31
  %71 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %72 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %71, i32 0, i32 1
  %73 = call i32 @mutex_unlock(i32* %72)
  ret void
}

declare dso_local %struct.wl12xx_vif* @wl12xx_vif_to_data(%struct.ieee80211_vif*) #1

declare dso_local i32 @wl1271_debug(i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

declare dso_local i32 @wlcore_acx_average_rssi(%struct.wl1271*, %struct.wl12xx_vif*, i32*) #1

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
