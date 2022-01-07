; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_op_conf_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_op_conf_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.wl1271* }
%struct.wl1271 = type { i32, i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_tx_queue_params = type { i32, i32, i32, i32, i64 }
%struct.wl12xx_vif = type { i32 }

@DEBUG_MAC80211 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"mac80211 conf tx %d\00", align 1
@CONF_PS_SCHEME_UPSD_TRIGGER = common dso_local global i32 0, align 4
@CONF_PS_SCHEME_LEGACY = common dso_local global i32 0, align 4
@WLVIF_FLAG_INITIALIZED = common dso_local global i32 0, align 4
@CONF_CHANNEL_TYPE_EDCF = common dso_local global i32 0, align 4
@CONF_ACK_POLICY_LEGACY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, i32, %struct.ieee80211_tx_queue_params*)* @wl1271_op_conf_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1271_op_conf_tx(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, i32 %2, %struct.ieee80211_tx_queue_params* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca %struct.ieee80211_vif*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_tx_queue_params*, align 8
  %10 = alloca %struct.wl1271*, align 8
  %11 = alloca %struct.wl12xx_vif*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.ieee80211_tx_queue_params* %3, %struct.ieee80211_tx_queue_params** %9, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %15 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %14, i32 0, i32 0
  %16 = load %struct.wl1271*, %struct.wl1271** %15, align 8
  store %struct.wl1271* %16, %struct.wl1271** %10, align 8
  %17 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %18 = call %struct.wl12xx_vif* @wl12xx_vif_to_data(%struct.ieee80211_vif* %17)
  store %struct.wl12xx_vif* %18, %struct.wl12xx_vif** %11, align 8
  store i32 0, i32* %13, align 4
  %19 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %11, align 8
  %20 = call i64 @wlcore_is_p2p_mgmt(%struct.wl12xx_vif* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %104

23:                                               ; preds = %4
  %24 = load %struct.wl1271*, %struct.wl1271** %10, align 8
  %25 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %24, i32 0, i32 0
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load i32, i32* @DEBUG_MAC80211, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @wl1271_debug(i32 %27, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %9, align 8
  %31 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %30, i32 0, i32 4
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %23
  %35 = load i32, i32* @CONF_PS_SCHEME_UPSD_TRIGGER, align 4
  store i32 %35, i32* %12, align 4
  br label %38

36:                                               ; preds = %23
  %37 = load i32, i32* @CONF_PS_SCHEME_LEGACY, align 4
  store i32 %37, i32* %12, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = load i32, i32* @WLVIF_FLAG_INITIALIZED, align 4
  %40 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %11, align 8
  %41 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %40, i32 0, i32 0
  %42 = call i32 @test_bit(i32 %39, i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  br label %99

45:                                               ; preds = %38
  %46 = load %struct.wl1271*, %struct.wl1271** %10, align 8
  %47 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @pm_runtime_get_sync(i32 %48)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %45
  %53 = load %struct.wl1271*, %struct.wl1271** %10, align 8
  %54 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @pm_runtime_put_noidle(i32 %55)
  br label %99

57:                                               ; preds = %45
  %58 = load %struct.wl1271*, %struct.wl1271** %10, align 8
  %59 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %11, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @wl1271_tx_get_queue(i32 %60)
  %62 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %9, align 8
  %63 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %9, align 8
  %66 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %9, align 8
  %69 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %9, align 8
  %72 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = shl i32 %73, 5
  %75 = call i32 @wl1271_acx_ac_cfg(%struct.wl1271* %58, %struct.wl12xx_vif* %59, i32 %61, i32 %64, i32 %67, i32 %70, i32 %74)
  store i32 %75, i32* %13, align 4
  %76 = load i32, i32* %13, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %57
  br label %90

79:                                               ; preds = %57
  %80 = load %struct.wl1271*, %struct.wl1271** %10, align 8
  %81 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %11, align 8
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @wl1271_tx_get_queue(i32 %82)
  %84 = load i32, i32* @CONF_CHANNEL_TYPE_EDCF, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @wl1271_tx_get_queue(i32 %85)
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* @CONF_ACK_POLICY_LEGACY, align 4
  %89 = call i32 @wl1271_acx_tid_cfg(%struct.wl1271* %80, %struct.wl12xx_vif* %81, i32 %83, i32 %84, i32 %86, i32 %87, i32 %88, i32 0, i32 0)
  store i32 %89, i32* %13, align 4
  br label %90

90:                                               ; preds = %79, %78
  %91 = load %struct.wl1271*, %struct.wl1271** %10, align 8
  %92 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @pm_runtime_mark_last_busy(i32 %93)
  %95 = load %struct.wl1271*, %struct.wl1271** %10, align 8
  %96 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @pm_runtime_put_autosuspend(i32 %97)
  br label %99

99:                                               ; preds = %90, %52, %44
  %100 = load %struct.wl1271*, %struct.wl1271** %10, align 8
  %101 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %100, i32 0, i32 0
  %102 = call i32 @mutex_unlock(i32* %101)
  %103 = load i32, i32* %13, align 4
  store i32 %103, i32* %5, align 4
  br label %104

104:                                              ; preds = %99, %22
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local %struct.wl12xx_vif* @wl12xx_vif_to_data(%struct.ieee80211_vif*) #1

declare dso_local i64 @wlcore_is_p2p_mgmt(%struct.wl12xx_vif*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wl1271_debug(i32, i8*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

declare dso_local i32 @wl1271_acx_ac_cfg(%struct.wl1271*, %struct.wl12xx_vif*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @wl1271_tx_get_queue(i32) #1

declare dso_local i32 @wl1271_acx_tid_cfg(%struct.wl1271*, %struct.wl12xx_vif*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
