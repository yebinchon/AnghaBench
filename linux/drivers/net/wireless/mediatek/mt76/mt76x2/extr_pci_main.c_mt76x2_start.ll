; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_pci_main.c_mt76x2_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_pci_main.c_mt76x2_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.mt76x02_dev* }
%struct.mt76x02_dev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@MT_MAC_WORK_INTERVAL = common dso_local global i32 0, align 4
@MT_WATCHDOG_TIME = common dso_local global i32 0, align 4
@MT76_STATE_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @mt76x2_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt76x2_start(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.mt76x02_dev*, align 8
  %5 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %7 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %6, i32 0, i32 0
  %8 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %7, align 8
  store %struct.mt76x02_dev* %8, %struct.mt76x02_dev** %4, align 8
  %9 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %10 = call i32 @mt76x2_mac_start(%struct.mt76x02_dev* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %41

15:                                               ; preds = %1
  %16 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %17 = call i32 @mt76x2_phy_start(%struct.mt76x02_dev* %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %41

22:                                               ; preds = %15
  %23 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %24 = call i32 @mt76_hw(%struct.mt76x02_dev* %23)
  %25 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %26 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32, i32* @MT_MAC_WORK_INTERVAL, align 4
  %29 = call i32 @ieee80211_queue_delayed_work(i32 %24, i32* %27, i32 %28)
  %30 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %31 = call i32 @mt76_hw(%struct.mt76x02_dev* %30)
  %32 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %33 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %32, i32 0, i32 1
  %34 = load i32, i32* @MT_WATCHDOG_TIME, align 4
  %35 = call i32 @ieee80211_queue_delayed_work(i32 %31, i32* %33, i32 %34)
  %36 = load i32, i32* @MT76_STATE_RUNNING, align 4
  %37 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %38 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = call i32 @set_bit(i32 %36, i32* %39)
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %22, %20, %13
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @mt76x2_mac_start(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76x2_phy_start(%struct.mt76x02_dev*) #1

declare dso_local i32 @ieee80211_queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @mt76_hw(%struct.mt76x02_dev*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
