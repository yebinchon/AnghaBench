; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_usb.c_mt76x0u_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_usb.c_mt76x0u_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.mt76x02_dev* }
%struct.mt76x02_dev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@MT76_STATE_RUNNING = common dso_local global i32 0, align 4
@MT76_REMOVED = common dso_local global i32 0, align 4
@MT_USB_DMA_CFG = common dso_local global i32 0, align 4
@MT_USB_DMA_CFG_TX_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"TX DMA did not stop\0A\00", align 1
@MT_USB_DMA_CFG_RX_BUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"RX DMA did not stop\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @mt76x0u_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt76x0u_stop(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.mt76x02_dev*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %4 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %5 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %4, i32 0, i32 0
  %6 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %5, align 8
  store %struct.mt76x02_dev* %6, %struct.mt76x02_dev** %3, align 8
  %7 = load i32, i32* @MT76_STATE_RUNNING, align 4
  %8 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %9 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = call i32 @clear_bit(i32 %7, i32* %10)
  %12 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %13 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %12, i32 0, i32 1
  %14 = call i32 @cancel_delayed_work_sync(i32* %13)
  %15 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %16 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %18 = call i32 @cancel_delayed_work_sync(i32* %17)
  %19 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %20 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %19, i32 0, i32 0
  %21 = call i32 @mt76u_stop_tx(%struct.TYPE_2__* %20)
  %22 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %23 = call i32 @mt76x02u_exit_beacon_config(%struct.mt76x02_dev* %22)
  %24 = load i32, i32* @MT76_REMOVED, align 4
  %25 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %26 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = call i64 @test_bit(i32 %24, i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %1
  br label %57

31:                                               ; preds = %1
  %32 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %33 = load i32, i32* @MT_USB_DMA_CFG, align 4
  %34 = load i32, i32* @MT_USB_DMA_CFG_TX_BUSY, align 4
  %35 = call i32 @mt76_poll(%struct.mt76x02_dev* %32, i32 %33, i32 %34, i32 0, i32 1000)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %39 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @dev_warn(i32 %41, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %37, %31
  %44 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %45 = call i32 @mt76x0_mac_stop(%struct.mt76x02_dev* %44)
  %46 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %47 = load i32, i32* @MT_USB_DMA_CFG, align 4
  %48 = load i32, i32* @MT_USB_DMA_CFG_RX_BUSY, align 4
  %49 = call i32 @mt76_poll(%struct.mt76x02_dev* %46, i32 %47, i32 %48, i32 0, i32 1000)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %43
  %52 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %53 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @dev_warn(i32 %55, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %57

57:                                               ; preds = %30, %51, %43
  ret void
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @mt76u_stop_tx(%struct.TYPE_2__*) #1

declare dso_local i32 @mt76x02u_exit_beacon_config(%struct.mt76x02_dev*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @mt76_poll(%struct.mt76x02_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @mt76x0_mac_stop(%struct.mt76x02_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
