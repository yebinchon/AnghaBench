; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_mlme_ext.c_disconnect_hdl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_mlme_ext.c_disconnect_hdl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__, %struct.mlme_ext_priv }
%struct.TYPE_2__ = type { i32 }
%struct.mlme_ext_priv = type { i32, i32, i32, i32, %struct.mlme_ext_info }
%struct.mlme_ext_info = type { i32, i32 }
%struct.disconnect_parm = type { i32 }
%struct.wlan_bssid_ex = type { i32 }

@WLAN_REASON_DEAUTH_LEAVING = common dso_local global i32 0, align 4
@HW_VAR_MLME_DISCONNECT = common dso_local global i32 0, align 4
@HW_VAR_BSSID = common dso_local global i32 0, align 4
@null_addr = common dso_local global i64* null, align 8
@WIFI_FW_ADHOC_STATE = common dso_local global i32 0, align 4
@WIFI_FW_AP_STATE = common dso_local global i32 0, align 4
@HW_VAR_BCN_FUNC = common dso_local global i32 0, align 4
@_HW_STATE_STATION_ = common dso_local global i32 0, align 4
@WIFI_FW_NULL_STATE = common dso_local global i32 0, align 4
@HT_CHANNEL_WIDTH_20 = common dso_local global i32 0, align 4
@HAL_PRIME_CHNL_OFFSET_DONT_CARE = common dso_local global i32 0, align 4
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
  %13 = getelementptr inbounds %struct.adapter, %struct.adapter* %12, i32 0, i32 1
  store %struct.mlme_ext_priv* %13, %struct.mlme_ext_priv** %6, align 8
  %14 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %15 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %14, i32 0, i32 4
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
  %34 = load %struct.adapter*, %struct.adapter** %3, align 8
  %35 = load i32, i32* @HW_VAR_MLME_DISCONNECT, align 4
  %36 = call i32 @rtw_hal_set_hwreg(%struct.adapter* %34, i32 %35, i64* null)
  %37 = load %struct.adapter*, %struct.adapter** %3, align 8
  %38 = load i32, i32* @HW_VAR_BSSID, align 4
  %39 = load i64*, i64** @null_addr, align 8
  %40 = call i32 @rtw_hal_set_hwreg(%struct.adapter* %37, i32 %38, i64* %39)
  %41 = load %struct.adapter*, %struct.adapter** %3, align 8
  %42 = load %struct.adapter*, %struct.adapter** %3, align 8
  %43 = getelementptr inbounds %struct.adapter, %struct.adapter* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @update_tx_basic_rate(%struct.adapter* %41, i32 %45)
  %47 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %7, align 8
  %48 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 3
  %51 = load i32, i32* @WIFI_FW_ADHOC_STATE, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %60, label %53

53:                                               ; preds = %33
  %54 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %7, align 8
  %55 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, 3
  %58 = load i32, i32* @WIFI_FW_AP_STATE, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %53, %33
  store i64 0, i64* %9, align 8
  %61 = load %struct.adapter*, %struct.adapter** %3, align 8
  %62 = load i32, i32* @HW_VAR_BCN_FUNC, align 4
  %63 = call i32 @rtw_hal_set_hwreg(%struct.adapter* %61, i32 %62, i64* %9)
  br label %64

64:                                               ; preds = %60, %53
  %65 = load %struct.adapter*, %struct.adapter** %3, align 8
  %66 = load i32, i32* @_HW_STATE_STATION_, align 4
  %67 = call i32 @Set_MSR(%struct.adapter* %65, i32 %66)
  %68 = load i32, i32* @WIFI_FW_NULL_STATE, align 4
  %69 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %7, align 8
  %70 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* @HT_CHANNEL_WIDTH_20, align 4
  %72 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %73 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @HAL_PRIME_CHNL_OFFSET_DONT_CARE, align 4
  %75 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %76 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 4
  %77 = load %struct.adapter*, %struct.adapter** %3, align 8
  %78 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %79 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %82 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %85 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @set_channel_bwmode(%struct.adapter* %77, i32 %80, i32 %83, i32 %86)
  %88 = load %struct.adapter*, %struct.adapter** %3, align 8
  %89 = call i32 @flush_all_cam_entry(%struct.adapter* %88)
  %90 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %91 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %90, i32 0, i32 0
  %92 = call i32 @del_timer_sync(i32* %91)
  %93 = load %struct.adapter*, %struct.adapter** %3, align 8
  %94 = call i32 @rtw_free_uc_swdec_pending_queue(%struct.adapter* %93)
  %95 = load i64, i64* @H2C_SUCCESS, align 8
  ret i64 %95
}

declare dso_local i64 @is_client_associated_to_ap(%struct.adapter*) #1

declare dso_local i32 @issue_deauth_ex(%struct.adapter*, i32, i32, i32, i32) #1

declare dso_local i32 @rtw_hal_set_hwreg(%struct.adapter*, i32, i64*) #1

declare dso_local i32 @update_tx_basic_rate(%struct.adapter*, i32) #1

declare dso_local i32 @Set_MSR(%struct.adapter*, i32) #1

declare dso_local i32 @set_channel_bwmode(%struct.adapter*, i32, i32, i32) #1

declare dso_local i32 @flush_all_cam_entry(%struct.adapter*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @rtw_free_uc_swdec_pending_queue(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
