; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_wlan_util.c_update_wireless_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_wlan_util.c_update_wireless_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.mlme_ext_priv }
%struct.TYPE_4__ = type { i32 (%struct.adapter.0*, i32, i32*)* }
%struct.adapter.0 = type opaque
%struct.TYPE_3__ = type { i32 }
%struct.mlme_ext_priv = type { i32, i32, %struct.mlme_ext_info }
%struct.mlme_ext_info = type { i32, i64, i64, i64, %struct.wlan_bssid_ex }
%struct.wlan_bssid_ex = type { i8* }

@WIRELESS_11AC = common dso_local global i32 0, align 4
@WIRELESS_11_5N = common dso_local global i32 0, align 4
@WIRELESS_11A = common dso_local global i32 0, align 4
@WIRELESS_11_24N = common dso_local global i32 0, align 4
@WIRELESS_11B = common dso_local global i32 0, align 4
@WIRELESS_11BG = common dso_local global i32 0, align 4
@WIRELESS_11G = common dso_local global i32 0, align 4
@HW_VAR_RESP_SIFS = common dso_local global i32 0, align 4
@HW_VAR_WIRELESS_MODE = common dso_local global i32 0, align 4
@IEEE80211_CCK_RATE_1MB = common dso_local global i32 0, align 4
@IEEE80211_OFDM_RATE_6MB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_wireless_mode(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlme_ext_priv*, align 8
  %7 = alloca %struct.mlme_ext_info*, align 8
  %8 = alloca %struct.wlan_bssid_ex*, align 8
  %9 = alloca i8*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  store i32 0, i32* %4, align 4
  %10 = load %struct.adapter*, %struct.adapter** %2, align 8
  %11 = getelementptr inbounds %struct.adapter, %struct.adapter* %10, i32 0, i32 2
  store %struct.mlme_ext_priv* %11, %struct.mlme_ext_priv** %6, align 8
  %12 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %13 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %12, i32 0, i32 2
  store %struct.mlme_ext_info* %13, %struct.mlme_ext_info** %7, align 8
  %14 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %7, align 8
  %15 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %14, i32 0, i32 4
  store %struct.wlan_bssid_ex* %15, %struct.wlan_bssid_ex** %8, align 8
  %16 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %8, align 8
  %17 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %9, align 8
  %19 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %8, align 8
  %20 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @rtw_get_rateset_len(i8* %21)
  store i32 %22, i32* %3, align 4
  %23 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %7, align 8
  %24 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %1
  %28 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %7, align 8
  %29 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %7, align 8
  %34 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  br label %35

35:                                               ; preds = %32, %27, %1
  %36 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %37 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp sgt i32 %38, 14
  br i1 %39, label %40, label %59

40:                                               ; preds = %35
  %41 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %7, align 8
  %42 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* @WIRELESS_11AC, align 4
  store i32 %46, i32* %4, align 4
  br label %55

47:                                               ; preds = %40
  %48 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %7, align 8
  %49 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* @WIRELESS_11_5N, align 4
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %52, %47
  br label %55

55:                                               ; preds = %54, %45
  %56 = load i32, i32* @WIRELESS_11A, align 4
  %57 = load i32, i32* %4, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %4, align 4
  br label %98

59:                                               ; preds = %35
  %60 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %7, align 8
  %61 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i32, i32* @WIRELESS_11AC, align 4
  store i32 %65, i32* %4, align 4
  br label %74

66:                                               ; preds = %59
  %67 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %7, align 8
  %68 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i32, i32* @WIRELESS_11_24N, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %71, %66
  br label %74

74:                                               ; preds = %73, %64
  %75 = load i8*, i8** %9, align 8
  %76 = load i32, i32* %3, align 4
  %77 = call i32 @cckratesonly_included(i8* %75, i32 %76)
  %78 = icmp eq i32 %77, 1
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load i32, i32* @WIRELESS_11B, align 4
  %81 = load i32, i32* %4, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %4, align 4
  br label %97

83:                                               ; preds = %74
  %84 = load i8*, i8** %9, align 8
  %85 = load i32, i32* %3, align 4
  %86 = call i32 @cckrates_included(i8* %84, i32 %85)
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = load i32, i32* @WIRELESS_11BG, align 4
  %90 = load i32, i32* %4, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %4, align 4
  br label %96

92:                                               ; preds = %83
  %93 = load i32, i32* @WIRELESS_11G, align 4
  %94 = load i32, i32* %4, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %92, %88
  br label %97

97:                                               ; preds = %96, %79
  br label %98

98:                                               ; preds = %97, %55
  %99 = load i32, i32* %4, align 4
  %100 = load %struct.adapter*, %struct.adapter** %2, align 8
  %101 = getelementptr inbounds %struct.adapter, %struct.adapter* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = and i32 %99, %103
  %105 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %106 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  store i32 168429576, i32* %5, align 4
  %107 = load %struct.adapter*, %struct.adapter** %2, align 8
  %108 = getelementptr inbounds %struct.adapter, %struct.adapter* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load i32 (%struct.adapter.0*, i32, i32*)*, i32 (%struct.adapter.0*, i32, i32*)** %109, align 8
  %111 = load %struct.adapter*, %struct.adapter** %2, align 8
  %112 = bitcast %struct.adapter* %111 to %struct.adapter.0*
  %113 = load i32, i32* @HW_VAR_RESP_SIFS, align 4
  %114 = call i32 %110(%struct.adapter.0* %112, i32 %113, i32* %5)
  %115 = load %struct.adapter*, %struct.adapter** %2, align 8
  %116 = getelementptr inbounds %struct.adapter, %struct.adapter* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32 (%struct.adapter.0*, i32, i32*)*, i32 (%struct.adapter.0*, i32, i32*)** %117, align 8
  %119 = load %struct.adapter*, %struct.adapter** %2, align 8
  %120 = bitcast %struct.adapter* %119 to %struct.adapter.0*
  %121 = load i32, i32* @HW_VAR_WIRELESS_MODE, align 4
  %122 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %123 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %122, i32 0, i32 1
  %124 = call i32 %118(%struct.adapter.0* %120, i32 %121, i32* %123)
  %125 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %126 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @WIRELESS_11B, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %98
  %132 = load %struct.adapter*, %struct.adapter** %2, align 8
  %133 = load i32, i32* @IEEE80211_CCK_RATE_1MB, align 4
  %134 = call i32 @update_mgnt_tx_rate(%struct.adapter* %132, i32 %133)
  br label %139

135:                                              ; preds = %98
  %136 = load %struct.adapter*, %struct.adapter** %2, align 8
  %137 = load i32, i32* @IEEE80211_OFDM_RATE_6MB, align 4
  %138 = call i32 @update_mgnt_tx_rate(%struct.adapter* %136, i32 %137)
  br label %139

139:                                              ; preds = %135, %131
  ret void
}

declare dso_local i32 @rtw_get_rateset_len(i8*) #1

declare dso_local i32 @cckratesonly_included(i8*, i32) #1

declare dso_local i32 @cckrates_included(i8*, i32) #1

declare dso_local i32 @update_mgnt_tx_rate(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
