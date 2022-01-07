; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_op_unassign_vif_chanctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_op_unassign_vif_chanctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.wl1271* }
%struct.wl1271 = type { i64, i32, i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_chanctx_conf = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.wl12xx_vif = type { i32, i32, i32 }

@DEBUG_MAC80211 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"mac80211 unassign chanctx (role %d) %d (type %d)\00", align 1
@WLCORE_STATE_ON = common dso_local global i64 0, align 8
@WLVIF_FLAG_INITIALIZED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Stop radar detection\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_chanctx_conf*)* @wlcore_op_unassign_vif_chanctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlcore_op_unassign_vif_chanctx(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_chanctx_conf* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.ieee80211_chanctx_conf*, align 8
  %7 = alloca %struct.wl1271*, align 8
  %8 = alloca %struct.wl12xx_vif*, align 8
  %9 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store %struct.ieee80211_chanctx_conf* %2, %struct.ieee80211_chanctx_conf** %6, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %10, i32 0, i32 0
  %12 = load %struct.wl1271*, %struct.wl1271** %11, align 8
  store %struct.wl1271* %12, %struct.wl1271** %7, align 8
  %13 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %14 = call %struct.wl12xx_vif* @wl12xx_vif_to_data(%struct.ieee80211_vif* %13)
  store %struct.wl12xx_vif* %14, %struct.wl12xx_vif** %8, align 8
  %15 = load i32, i32* @DEBUG_MAC80211, align 4
  %16 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %17 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %6, align 8
  %20 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ieee80211_frequency_to_channel(i32 %24)
  %26 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %6, align 8
  %27 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %26, i32 0, i32 0
  %28 = call i32 @cfg80211_get_chandef_type(%struct.TYPE_4__* %27)
  %29 = call i32 (i32, i8*, ...) @wl1271_debug(i32 %15, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %25, i32 %28)
  %30 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %31 = call i32 @wl1271_tx_flush(%struct.wl1271* %30)
  %32 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %33 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %32, i32 0, i32 1
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %36 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @WLCORE_STATE_ON, align 8
  %39 = icmp ne i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %3
  br label %89

44:                                               ; preds = %3
  %45 = load i32, i32* @WLVIF_FLAG_INITIALIZED, align 4
  %46 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %47 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %46, i32 0, i32 1
  %48 = call i32 @test_bit(i32 %45, i32* %47)
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  br label %89

55:                                               ; preds = %44
  %56 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %57 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @pm_runtime_get_sync(i32 %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %55
  %63 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %64 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @pm_runtime_put_noidle(i32 %65)
  br label %89

67:                                               ; preds = %55
  %68 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %69 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %67
  %73 = load i32, i32* @DEBUG_MAC80211, align 4
  %74 = call i32 (i32, i8*, ...) @wl1271_debug(i32 %73, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %75 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %76 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %77 = call i32 @wlcore_hw_set_cac(%struct.wl1271* %75, %struct.wl12xx_vif* %76, i32 0)
  %78 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %79 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %78, i32 0, i32 0
  store i32 0, i32* %79, align 4
  br label %80

80:                                               ; preds = %72, %67
  %81 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %82 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @pm_runtime_mark_last_busy(i32 %83)
  %85 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %86 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @pm_runtime_put_autosuspend(i32 %87)
  br label %89

89:                                               ; preds = %80, %62, %54, %43
  %90 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %91 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %90, i32 0, i32 1
  %92 = call i32 @mutex_unlock(i32* %91)
  ret void
}

declare dso_local %struct.wl12xx_vif* @wl12xx_vif_to_data(%struct.ieee80211_vif*) #1

declare dso_local i32 @wl1271_debug(i32, i8*, ...) #1

declare dso_local i32 @ieee80211_frequency_to_channel(i32) #1

declare dso_local i32 @cfg80211_get_chandef_type(%struct.TYPE_4__*) #1

declare dso_local i32 @wl1271_tx_flush(%struct.wl1271*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

declare dso_local i32 @wlcore_hw_set_cac(%struct.wl1271*, %struct.wl12xx_vif*, i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
