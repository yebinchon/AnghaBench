; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_op_switch_vif_chanctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_op_switch_vif_chanctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.wl1271* }
%struct.wl1271 = type { i32, i32 }
%struct.ieee80211_vif_chanctx_switch = type { i32, i32 }
%struct.wl12xx_vif = type { i32 }

@DEBUG_MAC80211 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"mac80211 switch chanctx n_vifs %d mode %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif_chanctx_switch*, i32, i32)* @wlcore_op_switch_vif_chanctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlcore_op_switch_vif_chanctx(%struct.ieee80211_hw* %0, %struct.ieee80211_vif_chanctx_switch* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif_chanctx_switch*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.wl1271*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.wl12xx_vif*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif_chanctx_switch* %1, %struct.ieee80211_vif_chanctx_switch** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %13, i32 0, i32 0
  %15 = load %struct.wl1271*, %struct.wl1271** %14, align 8
  store %struct.wl1271* %15, %struct.wl1271** %9, align 8
  %16 = load i32, i32* @DEBUG_MAC80211, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @wl1271_debug(i32 %16, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  %20 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %21 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %24 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @pm_runtime_get_sync(i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %4
  %30 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %31 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @pm_runtime_put_noidle(i32 %32)
  br label %73

34:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %35

35:                                               ; preds = %60, %34
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %63

39:                                               ; preds = %35
  %40 = load %struct.ieee80211_vif_chanctx_switch*, %struct.ieee80211_vif_chanctx_switch** %6, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.ieee80211_vif_chanctx_switch, %struct.ieee80211_vif_chanctx_switch* %40, i64 %42
  %44 = getelementptr inbounds %struct.ieee80211_vif_chanctx_switch, %struct.ieee80211_vif_chanctx_switch* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.wl12xx_vif* @wl12xx_vif_to_data(i32 %45)
  store %struct.wl12xx_vif* %46, %struct.wl12xx_vif** %12, align 8
  %47 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %48 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %12, align 8
  %49 = load %struct.ieee80211_vif_chanctx_switch*, %struct.ieee80211_vif_chanctx_switch** %6, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.ieee80211_vif_chanctx_switch, %struct.ieee80211_vif_chanctx_switch* %49, i64 %51
  %53 = getelementptr inbounds %struct.ieee80211_vif_chanctx_switch, %struct.ieee80211_vif_chanctx_switch* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @__wlcore_switch_vif_chan(%struct.wl1271* %47, %struct.wl12xx_vif* %48, i32 %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %39
  br label %64

59:                                               ; preds = %39
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %10, align 4
  br label %35

63:                                               ; preds = %35
  br label %64

64:                                               ; preds = %63, %58
  %65 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %66 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @pm_runtime_mark_last_busy(i32 %67)
  %69 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %70 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @pm_runtime_put_autosuspend(i32 %71)
  br label %73

73:                                               ; preds = %64, %29
  %74 = load %struct.wl1271*, %struct.wl1271** %9, align 8
  %75 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %74, i32 0, i32 0
  %76 = call i32 @mutex_unlock(i32* %75)
  ret i32 0
}

declare dso_local i32 @wl1271_debug(i32, i8*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

declare dso_local %struct.wl12xx_vif* @wl12xx_vif_to_data(i32) #1

declare dso_local i32 @__wlcore_switch_vif_chan(%struct.wl1271*, %struct.wl12xx_vif*, i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
