; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_main.c_mt76x0_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_main.c_mt76x0_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.TYPE_3__, %struct.mt76x02_dev* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.mt76x02_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@IEEE80211_CONF_CHANGE_CHANNEL = common dso_local global i32 0, align 4
@IEEE80211_CONF_CHANGE_POWER = common dso_local global i32 0, align 4
@MT76_STATE_RUNNING = common dso_local global i32 0, align 4
@IEEE80211_CONF_CHANGE_MONITOR = common dso_local global i32 0, align 4
@IEEE80211_CONF_MONITOR = common dso_local global i32 0, align 4
@MT_RX_FILTR_CFG_PROMISC = common dso_local global i32 0, align 4
@MT_RX_FILTR_CFG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt76x0_config(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mt76x02_dev*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %7 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %6, i32 0, i32 1
  %8 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %7, align 8
  store %struct.mt76x02_dev* %8, %struct.mt76x02_dev** %5, align 8
  %9 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %5, align 8
  %10 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @IEEE80211_CONF_CHANGE_CHANNEL, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %2
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %19 = call i32 @ieee80211_stop_queues(%struct.ieee80211_hw* %18)
  %20 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %5, align 8
  %21 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %22 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 2
  %24 = call i32 @mt76x0_set_channel(%struct.mt76x02_dev* %20, i32* %23)
  %25 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %26 = call i32 @ieee80211_wake_queues(%struct.ieee80211_hw* %25)
  br label %27

27:                                               ; preds = %17, %2
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @IEEE80211_CONF_CHANGE_POWER, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %51

32:                                               ; preds = %27
  %33 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %34 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = mul nsw i32 %36, 2
  %38 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %5, align 8
  %39 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* @MT76_STATE_RUNNING, align 4
  %42 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %5, align 8
  %43 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 3
  %45 = call i64 @test_bit(i32 %41, i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %32
  %48 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %5, align 8
  %49 = call i32 @mt76x0_phy_set_txpower(%struct.mt76x02_dev* %48)
  br label %50

50:                                               ; preds = %47, %32
  br label %51

51:                                               ; preds = %50, %27
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @IEEE80211_CONF_CHANGE_MONITOR, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %87

56:                                               ; preds = %51
  %57 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %58 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @IEEE80211_CONF_MONITOR, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %56
  %65 = load i32, i32* @MT_RX_FILTR_CFG_PROMISC, align 4
  %66 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %5, align 8
  %67 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %65
  store i32 %70, i32* %68, align 4
  br label %79

71:                                               ; preds = %56
  %72 = load i32, i32* @MT_RX_FILTR_CFG_PROMISC, align 4
  %73 = xor i32 %72, -1
  %74 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %5, align 8
  %75 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, %73
  store i32 %78, i32* %76, align 4
  br label %79

79:                                               ; preds = %71, %64
  %80 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %5, align 8
  %81 = load i32, i32* @MT_RX_FILTR_CFG, align 4
  %82 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %5, align 8
  %83 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @mt76_wr(%struct.mt76x02_dev* %80, i32 %81, i32 %85)
  br label %87

87:                                               ; preds = %79, %51
  %88 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %5, align 8
  %89 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = call i32 @mutex_unlock(i32* %90)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ieee80211_stop_queues(%struct.ieee80211_hw*) #1

declare dso_local i32 @mt76x0_set_channel(%struct.mt76x02_dev*, i32*) #1

declare dso_local i32 @ieee80211_wake_queues(%struct.ieee80211_hw*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @mt76x0_phy_set_txpower(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76_wr(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
