; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_configure_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_configure_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl12xx_vif = type { i64 }
%struct.cfg80211_wowlan = type { i32 }

@BSS_TYPE_STA_BSS = common dso_local global i64 0, align 8
@BSS_TYPE_AP_BSS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, %struct.wl12xx_vif*, %struct.cfg80211_wowlan*)* @wl1271_configure_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1271_configure_suspend(%struct.wl1271* %0, %struct.wl12xx_vif* %1, %struct.cfg80211_wowlan* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wl1271*, align 8
  %6 = alloca %struct.wl12xx_vif*, align 8
  %7 = alloca %struct.cfg80211_wowlan*, align 8
  store %struct.wl1271* %0, %struct.wl1271** %5, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %6, align 8
  store %struct.cfg80211_wowlan* %2, %struct.cfg80211_wowlan** %7, align 8
  %8 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %9 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @BSS_TYPE_STA_BSS, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %15 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %16 = load %struct.cfg80211_wowlan*, %struct.cfg80211_wowlan** %7, align 8
  %17 = call i32 @wl1271_configure_suspend_sta(%struct.wl1271* %14, %struct.wl12xx_vif* %15, %struct.cfg80211_wowlan* %16)
  store i32 %17, i32* %4, align 4
  br label %30

18:                                               ; preds = %3
  %19 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %20 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @BSS_TYPE_AP_BSS, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %26 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %27 = load %struct.cfg80211_wowlan*, %struct.cfg80211_wowlan** %7, align 8
  %28 = call i32 @wl1271_configure_suspend_ap(%struct.wl1271* %25, %struct.wl12xx_vif* %26, %struct.cfg80211_wowlan* %27)
  store i32 %28, i32* %4, align 4
  br label %30

29:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %29, %24, %13
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @wl1271_configure_suspend_sta(%struct.wl1271*, %struct.wl12xx_vif*, %struct.cfg80211_wowlan*) #1

declare dso_local i32 @wl1271_configure_suspend_ap(%struct.wl1271*, %struct.wl12xx_vif*, %struct.cfg80211_wowlan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
