; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_op_remain_on_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_op_remain_on_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.wl1271* }
%struct.wl1271 = type { i64, i32, i32, i32, %struct.ieee80211_vif*, i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_channel = type { i32, i32 }
%struct.wl12xx_vif = type { i32 }

@DEBUG_MAC80211 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"mac80211 roc %d (%d)\00", align 1
@WLCORE_STATE_ON = common dso_local global i64 0, align 8
@WL12XX_MAX_ROLES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"active roc on role %d\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_channel*, i32, i32)* @wlcore_op_remain_on_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlcore_op_remain_on_channel(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_channel* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca %struct.ieee80211_vif*, align 8
  %8 = alloca %struct.ieee80211_channel*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.wl12xx_vif*, align 8
  %12 = alloca %struct.wl1271*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %7, align 8
  store %struct.ieee80211_channel* %2, %struct.ieee80211_channel** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %17 = call %struct.wl12xx_vif* @wl12xx_vif_to_data(%struct.ieee80211_vif* %16)
  store %struct.wl12xx_vif* %17, %struct.wl12xx_vif** %11, align 8
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %19 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %18, i32 0, i32 0
  %20 = load %struct.wl1271*, %struct.wl1271** %19, align 8
  store %struct.wl1271* %20, %struct.wl1271** %12, align 8
  store i32 0, i32* %15, align 4
  %21 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %22 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ieee80211_frequency_to_channel(i32 %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* @DEBUG_MAC80211, align 4
  %26 = load i32, i32* %13, align 4
  %27 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %11, align 8
  %28 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @wl1271_debug(i32 %25, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %29)
  %31 = load %struct.wl1271*, %struct.wl1271** %12, align 8
  %32 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %31, i32 0, i32 1
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load %struct.wl1271*, %struct.wl1271** %12, align 8
  %35 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @WLCORE_STATE_ON, align 8
  %38 = icmp ne i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %5
  br label %104

43:                                               ; preds = %5
  %44 = load %struct.wl1271*, %struct.wl1271** %12, align 8
  %45 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @WL12XX_MAX_ROLES, align 4
  %48 = call i32 @find_first_bit(i32 %46, i32 %47)
  store i32 %48, i32* %14, align 4
  %49 = load %struct.wl1271*, %struct.wl1271** %12, align 8
  %50 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %49, i32 0, i32 4
  %51 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %50, align 8
  %52 = icmp ne %struct.ieee80211_vif* %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %43
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* @WL12XX_MAX_ROLES, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %53, %43
  %58 = load i32, i32* %14, align 4
  %59 = call i32 @wl1271_warning(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @EBUSY, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %15, align 4
  br label %104

62:                                               ; preds = %53
  %63 = load %struct.wl1271*, %struct.wl1271** %12, align 8
  %64 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @pm_runtime_get_sync(i32 %65)
  store i32 %66, i32* %15, align 4
  %67 = load i32, i32* %15, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %62
  %70 = load %struct.wl1271*, %struct.wl1271** %12, align 8
  %71 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @pm_runtime_put_noidle(i32 %72)
  br label %104

74:                                               ; preds = %62
  %75 = load %struct.wl1271*, %struct.wl1271** %12, align 8
  %76 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %11, align 8
  %77 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  %78 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %13, align 4
  %81 = call i32 @wl12xx_start_dev(%struct.wl1271* %75, %struct.wl12xx_vif* %76, i32 %79, i32 %80)
  store i32 %81, i32* %15, align 4
  %82 = load i32, i32* %15, align 4
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %74
  br label %95

85:                                               ; preds = %74
  %86 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %87 = load %struct.wl1271*, %struct.wl1271** %12, align 8
  %88 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %87, i32 0, i32 4
  store %struct.ieee80211_vif* %86, %struct.ieee80211_vif** %88, align 8
  %89 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %90 = load %struct.wl1271*, %struct.wl1271** %12, align 8
  %91 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %90, i32 0, i32 3
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @msecs_to_jiffies(i32 %92)
  %94 = call i32 @ieee80211_queue_delayed_work(%struct.ieee80211_hw* %89, i32* %91, i32 %93)
  br label %95

95:                                               ; preds = %85, %84
  %96 = load %struct.wl1271*, %struct.wl1271** %12, align 8
  %97 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @pm_runtime_mark_last_busy(i32 %98)
  %100 = load %struct.wl1271*, %struct.wl1271** %12, align 8
  %101 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @pm_runtime_put_autosuspend(i32 %102)
  br label %104

104:                                              ; preds = %95, %69, %57, %42
  %105 = load %struct.wl1271*, %struct.wl1271** %12, align 8
  %106 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %105, i32 0, i32 1
  %107 = call i32 @mutex_unlock(i32* %106)
  %108 = load i32, i32* %15, align 4
  ret i32 %108
}

declare dso_local %struct.wl12xx_vif* @wl12xx_vif_to_data(%struct.ieee80211_vif*) #1

declare dso_local i32 @ieee80211_frequency_to_channel(i32) #1

declare dso_local i32 @wl1271_debug(i32, i8*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @find_first_bit(i32, i32) #1

declare dso_local i32 @wl1271_warning(i8*, i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

declare dso_local i32 @wl12xx_start_dev(%struct.wl1271*, %struct.wl12xx_vif*, i32, i32) #1

declare dso_local i32 @ieee80211_queue_delayed_work(%struct.ieee80211_hw*, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
