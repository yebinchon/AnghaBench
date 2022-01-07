; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_main.c_mt7601u_sw_scan_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_main.c_mt7601u_sw_scan_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.mt7601u_dev* }
%struct.mt7601u_dev = type { %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i64 }
%struct.ieee80211_vif = type { i32 }

@MT7601U_STATE_SCANNING = common dso_local global i32 0, align 4
@MT_CALIBRATE_INTERVAL = common dso_local global i32 0, align 4
@MT_FREQ_CAL_INIT_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*)* @mt7601u_sw_scan_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7601u_sw_scan_complete(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.mt7601u_dev*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %7 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %6, i32 0, i32 0
  %8 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %7, align 8
  store %struct.mt7601u_dev* %8, %struct.mt7601u_dev** %5, align 8
  %9 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %5, align 8
  %10 = call i32 @mt7601u_agc_restore(%struct.mt7601u_dev* %9)
  %11 = load i32, i32* @MT7601U_STATE_SCANNING, align 4
  %12 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %5, align 8
  %13 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %12, i32 0, i32 3
  %14 = call i32 @clear_bit(i32 %11, i32* %13)
  %15 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %5, align 8
  %16 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %5, align 8
  %19 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %18, i32 0, i32 2
  %20 = load i32, i32* @MT_CALIBRATE_INTERVAL, align 4
  %21 = call i32 @ieee80211_queue_delayed_work(i32 %17, i32* %19, i32 %20)
  %22 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %5, align 8
  %23 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %2
  %28 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %5, align 8
  %29 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %5, align 8
  %32 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* @MT_FREQ_CAL_INIT_DELAY, align 4
  %35 = call i32 @ieee80211_queue_delayed_work(i32 %30, i32* %33, i32 %34)
  br label %36

36:                                               ; preds = %27, %2
  ret void
}

declare dso_local i32 @mt7601u_agc_restore(%struct.mt7601u_dev*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @ieee80211_queue_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
