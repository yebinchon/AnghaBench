; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_phy.c_mt7601u_phy_con_cal_onoff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_phy.c_mt7601u_phy_con_cal_onoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7601u_dev = type { %struct.TYPE_4__, i32, %struct.TYPE_3__*, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i64, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ieee80211_bss_conf = type { i64, i32 }

@MT_FREQ_OFFSET_INVALID = common dso_local global i32 0, align 4
@MT_FREQ_CAL_INIT_DELAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt7601u_phy_con_cal_onoff(%struct.mt7601u_dev* %0, %struct.ieee80211_bss_conf* %1) #0 {
  %3 = alloca %struct.mt7601u_dev*, align 8
  %4 = alloca %struct.ieee80211_bss_conf*, align 8
  store %struct.mt7601u_dev* %0, %struct.mt7601u_dev** %3, align 8
  store %struct.ieee80211_bss_conf* %1, %struct.ieee80211_bss_conf** %4, align 8
  %5 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %4, align 8
  %6 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %11 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = call i32 @cancel_delayed_work_sync(i32* %12)
  br label %14

14:                                               ; preds = %9, %2
  %15 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %16 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %15, i32 0, i32 3
  %17 = call i32 @spin_lock_bh(i32* %16)
  %18 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %19 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %4, align 8
  %22 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @ether_addr_copy(i32 %20, i32 %23)
  %25 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %26 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %25, i32 0, i32 5
  %27 = call i32 @ewma_rssi_init(i32* %26)
  %28 = load i32, i32* @MT_FREQ_OFFSET_INVALID, align 4
  %29 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %30 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %29, i32 0, i32 4
  store i32 %28, i32* %30, align 4
  %31 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %32 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %31, i32 0, i32 3
  %33 = call i32 @spin_unlock_bh(i32* %32)
  %34 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %35 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %34, i32 0, i32 2
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %40 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 3
  store i32 %38, i32* %41, align 8
  %42 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %4, align 8
  %43 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %46 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  store i64 %44, i64* %47, align 8
  %48 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %49 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i32 0, i32* %50, align 8
  %51 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %4, align 8
  %52 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %14
  %56 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %57 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %3, align 8
  %60 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* @MT_FREQ_CAL_INIT_DELAY, align 4
  %63 = call i32 @ieee80211_queue_delayed_work(i32 %58, i32* %61, i32 %62)
  br label %64

64:                                               ; preds = %55, %14
  ret void
}

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @ewma_rssi_init(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ieee80211_queue_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
