; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_op_hw_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_op_hw_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.wl1271* }
%struct.wl1271 = type { i64, i32, i32, i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_scan_request = type { %struct.cfg80211_scan_request }
%struct.cfg80211_scan_request = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64, i32* }

@DEBUG_MAC80211 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"mac80211 hw scan\00", align 1
@WLCORE_STATE_ON = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@WL12XX_MAX_ROLES = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_scan_request*)* @wl1271_op_hw_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1271_op_hw_scan(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_scan_request* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.ieee80211_scan_request*, align 8
  %7 = alloca %struct.cfg80211_scan_request*, align 8
  %8 = alloca %struct.wl1271*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store %struct.ieee80211_scan_request* %2, %struct.ieee80211_scan_request** %6, align 8
  %12 = load %struct.ieee80211_scan_request*, %struct.ieee80211_scan_request** %6, align 8
  %13 = getelementptr inbounds %struct.ieee80211_scan_request, %struct.ieee80211_scan_request* %12, i32 0, i32 0
  store %struct.cfg80211_scan_request* %13, %struct.cfg80211_scan_request** %7, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %15 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %14, i32 0, i32 0
  %16 = load %struct.wl1271*, %struct.wl1271** %15, align 8
  store %struct.wl1271* %16, %struct.wl1271** %8, align 8
  store i32* null, i32** %10, align 8
  store i64 0, i64* %11, align 8
  %17 = load i32, i32* @DEBUG_MAC80211, align 4
  %18 = call i32 @wl1271_debug(i32 %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %7, align 8
  %20 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %3
  %24 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %7, align 8
  %25 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %10, align 8
  %30 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %7, align 8
  %31 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %11, align 8
  br label %36

36:                                               ; preds = %23, %3
  %37 = load %struct.wl1271*, %struct.wl1271** %8, align 8
  %38 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %37, i32 0, i32 1
  %39 = call i32 @mutex_lock(i32* %38)
  %40 = load %struct.wl1271*, %struct.wl1271** %8, align 8
  %41 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @WLCORE_STATE_ON, align 8
  %44 = icmp ne i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %36
  %49 = load i32, i32* @EAGAIN, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %9, align 4
  br label %92

51:                                               ; preds = %36
  %52 = load %struct.wl1271*, %struct.wl1271** %8, align 8
  %53 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @pm_runtime_get_sync(i32 %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %51
  %59 = load %struct.wl1271*, %struct.wl1271** %8, align 8
  %60 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @pm_runtime_put_noidle(i32 %61)
  br label %92

63:                                               ; preds = %51
  %64 = load %struct.wl1271*, %struct.wl1271** %8, align 8
  %65 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = load i64, i64* @WL12XX_MAX_ROLES, align 8
  %68 = call i64 @find_first_bit(i32 %66, i64 %67)
  %69 = load i64, i64* @WL12XX_MAX_ROLES, align 8
  %70 = icmp slt i64 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %63
  %72 = load i32, i32* @EBUSY, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %9, align 4
  br label %83

74:                                               ; preds = %63
  %75 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %76 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %75, i32 0, i32 0
  %77 = load %struct.wl1271*, %struct.wl1271** %76, align 8
  %78 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %79 = load i32*, i32** %10, align 8
  %80 = load i64, i64* %11, align 8
  %81 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %7, align 8
  %82 = call i32 @wlcore_scan(%struct.wl1271* %77, %struct.ieee80211_vif* %78, i32* %79, i64 %80, %struct.cfg80211_scan_request* %81)
  store i32 %82, i32* %9, align 4
  br label %83

83:                                               ; preds = %74, %71
  %84 = load %struct.wl1271*, %struct.wl1271** %8, align 8
  %85 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @pm_runtime_mark_last_busy(i32 %86)
  %88 = load %struct.wl1271*, %struct.wl1271** %8, align 8
  %89 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @pm_runtime_put_autosuspend(i32 %90)
  br label %92

92:                                               ; preds = %83, %58, %48
  %93 = load %struct.wl1271*, %struct.wl1271** %8, align 8
  %94 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %93, i32 0, i32 1
  %95 = call i32 @mutex_unlock(i32* %94)
  %96 = load i32, i32* %9, align 4
  ret i32 %96
}

declare dso_local i32 @wl1271_debug(i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @pm_runtime_put_noidle(i32) #1

declare dso_local i64 @find_first_bit(i32, i64) #1

declare dso_local i32 @wlcore_scan(%struct.wl1271*, %struct.ieee80211_vif*, i32*, i64, %struct.cfg80211_scan_request*) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
