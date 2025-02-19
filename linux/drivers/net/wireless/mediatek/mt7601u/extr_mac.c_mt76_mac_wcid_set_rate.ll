; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_mac.c_mt76_mac_wcid_set_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_mac.c_mt76_mac_wcid_set_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7601u_dev = type { i32 }
%struct.mt76_wcid = type { i32, i32, i32 }
%struct.ieee80211_tx_rate = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt76_mac_wcid_set_rate(%struct.mt7601u_dev* %0, %struct.mt76_wcid* %1, %struct.ieee80211_tx_rate* %2) #0 {
  %4 = alloca %struct.mt7601u_dev*, align 8
  %5 = alloca %struct.mt76_wcid*, align 8
  %6 = alloca %struct.ieee80211_tx_rate*, align 8
  %7 = alloca i64, align 8
  store %struct.mt7601u_dev* %0, %struct.mt7601u_dev** %4, align 8
  store %struct.mt76_wcid* %1, %struct.mt76_wcid** %5, align 8
  store %struct.ieee80211_tx_rate* %2, %struct.ieee80211_tx_rate** %6, align 8
  %8 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %9 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %8, i32 0, i32 0
  %10 = load i64, i64* %7, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %13 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %6, align 8
  %14 = load %struct.mt76_wcid*, %struct.mt76_wcid** %5, align 8
  %15 = getelementptr inbounds %struct.mt76_wcid, %struct.mt76_wcid* %14, i32 0, i32 1
  %16 = call i32 @mt76_mac_tx_rate_val(%struct.mt7601u_dev* %12, %struct.ieee80211_tx_rate* %13, i32* %15)
  %17 = load %struct.mt76_wcid*, %struct.mt76_wcid** %5, align 8
  %18 = getelementptr inbounds %struct.mt76_wcid, %struct.mt76_wcid* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load %struct.mt76_wcid*, %struct.mt76_wcid** %5, align 8
  %20 = getelementptr inbounds %struct.mt76_wcid, %struct.mt76_wcid* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  %21 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %22 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %21, i32 0, i32 0
  %23 = load i64, i64* %7, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* %22, i64 %23)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mt76_mac_tx_rate_val(%struct.mt7601u_dev*, %struct.ieee80211_tx_rate*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
