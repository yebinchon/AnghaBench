; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_op_sched_scan_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_op_sched_scan_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.wl1271* }
%struct.wl1271 = type { i64, i32, i32, %struct.wl12xx_vif*, %struct.TYPE_2__* }
%struct.wl12xx_vif = type { i32 }
%struct.TYPE_2__ = type { i32 (%struct.wl1271*, %struct.wl12xx_vif*, %struct.cfg80211_sched_scan_request*, %struct.ieee80211_scan_ies*)* }
%struct.ieee80211_vif = type { i32 }
%struct.cfg80211_sched_scan_request = type { i32 }
%struct.ieee80211_scan_ies = type { i32 }

@DEBUG_MAC80211 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"wl1271_op_sched_scan_start\00", align 1
@WLCORE_STATE_ON = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.cfg80211_sched_scan_request*, %struct.ieee80211_scan_ies*)* @wl1271_op_sched_scan_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1271_op_sched_scan_start(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.cfg80211_sched_scan_request* %2, %struct.ieee80211_scan_ies* %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.cfg80211_sched_scan_request*, align 8
  %8 = alloca %struct.ieee80211_scan_ies*, align 8
  %9 = alloca %struct.wl1271*, align 8
  %10 = alloca %struct.wl12xx_vif*, align 8
  %11 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.cfg80211_sched_scan_request* %2, %struct.cfg80211_sched_scan_request** %7, align 8
  store %struct.ieee80211_scan_ies* %3, %struct.ieee80211_scan_ies** %8, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %12, i32 0, i32 0
  %14 = load %struct.wl1271*, %struct.wl1271** %13, align 8
  store %struct.wl1271* %14, %struct.wl1271** %9, align 8
  %15 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %16 = call %struct.wl12xx_vif* @wl12xx_vif_to_data(%struct.ieee80211_vif* %15)
  store %struct.wl12xx_vif* %16, %struct.wl12xx_vif** %10, align 8
  %17 = load i32, i32* @DEBUG_MAC80211, align 4
  %18 = call i32 @wl1271_debug(i32 %17, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %20 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %19, i32 0, i32 1
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %23 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @WLCORE_STATE_ON, align 8
  %26 = icmp ne i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %4
  %31 = load i32, i32* @EAGAIN, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %11, align 4
  br label %72

33:                                               ; preds = %4
  %34 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %35 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @pm_runtime_get_sync(i32 %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %42 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @pm_runtime_put_noidle(i32 %43)
  br label %72

45:                                               ; preds = %33
  %46 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %47 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %46, i32 0, i32 4
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32 (%struct.wl1271*, %struct.wl12xx_vif*, %struct.cfg80211_sched_scan_request*, %struct.ieee80211_scan_ies*)*, i32 (%struct.wl1271*, %struct.wl12xx_vif*, %struct.cfg80211_sched_scan_request*, %struct.ieee80211_scan_ies*)** %49, align 8
  %51 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %52 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %10, align 8
  %53 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %7, align 8
  %54 = load %struct.ieee80211_scan_ies*, %struct.ieee80211_scan_ies** %8, align 8
  %55 = call i32 %50(%struct.wl1271* %51, %struct.wl12xx_vif* %52, %struct.cfg80211_sched_scan_request* %53, %struct.ieee80211_scan_ies* %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %45
  br label %63

59:                                               ; preds = %45
  %60 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %10, align 8
  %61 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %62 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %61, i32 0, i32 3
  store %struct.wl12xx_vif* %60, %struct.wl12xx_vif** %62, align 8
  br label %63

63:                                               ; preds = %59, %58
  %64 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %65 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @pm_runtime_mark_last_busy(i32 %66)
  %68 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %69 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @pm_runtime_put_autosuspend(i32 %70)
  br label %72

72:                                               ; preds = %63, %40, %30
  %73 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %74 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %73, i32 0, i32 1
  %75 = call i32 @mutex_unlock(i32* %74)
  %76 = load i32, i32* %11, align 4
  ret i32 %76
}

declare dso_local %struct.wl12xx_vif* @wl12xx_vif_to_data(%struct.ieee80211_vif*) #1

declare dso_local i32 @wl1271_debug(i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
