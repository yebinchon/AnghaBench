; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_rc.c__rtl_rc_get_highest_rix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_rc.c__rtl_rc_get_highest_rix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl_priv = type { %struct.TYPE_2__, %struct.rtl_phy }
%struct.TYPE_2__ = type { i32 }
%struct.rtl_phy = type { i32 }
%struct.ieee80211_sta = type { i64, i64 }
%struct.sk_buff = type { i32 }
%struct.rtl_hal = type { i64 }
%struct.rtl_sta_info = type { i64 }
%struct.ieee80211_tx_rate = type { i32 }

@BAND_ON_2_4G = common dso_local global i64 0, align 8
@WIRELESS_MODE_B = common dso_local global i64 0, align 8
@B_MODE_MAX_RIX = common dso_local global i32 0, align 4
@WIRELESS_MODE_G = common dso_local global i64 0, align 8
@G_MODE_MAX_RIX = common dso_local global i32 0, align 4
@WIRELESS_MODE_N_24G = common dso_local global i64 0, align 8
@N_MODE_MCS7_RIX = common dso_local global i32 0, align 4
@N_MODE_MCS15_RIX = common dso_local global i32 0, align 4
@WIRELESS_MODE_AC_24G = common dso_local global i64 0, align 8
@IEEE80211_STA_RX_BW_20 = common dso_local global i64 0, align 8
@AC_MODE_MCS8_RIX = common dso_local global i32 0, align 4
@AC_MODE_MCS9_RIX = common dso_local global i32 0, align 4
@WIRELESS_MODE_A = common dso_local global i64 0, align 8
@A_MODE_MAX_RIX = common dso_local global i32 0, align 4
@WIRELESS_MODE_N_5G = common dso_local global i64 0, align 8
@WIRELESS_MODE_AC_5G = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl_priv*, %struct.ieee80211_sta*, %struct.sk_buff*, i32)* @_rtl_rc_get_highest_rix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_rtl_rc_get_highest_rix(%struct.rtl_priv* %0, %struct.ieee80211_sta* %1, %struct.sk_buff* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtl_priv*, align 8
  %7 = alloca %struct.ieee80211_sta*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.rtl_hal*, align 8
  %11 = alloca %struct.rtl_phy*, align 8
  %12 = alloca %struct.rtl_sta_info*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.ieee80211_tx_rate, align 4
  store %struct.rtl_priv* %0, %struct.rtl_priv** %6, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %17 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %16)
  store %struct.rtl_hal* %17, %struct.rtl_hal** %10, align 8
  %18 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %19 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %18, i32 0, i32 1
  store %struct.rtl_phy* %19, %struct.rtl_phy** %11, align 8
  store %struct.rtl_sta_info* null, %struct.rtl_sta_info** %12, align 8
  store i64 0, i64* %13, align 8
  %20 = load %struct.rtl_phy*, %struct.rtl_phy** %11, align 8
  %21 = call i32 @get_rf_type(%struct.rtl_phy* %20)
  switch i32 %21, label %25 [
    i32 128, label %22
    i32 129, label %23
    i32 130, label %24
  ]

22:                                               ; preds = %4
  store i32 4, i32* %14, align 4
  br label %26

23:                                               ; preds = %4
  store i32 3, i32* %14, align 4
  br label %26

24:                                               ; preds = %4
  store i32 2, i32* %14, align 4
  br label %26

25:                                               ; preds = %4
  store i32 1, i32* %14, align 4
  br label %26

26:                                               ; preds = %25, %24, %23, %22
  %27 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %28 = icmp ne %struct.ieee80211_sta* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  %30 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %31 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.rtl_sta_info*
  store %struct.rtl_sta_info* %33, %struct.rtl_sta_info** %12, align 8
  %34 = load %struct.rtl_sta_info*, %struct.rtl_sta_info** %12, align 8
  %35 = getelementptr inbounds %struct.rtl_sta_info, %struct.rtl_sta_info* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %13, align 8
  br label %37

37:                                               ; preds = %29, %26
  %38 = load %struct.rtl_priv*, %struct.rtl_priv** %6, align 8
  %39 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %43 = call i64 @rtl_is_special_data(i32 %41, %struct.sk_buff* %42, i32 1, i32 0)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %37
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %45, %37
  store i32 0, i32* %5, align 4
  br label %141

49:                                               ; preds = %45
  %50 = load %struct.rtl_hal*, %struct.rtl_hal** %10, align 8
  %51 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @BAND_ON_2_4G, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %100

55:                                               ; preds = %49
  %56 = load i64, i64* %13, align 8
  %57 = load i64, i64* @WIRELESS_MODE_B, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32, i32* @B_MODE_MAX_RIX, align 4
  store i32 %60, i32* %5, align 4
  br label %141

61:                                               ; preds = %55
  %62 = load i64, i64* %13, align 8
  %63 = load i64, i64* @WIRELESS_MODE_G, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i32, i32* @G_MODE_MAX_RIX, align 4
  store i32 %66, i32* %5, align 4
  br label %141

67:                                               ; preds = %61
  %68 = load i64, i64* %13, align 8
  %69 = load i64, i64* @WIRELESS_MODE_N_24G, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %67
  %72 = load i32, i32* %14, align 4
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = load i32, i32* @N_MODE_MCS7_RIX, align 4
  store i32 %75, i32* %5, align 4
  br label %141

76:                                               ; preds = %71
  %77 = load i32, i32* @N_MODE_MCS15_RIX, align 4
  store i32 %77, i32* %5, align 4
  br label %141

78:                                               ; preds = %67
  %79 = load i64, i64* %13, align 8
  %80 = load i64, i64* @WIRELESS_MODE_AC_24G, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %96

82:                                               ; preds = %78
  %83 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %84 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @IEEE80211_STA_RX_BW_20, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %82
  %89 = load i32, i32* @AC_MODE_MCS8_RIX, align 4
  %90 = load i32, i32* %14, align 4
  %91 = call i32 @ieee80211_rate_set_vht(%struct.ieee80211_tx_rate* %15, i32 %89, i32 %90)
  br label %138

92:                                               ; preds = %82
  %93 = load i32, i32* @AC_MODE_MCS9_RIX, align 4
  %94 = load i32, i32* %14, align 4
  %95 = call i32 @ieee80211_rate_set_vht(%struct.ieee80211_tx_rate* %15, i32 %93, i32 %94)
  br label %138

96:                                               ; preds = %78
  br label %97

97:                                               ; preds = %96
  br label %98

98:                                               ; preds = %97
  br label %99

99:                                               ; preds = %98
  store i32 0, i32* %5, align 4
  br label %141

100:                                              ; preds = %49
  %101 = load i64, i64* %13, align 8
  %102 = load i64, i64* @WIRELESS_MODE_A, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = load i32, i32* @A_MODE_MAX_RIX, align 4
  store i32 %105, i32* %5, align 4
  br label %141

106:                                              ; preds = %100
  %107 = load i64, i64* %13, align 8
  %108 = load i64, i64* @WIRELESS_MODE_N_5G, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %117

110:                                              ; preds = %106
  %111 = load i32, i32* %14, align 4
  %112 = icmp eq i32 %111, 1
  br i1 %112, label %113, label %115

113:                                              ; preds = %110
  %114 = load i32, i32* @N_MODE_MCS7_RIX, align 4
  store i32 %114, i32* %5, align 4
  br label %141

115:                                              ; preds = %110
  %116 = load i32, i32* @N_MODE_MCS15_RIX, align 4
  store i32 %116, i32* %5, align 4
  br label %141

117:                                              ; preds = %106
  %118 = load i64, i64* %13, align 8
  %119 = load i64, i64* @WIRELESS_MODE_AC_5G, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %135

121:                                              ; preds = %117
  %122 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %7, align 8
  %123 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @IEEE80211_STA_RX_BW_20, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %131

127:                                              ; preds = %121
  %128 = load i32, i32* @AC_MODE_MCS8_RIX, align 4
  %129 = load i32, i32* %14, align 4
  %130 = call i32 @ieee80211_rate_set_vht(%struct.ieee80211_tx_rate* %15, i32 %128, i32 %129)
  br label %138

131:                                              ; preds = %121
  %132 = load i32, i32* @AC_MODE_MCS9_RIX, align 4
  %133 = load i32, i32* %14, align 4
  %134 = call i32 @ieee80211_rate_set_vht(%struct.ieee80211_tx_rate* %15, i32 %132, i32 %133)
  br label %138

135:                                              ; preds = %117
  br label %136

136:                                              ; preds = %135
  br label %137

137:                                              ; preds = %136
  store i32 0, i32* %5, align 4
  br label %141

138:                                              ; preds = %131, %127, %92, %88
  %139 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %15, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %5, align 4
  br label %141

141:                                              ; preds = %138, %137, %115, %113, %104, %99, %76, %74, %65, %59, %48
  %142 = load i32, i32* %5, align 4
  ret i32 %142
}

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @get_rf_type(%struct.rtl_phy*) #1

declare dso_local i64 @rtl_is_special_data(i32, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @ieee80211_rate_set_vht(%struct.ieee80211_tx_rate*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
