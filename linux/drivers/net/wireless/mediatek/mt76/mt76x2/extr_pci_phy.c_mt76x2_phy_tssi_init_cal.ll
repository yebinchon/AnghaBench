; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_pci_phy.c_mt76x2_phy_tssi_init_cal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x2/extr_pci_phy.c_mt76x2_phy_tssi_init_cal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { %struct.TYPE_4__, %struct.TYPE_6__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i64 }

@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@MCU_CAL_TSSI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt76x02_dev*)* @mt76x2_phy_tssi_init_cal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt76x2_phy_tssi_init_cal(%struct.mt76x02_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt76x02_dev*, align 8
  %4 = alloca %struct.ieee80211_channel*, align 8
  %5 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %3, align 8
  %6 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %7 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %9, align 8
  store %struct.ieee80211_channel* %10, %struct.ieee80211_channel** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %12 = call i32 @mt76x2_tssi_enabled(%struct.mt76x02_dev* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %49

15:                                               ; preds = %1
  %16 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %17 = call i64 @mt76x2_channel_silent(%struct.mt76x02_dev* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %49

20:                                               ; preds = %15
  %21 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %22 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = call i32 @BIT(i32 0)
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %26, %20
  %31 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %32 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %4, align 8
  %33 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i64 @mt76x02_ext_pa_enabled(%struct.mt76x02_dev* %31, i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = call i32 @BIT(i32 8)
  %39 = load i32, i32* %5, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %37, %30
  %42 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %43 = load i32, i32* @MCU_CAL_TSSI, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @mt76x02_mcu_calibrate(%struct.mt76x02_dev* %42, i32 %43, i32 %44)
  %46 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %47 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  store i32 1, i32* %2, align 4
  br label %49

49:                                               ; preds = %41, %19, %14
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @mt76x2_tssi_enabled(%struct.mt76x02_dev*) #1

declare dso_local i64 @mt76x2_channel_silent(%struct.mt76x02_dev*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @mt76x02_ext_pa_enabled(%struct.mt76x02_dev*, i64) #1

declare dso_local i32 @mt76x02_mcu_calibrate(%struct.mt76x02_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
