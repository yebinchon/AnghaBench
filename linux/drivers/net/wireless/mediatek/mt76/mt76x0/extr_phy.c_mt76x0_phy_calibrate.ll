; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_phy.c_mt76x0_phy_calibrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_phy.c_mt76x0_phy_calibrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i64, i32 }

@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@MCU_CAL_R = common dso_local global i32 0, align 4
@MCU_CAL_VCO = common dso_local global i32 0, align 4
@MT_MAC_SYS_CTRL = common dso_local global i32 0, align 4
@MT_MAC_SYS_CTRL_ENABLE_RX = common dso_local global i32 0, align 4
@MT_MAC_SYS_CTRL_ENABLE_TX = common dso_local global i32 0, align 4
@MT_TX_ALC_CFG_0 = common dso_local global i32 0, align 4
@IBI = common dso_local global i32 0, align 4
@MCU_CAL_FULL = common dso_local global i32 0, align 4
@MCU_CAL_LC = common dso_local global i32 0, align 4
@MCU_CAL_RXDCOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt76x0_phy_calibrate(%struct.mt76x02_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.mt76x02_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %11 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %13, align 8
  store %struct.ieee80211_channel* %14, %struct.ieee80211_channel** %5, align 8
  %15 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %16 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 1, i32 0
  store i32 %21, i32* %6, align 4
  %22 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %23 = call i64 @is_mt7630(%struct.mt76x02_dev* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %114

26:                                               ; preds = %2
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %57

29:                                               ; preds = %26
  %30 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %31 = load i32, i32* @MCU_CAL_R, align 4
  %32 = call i32 @mt76x02_mcu_calibrate(%struct.mt76x02_dev* %30, i32 %31, i32 0)
  %33 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %34 = load i32, i32* @MCU_CAL_VCO, align 4
  %35 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %36 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @mt76x02_mcu_calibrate(%struct.mt76x02_dev* %33, i32 %34, i32 %37)
  %39 = call i32 @usleep_range(i32 10, i32 20)
  %40 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %41 = call i64 @mt76x0_tssi_enabled(%struct.mt76x02_dev* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %29
  %44 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %45 = load i32, i32* @MT_MAC_SYS_CTRL, align 4
  %46 = load i32, i32* @MT_MAC_SYS_CTRL_ENABLE_RX, align 4
  %47 = call i32 @mt76_wr(%struct.mt76x02_dev* %44, i32 %45, i32 %46)
  %48 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %49 = call i32 @mt76x0_phy_tssi_dc_calibrate(%struct.mt76x02_dev* %48)
  %50 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %51 = load i32, i32* @MT_MAC_SYS_CTRL, align 4
  %52 = load i32, i32* @MT_MAC_SYS_CTRL_ENABLE_TX, align 4
  %53 = load i32, i32* @MT_MAC_SYS_CTRL_ENABLE_RX, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @mt76_wr(%struct.mt76x02_dev* %50, i32 %51, i32 %54)
  br label %56

56:                                               ; preds = %43, %29
  br label %57

57:                                               ; preds = %56, %26
  %58 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %59 = load i32, i32* @MT_TX_ALC_CFG_0, align 4
  %60 = call i32 @mt76_rr(%struct.mt76x02_dev* %58, i32 %59)
  store i32 %60, i32* %8, align 4
  %61 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %62 = load i32, i32* @MT_TX_ALC_CFG_0, align 4
  %63 = call i32 @mt76_wr(%struct.mt76x02_dev* %61, i32 %62, i32 0)
  %64 = call i32 @usleep_range(i32 500, i32 700)
  %65 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %66 = load i32, i32* @IBI, align 4
  %67 = call i32 @MT_BBP(i32 %66, i32 9)
  %68 = call i32 @mt76_rr(%struct.mt76x02_dev* %65, i32 %67)
  store i32 %68, i32* %9, align 4
  %69 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %70 = load i32, i32* @IBI, align 4
  %71 = call i32 @MT_BBP(i32 %70, i32 9)
  %72 = call i32 @mt76_wr(%struct.mt76x02_dev* %69, i32 %71, i32 -130)
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %90

75:                                               ; preds = %57
  %76 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %77 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = icmp slt i32 %78, 100
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  store i32 1793, i32* %7, align 4
  br label %89

81:                                               ; preds = %75
  %82 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %83 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = icmp slt i32 %84, 140
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  store i32 2049, i32* %7, align 4
  br label %88

87:                                               ; preds = %81
  store i32 2305, i32* %7, align 4
  br label %88

88:                                               ; preds = %87, %86
  br label %89

89:                                               ; preds = %88, %80
  br label %91

90:                                               ; preds = %57
  store i32 1536, i32* %7, align 4
  br label %91

91:                                               ; preds = %90, %89
  %92 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %93 = load i32, i32* @MCU_CAL_FULL, align 4
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @mt76x02_mcu_calibrate(%struct.mt76x02_dev* %92, i32 %93, i32 %94)
  %96 = call i32 @msleep(i32 350)
  %97 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %98 = load i32, i32* @MCU_CAL_LC, align 4
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @mt76x02_mcu_calibrate(%struct.mt76x02_dev* %97, i32 %98, i32 %99)
  %101 = call i32 @usleep_range(i32 15000, i32 20000)
  %102 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %103 = load i32, i32* @IBI, align 4
  %104 = call i32 @MT_BBP(i32 %103, i32 9)
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @mt76_wr(%struct.mt76x02_dev* %102, i32 %104, i32 %105)
  %107 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %108 = load i32, i32* @MT_TX_ALC_CFG_0, align 4
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @mt76_wr(%struct.mt76x02_dev* %107, i32 %108, i32 %109)
  %111 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %112 = load i32, i32* @MCU_CAL_RXDCOC, align 4
  %113 = call i32 @mt76x02_mcu_calibrate(%struct.mt76x02_dev* %111, i32 %112, i32 1)
  br label %114

114:                                              ; preds = %91, %25
  ret void
}

declare dso_local i64 @is_mt7630(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76x02_mcu_calibrate(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @mt76x0_tssi_enabled(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76_wr(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @mt76x0_phy_tssi_dc_calibrate(%struct.mt76x02_dev*) #1

declare dso_local i32 @mt76_rr(%struct.mt76x02_dev*, i32) #1

declare dso_local i32 @MT_BBP(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
