; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_save_freed_pkts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wlcore_save_freed_pkts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.wl12xx_vif = type { i64 }
%struct.ieee80211_sta = type { i64 }
%struct.wl1271_station = type { i32 }

@WL1271_TX_SQN_POST_RECOVERY_PADDING = common dso_local global i64 0, align 8
@KEY_GEM = common dso_local global i64 0, align 8
@WL1271_TX_SQN_POST_RECOVERY_PADDING_GEM = common dso_local global i64 0, align 8
@WL1271_FLAG_RECOVERY_IN_PROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wl1271*, %struct.wl12xx_vif*, i64, %struct.ieee80211_sta*)* @wlcore_save_freed_pkts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlcore_save_freed_pkts(%struct.wl1271* %0, %struct.wl12xx_vif* %1, i64 %2, %struct.ieee80211_sta* %3) #0 {
  %5 = alloca %struct.wl1271*, align 8
  %6 = alloca %struct.wl12xx_vif*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ieee80211_sta*, align 8
  %9 = alloca %struct.wl1271_station*, align 8
  %10 = alloca i64, align 8
  store %struct.wl1271* %0, %struct.wl1271** %5, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %8, align 8
  %11 = load i64, i64* @WL1271_TX_SQN_POST_RECOVERY_PADDING, align 8
  store i64 %11, i64* %10, align 8
  %12 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %13 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = bitcast i8* %15 to %struct.wl1271_station*
  store %struct.wl1271_station* %16, %struct.wl1271_station** %9, align 8
  %17 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %18 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i64, i64* %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.wl1271_station*, %struct.wl1271_station** %9, align 8
  %25 = getelementptr inbounds %struct.wl1271_station, %struct.wl1271_station* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %27 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @KEY_GEM, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = load i64, i64* @WL1271_TX_SQN_POST_RECOVERY_PADDING_GEM, align 8
  store i64 %32, i64* %10, align 8
  br label %33

33:                                               ; preds = %31, %4
  %34 = load i32, i32* @WL1271_FLAG_RECOVERY_IN_PROGRESS, align 4
  %35 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %36 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %35, i32 0, i32 0
  %37 = call i64 @test_bit(i32 %34, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %33
  %40 = load i64, i64* %10, align 8
  %41 = load %struct.wl1271_station*, %struct.wl1271_station** %9, align 8
  %42 = getelementptr inbounds %struct.wl1271_station, %struct.wl1271_station* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %40
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %42, align 4
  br label %47

47:                                               ; preds = %39, %33
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
