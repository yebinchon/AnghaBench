; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_usb_main.c_mt76x2u_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_usb_main.c_mt76x2u_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.TYPE_4__, %struct.mt76x02_dev* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.mt76x02_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@IEEE80211_CONF_CHANGE_MONITOR = common dso_local global i32 0, align 4
@IEEE80211_CONF_MONITOR = common dso_local global i32 0, align 4
@MT_RX_FILTR_CFG_PROMISC = common dso_local global i32 0, align 4
@MT_RX_FILTR_CFG = common dso_local global i32 0, align 4
@IEEE80211_CONF_CHANGE_POWER = common dso_local global i32 0, align 4
@MT76_STATE_RUNNING = common dso_local global i32 0, align 4
@IEEE80211_CONF_CHANGE_CHANNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32)* @mt76x2u_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt76x2u_config(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mt76x02_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %7, i32 0, i32 1
  %9 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %8, align 8
  store %struct.mt76x02_dev* %9, %struct.mt76x02_dev** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %5, align 8
  %11 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = call i32 @mutex_lock(i32* %12)
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @IEEE80211_CONF_CHANGE_MONITOR, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %49

18:                                               ; preds = %2
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %20 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @IEEE80211_CONF_MONITOR, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %18
  %27 = load i32, i32* @MT_RX_FILTR_CFG_PROMISC, align 4
  %28 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %5, align 8
  %29 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %27
  store i32 %32, i32* %30, align 4
  br label %41

33:                                               ; preds = %18
  %34 = load i32, i32* @MT_RX_FILTR_CFG_PROMISC, align 4
  %35 = xor i32 %34, -1
  %36 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %5, align 8
  %37 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, %35
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %33, %26
  %42 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %5, align 8
  %43 = load i32, i32* @MT_RX_FILTR_CFG, align 4
  %44 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %5, align 8
  %45 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @mt76_wr(%struct.mt76x02_dev* %42, i32 %43, i32 %47)
  br label %49

49:                                               ; preds = %41, %2
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @IEEE80211_CONF_CHANGE_POWER, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %78

54:                                               ; preds = %49
  %55 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %56 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = mul nsw i32 %58, 2
  %60 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %5, align 8
  %61 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 4
  %63 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %5, align 8
  %64 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 %66, 6
  store i32 %67, i32* %65, align 4
  %68 = load i32, i32* @MT76_STATE_RUNNING, align 4
  %69 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %5, align 8
  %70 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  %72 = call i64 @test_bit(i32 %68, i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %54
  %75 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %5, align 8
  %76 = call i32 @mt76x2_phy_set_txpower(%struct.mt76x02_dev* %75)
  br label %77

77:                                               ; preds = %74, %54
  br label %78

78:                                               ; preds = %77, %49
  %79 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %5, align 8
  %80 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = call i32 @mutex_unlock(i32* %81)
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @IEEE80211_CONF_CHANGE_CHANNEL, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %78
  %88 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %89 = call i32 @ieee80211_stop_queues(%struct.ieee80211_hw* %88)
  %90 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %5, align 8
  %91 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %92 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 2
  %94 = call i32 @mt76x2u_set_channel(%struct.mt76x02_dev* %90, i32* %93)
  store i32 %94, i32* %6, align 4
  %95 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %96 = call i32 @ieee80211_wake_queues(%struct.ieee80211_hw* %95)
  br label %97

97:                                               ; preds = %87, %78
  %98 = load i32, i32* %6, align 4
  ret i32 %98
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mt76_wr(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @mt76x2_phy_set_txpower(%struct.mt76x02_dev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ieee80211_stop_queues(%struct.ieee80211_hw*) #1

declare dso_local i32 @mt76x2u_set_channel(%struct.mt76x02_dev*, i32*) #1

declare dso_local i32 @ieee80211_wake_queues(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
