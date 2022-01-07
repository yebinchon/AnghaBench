; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_phy.c_rtl8723e_phy_get_txpower_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_phy.c_rtl8723e_phy_get_txpower_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i64, i64 }
%struct.rtl_efuse = type { i64 }

@WIRELESS_MODE_B = common dso_local global i32 0, align 4
@WIRELESS_MODE_G = common dso_local global i32 0, align 4
@WIRELESS_MODE_N_24G = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8723e_phy_get_txpower_level(%struct.ieee80211_hw* %0, i64* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.rtl_phy*, align 8
  %7 = alloca %struct.rtl_efuse*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i64* %1, i64** %4, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %11 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %10)
  store %struct.rtl_priv* %11, %struct.rtl_priv** %5, align 8
  %12 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %13 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %12, i32 0, i32 0
  store %struct.rtl_phy* %13, %struct.rtl_phy** %6, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %15 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %14)
  %16 = call %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv* %15)
  store %struct.rtl_efuse* %16, %struct.rtl_efuse** %7, align 8
  %17 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %18 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %8, align 8
  %20 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %21 = load i32, i32* @WIRELESS_MODE_B, align 4
  %22 = load i64, i64* %8, align 8
  %23 = call i64 @rtl8723_phy_txpwr_idx_to_dbm(%struct.ieee80211_hw* %20, i32 %21, i64 %22)
  store i64 %23, i64* %9, align 8
  %24 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %25 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.rtl_efuse*, %struct.rtl_efuse** %7, align 8
  %28 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %26, %29
  store i64 %30, i64* %8, align 8
  %31 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %32 = load i32, i32* @WIRELESS_MODE_G, align 4
  %33 = load i64, i64* %8, align 8
  %34 = call i64 @rtl8723_phy_txpwr_idx_to_dbm(%struct.ieee80211_hw* %31, i32 %32, i64 %33)
  %35 = load i64, i64* %9, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %2
  %38 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %39 = load i32, i32* @WIRELESS_MODE_G, align 4
  %40 = load i64, i64* %8, align 8
  %41 = call i64 @rtl8723_phy_txpwr_idx_to_dbm(%struct.ieee80211_hw* %38, i32 %39, i64 %40)
  store i64 %41, i64* %9, align 8
  br label %42

42:                                               ; preds = %37, %2
  %43 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %44 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %8, align 8
  %46 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %47 = load i32, i32* @WIRELESS_MODE_N_24G, align 4
  %48 = load i64, i64* %8, align 8
  %49 = call i64 @rtl8723_phy_txpwr_idx_to_dbm(%struct.ieee80211_hw* %46, i32 %47, i64 %48)
  %50 = load i64, i64* %9, align 8
  %51 = icmp sgt i64 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %42
  %53 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %54 = load i32, i32* @WIRELESS_MODE_N_24G, align 4
  %55 = load i64, i64* %8, align 8
  %56 = call i64 @rtl8723_phy_txpwr_idx_to_dbm(%struct.ieee80211_hw* %53, i32 %54, i64 %55)
  store i64 %56, i64* %9, align 8
  br label %57

57:                                               ; preds = %52, %42
  %58 = load i64, i64* %9, align 8
  %59 = load i64*, i64** %4, align 8
  store i64 %58, i64* %59, align 8
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv*) #1

declare dso_local i64 @rtl8723_phy_txpwr_idx_to_dbm(%struct.ieee80211_hw*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
