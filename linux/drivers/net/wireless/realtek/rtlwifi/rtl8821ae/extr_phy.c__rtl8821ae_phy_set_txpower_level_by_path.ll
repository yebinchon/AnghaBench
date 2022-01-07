; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c__rtl8821ae_phy_set_txpower_level_by_path.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_phy.c__rtl8821ae_phy_set_txpower_level_by_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i64*, i64, i64, i64)* @_rtl8821ae_phy_set_txpower_level_by_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl8821ae_phy_set_txpower_level_by_path(%struct.ieee80211_hw* %0, i64* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.rtl_priv*, align 8
  %12 = alloca %struct.rtl_phy*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %16 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %15)
  store %struct.rtl_priv* %16, %struct.rtl_priv** %11, align 8
  %17 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %18 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %17, i32 0, i32 0
  store %struct.rtl_phy* %18, %struct.rtl_phy** %12, align 8
  store i64 0, i64* %13, align 8
  br label %19

19:                                               ; preds = %43, %5
  %20 = load i64, i64* %13, align 8
  %21 = load i64, i64* %10, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %46

23:                                               ; preds = %19
  %24 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load i64*, i64** %7, align 8
  %27 = load i64, i64* %13, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.rtl_phy*, %struct.rtl_phy** %12, align 8
  %31 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* %9, align 8
  %34 = call i64 @_rtl8821ae_get_txpower_index(%struct.ieee80211_hw* %24, i64 %25, i64 %29, i32 %32, i64 %33)
  store i64 %34, i64* %14, align 8
  %35 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %36 = load i64, i64* %14, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i64*, i64** %7, align 8
  %39 = load i64, i64* %13, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @_rtl8821ae_phy_set_txpower_index(%struct.ieee80211_hw* %35, i64 %36, i64 %37, i64 %41)
  br label %43

43:                                               ; preds = %23
  %44 = load i64, i64* %13, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %13, align 8
  br label %19

46:                                               ; preds = %19
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i64 @_rtl8821ae_get_txpower_index(%struct.ieee80211_hw*, i64, i64, i32, i64) #1

declare dso_local i32 @_rtl8821ae_phy_set_txpower_index(%struct.ieee80211_hw*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
