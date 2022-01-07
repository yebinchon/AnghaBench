; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_phy.c_rtl8723e_phy_set_txpower_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_phy.c_rtl8723e_phy_set_txpower_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_efuse = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8723e_phy_set_txpower_level(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtl_efuse*, align 8
  %6 = alloca [2 x i32], align 4
  %7 = alloca [2 x i32], align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %9 = call i32 @rtl_priv(%struct.ieee80211_hw* %8)
  %10 = call %struct.rtl_efuse* @rtl_efuse(i32 %9)
  store %struct.rtl_efuse* %10, %struct.rtl_efuse** %5, align 8
  %11 = load %struct.rtl_efuse*, %struct.rtl_efuse** %5, align 8
  %12 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %34

16:                                               ; preds = %2
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %20 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %21 = call i32 @_rtl8723e_get_txpower_index(%struct.ieee80211_hw* %17, i32 %18, i32* %19, i32* %20)
  %22 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %25 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %26 = call i32 @_rtl8723e_ccxpower_index_check(%struct.ieee80211_hw* %22, i32 %23, i32* %24, i32* %25)
  %27 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %29 = call i32 @rtl8723e_phy_rf6052_set_cck_txpower(%struct.ieee80211_hw* %27, i32* %28)
  %30 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %31 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @rtl8723e_phy_rf6052_set_ofdm_txpower(%struct.ieee80211_hw* %30, i32* %31, i32 %32)
  br label %34

34:                                               ; preds = %16, %15
  ret void
}

declare dso_local %struct.rtl_efuse* @rtl_efuse(i32) #1

declare dso_local i32 @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @_rtl8723e_get_txpower_index(%struct.ieee80211_hw*, i32, i32*, i32*) #1

declare dso_local i32 @_rtl8723e_ccxpower_index_check(%struct.ieee80211_hw*, i32, i32*, i32*) #1

declare dso_local i32 @rtl8723e_phy_rf6052_set_cck_txpower(%struct.ieee80211_hw*, i32*) #1

declare dso_local i32 @rtl8723e_phy_rf6052_set_ofdm_txpower(%struct.ieee80211_hw*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
