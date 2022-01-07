; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_main.c_mt7601u_sta_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_main.c_mt7601u_sta_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.mt7601u_dev* }
%struct.mt7601u_dev = type { i32, i32* }
%struct.ieee80211_vif = type { i64 }
%struct.ieee80211_sta = type { i32, i64 }
%struct.mt76_sta = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.mt76_vif = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_sta*)* @mt7601u_sta_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7601u_sta_add(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.ieee80211_sta*, align 8
  %7 = alloca %struct.mt7601u_dev*, align 8
  %8 = alloca %struct.mt76_sta*, align 8
  %9 = alloca %struct.mt76_vif*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %6, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %13 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %12, i32 0, i32 0
  %14 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %13, align 8
  store %struct.mt7601u_dev* %14, %struct.mt7601u_dev** %7, align 8
  %15 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %16 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.mt76_sta*
  store %struct.mt76_sta* %18, %struct.mt76_sta** %8, align 8
  %19 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %20 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.mt76_vif*
  store %struct.mt76_vif* %22, %struct.mt76_vif** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %23 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %7, align 8
  %24 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %23, i32 0, i32 0
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %7, align 8
  %27 = call i32 @mt76_wcid_alloc(%struct.mt7601u_dev* %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %3
  %31 = load i32, i32* @ENOSPC, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %10, align 4
  br label %68

33:                                               ; preds = %3
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.mt76_sta*, %struct.mt76_sta** %8, align 8
  %36 = getelementptr inbounds %struct.mt76_sta, %struct.mt76_sta* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 4
  %38 = load %struct.mt76_sta*, %struct.mt76_sta** %8, align 8
  %39 = getelementptr inbounds %struct.mt76_sta, %struct.mt76_sta* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store i32 -1, i32* %40, align 4
  %41 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %7, align 8
  %42 = load i32, i32* %11, align 4
  %43 = load %struct.mt76_vif*, %struct.mt76_vif** %9, align 8
  %44 = getelementptr inbounds %struct.mt76_vif, %struct.mt76_vif* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %47 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @mt7601u_mac_wcid_setup(%struct.mt7601u_dev* %41, i32 %42, i32 %45, i32 %48)
  %50 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %7, align 8
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @MT_WCID_DROP(i32 %51)
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @MT_WCID_DROP_MASK(i32 %53)
  %55 = call i32 @mt76_clear(%struct.mt7601u_dev* %50, i32 %52, i32 %54)
  %56 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %7, align 8
  %57 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.mt76_sta*, %struct.mt76_sta** %8, align 8
  %64 = getelementptr inbounds %struct.mt76_sta, %struct.mt76_sta* %63, i32 0, i32 0
  %65 = call i32 @rcu_assign_pointer(i32 %62, %struct.TYPE_2__* %64)
  %66 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %7, align 8
  %67 = call i32 @mt7601u_mac_set_ampdu_factor(%struct.mt7601u_dev* %66)
  br label %68

68:                                               ; preds = %33, %30
  %69 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %7, align 8
  %70 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %69, i32 0, i32 0
  %71 = call i32 @mutex_unlock(i32* %70)
  %72 = load i32, i32* %10, align 4
  ret i32 %72
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mt76_wcid_alloc(%struct.mt7601u_dev*) #1

declare dso_local i32 @mt7601u_mac_wcid_setup(%struct.mt7601u_dev*, i32, i32, i32) #1

declare dso_local i32 @mt76_clear(%struct.mt7601u_dev*, i32, i32) #1

declare dso_local i32 @MT_WCID_DROP(i32) #1

declare dso_local i32 @MT_WCID_DROP_MASK(i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.TYPE_2__*) #1

declare dso_local i32 @mt7601u_mac_set_ampdu_factor(%struct.mt7601u_dev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
