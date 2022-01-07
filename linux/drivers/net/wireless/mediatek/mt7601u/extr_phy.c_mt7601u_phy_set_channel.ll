; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_phy.c_mt7601u_phy_set_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_phy.c_mt7601u_phy_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7601u_dev = type { %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i64 }
%struct.cfg80211_chan_def = type { i32 }

@MT7601U_STATE_SCANNING = common dso_local global i32 0, align 4
@MT_CALIBRATE_INTERVAL = common dso_local global i32 0, align 4
@MT_FREQ_CAL_INIT_DELAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt7601u_phy_set_channel(%struct.mt7601u_dev* %0, %struct.cfg80211_chan_def* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mt7601u_dev*, align 8
  %5 = alloca %struct.cfg80211_chan_def*, align 8
  %6 = alloca i32, align 4
  store %struct.mt7601u_dev* %0, %struct.mt7601u_dev** %4, align 8
  store %struct.cfg80211_chan_def* %1, %struct.cfg80211_chan_def** %5, align 8
  %7 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %8 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %7, i32 0, i32 2
  %9 = call i32 @cancel_delayed_work_sync(i32* %8)
  %10 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %11 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @cancel_delayed_work_sync(i32* %12)
  %14 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %15 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %14, i32 0, i32 4
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %18 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %5, align 8
  %19 = call i32 @__mt7601u_phy_set_channel(%struct.mt7601u_dev* %17, %struct.cfg80211_chan_def* %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %21 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %20, i32 0, i32 4
  %22 = call i32 @mutex_unlock(i32* %21)
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %57

27:                                               ; preds = %2
  %28 = load i32, i32* @MT7601U_STATE_SCANNING, align 4
  %29 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %30 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %29, i32 0, i32 3
  %31 = call i64 @test_bit(i32 %28, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %57

34:                                               ; preds = %27
  %35 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %36 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %39 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %38, i32 0, i32 2
  %40 = load i32, i32* @MT_CALIBRATE_INTERVAL, align 4
  %41 = call i32 @ieee80211_queue_delayed_work(i32 %37, i32* %39, i32 %40)
  %42 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %43 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %34
  %48 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %49 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %4, align 8
  %52 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* @MT_FREQ_CAL_INIT_DELAY, align 4
  %55 = call i32 @ieee80211_queue_delayed_work(i32 %50, i32* %53, i32 %54)
  br label %56

56:                                               ; preds = %47, %34
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %33, %25
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__mt7601u_phy_set_channel(%struct.mt7601u_dev*, %struct.cfg80211_chan_def*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @ieee80211_queue_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
