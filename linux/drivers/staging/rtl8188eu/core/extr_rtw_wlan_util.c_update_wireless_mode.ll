; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_wlan_util.c_update_wireless_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_wlan_util.c_update_wireless_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__, %struct.mlme_ext_priv }
%struct.TYPE_2__ = type { i32 }
%struct.mlme_ext_priv = type { i32, %struct.mlme_ext_info }
%struct.mlme_ext_info = type { i32, i64, i64, %struct.wlan_bssid_ex }
%struct.wlan_bssid_ex = type { i8* }

@WIRELESS_11_24N = common dso_local global i32 0, align 4
@WIRELESS_11B = common dso_local global i32 0, align 4
@WIRELESS_11BG = common dso_local global i32 0, align 4
@WIRELESS_11G = common dso_local global i32 0, align 4
@HW_VAR_RESP_SIFS = common dso_local global i32 0, align 4
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
  %11 = getelementptr inbounds %struct.adapter, %struct.adapter* %10, i32 0, i32 1
  store %struct.mlme_ext_priv* %11, %struct.mlme_ext_priv** %6, align 8
  %12 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %13 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %12, i32 0, i32 1
  store %struct.mlme_ext_info* %13, %struct.mlme_ext_info** %7, align 8
  %14 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %7, align 8
  %15 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %14, i32 0, i32 3
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
  %24 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %1
  %28 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %7, align 8
  %29 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %7, align 8
  %34 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  br label %35

35:                                               ; preds = %32, %27, %1
  %36 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %7, align 8
  %37 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* @WIRELESS_11_24N, align 4
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %40, %35
  %43 = load i8*, i8** %9, align 8
  %44 = load i32, i32* %3, align 4
  %45 = call i64 @cckratesonly_included(i8* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i32, i32* @WIRELESS_11B, align 4
  %49 = load i32, i32* %4, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %4, align 4
  br label %65

51:                                               ; preds = %42
  %52 = load i8*, i8** %9, align 8
  %53 = load i32, i32* %3, align 4
  %54 = call i64 @cckrates_included(i8* %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i32, i32* @WIRELESS_11BG, align 4
  %58 = load i32, i32* %4, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %4, align 4
  br label %64

60:                                               ; preds = %51
  %61 = load i32, i32* @WIRELESS_11G, align 4
  %62 = load i32, i32* %4, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %60, %56
  br label %65

65:                                               ; preds = %64, %47
  %66 = load i32, i32* %4, align 4
  %67 = load %struct.adapter*, %struct.adapter** %2, align 8
  %68 = getelementptr inbounds %struct.adapter, %struct.adapter* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = and i32 %66, %70
  %72 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %73 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  store i32 168429576, i32* %5, align 4
  %74 = load %struct.adapter*, %struct.adapter** %2, align 8
  %75 = load i32, i32* @HW_VAR_RESP_SIFS, align 4
  %76 = call i32 @rtw_hal_set_hwreg(%struct.adapter* %74, i32 %75, i32* %5)
  %77 = load %struct.adapter*, %struct.adapter** %2, align 8
  %78 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %79 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @WIRELESS_11B, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %65
  %85 = load i32, i32* @IEEE80211_CCK_RATE_1MB, align 4
  br label %88

86:                                               ; preds = %65
  %87 = load i32, i32* @IEEE80211_OFDM_RATE_6MB, align 4
  br label %88

88:                                               ; preds = %86, %84
  %89 = phi i32 [ %85, %84 ], [ %87, %86 ]
  %90 = call i32 @update_mgnt_tx_rate(%struct.adapter* %77, i32 %89)
  ret void
}

declare dso_local i32 @rtw_get_rateset_len(i8*) #1

declare dso_local i64 @cckratesonly_included(i8*, i32) #1

declare dso_local i64 @cckrates_included(i8*, i32) #1

declare dso_local i32 @rtw_hal_set_hwreg(%struct.adapter*, i32, i32*) #1

declare dso_local i32 @update_mgnt_tx_rate(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
