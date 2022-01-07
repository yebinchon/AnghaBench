; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_op_channel_switch_beacon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_op_channel_switch_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.wl1271* }
%struct.wl1271 = type { i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.wl1271*, %struct.wl12xx_vif*, %struct.ieee80211_channel_switch*)* }
%struct.wl12xx_vif = type { i32, i32 }
%struct.ieee80211_channel_switch = type { i32, i32, %struct.cfg80211_chan_def }
%struct.cfg80211_chan_def = type { i32 }
%struct.ieee80211_vif = type { i32 }

@DEBUG_MAC80211 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"mac80211 channel switch beacon (role %d)\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"error getting beacon (for CSA counter)\00", align 1
@WLCORE_STATE_ON = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@WLVIF_FLAG_CS_PROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.cfg80211_chan_def*)* @wlcore_op_channel_switch_beacon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlcore_op_channel_switch_beacon(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.cfg80211_chan_def* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.cfg80211_chan_def*, align 8
  %7 = alloca %struct.wl1271*, align 8
  %8 = alloca %struct.wl12xx_vif*, align 8
  %9 = alloca %struct.ieee80211_channel_switch, align 4
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store %struct.cfg80211_chan_def* %2, %struct.cfg80211_chan_def** %6, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 0
  %13 = load %struct.wl1271*, %struct.wl1271** %12, align 8
  store %struct.wl1271* %13, %struct.wl1271** %7, align 8
  %14 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %15 = call %struct.wl12xx_vif* @wl12xx_vif_to_data(%struct.ieee80211_vif* %14)
  store %struct.wl12xx_vif* %15, %struct.wl12xx_vif** %8, align 8
  %16 = getelementptr inbounds %struct.ieee80211_channel_switch, %struct.ieee80211_channel_switch* %9, i32 0, i32 0
  store i32 1, i32* %16, align 4
  %17 = getelementptr inbounds %struct.ieee80211_channel_switch, %struct.ieee80211_channel_switch* %9, i32 0, i32 1
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds %struct.ieee80211_channel_switch, %struct.ieee80211_channel_switch* %9, i32 0, i32 2
  %19 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %6, align 8
  %20 = bitcast %struct.cfg80211_chan_def* %18 to i8*
  %21 = bitcast %struct.cfg80211_chan_def* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 4, i1 false)
  %22 = load i32, i32* @DEBUG_MAC80211, align 4
  %23 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %24 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @wl1271_debug(i32 %22, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %28 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %29 = getelementptr inbounds %struct.ieee80211_channel_switch, %struct.ieee80211_channel_switch* %9, i32 0, i32 1
  %30 = call i32 @wlcore_get_csa_count(%struct.wl1271* %27, %struct.wl12xx_vif* %28, i32* %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %3
  %34 = call i32 @wl1271_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %92

35:                                               ; preds = %3
  %36 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %37 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %36, i32 0, i32 1
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %40 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @WLCORE_STATE_ON, align 8
  %43 = icmp ne i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %35
  %48 = load i32, i32* @EBUSY, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %10, align 4
  br label %88

50:                                               ; preds = %35
  %51 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %52 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @pm_runtime_get_sync(i32 %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %59 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @pm_runtime_put_noidle(i32 %60)
  br label %88

62:                                               ; preds = %50
  %63 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %64 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %63, i32 0, i32 3
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32 (%struct.wl1271*, %struct.wl12xx_vif*, %struct.ieee80211_channel_switch*)*, i32 (%struct.wl1271*, %struct.wl12xx_vif*, %struct.ieee80211_channel_switch*)** %66, align 8
  %68 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %69 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %70 = call i32 %67(%struct.wl1271* %68, %struct.wl12xx_vif* %69, %struct.ieee80211_channel_switch* %9)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %62
  br label %79

74:                                               ; preds = %62
  %75 = load i32, i32* @WLVIF_FLAG_CS_PROGRESS, align 4
  %76 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %77 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %76, i32 0, i32 0
  %78 = call i32 @set_bit(i32 %75, i32* %77)
  br label %79

79:                                               ; preds = %74, %73
  %80 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %81 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @pm_runtime_mark_last_busy(i32 %82)
  %84 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %85 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @pm_runtime_put_autosuspend(i32 %86)
  br label %88

88:                                               ; preds = %79, %57, %47
  %89 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %90 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %89, i32 0, i32 1
  %91 = call i32 @mutex_unlock(i32* %90)
  br label %92

92:                                               ; preds = %88, %33
  ret void
}

declare dso_local %struct.wl12xx_vif* @wl12xx_vif_to_data(%struct.ieee80211_vif*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @wl1271_debug(i32, i8*, i32) #1

declare dso_local i32 @wlcore_get_csa_count(%struct.wl1271*, %struct.wl12xx_vif*, i32*) #1

declare dso_local i32 @wl1271_error(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
