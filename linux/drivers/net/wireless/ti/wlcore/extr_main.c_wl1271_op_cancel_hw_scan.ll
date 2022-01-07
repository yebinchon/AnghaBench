; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_op_cancel_hw_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_op_cancel_hw_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_scan_info = type { i32 }
%struct.ieee80211_hw = type { %struct.wl1271* }
%struct.wl1271 = type { i64, i32, i32, i32, i32, %struct.TYPE_4__, i32*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i32*, i32 }
%struct.TYPE_3__ = type { i32 (%struct.wl1271*, %struct.wl12xx_vif*)* }
%struct.wl12xx_vif = type { i32 }
%struct.ieee80211_vif = type { i32 }

@__const.wl1271_op_cancel_hw_scan.info = private unnamed_addr constant %struct.cfg80211_scan_info { i32 1 }, align 4
@DEBUG_MAC80211 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"mac80211 cancel hw scan\00", align 1
@WLCORE_STATE_ON = common dso_local global i64 0, align 8
@WL1271_SCAN_STATE_IDLE = common dso_local global i64 0, align 8
@WL1271_SCAN_STATE_DONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*)* @wl1271_op_cancel_hw_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl1271_op_cancel_hw_scan(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.wl1271*, align 8
  %6 = alloca %struct.wl12xx_vif*, align 8
  %7 = alloca %struct.cfg80211_scan_info, align 4
  %8 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %10 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %9, i32 0, i32 0
  %11 = load %struct.wl1271*, %struct.wl1271** %10, align 8
  store %struct.wl1271* %11, %struct.wl1271** %5, align 8
  %12 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %4, align 8
  %13 = call %struct.wl12xx_vif* @wl12xx_vif_to_data(%struct.ieee80211_vif* %12)
  store %struct.wl12xx_vif* %13, %struct.wl12xx_vif** %6, align 8
  %14 = bitcast %struct.cfg80211_scan_info* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast (%struct.cfg80211_scan_info* @__const.wl1271_op_cancel_hw_scan.info to i8*), i64 4, i1 false)
  %15 = load i32, i32* @DEBUG_MAC80211, align 4
  %16 = call i32 @wl1271_debug(i32 %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %18 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %17, i32 0, i32 2
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %21 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @WLCORE_STATE_ON, align 8
  %24 = icmp ne i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  br label %99

29:                                               ; preds = %2
  %30 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %31 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @WL1271_SCAN_STATE_IDLE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  br label %99

37:                                               ; preds = %29
  %38 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %39 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @pm_runtime_get_sync(i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %37
  %45 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %46 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @pm_runtime_put_noidle(i32 %47)
  br label %99

49:                                               ; preds = %37
  %50 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %51 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @WL1271_SCAN_STATE_DONE, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %49
  %57 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %58 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %57, i32 0, i32 7
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32 (%struct.wl1271*, %struct.wl12xx_vif*)*, i32 (%struct.wl1271*, %struct.wl12xx_vif*)** %60, align 8
  %62 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %63 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %64 = call i32 %61(%struct.wl1271* %62, %struct.wl12xx_vif* %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %56
  br label %90

68:                                               ; preds = %56
  br label %69

69:                                               ; preds = %68, %49
  %70 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %71 = call i32 @wl12xx_rearm_tx_watchdog_locked(%struct.wl1271* %70)
  %72 = load i64, i64* @WL1271_SCAN_STATE_IDLE, align 8
  %73 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %74 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %73, i32 0, i32 5
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  store i64 %72, i64* %75, align 8
  %76 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %77 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %76, i32 0, i32 5
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @memset(i32 %79, i32 0, i32 4)
  %81 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %82 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %81, i32 0, i32 6
  store i32* null, i32** %82, align 8
  %83 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %84 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %83, i32 0, i32 5
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  store i32* null, i32** %85, align 8
  %86 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %87 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @ieee80211_scan_completed(i32 %88, %struct.cfg80211_scan_info* %7)
  br label %90

90:                                               ; preds = %69, %67
  %91 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %92 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @pm_runtime_mark_last_busy(i32 %93)
  %95 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %96 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @pm_runtime_put_autosuspend(i32 %97)
  br label %99

99:                                               ; preds = %90, %44, %36, %28
  %100 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %101 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %100, i32 0, i32 2
  %102 = call i32 @mutex_unlock(i32* %101)
  %103 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %104 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %103, i32 0, i32 1
  %105 = call i32 @cancel_delayed_work_sync(i32* %104)
  ret void
}

declare dso_local %struct.wl12xx_vif* @wl12xx_vif_to_data(%struct.ieee80211_vif*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @wl1271_debug(i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

declare dso_local i32 @wl12xx_rearm_tx_watchdog_locked(%struct.wl1271*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @ieee80211_scan_completed(i32, %struct.cfg80211_scan_info*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
