; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_save_freed_pkts_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_save_freed_pkts_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl12xx_vif = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.ieee80211_vif = type { i32 }

@WL12XX_INVALID_LINK_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl1271*, %struct.wl12xx_vif*, i64, i64*)* @wlcore_save_freed_pkts_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlcore_save_freed_pkts_addr(%struct.wl1271* %0, %struct.wl12xx_vif* %1, i64 %2, i64* %3) #0 {
  %5 = alloca %struct.wl1271*, align 8
  %6 = alloca %struct.wl12xx_vif*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.ieee80211_sta*, align 8
  %10 = alloca %struct.ieee80211_vif*, align 8
  store %struct.wl1271* %0, %struct.wl1271** %5, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  %11 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %12 = call %struct.ieee80211_vif* @wl12xx_wlvif_to_vif(%struct.wl12xx_vif* %11)
  store %struct.ieee80211_vif* %12, %struct.ieee80211_vif** %10, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @WL12XX_INVALID_LINK_ID, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %4
  %17 = load i64*, i64** %8, align 8
  %18 = call i64 @is_zero_ether_addr(i64* %17)
  %19 = icmp ne i64 %18, 0
  br label %20

20:                                               ; preds = %16, %4
  %21 = phi i1 [ true, %4 ], [ %19, %16 ]
  %22 = zext i1 %21 to i32
  %23 = call i64 @WARN_ON(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  br label %41

26:                                               ; preds = %20
  %27 = call i32 (...) @rcu_read_lock()
  %28 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %10, align 8
  %29 = load i64*, i64** %8, align 8
  %30 = call %struct.ieee80211_sta* @ieee80211_find_sta(%struct.ieee80211_vif* %28, i64* %29)
  store %struct.ieee80211_sta* %30, %struct.ieee80211_sta** %9, align 8
  %31 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %32 = icmp ne %struct.ieee80211_sta* %31, null
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %35 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %38 = call i32 @wlcore_save_freed_pkts(%struct.wl1271* %34, %struct.wl12xx_vif* %35, i64 %36, %struct.ieee80211_sta* %37)
  br label %39

39:                                               ; preds = %33, %26
  %40 = call i32 (...) @rcu_read_unlock()
  br label %41

41:                                               ; preds = %39, %25
  ret void
}

declare dso_local %struct.ieee80211_vif* @wl12xx_wlvif_to_vif(%struct.wl12xx_vif*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @is_zero_ether_addr(i64*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_sta* @ieee80211_find_sta(%struct.ieee80211_vif*, i64*) #1

declare dso_local i32 @wlcore_save_freed_pkts(%struct.wl1271*, %struct.wl12xx_vif*, i64, %struct.ieee80211_sta*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
