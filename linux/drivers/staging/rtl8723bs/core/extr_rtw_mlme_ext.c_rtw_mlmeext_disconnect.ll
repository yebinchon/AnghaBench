; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme_ext.c_rtw_mlmeext_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme_ext.c_rtw_mlmeext_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.mlme_ext_priv, %struct.mlme_priv }
%struct.mlme_ext_priv = type { i32, i32, i32, i32, %struct.mlme_ext_info }
%struct.mlme_ext_info = type { i32, i32 }
%struct.mlme_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.wlan_bssid_ex = type { i32 }
%struct.sta_info = type { i32 }

@HW_VAR_MLME_DISCONNECT = common dso_local global i32 0, align 4
@HW_VAR_BSSID = common dso_local global i32 0, align 4
@null_addr = common dso_local global i32* null, align 8
@_HW_STATE_STATION_ = common dso_local global i32 0, align 4
@WIFI_FW_NULL_STATE = common dso_local global i32 0, align 4
@CHANNEL_WIDTH_20 = common dso_local global i32 0, align 4
@HAL_PRIME_CHNL_OFFSET_DONT_CARE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @rtw_mlmeext_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_mlmeext_disconnect(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.mlme_priv*, align 8
  %4 = alloca %struct.mlme_ext_priv*, align 8
  %5 = alloca %struct.mlme_ext_info*, align 8
  %6 = alloca %struct.wlan_bssid_ex*, align 8
  %7 = alloca %struct.sta_info*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %8 = load %struct.adapter*, %struct.adapter** %2, align 8
  %9 = getelementptr inbounds %struct.adapter, %struct.adapter* %8, i32 0, i32 2
  store %struct.mlme_priv* %9, %struct.mlme_priv** %3, align 8
  %10 = load %struct.adapter*, %struct.adapter** %2, align 8
  %11 = getelementptr inbounds %struct.adapter, %struct.adapter* %10, i32 0, i32 1
  store %struct.mlme_ext_priv* %11, %struct.mlme_ext_priv** %4, align 8
  %12 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %4, align 8
  %13 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %12, i32 0, i32 4
  store %struct.mlme_ext_info* %13, %struct.mlme_ext_info** %5, align 8
  %14 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %5, align 8
  %15 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %14, i32 0, i32 1
  %16 = bitcast i32* %15 to %struct.wlan_bssid_ex*
  store %struct.wlan_bssid_ex* %16, %struct.wlan_bssid_ex** %6, align 8
  %17 = load %struct.adapter*, %struct.adapter** %2, align 8
  %18 = getelementptr inbounds %struct.adapter, %struct.adapter* %17, i32 0, i32 0
  %19 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %6, align 8
  %20 = call i32 @get_my_bssid(%struct.wlan_bssid_ex* %19)
  %21 = call %struct.sta_info* @rtw_get_stainfo(i32* %18, i32 %20)
  store %struct.sta_info* %21, %struct.sta_info** %7, align 8
  %22 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %23 = icmp ne %struct.sta_info* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = load %struct.adapter*, %struct.adapter** %2, align 8
  %26 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %27 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @rtw_hal_macid_wakeup(%struct.adapter* %25, i32 %28)
  br label %30

30:                                               ; preds = %24, %1
  %31 = load %struct.adapter*, %struct.adapter** %2, align 8
  %32 = load i32, i32* @HW_VAR_MLME_DISCONNECT, align 4
  %33 = call i32 @rtw_hal_set_hwreg(%struct.adapter* %31, i32 %32, i32* null)
  %34 = load %struct.adapter*, %struct.adapter** %2, align 8
  %35 = load i32, i32* @HW_VAR_BSSID, align 4
  %36 = load i32*, i32** @null_addr, align 8
  %37 = call i32 @rtw_hal_set_hwreg(%struct.adapter* %34, i32 %35, i32* %36)
  %38 = load %struct.adapter*, %struct.adapter** %2, align 8
  %39 = load i32, i32* @_HW_STATE_STATION_, align 4
  %40 = call i32 @Set_MSR(%struct.adapter* %38, i32 %39)
  %41 = load i32, i32* @WIFI_FW_NULL_STATE, align 4
  %42 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %5, align 8
  %43 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @CHANNEL_WIDTH_20, align 4
  %45 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %4, align 8
  %46 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @HAL_PRIME_CHNL_OFFSET_DONT_CARE, align 4
  %48 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %4, align 8
  %49 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load %struct.adapter*, %struct.adapter** %2, align 8
  %51 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %4, align 8
  %52 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %4, align 8
  %55 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %4, align 8
  %58 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @set_channel_bwmode(%struct.adapter* %50, i32 %53, i32 %56, i32 %59)
  %61 = load %struct.adapter*, %struct.adapter** %2, align 8
  %62 = call i32 @flush_all_cam_entry(%struct.adapter* %61)
  %63 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %4, align 8
  %64 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %63, i32 0, i32 0
  %65 = call i32 @del_timer_sync(i32* %64)
  %66 = load %struct.mlme_priv*, %struct.mlme_priv** %3, align 8
  %67 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  store i64 0, i64* %68, align 8
  %69 = load %struct.mlme_priv*, %struct.mlme_priv** %3, align 8
  %70 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  store i64 0, i64* %71, align 8
  ret void
}

declare dso_local %struct.sta_info* @rtw_get_stainfo(i32*, i32) #1

declare dso_local i32 @get_my_bssid(%struct.wlan_bssid_ex*) #1

declare dso_local i32 @rtw_hal_macid_wakeup(%struct.adapter*, i32) #1

declare dso_local i32 @rtw_hal_set_hwreg(%struct.adapter*, i32, i32*) #1

declare dso_local i32 @Set_MSR(%struct.adapter*, i32) #1

declare dso_local i32 @set_channel_bwmode(%struct.adapter*, i32, i32, i32) #1

declare dso_local i32 @flush_all_cam_entry(%struct.adapter*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
