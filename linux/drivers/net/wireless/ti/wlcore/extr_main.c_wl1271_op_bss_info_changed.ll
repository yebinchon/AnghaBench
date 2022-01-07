; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_op_bss_info_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_op_bss_info_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.wl1271* }
%struct.wl1271 = type { i64, i32, i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_bss_conf = type { i64, i32 }
%struct.wl12xx_vif = type { i64, i64, i32, i32, i32 }

@BSS_TYPE_AP_BSS = common dso_local global i64 0, align 8
@DEBUG_MAC80211 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"mac80211 bss info role %d changed 0x%x\00", align 1
@BSS_CHANGED_ASSOC = common dso_local global i32 0, align 4
@BSS_CHANGED_BEACON_ENABLED = common dso_local global i32 0, align 4
@WLCORE_STATE_ON = common dso_local global i64 0, align 8
@WLVIF_FLAG_INITIALIZED = common dso_local global i32 0, align 4
@BSS_CHANGED_TXPOWER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_bss_conf*, i32)* @wl1271_op_bss_info_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl1271_op_bss_info_changed(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_bss_conf* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_bss_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.wl1271*, align 8
  %10 = alloca %struct.wl12xx_vif*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_bss_conf* %2, %struct.ieee80211_bss_conf** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %13, i32 0, i32 0
  %15 = load %struct.wl1271*, %struct.wl1271** %14, align 8
  store %struct.wl1271* %15, %struct.wl1271** %9, align 8
  %16 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %17 = call %struct.wl12xx_vif* @wl12xx_vif_to_data(%struct.ieee80211_vif* %16)
  store %struct.wl12xx_vif* %17, %struct.wl12xx_vif** %10, align 8
  %18 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %10, align 8
  %19 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @BSS_TYPE_AP_BSS, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* @DEBUG_MAC80211, align 4
  %25 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %10, align 8
  %26 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @wl1271_debug(i32 %24, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28)
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @BSS_CHANGED_ASSOC, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %10, align 8
  %39 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %38, i32 0, i32 3
  %40 = call i32 @cancel_delayed_work_sync(i32* %39)
  br label %41

41:                                               ; preds = %37, %32, %4
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %57

44:                                               ; preds = %41
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @BSS_CHANGED_BEACON_ENABLED, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %44
  %50 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %51 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %56 = call i32 @wl1271_tx_flush(%struct.wl1271* %55)
  br label %57

57:                                               ; preds = %54, %49, %44, %41
  %58 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %59 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %58, i32 0, i32 1
  %60 = call i32 @mutex_lock(i32* %59)
  %61 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %62 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @WLCORE_STATE_ON, align 8
  %65 = icmp ne i64 %63, %64
  %66 = zext i1 %65 to i32
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %57
  br label %146

70:                                               ; preds = %57
  %71 = load i32, i32* @WLVIF_FLAG_INITIALIZED, align 4
  %72 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %10, align 8
  %73 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %72, i32 0, i32 2
  %74 = call i32 @test_bit(i32 %71, i32* %73)
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = call i64 @unlikely(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %70
  br label %146

81:                                               ; preds = %70
  %82 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %83 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @pm_runtime_get_sync(i32 %84)
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %12, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %81
  %89 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %90 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @pm_runtime_put_noidle(i32 %91)
  br label %146

93:                                               ; preds = %81
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* @BSS_CHANGED_TXPOWER, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %122

98:                                               ; preds = %93
  %99 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %100 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %10, align 8
  %103 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %101, %104
  br i1 %105, label %106, label %122

106:                                              ; preds = %98
  %107 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %108 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %10, align 8
  %109 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %110 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @wl1271_acx_tx_power(%struct.wl1271* %107, %struct.wl12xx_vif* %108, i64 %111)
  store i32 %112, i32* %12, align 4
  %113 = load i32, i32* %12, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %106
  br label %146

116:                                              ; preds = %106
  %117 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %118 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %10, align 8
  %121 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %120, i32 0, i32 1
  store i64 %119, i64* %121, align 8
  br label %122

122:                                              ; preds = %116, %98, %93
  %123 = load i32, i32* %11, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %122
  %126 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %127 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %128 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %129 = load i32, i32* %8, align 4
  %130 = call i32 @wl1271_bss_info_changed_ap(%struct.wl1271* %126, %struct.ieee80211_vif* %127, %struct.ieee80211_bss_conf* %128, i32 %129)
  br label %137

131:                                              ; preds = %122
  %132 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %133 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %134 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %135 = load i32, i32* %8, align 4
  %136 = call i32 @wl1271_bss_info_changed_sta(%struct.wl1271* %132, %struct.ieee80211_vif* %133, %struct.ieee80211_bss_conf* %134, i32 %135)
  br label %137

137:                                              ; preds = %131, %125
  %138 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %139 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @pm_runtime_mark_last_busy(i32 %140)
  %142 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %143 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @pm_runtime_put_autosuspend(i32 %144)
  br label %146

146:                                              ; preds = %137, %115, %88, %80, %69
  %147 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %148 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %147, i32 0, i32 1
  %149 = call i32 @mutex_unlock(i32* %148)
  ret void
}

declare dso_local %struct.wl12xx_vif* @wl12xx_vif_to_data(%struct.ieee80211_vif*) #1

declare dso_local i32 @wl1271_debug(i32, i8*, i32, i32) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @wl1271_tx_flush(%struct.wl1271*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

declare dso_local i32 @wl1271_acx_tx_power(%struct.wl1271*, %struct.wl12xx_vif*, i64) #1

declare dso_local i32 @wl1271_bss_info_changed_ap(%struct.wl1271*, %struct.ieee80211_vif*, %struct.ieee80211_bss_conf*, i32) #1

declare dso_local i32 @wl1271_bss_info_changed_sta(%struct.wl1271*, %struct.ieee80211_vif*, %struct.ieee80211_bss_conf*, i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
