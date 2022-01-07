; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_main.c_mt76_sta_rate_tbl_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_main.c_mt76_sta_rate_tbl_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.mt7601u_dev* }
%struct.mt7601u_dev = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { i32, i64 }
%struct.mt76_sta = type { i32 }
%struct.ieee80211_sta_rates = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ieee80211_tx_rate = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_sta*)* @mt76_sta_rate_tbl_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt76_sta_rate_tbl_update(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.ieee80211_sta*, align 8
  %7 = alloca %struct.mt7601u_dev*, align 8
  %8 = alloca %struct.mt76_sta*, align 8
  %9 = alloca %struct.ieee80211_sta_rates*, align 8
  %10 = alloca %struct.ieee80211_tx_rate, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %6, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 0
  %13 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %12, align 8
  store %struct.mt7601u_dev* %13, %struct.mt7601u_dev** %7, align 8
  %14 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %15 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.mt76_sta*
  store %struct.mt76_sta* %17, %struct.mt76_sta** %8, align 8
  %18 = bitcast %struct.ieee80211_tx_rate* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %18, i8 0, i64 8, i1 false)
  %19 = call i32 (...) @rcu_read_lock()
  %20 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %21 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.ieee80211_sta_rates* @rcu_dereference(i32 %22)
  store %struct.ieee80211_sta_rates* %23, %struct.ieee80211_sta_rates** %9, align 8
  %24 = load %struct.ieee80211_sta_rates*, %struct.ieee80211_sta_rates** %9, align 8
  %25 = icmp ne %struct.ieee80211_sta_rates* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %3
  br label %46

27:                                               ; preds = %3
  %28 = load %struct.ieee80211_sta_rates*, %struct.ieee80211_sta_rates** %9, align 8
  %29 = getelementptr inbounds %struct.ieee80211_sta_rates, %struct.ieee80211_sta_rates* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %10, i32 0, i32 1
  store i32 %33, i32* %34, align 4
  %35 = load %struct.ieee80211_sta_rates*, %struct.ieee80211_sta_rates** %9, align 8
  %36 = getelementptr inbounds %struct.ieee80211_sta_rates, %struct.ieee80211_sta_rates* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %10, i32 0, i32 0
  store i32 %40, i32* %41, align 4
  %42 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %7, align 8
  %43 = load %struct.mt76_sta*, %struct.mt76_sta** %8, align 8
  %44 = getelementptr inbounds %struct.mt76_sta, %struct.mt76_sta* %43, i32 0, i32 0
  %45 = call i32 @mt76_mac_wcid_set_rate(%struct.mt7601u_dev* %42, i32* %44, %struct.ieee80211_tx_rate* %10)
  br label %46

46:                                               ; preds = %27, %26
  %47 = call i32 (...) @rcu_read_unlock()
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @rcu_read_lock(...) #2

declare dso_local %struct.ieee80211_sta_rates* @rcu_dereference(i32) #2

declare dso_local i32 @mt76_mac_wcid_set_rate(%struct.mt7601u_dev*, i32*, %struct.ieee80211_tx_rate*) #2

declare dso_local i32 @rcu_read_unlock(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
