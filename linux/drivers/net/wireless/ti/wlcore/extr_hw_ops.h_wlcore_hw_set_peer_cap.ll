; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_hw_ops.h_wlcore_hw_set_peer_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_hw_ops.h_wlcore_hw_set_peer_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.ieee80211_sta_ht_cap = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, %struct.ieee80211_sta_ht_cap*, i32, i32, i32)* @wlcore_hw_set_peer_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlcore_hw_set_peer_cap(%struct.wl1271* %0, %struct.ieee80211_sta_ht_cap* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wl1271*, align 8
  %8 = alloca %struct.ieee80211_sta_ht_cap*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %7, align 8
  store %struct.ieee80211_sta_ht_cap* %1, %struct.ieee80211_sta_ht_cap** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %12 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %13 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = bitcast {}** %15 to i32 (%struct.wl1271*, %struct.ieee80211_sta_ht_cap*, i32, i32, i32)**
  %17 = load i32 (%struct.wl1271*, %struct.ieee80211_sta_ht_cap*, i32, i32, i32)*, i32 (%struct.wl1271*, %struct.ieee80211_sta_ht_cap*, i32, i32, i32)** %16, align 8
  %18 = icmp ne i32 (%struct.wl1271*, %struct.ieee80211_sta_ht_cap*, i32, i32, i32)* %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %5
  %20 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %21 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = bitcast {}** %23 to i32 (%struct.wl1271*, %struct.ieee80211_sta_ht_cap*, i32, i32, i32)**
  %25 = load i32 (%struct.wl1271*, %struct.ieee80211_sta_ht_cap*, i32, i32, i32)*, i32 (%struct.wl1271*, %struct.ieee80211_sta_ht_cap*, i32, i32, i32)** %24, align 8
  %26 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %27 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %11, align 4
  %31 = call i32 %25(%struct.wl1271* %26, %struct.ieee80211_sta_ht_cap* %27, i32 %28, i32 %29, i32 %30)
  store i32 %31, i32* %6, align 4
  br label %33

32:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %33

33:                                               ; preds = %32, %19
  %34 = load i32, i32* %6, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
