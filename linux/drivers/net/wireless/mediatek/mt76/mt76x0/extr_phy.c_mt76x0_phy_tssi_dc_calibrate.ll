; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_phy.c_mt76x0_phy_tssi_dc_calibrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_phy.c_mt76x0_phy_tssi_dc_calibrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i64 }

@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@MT_RF_SETTING_0 = common dso_local global i32 0, align 4
@MT_RF_BYPASS_0 = common dso_local global i32 0, align 4
@CORE = common dso_local global i32 0, align 4
@TXBE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt76x02_dev*)* @mt76x0_phy_tssi_dc_calibrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt76x0_phy_tssi_dc_calibrate(%struct.mt76x02_dev* %0) #0 {
  %2 = alloca %struct.mt76x02_dev*, align 8
  %3 = alloca %struct.ieee80211_channel*, align 8
  %4 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %2, align 8
  %5 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %6 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %8, align 8
  store %struct.ieee80211_channel* %9, %struct.ieee80211_channel** %3, align 8
  %10 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %11 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %17 = call i32 @MT_RF(i32 0, i32 67)
  %18 = call i32 @mt76x0_rf_clear(%struct.mt76x02_dev* %16, i32 %17, i32 15)
  br label %19

19:                                               ; preds = %15, %1
  %20 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %21 = load i32, i32* @MT_RF_SETTING_0, align 4
  %22 = call i32 @mt76_wr(%struct.mt76x02_dev* %20, i32 %21, i32 1610621495)
  %23 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %24 = load i32, i32* @MT_RF_BYPASS_0, align 4
  %25 = call i32 @mt76_wr(%struct.mt76x02_dev* %23, i32 %24, i32 -1)
  %26 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %27 = load i32, i32* @CORE, align 4
  %28 = call i32 @MT_BBP(i32 %27, i32 4)
  %29 = call i32 @BIT(i32 0)
  %30 = call i32 @mt76_set(%struct.mt76x02_dev* %26, i32 %28, i32 %29)
  %31 = call i32 @usleep_range(i32 500, i32 1000)
  %32 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %33 = load i32, i32* @CORE, align 4
  %34 = call i32 @MT_BBP(i32 %33, i32 4)
  %35 = call i32 @BIT(i32 0)
  %36 = call i32 @mt76_clear(%struct.mt76x02_dev* %32, i32 %34, i32 %35)
  %37 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %38 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 524373, i32 524368
  store i32 %43, i32* %4, align 4
  %44 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %45 = load i32, i32* @CORE, align 4
  %46 = call i32 @MT_BBP(i32 %45, i32 34)
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @mt76_wr(%struct.mt76x02_dev* %44, i32 %46, i32 %47)
  %49 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %50 = load i32, i32* @TXBE, align 4
  %51 = call i32 @MT_BBP(i32 %50, i32 6)
  %52 = call i32 @BIT(i32 31)
  %53 = call i32 @mt76_wr(%struct.mt76x02_dev* %49, i32 %51, i32 %52)
  %54 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %55 = load i32, i32* @CORE, align 4
  %56 = call i32 @MT_BBP(i32 %55, i32 34)
  %57 = call i32 @BIT(i32 4)
  %58 = call i32 @mt76_poll_msec(%struct.mt76x02_dev* %54, i32 %56, i32 %57, i32 0, i32 200)
  %59 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %60 = load i32, i32* @CORE, align 4
  %61 = call i32 @MT_BBP(i32 %60, i32 35)
  %62 = call i32 @mt76_rr(%struct.mt76x02_dev* %59, i32 %61)
  %63 = and i32 %62, 255
  %64 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %65 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 8
  %67 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %68 = load i32, i32* @MT_RF_BYPASS_0, align 4
  %69 = call i32 @mt76_wr(%struct.mt76x02_dev* %67, i32 %68, i32 0)
  %70 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %71 = load i32, i32* @TXBE, align 4
  %72 = call i32 @MT_BBP(i32 %71, i32 6)
  %73 = call i32 @mt76_wr(%struct.mt76x02_dev* %70, i32 %72, i32 0)
  %74 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %75 = load i32, i32* @CORE, align 4
  %76 = call i32 @MT_BBP(i32 %75, i32 4)
  %77 = call i32 @BIT(i32 0)
  %78 = call i32 @mt76_set(%struct.mt76x02_dev* %74, i32 %76, i32 %77)
  %79 = call i32 @usleep_range(i32 500, i32 1000)
  %80 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %81 = load i32, i32* @CORE, align 4
  %82 = call i32 @MT_BBP(i32 %81, i32 4)
  %83 = call i32 @BIT(i32 0)
  %84 = call i32 @mt76_clear(%struct.mt76x02_dev* %80, i32 %82, i32 %83)
  %85 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %86 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %19
  %91 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %2, align 8
  %92 = call i32 @MT_RF(i32 0, i32 67)
  %93 = call i32 @mt76x0_rf_rmw(%struct.mt76x02_dev* %91, i32 %92, i32 15, i32 4)
  br label %94

94:                                               ; preds = %90, %19
  ret void
}

declare dso_local i32 @mt76x0_rf_clear(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @MT_RF(i32, i32) #1

declare dso_local i32 @mt76_wr(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @mt76_set(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @MT_BBP(i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @mt76_clear(%struct.mt76x02_dev*, i32, i32) #1

declare dso_local i32 @mt76_poll_msec(%struct.mt76x02_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @mt76_rr(%struct.mt76x02_dev*, i32) #1

declare dso_local i32 @mt76x0_rf_rmw(%struct.mt76x02_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
