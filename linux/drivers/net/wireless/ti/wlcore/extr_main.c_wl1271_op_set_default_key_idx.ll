; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_op_set_default_key_idx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_op_set_default_key_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.wl1271* }
%struct.wl1271 = type { i64, i32, i32 }
%struct.ieee80211_vif = type { i32 }
%struct.wl12xx_vif = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DEBUG_MAC80211 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"mac80211 set default key idx %d\00", align 1
@WLCORE_STATE_ON = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@KEY_WEP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*, i32)* @wl1271_op_set_default_key_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl1271_op_set_default_key_idx(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wl1271*, align 8
  %8 = alloca %struct.wl12xx_vif*, align 8
  %9 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %10, i32 0, i32 0
  %12 = load %struct.wl1271*, %struct.wl1271** %11, align 8
  store %struct.wl1271* %12, %struct.wl1271** %7, align 8
  %13 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %14 = call %struct.wl12xx_vif* @wl12xx_vif_to_data(%struct.ieee80211_vif* %13)
  store %struct.wl12xx_vif* %14, %struct.wl12xx_vif** %8, align 8
  %15 = load i32, i32* @DEBUG_MAC80211, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @wl1271_debug(i32 %15, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %83

21:                                               ; preds = %3
  %22 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %23 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %22, i32 0, i32 1
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %26 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @WLCORE_STATE_ON, align 8
  %29 = icmp ne i64 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %21
  %34 = load i32, i32* @EAGAIN, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %9, align 4
  br label %79

36:                                               ; preds = %21
  %37 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %38 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @pm_runtime_get_sync(i32 %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %36
  %44 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %45 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @pm_runtime_put_noidle(i32 %46)
  br label %79

48:                                               ; preds = %36
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %51 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %53 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @KEY_WEP, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %69

57:                                               ; preds = %48
  %58 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %61 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @wl12xx_cmd_set_default_wep_key(%struct.wl1271* %58, i32 %59, i32 %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  br label %70

68:                                               ; preds = %57
  br label %69

69:                                               ; preds = %68, %48
  br label %70

70:                                               ; preds = %69, %67
  %71 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %72 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @pm_runtime_mark_last_busy(i32 %73)
  %75 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %76 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @pm_runtime_put_autosuspend(i32 %77)
  br label %79

79:                                               ; preds = %70, %43, %33
  %80 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %81 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %80, i32 0, i32 1
  %82 = call i32 @mutex_unlock(i32* %81)
  br label %83

83:                                               ; preds = %79, %20
  ret void
}

declare dso_local %struct.wl12xx_vif* @wl12xx_vif_to_data(%struct.ieee80211_vif*) #1

declare dso_local i32 @wl1271_debug(i32, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

declare dso_local i32 @wl12xx_cmd_set_default_wep_key(%struct.wl1271*, i32, i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
