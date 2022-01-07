; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_eeprom.c_mt76x2_read_rx_gain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_eeprom.c_mt76x2_read_rx_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32, i64 }

@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@MT_EE_RF_2G_RX_HIGH_GAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt76x2_read_rx_gain(%struct.mt76x02_dev* %0) #0 {
  %2 = alloca %struct.mt76x02_dev*, align 8
  %3 = alloca %struct.ieee80211_channel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [3 x i32], align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %2, align 8
  %9 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %10 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %12, align 8
  store %struct.ieee80211_channel* %13, %struct.ieee80211_channel** %3, align 8
  %14 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %15 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %4, align 4
  %17 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %18 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %24 = load i32, i32* @MT_EE_RF_2G_RX_HIGH_GAIN, align 4
  %25 = call i32 @mt76x02_eeprom_get(%struct.mt76x02_dev* %23, i32 %24)
  %26 = ashr i32 %25, 8
  store i32 %26, i32* %8, align 4
  br label %31

27:                                               ; preds = %1
  %28 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @mt76x2_get_5g_rx_gain(%struct.mt76x02_dev* %28, i32 %29)
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %27, %22
  %32 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @mt76x2_set_rx_gain_group(%struct.mt76x02_dev* %32, i32 %33)
  %35 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %36 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %37 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %40 = call i32 @mt76x02_get_rx_gain(%struct.mt76x02_dev* %35, i64 %38, i32* %8, i32* %6, i32* %39)
  %41 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @mt76x2_set_rssi_offset(%struct.mt76x02_dev* %41, i32 0, i32 %42)
  %44 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %45 = load i32, i32* %8, align 4
  %46 = ashr i32 %45, 8
  %47 = call i32 @mt76x2_set_rssi_offset(%struct.mt76x02_dev* %44, i32 1, i32 %46)
  %48 = load i32, i32* %6, align 4
  %49 = and i32 %48, 255
  %50 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %51 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  store i32 %49, i32* %53, align 8
  %54 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 255
  %57 = shl i32 %56, 8
  %58 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %59 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %57
  store i32 %63, i32* %61, align 8
  %64 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, 255
  %67 = shl i32 %66, 16
  %68 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %69 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %67
  store i32 %73, i32* %71, align 8
  %74 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 2
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, 255
  %77 = shl i32 %76, 24
  %78 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %79 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %77
  store i32 %83, i32* %81, align 8
  %84 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %85 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %86 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %87 = call i32 @mt76x02_get_lna_gain(%struct.mt76x02_dev* %84, i32* %6, i32* %85, %struct.ieee80211_channel* %86)
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @mt76x02_sign_extend(i32 %88, i32 8)
  %90 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %91 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 1
  store i32 %89, i32* %93, align 4
  ret void
}

declare dso_local i32 @mt76x02_eeprom_get(%struct.mt76x02_dev*, i32) #1

declare dso_local i32 @mt76x2_get_5g_rx_gain(%struct.mt76x02_dev*, i32) #1

declare dso_local i32 @mt76x2_set_rx_gain_group(%struct.mt76x02_dev*, i32) #1

declare dso_local i32 @mt76x02_get_rx_gain(%struct.mt76x02_dev*, i64, i32*, i32*, i32*) #1

declare dso_local i32 @mt76x2_set_rssi_offset(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @mt76x02_get_lna_gain(%struct.mt76x02_dev*, i32*, i32*, %struct.ieee80211_channel*) #1

declare dso_local i32 @mt76x02_sign_extend(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
