; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_eeprom.c_mt76x0_get_delta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt76x0/extr_eeprom.c_mt76x0_get_delta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76x02_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.cfg80211_chan_def }
%struct.cfg80211_chan_def = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@NL80211_CHAN_WIDTH_80 = common dso_local global i64 0, align 8
@MT_EE_5G_TARGET_POWER = common dso_local global i32 0, align 4
@NL80211_CHAN_WIDTH_40 = common dso_local global i64 0, align 8
@MT_EE_TX_POWER_DELTA_BW40 = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt76x02_dev*)* @mt76x0_get_delta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt76x0_get_delta(%struct.mt76x02_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt76x02_dev*, align 8
  %4 = alloca %struct.cfg80211_chan_def*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mt76x02_dev* %0, %struct.mt76x02_dev** %3, align 8
  %7 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %8 = getelementptr inbounds %struct.mt76x02_dev, %struct.mt76x02_dev* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store %struct.cfg80211_chan_def* %9, %struct.cfg80211_chan_def** %4, align 8
  %10 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %11 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @NL80211_CHAN_WIDTH_80, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %17 = load i32, i32* @MT_EE_5G_TARGET_POWER, align 4
  %18 = call i32 @mt76x02_eeprom_get(%struct.mt76x02_dev* %16, i32 %17)
  %19 = ashr i32 %18, 8
  store i32 %19, i32* %5, align 4
  br label %45

20:                                               ; preds = %1
  %21 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %22 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @NL80211_CHAN_WIDTH_40, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %20
  %27 = load %struct.mt76x02_dev*, %struct.mt76x02_dev** %3, align 8
  %28 = load i32, i32* @MT_EE_TX_POWER_DELTA_BW40, align 4
  %29 = call i32 @mt76x02_eeprom_get(%struct.mt76x02_dev* %27, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %4, align 8
  %31 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %26
  %38 = load i32, i32* %6, align 4
  %39 = ashr i32 %38, 8
  store i32 %39, i32* %5, align 4
  br label %42

40:                                               ; preds = %26
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %40, %37
  br label %44

43:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %48

44:                                               ; preds = %42
  br label %45

45:                                               ; preds = %44, %15
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @mt76x02_rate_power_val(i32 %46)
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %45, %43
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @mt76x02_eeprom_get(%struct.mt76x02_dev*, i32) #1

declare dso_local i32 @mt76x02_rate_power_val(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
