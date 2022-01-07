; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8180/extr_rtl8225se.c_rtl8225se_rf_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8180/extr_rtl8225se.c_rtl8225se_rf_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rtl8180_priv* }
%struct.rtl8180_priv = type { i32 }

@RTL8225SE_ANAPARAM_OFF = common dso_local global i32 0, align 4
@RTL8225SE_ANAPARAM2_OFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8225se_rf_stop(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl8180_priv*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %4 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %5 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %4, i32 0, i32 0
  %6 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  store %struct.rtl8180_priv* %6, %struct.rtl8180_priv** %3, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %8 = call i32 @rtl8225se_write_phy_ofdm(%struct.ieee80211_hw* %7, i32 16, i32 0)
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %10 = call i32 @rtl8225se_write_phy_ofdm(%struct.ieee80211_hw* %9, i32 18, i32 0)
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %12 = call i32 @rtl8187se_rf_writereg(%struct.ieee80211_hw* %11, i32 4, i32 0)
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %14 = call i32 @rtl8187se_rf_writereg(%struct.ieee80211_hw* %13, i32 0, i32 0)
  %15 = call i32 @usleep_range(i32 1000, i32 5000)
  %16 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %17 = load i32, i32* @RTL8225SE_ANAPARAM_OFF, align 4
  %18 = call i32 @rtl8180_set_anaparam(%struct.rtl8180_priv* %16, i32 %17)
  %19 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %20 = load i32, i32* @RTL8225SE_ANAPARAM2_OFF, align 4
  %21 = call i32 @rtl8180_set_anaparam2(%struct.rtl8180_priv* %19, i32 %20)
  ret void
}

declare dso_local i32 @rtl8225se_write_phy_ofdm(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @rtl8187se_rf_writereg(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @rtl8180_set_anaparam(%struct.rtl8180_priv*, i32) #1

declare dso_local i32 @rtl8180_set_anaparam2(%struct.rtl8180_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
