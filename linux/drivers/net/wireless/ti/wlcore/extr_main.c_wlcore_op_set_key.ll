; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_op_set_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_op_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.wl1271* }
%struct.wl1271 = type { i64, i32, i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.ieee80211_key_conf = type { i64 }

@WL1271_CIPHER_SUITE_GEM = common dso_local global i64 0, align 8
@WLAN_CIPHER_SUITE_TKIP = common dso_local global i64 0, align 8
@WLCORE_QUEUE_STOP_REASON_SPARE_BLK = common dso_local global i32 0, align 4
@WLCORE_STATE_ON = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32, %struct.ieee80211_vif*, %struct.ieee80211_sta*, %struct.ieee80211_key_conf*)* @wlcore_op_set_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlcore_op_set_key(%struct.ieee80211_hw* %0, i32 %1, %struct.ieee80211_vif* %2, %struct.ieee80211_sta* %3, %struct.ieee80211_key_conf* %4) #0 {
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_vif*, align 8
  %9 = alloca %struct.ieee80211_sta*, align 8
  %10 = alloca %struct.ieee80211_key_conf*, align 8
  %11 = alloca %struct.wl1271*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ieee80211_vif* %2, %struct.ieee80211_vif** %8, align 8
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %9, align 8
  store %struct.ieee80211_key_conf* %4, %struct.ieee80211_key_conf** %10, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %15 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %14, i32 0, i32 0
  %16 = load %struct.wl1271*, %struct.wl1271** %15, align 8
  store %struct.wl1271* %16, %struct.wl1271** %11, align 8
  %17 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %10, align 8
  %18 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @WL1271_CIPHER_SUITE_GEM, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %5
  %23 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %10, align 8
  %24 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @WLAN_CIPHER_SUITE_TKIP, align 8
  %27 = icmp eq i64 %25, %26
  br label %28

28:                                               ; preds = %22, %5
  %29 = phi i1 [ true, %5 ], [ %27, %22 ]
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct.wl1271*, %struct.wl1271** %11, align 8
  %35 = load i32, i32* @WLCORE_QUEUE_STOP_REASON_SPARE_BLK, align 4
  %36 = call i32 @wlcore_stop_queues(%struct.wl1271* %34, i32 %35)
  %37 = load %struct.wl1271*, %struct.wl1271** %11, align 8
  %38 = call i32 @wl1271_tx_flush(%struct.wl1271* %37)
  br label %39

39:                                               ; preds = %33, %28
  %40 = load %struct.wl1271*, %struct.wl1271** %11, align 8
  %41 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %40, i32 0, i32 1
  %42 = call i32 @mutex_lock(i32* %41)
  %43 = load %struct.wl1271*, %struct.wl1271** %11, align 8
  %44 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @WLCORE_STATE_ON, align 8
  %47 = icmp ne i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %39
  %52 = load i32, i32* @EAGAIN, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %12, align 4
  br label %81

54:                                               ; preds = %39
  %55 = load %struct.wl1271*, %struct.wl1271** %11, align 8
  %56 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @pm_runtime_get_sync(i32 %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %54
  %62 = load %struct.wl1271*, %struct.wl1271** %11, align 8
  %63 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @pm_runtime_put_noidle(i32 %64)
  br label %81

66:                                               ; preds = %54
  %67 = load %struct.wl1271*, %struct.wl1271** %11, align 8
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %70 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %71 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %10, align 8
  %72 = call i32 @wlcore_hw_set_key(%struct.wl1271* %67, i32 %68, %struct.ieee80211_vif* %69, %struct.ieee80211_sta* %70, %struct.ieee80211_key_conf* %71)
  store i32 %72, i32* %12, align 4
  %73 = load %struct.wl1271*, %struct.wl1271** %11, align 8
  %74 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @pm_runtime_mark_last_busy(i32 %75)
  %77 = load %struct.wl1271*, %struct.wl1271** %11, align 8
  %78 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @pm_runtime_put_autosuspend(i32 %79)
  br label %81

81:                                               ; preds = %66, %61, %51
  %82 = load i32, i32* %13, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = load %struct.wl1271*, %struct.wl1271** %11, align 8
  %86 = load i32, i32* @WLCORE_QUEUE_STOP_REASON_SPARE_BLK, align 4
  %87 = call i32 @wlcore_wake_queues(%struct.wl1271* %85, i32 %86)
  br label %88

88:                                               ; preds = %84, %81
  %89 = load %struct.wl1271*, %struct.wl1271** %11, align 8
  %90 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %89, i32 0, i32 1
  %91 = call i32 @mutex_unlock(i32* %90)
  %92 = load i32, i32* %12, align 4
  ret i32 %92
}

declare dso_local i32 @wlcore_stop_queues(%struct.wl1271*, i32) #1

declare dso_local i32 @wl1271_tx_flush(%struct.wl1271*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

declare dso_local i32 @wlcore_hw_set_key(%struct.wl1271*, i32, %struct.ieee80211_vif*, %struct.ieee80211_sta*, %struct.ieee80211_key_conf*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

declare dso_local i32 @wlcore_wake_queues(%struct.wl1271*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
