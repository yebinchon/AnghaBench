; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_op_assign_vif_chanctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_op_assign_vif_chanctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.wl1271* }
%struct.wl1271 = type { i64, i32, i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_chanctx_conf = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32, i32 }
%struct.wl12xx_vif = type { i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@DEBUG_MAC80211 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"mac80211 assign chanctx (role %d) %d (type %d) (radar %d dfs_state %d)\00", align 1
@WLCORE_STATE_ON = common dso_local global i64 0, align 8
@WLVIF_FLAG_INITIALIZED = common dso_local global i32 0, align 4
@NL80211_DFS_USABLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"Start radar detection\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_chanctx_conf*)* @wlcore_op_assign_vif_chanctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlcore_op_assign_vif_chanctx(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_chanctx_conf* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.ieee80211_chanctx_conf*, align 8
  %7 = alloca %struct.wl1271*, align 8
  %8 = alloca %struct.wl12xx_vif*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store %struct.ieee80211_chanctx_conf* %2, %struct.ieee80211_chanctx_conf** %6, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 0
  %13 = load %struct.wl1271*, %struct.wl1271** %12, align 8
  store %struct.wl1271* %13, %struct.wl1271** %7, align 8
  %14 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %15 = call %struct.wl12xx_vif* @wl12xx_vif_to_data(%struct.ieee80211_vif* %14)
  store %struct.wl12xx_vif* %15, %struct.wl12xx_vif** %8, align 8
  %16 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %6, align 8
  %17 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ieee80211_frequency_to_channel(i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* @DEBUG_MAC80211, align 4
  %26 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %27 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %6, align 8
  %31 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %30, i32 0, i32 0
  %32 = call i32 @cfg80211_get_chandef_type(%struct.TYPE_4__* %31)
  %33 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %6, align 8
  %34 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %6, align 8
  %37 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 (i32, i8*, ...) @wl1271_debug(i32 %25, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29, i32 %32, i64 %35, i64 %41)
  %43 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %44 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %43, i32 0, i32 1
  %45 = call i32 @mutex_lock(i32* %44)
  %46 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %47 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @WLCORE_STATE_ON, align 8
  %50 = icmp ne i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %3
  br label %128

55:                                               ; preds = %3
  %56 = load i32, i32* @WLVIF_FLAG_INITIALIZED, align 4
  %57 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %58 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %57, i32 0, i32 4
  %59 = call i32 @test_bit(i32 %56, i32* %58)
  %60 = icmp ne i32 %59, 0
  %61 = xor i1 %60, true
  %62 = zext i1 %61 to i32
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %55
  br label %128

66:                                               ; preds = %55
  %67 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %68 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @pm_runtime_get_sync(i32 %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %66
  %74 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %75 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @pm_runtime_put_noidle(i32 %76)
  br label %128

78:                                               ; preds = %66
  %79 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %6, align 8
  %80 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %86 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* %9, align 4
  %88 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %89 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  %90 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %6, align 8
  %91 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %90, i32 0, i32 0
  %92 = call i32 @cfg80211_get_chandef_type(%struct.TYPE_4__* %91)
  %93 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %94 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 4
  %95 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %96 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %97 = call i32 @wl1271_set_band_rate(%struct.wl1271* %95, %struct.wl12xx_vif* %96)
  %98 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %6, align 8
  %99 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %119

102:                                              ; preds = %78
  %103 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %6, align 8
  %104 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @NL80211_DFS_USABLE, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %119

111:                                              ; preds = %102
  %112 = load i32, i32* @DEBUG_MAC80211, align 4
  %113 = call i32 (i32, i8*, ...) @wl1271_debug(i32 %112, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %114 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %115 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %116 = call i32 @wlcore_hw_set_cac(%struct.wl1271* %114, %struct.wl12xx_vif* %115, i32 1)
  %117 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %118 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %117, i32 0, i32 1
  store i32 1, i32* %118, align 4
  br label %119

119:                                              ; preds = %111, %102, %78
  %120 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %121 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @pm_runtime_mark_last_busy(i32 %122)
  %124 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %125 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @pm_runtime_put_autosuspend(i32 %126)
  br label %128

128:                                              ; preds = %119, %73, %65, %54
  %129 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %130 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %129, i32 0, i32 1
  %131 = call i32 @mutex_unlock(i32* %130)
  ret i32 0
}

declare dso_local %struct.wl12xx_vif* @wl12xx_vif_to_data(%struct.ieee80211_vif*) #1

declare dso_local i32 @ieee80211_frequency_to_channel(i32) #1

declare dso_local i32 @wl1271_debug(i32, i8*, ...) #1

declare dso_local i32 @cfg80211_get_chandef_type(%struct.TYPE_4__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

declare dso_local i32 @wl1271_set_band_rate(%struct.wl1271*, %struct.wl12xx_vif*) #1

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
