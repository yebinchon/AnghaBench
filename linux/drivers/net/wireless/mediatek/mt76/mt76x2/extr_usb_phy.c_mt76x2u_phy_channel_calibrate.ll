; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_usb_phy.c_mt76x2u_phy_channel_calibrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_usb_phy.c_mt76x2u_phy_channel_calibrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i64 }

@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@MCU_CAL_LC = common dso_local global i32 0, align 4
@MCU_CAL_TX_LOFT = common dso_local global i32 0, align 4
@MCU_CAL_TXIQ = common dso_local global i32 0, align 4
@MCU_CAL_RXIQC_FI = common dso_local global i32 0, align 4
@MCU_CAL_TEMP_SENSOR = common dso_local global i32 0, align 4
@MCU_CAL_TX_SHAPING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt76x02_dev*, i32)* @mt76x2u_phy_channel_calibrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt76x2u_phy_channel_calibrate(%struct.mt76x02_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.mt76x02_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_channel*, align 8
  %6 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %8 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
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
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %74

24:                                               ; preds = %2
  %25 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %26 = call i64 @mt76x2_channel_silent(%struct.mt76x02_dev* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %74

29:                                               ; preds = %24
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %34 = call i32 @mt76x2u_mac_stop(%struct.mt76x02_dev* %33)
  br label %35

35:                                               ; preds = %32, %29
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %40 = load i32, i32* @MCU_CAL_LC, align 4
  %41 = call i32 @mt76x02_mcu_calibrate(%struct.mt76x02_dev* %39, i32 %40, i32 0)
  br label %42

42:                                               ; preds = %38, %35
  %43 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %44 = load i32, i32* @MCU_CAL_TX_LOFT, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @mt76x02_mcu_calibrate(%struct.mt76x02_dev* %43, i32 %44, i32 %45)
  %47 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %48 = load i32, i32* @MCU_CAL_TXIQ, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @mt76x02_mcu_calibrate(%struct.mt76x02_dev* %47, i32 %48, i32 %49)
  %51 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %52 = load i32, i32* @MCU_CAL_RXIQC_FI, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @mt76x02_mcu_calibrate(%struct.mt76x02_dev* %51, i32 %52, i32 %53)
  %55 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %56 = load i32, i32* @MCU_CAL_TEMP_SENSOR, align 4
  %57 = call i32 @mt76x02_mcu_calibrate(%struct.mt76x02_dev* %55, i32 %56, i32 0)
  %58 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %59 = load i32, i32* @MCU_CAL_TX_SHAPING, align 4
  %60 = call i32 @mt76x02_mcu_calibrate(%struct.mt76x02_dev* %58, i32 %59, i32 0)
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %42
  %64 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %65 = call i32 @mt76x2_mac_resume(%struct.mt76x02_dev* %64)
  br label %66

66:                                               ; preds = %63, %42
  %67 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %68 = call i32 @mt76x2_apply_gain_adj(%struct.mt76x02_dev* %67)
  %69 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %70 = call i32 @mt76x02_edcca_init(%struct.mt76x02_dev* %69)
  %71 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %72 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  store i32 1, i32* %73, align 8
  br label %74

74:                                               ; preds = %66, %28, %23
  ret void
}

declare dso_local i64 @mt76x2_channel_silent(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76x2u_mac_stop(%struct.mt76x02_dev*) #1

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
