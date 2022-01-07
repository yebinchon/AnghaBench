; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_scan.c_wl18xx_sched_scan_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl18xx/extr_scan.c_wl18xx_sched_scan_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl12xx_vif = type { i32 }
%struct.cfg80211_sched_scan_request = type { i32 }
%struct.ieee80211_scan_ies = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl18xx_sched_scan_start(%struct.wl1271* %0, %struct.wl12xx_vif* %1, %struct.cfg80211_sched_scan_request* %2, %struct.ieee80211_scan_ies* %3) #0 {
  %5 = alloca %struct.wl1271*, align 8
  %6 = alloca %struct.wl12xx_vif*, align 8
  %7 = alloca %struct.cfg80211_sched_scan_request*, align 8
  %8 = alloca %struct.ieee80211_scan_ies*, align 8
  store %struct.wl1271* %0, %struct.wl1271** %5, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %6, align 8
  store %struct.cfg80211_sched_scan_request* %2, %struct.cfg80211_sched_scan_request** %7, align 8
  store %struct.ieee80211_scan_ies* %3, %struct.ieee80211_scan_ies** %8, align 8
  %9 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %10 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %11 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %7, align 8
  %12 = load %struct.ieee80211_scan_ies*, %struct.ieee80211_scan_ies** %8, align 8
  %13 = call i32 @wl18xx_scan_sched_scan_config(%struct.wl1271* %9, %struct.wl12xx_vif* %10, %struct.cfg80211_sched_scan_request* %11, %struct.ieee80211_scan_ies* %12)
  ret i32 %13
}

declare dso_local i32 @wl18xx_scan_sched_scan_config(%struct.wl1271*, %struct.wl12xx_vif*, %struct.cfg80211_sched_scan_request*, %struct.ieee80211_scan_ies*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
