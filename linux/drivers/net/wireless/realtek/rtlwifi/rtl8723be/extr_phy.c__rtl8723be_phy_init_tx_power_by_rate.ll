; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_phy.c__rtl8723be_phy_init_tx_power_by_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_phy.c__rtl8723be_phy_init_tx_power_by_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i64**** }

@BAND_ON_2_4G = common dso_local global i64 0, align 8
@BAND_ON_5G = common dso_local global i64 0, align 8
@TX_PWR_BY_RATE_NUM_RF = common dso_local global i64 0, align 8
@TX_PWR_BY_RATE_NUM_SECTION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @_rtl8723be_phy_init_tx_power_by_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl8723be_phy_init_tx_power_by_rate(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_phy*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %10 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %9)
  store %struct.rtl_priv* %10, %struct.rtl_priv** %3, align 8
  %11 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %12 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %11, i32 0, i32 0
  store %struct.rtl_phy* %12, %struct.rtl_phy** %4, align 8
  %13 = load i64, i64* @BAND_ON_2_4G, align 8
  store i64 %13, i64* %5, align 8
  br label %14

14:                                               ; preds = %60, %1
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @BAND_ON_5G, align 8
  %17 = icmp ule i64 %15, %16
  br i1 %17, label %18, label %63

18:                                               ; preds = %14
  store i64 0, i64* %6, align 8
  br label %19

19:                                               ; preds = %56, %18
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @TX_PWR_BY_RATE_NUM_RF, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %59

23:                                               ; preds = %19
  store i64 0, i64* %7, align 8
  br label %24

24:                                               ; preds = %52, %23
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @TX_PWR_BY_RATE_NUM_RF, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %55

28:                                               ; preds = %24
  store i64 0, i64* %8, align 8
  br label %29

29:                                               ; preds = %48, %28
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* @TX_PWR_BY_RATE_NUM_SECTION, align 8
  %32 = icmp ult i64 %30, %31
  br i1 %32, label %33, label %51

33:                                               ; preds = %29
  %34 = load %struct.rtl_phy*, %struct.rtl_phy** %4, align 8
  %35 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %34, i32 0, i32 0
  %36 = load i64****, i64***** %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = getelementptr inbounds i64***, i64**** %36, i64 %37
  %39 = load i64***, i64**** %38, align 8
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds i64**, i64*** %39, i64 %40
  %42 = load i64**, i64*** %41, align 8
  %43 = load i64, i64* %7, align 8
  %44 = getelementptr inbounds i64*, i64** %42, i64 %43
  %45 = load i64*, i64** %44, align 8
  %46 = load i64, i64* %8, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  store i64 0, i64* %47, align 8
  br label %48

48:                                               ; preds = %33
  %49 = load i64, i64* %8, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %8, align 8
  br label %29

51:                                               ; preds = %29
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %7, align 8
  %54 = add i64 %53, 1
  store i64 %54, i64* %7, align 8
  br label %24

55:                                               ; preds = %24
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %6, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %6, align 8
  br label %19

59:                                               ; preds = %19
  br label %60

60:                                               ; preds = %59
  %61 = load i64, i64* %5, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %5, align 8
  br label %14

63:                                               ; preds = %14
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
