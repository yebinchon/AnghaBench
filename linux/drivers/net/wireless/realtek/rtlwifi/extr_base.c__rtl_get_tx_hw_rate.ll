; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_base.c__rtl_get_tx_hw_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_base.c__rtl_get_tx_hw_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_tx_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ieee80211_tx_rate* }
%struct.ieee80211_tx_rate = type { i32, i32 }
%struct.rtl_priv = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i64 }
%struct.ieee80211_rate = type { i32 }

@IEEE80211_TX_RC_MCS = common dso_local global i32 0, align 4
@RTL_RC_HT_RATEMCS15 = common dso_local global i64 0, align 8
@IEEE80211_TX_RC_VHT_MCS = common dso_local global i32 0, align 4
@RTL_RC_VHT_RATE_2SS_MCS9 = common dso_local global i64 0, align 8
@RTL_RC_VHT_RATE_1SS_MCS9 = common dso_local global i64 0, align 8
@BAND_ON_5G = common dso_local global i64 0, align 8
@RTL_RC_OFDM_RATE6M = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_tx_info*)* @_rtl_get_tx_hw_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl_get_tx_hw_rate(%struct.ieee80211_hw* %0, %struct.ieee80211_tx_info* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_tx_info*, align 8
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.ieee80211_tx_rate*, align 8
  %7 = alloca %struct.ieee80211_rate*, align 8
  %8 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_tx_info* %1, %struct.ieee80211_tx_info** %4, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %10 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %9)
  store %struct.rtl_priv* %10, %struct.rtl_priv** %5, align 8
  %11 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %4, align 8
  %12 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %13, align 8
  %15 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %14, i64 0
  store %struct.ieee80211_tx_rate* %15, %struct.ieee80211_tx_rate** %6, align 8
  store i32 0, i32* %8, align 4
  %16 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %6, align 8
  %17 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @IEEE80211_TX_RC_MCS, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %2
  %23 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %24 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* @RTL_RC_HT_RATEMCS15, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %30, 15
  %32 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %6, align 8
  %33 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %31, %34
  store i32 %35, i32* %8, align 4
  br label %83

36:                                               ; preds = %2
  %37 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %6, align 8
  %38 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @IEEE80211_TX_RC_VHT_MCS, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %71

43:                                               ; preds = %36
  %44 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %6, align 8
  %45 = call i32 @ieee80211_rate_get_vht_nss(%struct.ieee80211_tx_rate* %44)
  %46 = icmp eq i32 %45, 2
  br i1 %46, label %47, label %56

47:                                               ; preds = %43
  %48 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %49 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i64, i64* @RTL_RC_VHT_RATE_2SS_MCS9, align 8
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %8, align 4
  br label %65

56:                                               ; preds = %43
  %57 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %58 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %57, i32 0, i32 0
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* @RTL_RC_VHT_RATE_1SS_MCS9, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %8, align 4
  br label %65

65:                                               ; preds = %56, %47
  %66 = load i32, i32* %8, align 4
  %67 = sub nsw i32 %66, 9
  %68 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %6, align 8
  %69 = call i32 @ieee80211_rate_get_vht_mcs(%struct.ieee80211_tx_rate* %68)
  %70 = add nsw i32 %67, %69
  store i32 %70, i32* %8, align 4
  br label %82

71:                                               ; preds = %36
  %72 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %73 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %4, align 8
  %74 = call %struct.ieee80211_rate* @ieee80211_get_tx_rate(%struct.ieee80211_hw* %72, %struct.ieee80211_tx_info* %73)
  store %struct.ieee80211_rate* %74, %struct.ieee80211_rate** %7, align 8
  %75 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %7, align 8
  %76 = icmp ne %struct.ieee80211_rate* %75, null
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %7, align 8
  %79 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %8, align 4
  br label %81

81:                                               ; preds = %77, %71
  br label %82

82:                                               ; preds = %81, %65
  br label %83

83:                                               ; preds = %82, %22
  %84 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %85 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @BAND_ON_5G, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %110

90:                                               ; preds = %83
  %91 = load i32, i32* %8, align 4
  %92 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %93 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %92, i32 0, i32 0
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i64, i64* @RTL_RC_OFDM_RATE6M, align 8
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = icmp slt i32 %91, %99
  br i1 %100, label %101, label %110

101:                                              ; preds = %90
  %102 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %103 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %102, i32 0, i32 0
  %104 = load %struct.TYPE_6__*, %struct.TYPE_6__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = load i64, i64* @RTL_RC_OFDM_RATE6M, align 8
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %8, align 4
  br label %110

110:                                              ; preds = %101, %90, %83
  %111 = load i32, i32* %8, align 4
  ret i32 %111
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @ieee80211_rate_get_vht_nss(%struct.ieee80211_tx_rate*) #1

declare dso_local i32 @ieee80211_rate_get_vht_mcs(%struct.ieee80211_tx_rate*) #1

declare dso_local %struct.ieee80211_rate* @ieee80211_get_tx_rate(%struct.ieee80211_hw*, %struct.ieee80211_tx_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
