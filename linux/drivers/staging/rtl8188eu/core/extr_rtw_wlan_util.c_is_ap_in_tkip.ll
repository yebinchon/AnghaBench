; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_wlan_util.c_is_ap_in_tkip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_wlan_util.c_is_ap_in_tkip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_ext_priv }
%struct.mlme_ext_priv = type { %struct.mlme_ext_info }
%struct.mlme_ext_info = type { %struct.wlan_bssid_ex }
%struct.wlan_bssid_ex = type { i32, i64 }
%struct.ndis_802_11_var_ie = type { i32, i64, i32 }

@WLAN_CAPABILITY_PRIVACY = common dso_local global i32 0, align 4
@RTW_WPA_OUI = common dso_local global i32 0, align 4
@WPA_TKIP_CIPHER = common dso_local global i32 0, align 4
@RSN_TKIP_CIPHER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_ap_in_tkip(%struct.adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ndis_802_11_var_ie*, align 8
  %6 = alloca %struct.mlme_ext_priv*, align 8
  %7 = alloca %struct.mlme_ext_info*, align 8
  %8 = alloca %struct.wlan_bssid_ex*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  %9 = load %struct.adapter*, %struct.adapter** %3, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 0
  store %struct.mlme_ext_priv* %10, %struct.mlme_ext_priv** %6, align 8
  %11 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %12 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %11, i32 0, i32 0
  store %struct.mlme_ext_info* %12, %struct.mlme_ext_info** %7, align 8
  %13 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %7, align 8
  %14 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %13, i32 0, i32 0
  store %struct.wlan_bssid_ex* %14, %struct.wlan_bssid_ex** %8, align 8
  %15 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %8, align 8
  %16 = call i32 @rtw_get_capability(%struct.wlan_bssid_ex* %15)
  %17 = load i32, i32* @WLAN_CAPABILITY_PRIVACY, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %78

20:                                               ; preds = %1
  store i32 4, i32* %4, align 4
  br label %21

21:                                               ; preds = %68, %20
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %7, align 8
  %24 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %22, %26
  br i1 %27, label %28, label %77

28:                                               ; preds = %21
  %29 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %7, align 8
  %30 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %32, %34
  %36 = inttoptr i64 %35 to %struct.ndis_802_11_var_ie*
  store %struct.ndis_802_11_var_ie* %36, %struct.ndis_802_11_var_ie** %5, align 8
  %37 = load %struct.ndis_802_11_var_ie*, %struct.ndis_802_11_var_ie** %5, align 8
  %38 = getelementptr inbounds %struct.ndis_802_11_var_ie, %struct.ndis_802_11_var_ie* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  switch i32 %39, label %67 [
    i32 128, label %40
    i32 129, label %57
  ]

40:                                               ; preds = %28
  %41 = load %struct.ndis_802_11_var_ie*, %struct.ndis_802_11_var_ie** %5, align 8
  %42 = getelementptr inbounds %struct.ndis_802_11_var_ie, %struct.ndis_802_11_var_ie* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @RTW_WPA_OUI, align 4
  %45 = call i32 @memcmp(i32 %43, i32 %44, i32 4)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %40
  %48 = load %struct.ndis_802_11_var_ie*, %struct.ndis_802_11_var_ie** %5, align 8
  %49 = getelementptr inbounds %struct.ndis_802_11_var_ie, %struct.ndis_802_11_var_ie* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, 12
  %52 = load i32, i32* @WPA_TKIP_CIPHER, align 4
  %53 = call i32 @memcmp(i32 %51, i32 %52, i32 4)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %47
  store i32 1, i32* %2, align 4
  br label %79

56:                                               ; preds = %47, %40
  br label %68

57:                                               ; preds = %28
  %58 = load %struct.ndis_802_11_var_ie*, %struct.ndis_802_11_var_ie** %5, align 8
  %59 = getelementptr inbounds %struct.ndis_802_11_var_ie, %struct.ndis_802_11_var_ie* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 8
  %62 = load i32, i32* @RSN_TKIP_CIPHER, align 4
  %63 = call i32 @memcmp(i32 %61, i32 %62, i32 4)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %57
  store i32 1, i32* %2, align 4
  br label %79

66:                                               ; preds = %57
  br label %67

67:                                               ; preds = %28, %66
  br label %68

68:                                               ; preds = %67, %56
  %69 = load %struct.ndis_802_11_var_ie*, %struct.ndis_802_11_var_ie** %5, align 8
  %70 = getelementptr inbounds %struct.ndis_802_11_var_ie, %struct.ndis_802_11_var_ie* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %71, 2
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %74, %72
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %4, align 4
  br label %21

77:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %79

78:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %78, %77, %65, %55
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @rtw_get_capability(%struct.wlan_bssid_ex*) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
