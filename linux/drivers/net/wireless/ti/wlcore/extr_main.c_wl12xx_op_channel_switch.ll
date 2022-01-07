; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl12xx_op_channel_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl12xx_op_channel_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.wl1271* }
%struct.wl1271 = type { i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.wl1271*, %struct.wl12xx_vif*, %struct.ieee80211_channel_switch*)* }
%struct.wl12xx_vif = type { i32, i32, i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_channel_switch = type { i64 }

@DEBUG_MAC80211 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"mac80211 channel switch\00", align 1
@WLCORE_STATE_OFF = common dso_local global i64 0, align 8
@WLVIF_FLAG_STA_ASSOCIATED = common dso_local global i32 0, align 4
@WLCORE_STATE_ON = common dso_local global i64 0, align 8
@WLVIF_FLAG_CS_PROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_channel_switch*)* @wl12xx_op_channel_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl12xx_op_channel_switch(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_channel_switch* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.ieee80211_channel_switch*, align 8
  %7 = alloca %struct.wl1271*, align 8
  %8 = alloca %struct.wl12xx_vif*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store %struct.ieee80211_channel_switch* %2, %struct.ieee80211_channel_switch** %6, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 0
  %13 = load %struct.wl1271*, %struct.wl1271** %12, align 8
  store %struct.wl1271* %13, %struct.wl1271** %7, align 8
  %14 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %15 = call %struct.wl12xx_vif* @wl12xx_vif_to_data(%struct.ieee80211_vif* %14)
  store %struct.wl12xx_vif* %15, %struct.wl12xx_vif** %8, align 8
  %16 = load i32, i32* @DEBUG_MAC80211, align 4
  %17 = call i32 @wl1271_debug(i32 %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %19 = call i32 @wl1271_tx_flush(%struct.wl1271* %18)
  %20 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %21 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %20, i32 0, i32 1
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %24 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @WLCORE_STATE_OFF, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %3
  %32 = load i32, i32* @WLVIF_FLAG_STA_ASSOCIATED, align 4
  %33 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %34 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %33, i32 0, i32 2
  %35 = call i64 @test_bit(i32 %32, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %39 = call i32 @ieee80211_chswitch_done(%struct.ieee80211_vif* %38, i32 0)
  br label %40

40:                                               ; preds = %37, %31
  br label %114

41:                                               ; preds = %3
  %42 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %43 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @WLCORE_STATE_ON, align 8
  %46 = icmp ne i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  br label %114

51:                                               ; preds = %41
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %54 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @pm_runtime_get_sync(i32 %55)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %52
  %60 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %61 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @pm_runtime_put_noidle(i32 %62)
  br label %114

64:                                               ; preds = %52
  %65 = load i32, i32* @WLVIF_FLAG_STA_ASSOCIATED, align 4
  %66 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %67 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %66, i32 0, i32 2
  %68 = call i64 @test_bit(i32 %65, i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %104

70:                                               ; preds = %64
  %71 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %72 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %71, i32 0, i32 3
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32 (%struct.wl1271*, %struct.wl12xx_vif*, %struct.ieee80211_channel_switch*)*, i32 (%struct.wl1271*, %struct.wl12xx_vif*, %struct.ieee80211_channel_switch*)** %74, align 8
  %76 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %77 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %78 = load %struct.ieee80211_channel_switch*, %struct.ieee80211_channel_switch** %6, align 8
  %79 = call i32 %75(%struct.wl1271* %76, %struct.wl12xx_vif* %77, %struct.ieee80211_channel_switch* %78)
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %70
  br label %105

83:                                               ; preds = %70
  %84 = load i32, i32* @WLVIF_FLAG_CS_PROGRESS, align 4
  %85 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %86 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %85, i32 0, i32 2
  %87 = call i32 @set_bit(i32 %84, i32* %86)
  %88 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %89 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @ieee80211_tu_to_usec(i32 %90)
  %92 = load %struct.ieee80211_channel_switch*, %struct.ieee80211_channel_switch** %6, align 8
  %93 = getelementptr inbounds %struct.ieee80211_channel_switch, %struct.ieee80211_channel_switch* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = mul i64 %91, %94
  store i64 %95, i64* %10, align 8
  %96 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %97 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %98 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %97, i32 0, i32 0
  %99 = load i64, i64* %10, align 8
  %100 = call i64 @usecs_to_jiffies(i64 %99)
  %101 = call i64 @msecs_to_jiffies(i32 5000)
  %102 = add nsw i64 %100, %101
  %103 = call i32 @ieee80211_queue_delayed_work(%struct.ieee80211_hw* %96, i32* %98, i64 %102)
  br label %104

104:                                              ; preds = %83, %64
  br label %105

105:                                              ; preds = %104, %82
  %106 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %107 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @pm_runtime_mark_last_busy(i32 %108)
  %110 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %111 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @pm_runtime_put_autosuspend(i32 %112)
  br label %114

114:                                              ; preds = %105, %59, %50, %40
  %115 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %116 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %115, i32 0, i32 1
  %117 = call i32 @mutex_unlock(i32* %116)
  ret void
}

declare dso_local %struct.wl12xx_vif* @wl12xx_vif_to_data(%struct.ieee80211_vif*) #1

declare dso_local i32 @wl1271_debug(i32, i8*) #1

declare dso_local i32 @wl1271_tx_flush(%struct.wl1271*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @ieee80211_chswitch_done(%struct.ieee80211_vif*, i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @ieee80211_tu_to_usec(i32) #1

declare dso_local i32 @ieee80211_queue_delayed_work(%struct.ieee80211_hw*, i32*, i64) #1

declare dso_local i64 @usecs_to_jiffies(i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
