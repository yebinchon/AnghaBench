; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8180/extr_sa2400.c_sa2400_write_phy_antenna.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8180/extr_sa2400.c_sa2400_write_phy_antenna.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rtl8180_priv* }
%struct.rtl8180_priv = type { i32 }

@SA2400_ANTENNA = common dso_local global i32 0, align 4
@RF_PARAM_ANTBDEFAULT = common dso_local global i32 0, align 4
@BB_ANTENNA_B = common dso_local global i32 0, align 4
@BB_ANTATTEN_CHAN14 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i16)* @sa2400_write_phy_antenna to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sa2400_write_phy_antenna(%struct.ieee80211_hw* %0, i16 signext %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i16, align 2
  %5 = alloca %struct.rtl8180_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i16 %1, i16* %4, align 2
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %7, i32 0, i32 0
  %9 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %8, align 8
  store %struct.rtl8180_priv* %9, %struct.rtl8180_priv** %5, align 8
  %10 = load i32, i32* @SA2400_ANTENNA, align 4
  store i32 %10, i32* %6, align 4
  %11 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %5, align 8
  %12 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @RF_PARAM_ANTBDEFAULT, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* @BB_ANTENNA_B, align 4
  %19 = load i32, i32* %6, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %17, %2
  %22 = load i16, i16* %4, align 2
  %23 = sext i16 %22 to i32
  %24 = icmp eq i32 %23, 14
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i32, i32* @BB_ANTATTEN_CHAN14, align 4
  %27 = load i32, i32* %6, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %25, %21
  %30 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @rtl8180_write_phy(%struct.ieee80211_hw* %30, i32 16, i32 %31)
  ret void
}

declare dso_local i32 @rtl8180_write_phy(%struct.ieee80211_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
