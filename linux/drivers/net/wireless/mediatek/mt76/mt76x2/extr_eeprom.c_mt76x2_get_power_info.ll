; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_eeprom.c_mt76x2_get_power_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_eeprom.c_mt76x2_get_power_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { i32 }
%struct.mt76x2_tx_power_info = type { i8*, i8*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_channel = type { i64 }

@MT_EE_TX_POWER_DELTA_BW40 = common dso_local global i32 0, align 4
@MT_EE_TX_POWER_DELTA_BW80 = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@MT_EE_TX_POWER_0_START_5G = common dso_local global i32 0, align 4
@MT_EE_TX_POWER_1_START_5G = common dso_local global i32 0, align 4
@MT_EE_TX_POWER_0_START_2G = common dso_local global i32 0, align 4
@MT_EE_TX_POWER_1_START_2G = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt76x2_get_power_info(%struct.mt76x02_dev* %0, %struct.mt76x2_tx_power_info* %1, %struct.ieee80211_channel* %2) #0 {
  %4 = alloca %struct.mt76x02_dev*, align 8
  %5 = alloca %struct.mt76x2_tx_power_info*, align 8
  %6 = alloca %struct.ieee80211_channel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %4, align 8
  store %struct.mt76x2_tx_power_info* %1, %struct.mt76x2_tx_power_info** %5, align 8
  store %struct.ieee80211_channel* %2, %struct.ieee80211_channel** %6, align 8
  %9 = load %struct.mt76x2_tx_power_info*, %struct.mt76x2_tx_power_info** %5, align 8
  %10 = call i32 @memset(%struct.mt76x2_tx_power_info* %9, i32 0, i32 32)
  %11 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %12 = load i32, i32* @MT_EE_TX_POWER_DELTA_BW40, align 4
  %13 = call i32 @mt76x02_eeprom_get(%struct.mt76x02_dev* %11, i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %15 = load i32, i32* @MT_EE_TX_POWER_DELTA_BW80, align 4
  %16 = call i32 @mt76x02_eeprom_get(%struct.mt76x02_dev* %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %18 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %35

22:                                               ; preds = %3
  %23 = load i32, i32* %7, align 4
  %24 = ashr i32 %23, 8
  store i32 %24, i32* %7, align 4
  %25 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %26 = load %struct.mt76x2_tx_power_info*, %struct.mt76x2_tx_power_info** %5, align 8
  %27 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %28 = load i32, i32* @MT_EE_TX_POWER_0_START_5G, align 4
  %29 = call i32 @mt76x2_get_power_info_5g(%struct.mt76x02_dev* %25, %struct.mt76x2_tx_power_info* %26, %struct.ieee80211_channel* %27, i32 0, i32 %28)
  %30 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %31 = load %struct.mt76x2_tx_power_info*, %struct.mt76x2_tx_power_info** %5, align 8
  %32 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %33 = load i32, i32* @MT_EE_TX_POWER_1_START_5G, align 4
  %34 = call i32 @mt76x2_get_power_info_5g(%struct.mt76x02_dev* %30, %struct.mt76x2_tx_power_info* %31, %struct.ieee80211_channel* %32, i32 1, i32 %33)
  br label %46

35:                                               ; preds = %3
  %36 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %37 = load %struct.mt76x2_tx_power_info*, %struct.mt76x2_tx_power_info** %5, align 8
  %38 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %39 = load i32, i32* @MT_EE_TX_POWER_0_START_2G, align 4
  %40 = call i32 @mt76x2_get_power_info_2g(%struct.mt76x02_dev* %36, %struct.mt76x2_tx_power_info* %37, %struct.ieee80211_channel* %38, i32 0, i32 %39)
  %41 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %42 = load %struct.mt76x2_tx_power_info*, %struct.mt76x2_tx_power_info** %5, align 8
  %43 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %6, align 8
  %44 = load i32, i32* @MT_EE_TX_POWER_1_START_2G, align 4
  %45 = call i32 @mt76x2_get_power_info_2g(%struct.mt76x02_dev* %41, %struct.mt76x2_tx_power_info* %42, %struct.ieee80211_channel* %43, i32 1, i32 %44)
  br label %46

46:                                               ; preds = %35, %22
  %47 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %4, align 8
  %48 = call i64 @mt76x2_tssi_enabled(%struct.mt76x02_dev* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %46
  %51 = load %struct.mt76x2_tx_power_info*, %struct.mt76x2_tx_power_info** %5, align 8
  %52 = getelementptr inbounds %struct.mt76x2_tx_power_info, %struct.mt76x2_tx_power_info* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @mt76x02_field_valid(i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %65, label %56

56:                                               ; preds = %50, %46
  %57 = load %struct.mt76x2_tx_power_info*, %struct.mt76x2_tx_power_info** %5, align 8
  %58 = getelementptr inbounds %struct.mt76x2_tx_power_info, %struct.mt76x2_tx_power_info* %57, i32 0, i32 2
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.mt76x2_tx_power_info*, %struct.mt76x2_tx_power_info** %5, align 8
  %64 = getelementptr inbounds %struct.mt76x2_tx_power_info, %struct.mt76x2_tx_power_info* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 8
  br label %65

65:                                               ; preds = %56, %50
  %66 = load i32, i32* %7, align 4
  %67 = call i8* @mt76x02_rate_power_val(i32 %66)
  %68 = load %struct.mt76x2_tx_power_info*, %struct.mt76x2_tx_power_info** %5, align 8
  %69 = getelementptr inbounds %struct.mt76x2_tx_power_info, %struct.mt76x2_tx_power_info* %68, i32 0, i32 1
  store i8* %67, i8** %69, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i8* @mt76x02_rate_power_val(i32 %70)
  %72 = load %struct.mt76x2_tx_power_info*, %struct.mt76x2_tx_power_info** %5, align 8
  %73 = getelementptr inbounds %struct.mt76x2_tx_power_info, %struct.mt76x2_tx_power_info* %72, i32 0, i32 0
  store i8* %71, i8** %73, align 8
  ret void
}

declare dso_local i32 @memset(%struct.mt76x2_tx_power_info*, i32, i32) #1

declare dso_local i32 @mt76x02_eeprom_get(%struct.mt76x02_dev*, i32) #1

declare dso_local i32 @mt76x2_get_power_info_5g(%struct.mt76x02_dev*, %struct.mt76x2_tx_power_info*, %struct.ieee80211_channel*, i32, i32) #1

declare dso_local i32 @mt76x2_get_power_info_2g(%struct.mt76x02_dev*, %struct.mt76x2_tx_power_info*, %struct.ieee80211_channel*, i32, i32) #1

declare dso_local i64 @mt76x2_tssi_enabled(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76x02_field_valid(i32) #1

declare dso_local i8* @mt76x02_rate_power_val(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
