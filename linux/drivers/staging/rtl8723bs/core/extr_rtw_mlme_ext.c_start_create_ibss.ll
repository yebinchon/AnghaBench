; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme_ext.c_start_create_ibss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme_ext.c_start_create_ibss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_6__, %struct.mlme_ext_priv }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.mlme_ext_priv = type { i32, %struct.mlme_ext_info }
%struct.mlme_ext_info = type { i32, i32, i32 }
%struct.wlan_bssid_ex = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@cap_IBSS = common dso_local global i16 0, align 2
@HW_VAR_SEC_CFG = common dso_local global i32 0, align 4
@HW_VAR_DO_IQK = common dso_local global i32 0, align 4
@HAL_PRIME_CHNL_OFFSET_DONT_CARE = common dso_local global i32 0, align 4
@CHANNEL_WIDTH_20 = common dso_local global i32 0, align 4
@WIFI_FW_ADHOC_STATE = common dso_local global i32 0, align 4
@_FAIL = common dso_local global i64 0, align 8
@_module_rtl871x_mlme_c_ = common dso_local global i32 0, align 4
@_drv_err_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"issuing beacon frame fail....\0A\00", align 1
@WIFI_FW_NULL_STATE = common dso_local global i32 0, align 4
@HW_VAR_BSSID = common dso_local global i32 0, align 4
@HW_VAR_MLME_JOIN = common dso_local global i32 0, align 4
@WIFI_FW_ASSOC_SUCCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"start_create_ibss, invalid cap:%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @start_create_ibss(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlme_ext_priv*, align 8
  %7 = alloca %struct.mlme_ext_info*, align 8
  %8 = alloca %struct.wlan_bssid_ex*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %9 = load %struct.adapter*, %struct.adapter** %2, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 1
  store %struct.mlme_ext_priv* %10, %struct.mlme_ext_priv** %6, align 8
  %11 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %12 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %11, i32 0, i32 1
  store %struct.mlme_ext_info* %12, %struct.mlme_ext_info** %7, align 8
  %13 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %7, align 8
  %14 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %13, i32 0, i32 2
  %15 = bitcast i32* %14 to %struct.wlan_bssid_ex*
  store %struct.wlan_bssid_ex* %15, %struct.wlan_bssid_ex** %8, align 8
  %16 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %8, align 8
  %17 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %22 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %8, align 8
  %24 = call i32 @get_beacon_interval(%struct.wlan_bssid_ex* %23)
  %25 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %7, align 8
  %26 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.adapter*, %struct.adapter** %2, align 8
  %28 = call i32 @update_wireless_mode(%struct.adapter* %27)
  %29 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %8, align 8
  %30 = call zeroext i16 @rtw_get_capability(%struct.wlan_bssid_ex* %29)
  store i16 %30, i16* %3, align 2
  %31 = load %struct.adapter*, %struct.adapter** %2, align 8
  %32 = load i16, i16* %3, align 2
  %33 = call i32 @update_capinfo(%struct.adapter* %31, i16 zeroext %32)
  %34 = load i16, i16* %3, align 2
  %35 = zext i16 %34 to i32
  %36 = load i16, i16* @cap_IBSS, align 2
  %37 = zext i16 %36 to i32
  %38 = and i32 %35, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %100

40:                                               ; preds = %1
  store i32 207, i32* %4, align 4
  %41 = load %struct.adapter*, %struct.adapter** %2, align 8
  %42 = load i32, i32* @HW_VAR_SEC_CFG, align 4
  %43 = call i32 @rtw_hal_set_hwreg(%struct.adapter* %41, i32 %42, i32* %4)
  %44 = load %struct.adapter*, %struct.adapter** %2, align 8
  %45 = load i32, i32* @HW_VAR_DO_IQK, align 4
  %46 = call i32 @rtw_hal_set_hwreg(%struct.adapter* %44, i32 %45, i32* null)
  %47 = load %struct.adapter*, %struct.adapter** %2, align 8
  %48 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %49 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @HAL_PRIME_CHNL_OFFSET_DONT_CARE, align 4
  %52 = load i32, i32* @CHANNEL_WIDTH_20, align 4
  %53 = call i32 @set_channel_bwmode(%struct.adapter* %47, i32 %50, i32 %51, i32 %52)
  %54 = load %struct.adapter*, %struct.adapter** %2, align 8
  %55 = call i32 @beacon_timing_control(%struct.adapter* %54)
  %56 = load i32, i32* @WIFI_FW_ADHOC_STATE, align 4
  %57 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %7, align 8
  %58 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  %59 = load %struct.adapter*, %struct.adapter** %2, align 8
  %60 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %7, align 8
  %61 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, 3
  %64 = call i32 @Set_MSR(%struct.adapter* %59, i32 %63)
  %65 = load %struct.adapter*, %struct.adapter** %2, align 8
  %66 = call i64 @send_beacon(%struct.adapter* %65)
  %67 = load i64, i64* @_FAIL, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %40
  %70 = load i32, i32* @_module_rtl871x_mlme_c_, align 4
  %71 = load i32, i32* @_drv_err_, align 4
  %72 = call i32 @RT_TRACE(i32 %70, i32 %71, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %73 = load %struct.adapter*, %struct.adapter** %2, align 8
  %74 = call i32 @report_join_res(%struct.adapter* %73, i32 -1)
  %75 = load i32, i32* @WIFI_FW_NULL_STATE, align 4
  %76 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %7, align 8
  %77 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  br label %99

78:                                               ; preds = %40
  %79 = load %struct.adapter*, %struct.adapter** %2, align 8
  %80 = load i32, i32* @HW_VAR_BSSID, align 4
  %81 = load %struct.adapter*, %struct.adapter** %2, align 8
  %82 = getelementptr inbounds %struct.adapter, %struct.adapter* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @rtw_hal_set_hwreg(%struct.adapter* %79, i32 %80, i32* %85)
  store i32 0, i32* %5, align 4
  %87 = load %struct.adapter*, %struct.adapter** %2, align 8
  %88 = load i32, i32* @HW_VAR_MLME_JOIN, align 4
  %89 = call i32 @rtw_hal_set_hwreg(%struct.adapter* %87, i32 %88, i32* %5)
  %90 = load %struct.adapter*, %struct.adapter** %2, align 8
  %91 = call i32 @report_join_res(%struct.adapter* %90, i32 1)
  %92 = load i32, i32* @WIFI_FW_ASSOC_SUCCESS, align 4
  %93 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %7, align 8
  %94 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 4
  %97 = load %struct.adapter*, %struct.adapter** %2, align 8
  %98 = call i32 @rtw_indicate_connect(%struct.adapter* %97)
  br label %99

99:                                               ; preds = %78, %69
  br label %103

100:                                              ; preds = %1
  %101 = load i16, i16* %3, align 2
  %102 = call i32 @DBG_871X(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i16 zeroext %101)
  br label %106

103:                                              ; preds = %99
  %104 = load %struct.adapter*, %struct.adapter** %2, align 8
  %105 = call i32 @update_bmc_sta(%struct.adapter* %104)
  br label %106

106:                                              ; preds = %103, %100
  ret void
}

declare dso_local i32 @get_beacon_interval(%struct.wlan_bssid_ex*) #1

declare dso_local i32 @update_wireless_mode(%struct.adapter*) #1

declare dso_local zeroext i16 @rtw_get_capability(%struct.wlan_bssid_ex*) #1

declare dso_local i32 @update_capinfo(%struct.adapter*, i16 zeroext) #1

declare dso_local i32 @rtw_hal_set_hwreg(%struct.adapter*, i32, i32*) #1

declare dso_local i32 @set_channel_bwmode(%struct.adapter*, i32, i32, i32) #1

declare dso_local i32 @beacon_timing_control(%struct.adapter*) #1

declare dso_local i32 @Set_MSR(%struct.adapter*, i32) #1

declare dso_local i64 @send_beacon(%struct.adapter*) #1

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i32 @report_join_res(%struct.adapter*, i32) #1

declare dso_local i32 @rtw_indicate_connect(%struct.adapter*) #1

declare dso_local i32 @DBG_871X(i8*, i16 zeroext) #1

declare dso_local i32 @update_bmc_sta(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
