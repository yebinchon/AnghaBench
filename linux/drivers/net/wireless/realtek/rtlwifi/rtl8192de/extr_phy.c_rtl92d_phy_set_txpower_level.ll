; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_phy.c_rtl92d_phy_set_txpower_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_phy.c_rtl92d_phy_set_txpower_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_efuse = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@BAND_ON_2_4G = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92d_phy_set_txpower_level(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl_efuse*, align 8
  %6 = alloca %struct.rtl_priv*, align 8
  %7 = alloca [2 x i32], align 4
  %8 = alloca [2 x i32], align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %10 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %9)
  %11 = call %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv* %10)
  store %struct.rtl_efuse* %11, %struct.rtl_efuse** %5, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %13 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %12)
  store %struct.rtl_priv* %13, %struct.rtl_priv** %6, align 8
  %14 = load %struct.rtl_efuse*, %struct.rtl_efuse** %5, align 8
  %15 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %55

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @_rtl92c_phy_get_rightchnlplace(i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %26 = call i32 @_rtl92d_get_txpower_index(%struct.ieee80211_hw* %22, i32 %23, i32* %24, i32* %25)
  %27 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %28 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @BAND_ON_2_4G, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %19
  %34 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %38 = call i32 @_rtl92d_ccxpower_index_check(%struct.ieee80211_hw* %34, i32 %35, i32* %36, i32* %37)
  br label %39

39:                                               ; preds = %33, %19
  %40 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %41 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @BAND_ON_2_4G, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %39
  %47 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %49 = call i32 @rtl92d_phy_rf6052_set_cck_txpower(%struct.ieee80211_hw* %47, i32* %48)
  br label %50

50:                                               ; preds = %46, %39
  %51 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @rtl92d_phy_rf6052_set_ofdm_txpower(%struct.ieee80211_hw* %51, i32* %52, i32 %53)
  br label %55

55:                                               ; preds = %50, %18
  ret void
}

declare dso_local %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @_rtl92c_phy_get_rightchnlplace(i32) #1

declare dso_local i32 @_rtl92d_get_txpower_index(%struct.ieee80211_hw*, i32, i32*, i32*) #1

declare dso_local i32 @_rtl92d_ccxpower_index_check(%struct.ieee80211_hw*, i32, i32*, i32*) #1

declare dso_local i32 @rtl92d_phy_rf6052_set_cck_txpower(%struct.ieee80211_hw*, i32*) #1

declare dso_local i32 @rtl92d_phy_rf6052_set_ofdm_txpower(%struct.ieee80211_hw*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
