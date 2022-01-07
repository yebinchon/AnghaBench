; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_usb_init.c_mt76x2u_register_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_usb_init.c_mt76x2u_register_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__, i32, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.ieee80211_hw = type { i32 }

@mt76x2u_phy_calibrate = common dso_local global i32 0, align 4
@mt76x02_rates = common dso_local global i32 0, align 4
@MT_TX_SG_MAX_SIZE = common dso_local global i32 0, align 4
@MT76_STATE_INITIALIZED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt76x2u_register_device(%struct.mt76x02_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt76x02_dev*, align 8
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %3, align 8
  %6 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %7 = call %struct.ieee80211_hw* @mt76_hw(%struct.mt76x02_dev* %6)
  store %struct.ieee80211_hw* %7, %struct.ieee80211_hw** %4, align 8
  %8 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %9 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %8, i32 0, i32 1
  %10 = load i32, i32* @mt76x2u_phy_calibrate, align 4
  %11 = call i32 @INIT_DELAYED_WORK(i32* %9, i32 %10)
  %12 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %13 = call i32 @mt76x02_init_device(%struct.mt76x02_dev* %12)
  %14 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %15 = call i32 @mt76x2u_init_eeprom(%struct.mt76x02_dev* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %81

20:                                               ; preds = %1
  %21 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %22 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %21, i32 0, i32 0
  %23 = call i32 @mt76u_alloc_queues(%struct.TYPE_9__* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %77

27:                                               ; preds = %20
  %28 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %29 = call i32 @mt76x2u_init_hardware(%struct.mt76x02_dev* %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %77

33:                                               ; preds = %27
  %34 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %35 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %34, i32 0, i32 0
  %36 = load i32, i32* @mt76x02_rates, align 4
  %37 = load i32, i32* @mt76x02_rates, align 4
  %38 = call i32 @ARRAY_SIZE(i32 %37)
  %39 = call i32 @mt76_register_device(%struct.TYPE_9__* %35, i32 1, i32 %36, i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %77

43:                                               ; preds = %33
  %44 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %45 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = load i32, i32* @MT_TX_SG_MAX_SIZE, align 4
  %52 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %53 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  br label %57

54:                                               ; preds = %43
  %55 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %56 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %55, i32 0, i32 0
  store i32 1, i32* %56, align 4
  br label %57

57:                                               ; preds = %54, %50
  %58 = load i32, i32* @MT76_STATE_INITIALIZED, align 4
  %59 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %60 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 2
  %62 = call i32 @set_bit(i32 %58, i32* %61)
  %63 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %64 = call i32 @mt76x02_init_debugfs(%struct.mt76x02_dev* %63)
  %65 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %66 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %67 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = call i32 @mt76x2_init_txpower(%struct.mt76x02_dev* %65, i32* %69)
  %71 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %72 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %73 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = call i32 @mt76x2_init_txpower(%struct.mt76x02_dev* %71, i32* %75)
  store i32 0, i32* %2, align 4
  br label %81

77:                                               ; preds = %42, %32, %26
  %78 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %79 = call i32 @mt76x2u_cleanup(%struct.mt76x02_dev* %78)
  %80 = load i32, i32* %5, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %77, %57, %18
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local %struct.ieee80211_hw* @mt76_hw(%struct.mt76x02_dev*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @mt76x02_init_device(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76x2u_init_eeprom(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76u_alloc_queues(%struct.TYPE_9__*) #1

declare dso_local i32 @mt76x2u_init_hardware(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76_register_device(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @mt76x02_init_debugfs(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76x2_init_txpower(%struct.mt76x02_dev*, i32*) #1

declare dso_local i32 @mt76x2u_cleanup(%struct.mt76x02_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
