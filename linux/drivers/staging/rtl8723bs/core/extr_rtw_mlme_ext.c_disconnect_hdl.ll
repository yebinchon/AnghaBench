; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme_ext.c_disconnect_hdl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme_ext.c_disconnect_hdl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_ext_priv }
%struct.mlme_ext_priv = type { %struct.mlme_ext_info }
%struct.mlme_ext_info = type { i32, i32 }
%struct.disconnect_parm = type { i32 }
%struct.wlan_bssid_ex = type { i32 }

@WLAN_REASON_DEAUTH_LEAVING = common dso_local global i32 0, align 4
@WIFI_FW_ADHOC_STATE = common dso_local global i32 0, align 4
@WIFI_FW_AP_STATE = common dso_local global i32 0, align 4
@HW_VAR_BCN_FUNC = common dso_local global i32 0, align 4
@H2C_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @disconnect_hdl(%struct.adapter* %0, i8* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.disconnect_parm*, align 8
  %6 = alloca %struct.mlme_ext_priv*, align 8
  %7 = alloca %struct.mlme_ext_info*, align 8
  %8 = alloca %struct.wlan_bssid_ex*, align 8
  %9 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.disconnect_parm*
  store %struct.disconnect_parm* %11, %struct.disconnect_parm** %5, align 8
  %12 = load %struct.adapter*, %struct.adapter** %3, align 8
  %13 = getelementptr inbounds %struct.adapter, %struct.adapter* %12, i32 0, i32 0
  store %struct.mlme_ext_priv* %13, %struct.mlme_ext_priv** %6, align 8
  %14 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %15 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %14, i32 0, i32 0
  store %struct.mlme_ext_info* %15, %struct.mlme_ext_info** %7, align 8
  %16 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %7, align 8
  %17 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %16, i32 0, i32 1
  %18 = bitcast i32* %17 to %struct.wlan_bssid_ex*
  store %struct.wlan_bssid_ex* %18, %struct.wlan_bssid_ex** %8, align 8
  %19 = load %struct.adapter*, %struct.adapter** %3, align 8
  %20 = call i64 @is_client_associated_to_ap(%struct.adapter* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %2
  %23 = load %struct.adapter*, %struct.adapter** %3, align 8
  %24 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %8, align 8
  %25 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @WLAN_REASON_DEAUTH_LEAVING, align 4
  %28 = load %struct.disconnect_parm*, %struct.disconnect_parm** %5, align 8
  %29 = getelementptr inbounds %struct.disconnect_parm, %struct.disconnect_parm* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sdiv i32 %30, 100
  %32 = call i32 @issue_deauth_ex(%struct.adapter* %23, i32 %26, i32 %27, i32 %31, i32 100)
  br label %33

33:                                               ; preds = %22, %2
  %34 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %7, align 8
  %35 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 3
  %38 = load i32, i32* @WIFI_FW_ADHOC_STATE, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %47, label %40

40:                                               ; preds = %33
  %41 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %7, align 8
  %42 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, 3
  %45 = load i32, i32* @WIFI_FW_AP_STATE, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %40, %33
  store i64 0, i64* %9, align 8
  %48 = load %struct.adapter*, %struct.adapter** %3, align 8
  %49 = load i32, i32* @HW_VAR_BCN_FUNC, align 4
  %50 = call i32 @rtw_hal_set_hwreg(%struct.adapter* %48, i32 %49, i64* %9)
  br label %51

51:                                               ; preds = %47, %40
  %52 = load %struct.adapter*, %struct.adapter** %3, align 8
  %53 = call i32 @rtw_mlmeext_disconnect(%struct.adapter* %52)
  %54 = load %struct.adapter*, %struct.adapter** %3, align 8
  %55 = call i32 @rtw_free_uc_swdec_pending_queue(%struct.adapter* %54)
  %56 = load i64, i64* @H2C_SUCCESS, align 8
  ret i64 %56
}

declare dso_local i64 @is_client_associated_to_ap(%struct.adapter*) #1

declare dso_local i32 @issue_deauth_ex(%struct.adapter*, i32, i32, i32, i32) #1

declare dso_local i32 @rtw_hal_set_hwreg(%struct.adapter*, i32, i64*) #1

declare dso_local i32 @rtw_mlmeext_disconnect(%struct.adapter*) #1

declare dso_local i32 @rtw_free_uc_swdec_pending_queue(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
