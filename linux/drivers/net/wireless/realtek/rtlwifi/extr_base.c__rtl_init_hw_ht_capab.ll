; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_base.c__rtl_init_hw_ht_capab.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_base.c__rtl_init_hw_ht_capab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_sta_ht_cap = type { i32, i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32*, i8*, i32 }
%struct.rtl_priv = type { %struct.TYPE_5__, %struct.TYPE_4__, %struct.rtl_phy }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.rtl_phy = type { i32 }

@IEEE80211_HT_CAP_SUP_WIDTH_20_40 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_40 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_20 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_DSSSCCK40 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_MAX_AMSDU = common dso_local global i32 0, align 4
@IEEE80211_HT_MAX_AMPDU_64K = common dso_local global i32 0, align 4
@IEEE80211_HT_MPDU_DENSITY_16 = common dso_local global i32 0, align 4
@IEEE80211_HT_MCS_TX_DEFINED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Support phy mode switch\0A\00", align 1
@MAX_BIT_RATE_40MHZ_MCS15 = common dso_local global i32 0, align 4
@RF_1T2R = common dso_local global i64 0, align 8
@RF_2T2R = common dso_local global i64 0, align 8
@COMP_INIT = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"1T2R or 2T2R\0A\00", align 1
@RF_1T1R = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [6 x i8] c"1T1R\0A\00", align 1
@MAX_BIT_RATE_40MHZ_MCS7 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_sta_ht_cap*)* @_rtl_init_hw_ht_capab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl_init_hw_ht_capab(%struct.ieee80211_hw* %0, %struct.ieee80211_sta_ht_cap* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_sta_ht_cap*, align 8
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.rtl_phy*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_sta_ht_cap* %1, %struct.ieee80211_sta_ht_cap** %4, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %8 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %7)
  store %struct.rtl_priv* %8, %struct.rtl_priv** %5, align 8
  %9 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %10 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %9, i32 0, i32 2
  store %struct.rtl_phy* %10, %struct.rtl_phy** %6, align 8
  %11 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %12 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = load i32, i32* @IEEE80211_HT_CAP_SUP_WIDTH_20_40, align 4
  %14 = load i32, i32* @IEEE80211_HT_CAP_SGI_40, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @IEEE80211_HT_CAP_SGI_20, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @IEEE80211_HT_CAP_DSSSCCK40, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @IEEE80211_HT_CAP_MAX_AMSDU, align 4
  %21 = or i32 %19, %20
  %22 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %23 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %25 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %2
  %30 = load i32, i32* @IEEE80211_HT_CAP_MAX_AMSDU, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %33 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 4
  br label %36

36:                                               ; preds = %29, %2
  %37 = load i32, i32* @IEEE80211_HT_MAX_AMPDU_64K, align 4
  %38 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %39 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @IEEE80211_HT_MPDU_DENSITY_16, align 4
  %41 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %42 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @IEEE80211_HT_MCS_TX_DEFINED, align 4
  %44 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %45 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  store i32 %43, i32* %46, align 8
  %47 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %48 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %74

52:                                               ; preds = %36
  %53 = call i32 @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %54 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %55 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  store i32 255, i32* %58, align 4
  %59 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %60 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  store i32 255, i32* %63, align 4
  %64 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %65 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 4
  store i32 1, i32* %68, align 4
  %69 = load i32, i32* @MAX_BIT_RATE_40MHZ_MCS15, align 4
  %70 = call i8* @cpu_to_le16(i32 %69)
  %71 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %72 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  store i8* %70, i8** %73, align 8
  br label %141

74:                                               ; preds = %36
  %75 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %76 = call i64 @get_rf_type(%struct.rtl_phy* %75)
  %77 = load i64, i64* @RF_1T2R, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %84, label %79

79:                                               ; preds = %74
  %80 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %81 = call i64 @get_rf_type(%struct.rtl_phy* %80)
  %82 = load i64, i64* @RF_2T2R, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %109

84:                                               ; preds = %79, %74
  %85 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %86 = load i32, i32* @COMP_INIT, align 4
  %87 = load i32, i32* @DBG_DMESG, align 4
  %88 = call i32 @RT_TRACE(%struct.rtl_priv* %85, i32 %86, i32 %87, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %89 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %90 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  store i32 255, i32* %93, align 4
  %94 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %95 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  store i32 255, i32* %98, align 4
  %99 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %100 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 4
  store i32 1, i32* %103, align 4
  %104 = load i32, i32* @MAX_BIT_RATE_40MHZ_MCS15, align 4
  %105 = call i8* @cpu_to_le16(i32 %104)
  %106 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %107 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  store i8* %105, i8** %108, align 8
  br label %140

109:                                              ; preds = %79
  %110 = load %struct.rtl_phy*, %struct.rtl_phy** %6, align 8
  %111 = call i64 @get_rf_type(%struct.rtl_phy* %110)
  %112 = load i64, i64* @RF_1T1R, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %139

114:                                              ; preds = %109
  %115 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %116 = load i32, i32* @COMP_INIT, align 4
  %117 = load i32, i32* @DBG_DMESG, align 4
  %118 = call i32 @RT_TRACE(%struct.rtl_priv* %115, i32 %116, i32 %117, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %119 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %120 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  store i32 255, i32* %123, align 4
  %124 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %125 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 1
  store i32 0, i32* %128, align 4
  %129 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %130 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 4
  store i32 1, i32* %133, align 4
  %134 = load i32, i32* @MAX_BIT_RATE_40MHZ_MCS7, align 4
  %135 = call i8* @cpu_to_le16(i32 %134)
  %136 = load %struct.ieee80211_sta_ht_cap*, %struct.ieee80211_sta_ht_cap** %4, align 8
  %137 = getelementptr inbounds %struct.ieee80211_sta_ht_cap, %struct.ieee80211_sta_ht_cap* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 1
  store i8* %135, i8** %138, align 8
  br label %139

139:                                              ; preds = %114, %109
  br label %140

140:                                              ; preds = %139, %84
  br label %141

141:                                              ; preds = %140, %52
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i64 @get_rf_type(%struct.rtl_phy*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
