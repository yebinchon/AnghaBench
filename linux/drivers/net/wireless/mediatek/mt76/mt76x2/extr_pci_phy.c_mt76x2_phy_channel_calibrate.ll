; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_pci_phy.c_mt76x2_phy_channel_calibrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_pci_phy.c_mt76x2_phy_channel_calibrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { %struct.TYPE_4__, %struct.TYPE_6__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i64 }

@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@MCU_CAL_LC = common dso_local global i32 0, align 4
@MCU_CAL_TX_LOFT = common dso_local global i32 0, align 4
@MCU_CAL_TXIQ = common dso_local global i32 0, align 4
@MCU_CAL_RXIQC_FI = common dso_local global i32 0, align 4
@MCU_CAL_TEMP_SENSOR = common dso_local global i32 0, align 4
@MCU_CAL_TX_SHAPING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt76x02_dev*, i32)* @mt76x2_phy_channel_calibrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt76x2_phy_channel_calibrate(%struct.mt76x02_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.mt76x02_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_channel*, align 8
  %6 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %8 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %10, align 8
  store %struct.ieee80211_channel* %11, %struct.ieee80211_channel** %5, align 8
  %12 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %6, align 4
  %18 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %19 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %83

24:                                               ; preds = %2
  %25 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %26 = call i64 @mt76x2_channel_silent(%struct.mt76x02_dev* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %83

29:                                               ; preds = %24
  %30 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %31 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %37 = call i32 @mt76x2_phy_tssi_init_cal(%struct.mt76x02_dev* %36)
  br label %38

38:                                               ; preds = %35, %29
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %43 = call i32 @mt76x2_mac_stop(%struct.mt76x02_dev* %42, i32 0)
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %49 = load i32, i32* @MCU_CAL_LC, align 4
  %50 = call i32 @mt76x02_mcu_calibrate(%struct.mt76x02_dev* %48, i32 %49, i32 0)
  br label %51

51:                                               ; preds = %47, %44
  %52 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %53 = load i32, i32* @MCU_CAL_TX_LOFT, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @mt76x02_mcu_calibrate(%struct.mt76x02_dev* %52, i32 %53, i32 %54)
  %56 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %57 = load i32, i32* @MCU_CAL_TXIQ, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @mt76x02_mcu_calibrate(%struct.mt76x02_dev* %56, i32 %57, i32 %58)
  %60 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %61 = load i32, i32* @MCU_CAL_RXIQC_FI, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @mt76x02_mcu_calibrate(%struct.mt76x02_dev* %60, i32 %61, i32 %62)
  %64 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %65 = load i32, i32* @MCU_CAL_TEMP_SENSOR, align 4
  %66 = call i32 @mt76x02_mcu_calibrate(%struct.mt76x02_dev* %64, i32 %65, i32 0)
  %67 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %68 = load i32, i32* @MCU_CAL_TX_SHAPING, align 4
  %69 = call i32 @mt76x02_mcu_calibrate(%struct.mt76x02_dev* %67, i32 %68, i32 0)
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %51
  %73 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %74 = call i32 @mt76x2_mac_resume(%struct.mt76x02_dev* %73)
  br label %75

75:                                               ; preds = %72, %51
  %76 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %77 = call i32 @mt76x2_apply_gain_adj(%struct.mt76x02_dev* %76)
  %78 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %79 = call i32 @mt76x02_edcca_init(%struct.mt76x02_dev* %78)
  %80 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %81 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  store i32 1, i32* %82, align 8
  br label %83

83:                                               ; preds = %75, %28, %23
  ret void
}

declare dso_local i64 @mt76x2_channel_silent(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76x2_phy_tssi_init_cal(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76x2_mac_stop(%struct.mt76x02_dev*, i32) #1

declare dso_local i32 @mt76x02_mcu_calibrate(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @mt76x2_mac_resume(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76x2_apply_gain_adj(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76x02_edcca_init(%struct.mt76x02_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
