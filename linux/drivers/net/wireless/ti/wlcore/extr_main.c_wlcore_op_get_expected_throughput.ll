; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_op_get_expected_throughput.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_op_get_expected_throughput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.wl1271* }
%struct.wl1271 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_sta = type { i64 }
%struct.wl1271_station = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_sta*)* @wlcore_op_get_expected_throughput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlcore_op_get_expected_throughput(%struct.ieee80211_hw* %0, %struct.ieee80211_sta* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_sta*, align 8
  %5 = alloca %struct.wl1271_station*, align 8
  %6 = alloca %struct.wl1271*, align 8
  %7 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %4, align 8
  %8 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %4, align 8
  %9 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.wl1271_station*
  store %struct.wl1271_station* %11, %struct.wl1271_station** %5, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %13 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %12, i32 0, i32 0
  %14 = load %struct.wl1271*, %struct.wl1271** %13, align 8
  store %struct.wl1271* %14, %struct.wl1271** %6, align 8
  %15 = load %struct.wl1271_station*, %struct.wl1271_station** %5, align 8
  %16 = getelementptr inbounds %struct.wl1271_station, %struct.wl1271_station* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %7, align 8
  %18 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %19 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i64, i64* %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %24, 1000
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
