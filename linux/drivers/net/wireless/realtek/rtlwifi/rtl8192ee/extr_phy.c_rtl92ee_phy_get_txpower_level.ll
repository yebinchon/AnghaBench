; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_phy.c_rtl92ee_phy_get_txpower_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_phy.c_rtl92ee_phy_get_txpower_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i32, i32 }

@WIRELESS_MODE_B = common dso_local global i32 0, align 4
@WIRELESS_MODE_G = common dso_local global i32 0, align 4
@WIRELESS_MODE_N_24G = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92ee_phy_get_txpower_level(%struct.ieee80211_hw* %0, i64* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.rtl_phy*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i64* %1, i64** %4, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %10 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %9)
  store %struct.rtl_priv* %10, %struct.rtl_priv** %5, align 8
  %11 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %12 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %11, i32 0, i32 0
  store %struct.rtl_phy* %12, %struct.rtl_phy** %6, align 8
  %13 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %14 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %17 = load i32, i32* @WIRELESS_MODE_B, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i64 @_rtl92ee_phy_txpwr_idx_to_dbm(%struct.ieee80211_hw* %16, i32 %17, i32 %18)
  store i64 %19, i64* %8, align 8
  %20 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %21 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  %23 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %24 = load i32, i32* @WIRELESS_MODE_G, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i64 @_rtl92ee_phy_txpwr_idx_to_dbm(%struct.ieee80211_hw* %23, i32 %24, i32 %25)
  %27 = load i64, i64* %8, align 8
  %28 = icmp sgt i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %2
  %30 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %31 = load i32, i32* @WIRELESS_MODE_G, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i64 @_rtl92ee_phy_txpwr_idx_to_dbm(%struct.ieee80211_hw* %30, i32 %31, i32 %32)
  store i64 %33, i64* %8, align 8
  br label %34

34:                                               ; preds = %29, %2
  %35 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %36 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %7, align 4
  %38 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %39 = load i32, i32* @WIRELESS_MODE_N_24G, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i64 @_rtl92ee_phy_txpwr_idx_to_dbm(%struct.ieee80211_hw* %38, i32 %39, i32 %40)
  %42 = load i64, i64* %8, align 8
  %43 = icmp sgt i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %34
  %45 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %46 = load i32, i32* @WIRELESS_MODE_N_24G, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i64 @_rtl92ee_phy_txpwr_idx_to_dbm(%struct.ieee80211_hw* %45, i32 %46, i32 %47)
  store i64 %48, i64* %8, align 8
  br label %49

49:                                               ; preds = %44, %34
  %50 = load i64, i64* %8, align 8
  %51 = load i64*, i64** %4, align 8
  store i64 %50, i64* %51, align 8
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i64 @_rtl92ee_phy_txpwr_idx_to_dbm(%struct.ieee80211_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
