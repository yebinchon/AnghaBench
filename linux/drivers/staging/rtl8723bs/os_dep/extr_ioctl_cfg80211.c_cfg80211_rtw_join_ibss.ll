; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_ioctl_cfg80211.c_cfg80211_rtw_join_ibss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_ioctl_cfg80211.c_cfg80211_rtw_join_ibss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.cfg80211_ibss_params = type { i32, i64 }
%struct.adapter = type { %struct.mlme_priv, %struct.security_priv }
%struct.mlme_priv = type { i32 }
%struct.security_priv = type { i32, i32, i8*, i8*, i32 }
%struct.ndis_802_11_ssid = type { i32, i32 }

@_FAIL = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@WIFI_AP_STATE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IW_ESSID_MAX_SIZE = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@Ndis802_11EncryptionDisabled = common dso_local global i32 0, align 4
@_NO_PRIVACY_ = common dso_local global i8* null, align 8
@dot11AuthAlgrthm_Open = common dso_local global i32 0, align 4
@Ndis802_11AuthModeOpen = common dso_local global i32 0, align 4
@NL80211_AUTHTYPE_OPEN_SYSTEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, %struct.cfg80211_ibss_params*)* @cfg80211_rtw_join_ibss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfg80211_rtw_join_ibss(%struct.wiphy* %0, %struct.net_device* %1, %struct.cfg80211_ibss_params* %2) #0 {
  %4 = alloca %struct.wiphy*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.cfg80211_ibss_params*, align 8
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca %struct.ndis_802_11_ssid, align 4
  %9 = alloca %struct.security_priv*, align 8
  %10 = alloca %struct.mlme_priv*, align 8
  %11 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  store %struct.cfg80211_ibss_params* %2, %struct.cfg80211_ibss_params** %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call i64 @rtw_netdev_priv(%struct.net_device* %12)
  %14 = inttoptr i64 %13 to %struct.adapter*
  store %struct.adapter* %14, %struct.adapter** %7, align 8
  %15 = load %struct.adapter*, %struct.adapter** %7, align 8
  %16 = getelementptr inbounds %struct.adapter, %struct.adapter* %15, i32 0, i32 1
  store %struct.security_priv* %16, %struct.security_priv** %9, align 8
  %17 = load %struct.adapter*, %struct.adapter** %7, align 8
  %18 = getelementptr inbounds %struct.adapter, %struct.adapter* %17, i32 0, i32 0
  store %struct.mlme_priv* %18, %struct.mlme_priv** %10, align 8
  store i32 0, i32* %11, align 4
  %19 = load i64, i64* @_FAIL, align 8
  %20 = load %struct.adapter*, %struct.adapter** %7, align 8
  %21 = call i64 @rtw_pwr_wakeup(%struct.adapter* %20)
  %22 = icmp eq i64 %19, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @EPERM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %11, align 4
  br label %100

26:                                               ; preds = %3
  %27 = load %struct.mlme_priv*, %struct.mlme_priv** %10, align 8
  %28 = load i32, i32* @WIFI_AP_STATE, align 4
  %29 = call i64 @check_fwstate(%struct.mlme_priv* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @EPERM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %11, align 4
  br label %100

34:                                               ; preds = %26
  %35 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %6, align 8
  %36 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %6, align 8
  %41 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %39, %34
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %11, align 4
  br label %100

47:                                               ; preds = %39
  %48 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %6, align 8
  %49 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @IW_ESSID_MAX_SIZE, align 4
  %52 = icmp sgt i32 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = load i32, i32* @E2BIG, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %11, align 4
  br label %100

56:                                               ; preds = %47
  %57 = call i32 @memset(%struct.ndis_802_11_ssid* %8, i32 0, i32 8)
  %58 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %6, align 8
  %59 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = getelementptr inbounds %struct.ndis_802_11_ssid, %struct.ndis_802_11_ssid* %8, i32 0, i32 1
  store i32 %60, i32* %61, align 4
  %62 = getelementptr inbounds %struct.ndis_802_11_ssid, %struct.ndis_802_11_ssid* %8, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %6, align 8
  %65 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to i32*
  %68 = load %struct.cfg80211_ibss_params*, %struct.cfg80211_ibss_params** %6, align 8
  %69 = getelementptr inbounds %struct.cfg80211_ibss_params, %struct.cfg80211_ibss_params* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @memcpy(i32 %63, i32* %67, i32 %70)
  %72 = load i32, i32* @Ndis802_11EncryptionDisabled, align 4
  %73 = load %struct.security_priv*, %struct.security_priv** %9, align 8
  %74 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 8
  %75 = load i8*, i8** @_NO_PRIVACY_, align 8
  %76 = load %struct.security_priv*, %struct.security_priv** %9, align 8
  %77 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %76, i32 0, i32 3
  store i8* %75, i8** %77, align 8
  %78 = load i8*, i8** @_NO_PRIVACY_, align 8
  %79 = load %struct.security_priv*, %struct.security_priv** %9, align 8
  %80 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %79, i32 0, i32 2
  store i8* %78, i8** %80, align 8
  %81 = load i32, i32* @dot11AuthAlgrthm_Open, align 4
  %82 = load %struct.security_priv*, %struct.security_priv** %9, align 8
  %83 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* @Ndis802_11AuthModeOpen, align 4
  %85 = load %struct.security_priv*, %struct.security_priv** %9, align 8
  %86 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load %struct.security_priv*, %struct.security_priv** %9, align 8
  %88 = load i32, i32* @NL80211_AUTHTYPE_OPEN_SYSTEM, align 4
  %89 = call i32 @rtw_cfg80211_set_auth_type(%struct.security_priv* %87, i32 %88)
  store i32 %89, i32* %11, align 4
  %90 = load %struct.adapter*, %struct.adapter** %7, align 8
  %91 = load %struct.security_priv*, %struct.security_priv** %9, align 8
  %92 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @rtw_set_802_11_authentication_mode(%struct.adapter* %90, i32 %93)
  %95 = load %struct.adapter*, %struct.adapter** %7, align 8
  %96 = call i32 @rtw_set_802_11_ssid(%struct.adapter* %95, %struct.ndis_802_11_ssid* %8)
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %56
  store i32 -1, i32* %11, align 4
  br label %100

99:                                               ; preds = %56
  br label %100

100:                                              ; preds = %99, %98, %53, %44, %31, %23
  %101 = load i32, i32* %11, align 4
  ret i32 %101
}

declare dso_local i64 @rtw_netdev_priv(%struct.net_device*) #1

declare dso_local i64 @rtw_pwr_wakeup(%struct.adapter*) #1

declare dso_local i64 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @memset(%struct.ndis_802_11_ssid*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @rtw_cfg80211_set_auth_type(%struct.security_priv*, i32) #1

declare dso_local i32 @rtw_set_802_11_authentication_mode(%struct.adapter*, i32) #1

declare dso_local i32 @rtw_set_802_11_ssid(%struct.adapter*, %struct.ndis_802_11_ssid*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
