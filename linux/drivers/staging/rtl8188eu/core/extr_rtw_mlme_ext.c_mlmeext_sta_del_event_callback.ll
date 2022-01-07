; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_mlme_ext.c_mlmeext_sta_del_event_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_mlme_ext.c_mlmeext_sta_del_event_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__, %struct.mlme_ext_priv }
%struct.TYPE_2__ = type { i32 }
%struct.mlme_ext_priv = type { i32, i32, i32, i32, %struct.mlme_ext_info }
%struct.mlme_ext_info = type { i32 }

@HW_VAR_MLME_DISCONNECT = common dso_local global i32 0, align 4
@HW_VAR_BSSID = common dso_local global i32 0, align 4
@null_addr = common dso_local global i32* null, align 8
@HT_CHANNEL_WIDTH_20 = common dso_local global i32 0, align 4
@HAL_PRIME_CHNL_OFFSET_DONT_CARE = common dso_local global i32 0, align 4
@WIFI_FW_NULL_STATE = common dso_local global i32 0, align 4
@_HW_STATE_STATION_ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlmeext_sta_del_event_callback(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.mlme_ext_priv*, align 8
  %4 = alloca %struct.mlme_ext_info*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %5 = load %struct.adapter*, %struct.adapter** %2, align 8
  %6 = getelementptr inbounds %struct.adapter, %struct.adapter* %5, i32 0, i32 1
  store %struct.mlme_ext_priv* %6, %struct.mlme_ext_priv** %3, align 8
  %7 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %3, align 8
  %8 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %7, i32 0, i32 4
  store %struct.mlme_ext_info* %8, %struct.mlme_ext_info** %4, align 8
  %9 = load %struct.adapter*, %struct.adapter** %2, align 8
  %10 = call i64 @is_client_associated_to_ap(%struct.adapter* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load %struct.adapter*, %struct.adapter** %2, align 8
  %14 = call i64 @is_IBSS_empty(%struct.adapter* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %58

16:                                               ; preds = %12, %1
  %17 = load %struct.adapter*, %struct.adapter** %2, align 8
  %18 = load i32, i32* @HW_VAR_MLME_DISCONNECT, align 4
  %19 = call i32 @rtw_hal_set_hwreg(%struct.adapter* %17, i32 %18, i32* null)
  %20 = load %struct.adapter*, %struct.adapter** %2, align 8
  %21 = load i32, i32* @HW_VAR_BSSID, align 4
  %22 = load i32*, i32** @null_addr, align 8
  %23 = call i32 @rtw_hal_set_hwreg(%struct.adapter* %20, i32 %21, i32* %22)
  %24 = load %struct.adapter*, %struct.adapter** %2, align 8
  %25 = load %struct.adapter*, %struct.adapter** %2, align 8
  %26 = getelementptr inbounds %struct.adapter, %struct.adapter* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @update_tx_basic_rate(%struct.adapter* %24, i32 %28)
  %30 = load i32, i32* @HT_CHANNEL_WIDTH_20, align 4
  %31 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %3, align 8
  %32 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @HAL_PRIME_CHNL_OFFSET_DONT_CARE, align 4
  %34 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %3, align 8
  %35 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load %struct.adapter*, %struct.adapter** %2, align 8
  %37 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %3, align 8
  %38 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %3, align 8
  %41 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %3, align 8
  %44 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @set_channel_bwmode(%struct.adapter* %36, i32 %39, i32 %42, i32 %45)
  %47 = load %struct.adapter*, %struct.adapter** %2, align 8
  %48 = call i32 @flush_all_cam_entry(%struct.adapter* %47)
  %49 = load i32, i32* @WIFI_FW_NULL_STATE, align 4
  %50 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %4, align 8
  %51 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load %struct.adapter*, %struct.adapter** %2, align 8
  %53 = load i32, i32* @_HW_STATE_STATION_, align 4
  %54 = call i32 @Set_MSR(%struct.adapter* %52, i32 %53)
  %55 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %3, align 8
  %56 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %55, i32 0, i32 0
  %57 = call i32 @del_timer_sync(i32* %56)
  br label %58

58:                                               ; preds = %16, %12
  ret void
}

declare dso_local i64 @is_client_associated_to_ap(%struct.adapter*) #1

declare dso_local i64 @is_IBSS_empty(%struct.adapter*) #1

declare dso_local i32 @rtw_hal_set_hwreg(%struct.adapter*, i32, i32*) #1

declare dso_local i32 @update_tx_basic_rate(%struct.adapter*, i32) #1

declare dso_local i32 @set_channel_bwmode(%struct.adapter*, i32, i32, i32) #1

declare dso_local i32 @flush_all_cam_entry(%struct.adapter*) #1

declare dso_local i32 @Set_MSR(%struct.adapter*, i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
