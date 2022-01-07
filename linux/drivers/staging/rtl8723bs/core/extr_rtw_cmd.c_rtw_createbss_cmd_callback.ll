; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_cmd.c_rtw_createbss_cmd_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_cmd.c_rtw_createbss_cmd_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.mlme_priv }
%struct.mlme_priv = type { i32, %struct.TYPE_2__, i32, %struct.wlan_network }
%struct.TYPE_2__ = type { i32, i32 }
%struct.wlan_network = type { i32, i32, i32 }
%struct.cmd_obj = type { i64, i32* }
%struct.sta_info = type { i32 }
%struct.wlan_bssid_ex = type { i32, i32 }

@H2C_SUCCESS = common dso_local global i64 0, align 8
@_module_rtl871x_cmd_c_ = common dso_local global i32 0, align 4
@_drv_err_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"\0A ********Error: rtw_createbss_cmd_callback  Fail ************\0A\0A.\00", align 1
@WIFI_AP_STATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"\0ACan't alloc sta_info when createbss_cmd_callback\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"\0A Error:  can't get pwlan in rtw_joinbss_event_callback\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@_FW_UNDER_LINKING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_createbss_cmd_callback(%struct.adapter* %0, %struct.cmd_obj* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.cmd_obj*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sta_info*, align 8
  %7 = alloca %struct.wlan_network*, align 8
  %8 = alloca %struct.mlme_priv*, align 8
  %9 = alloca %struct.wlan_bssid_ex*, align 8
  %10 = alloca %struct.wlan_network*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.cmd_obj* %1, %struct.cmd_obj** %4, align 8
  store %struct.sta_info* null, %struct.sta_info** %6, align 8
  store %struct.wlan_network* null, %struct.wlan_network** %7, align 8
  %11 = load %struct.adapter*, %struct.adapter** %3, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 1
  store %struct.mlme_priv* %12, %struct.mlme_priv** %8, align 8
  %13 = load %struct.cmd_obj*, %struct.cmd_obj** %4, align 8
  %14 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = bitcast i32* %15 to %struct.wlan_bssid_ex*
  store %struct.wlan_bssid_ex* %16, %struct.wlan_bssid_ex** %9, align 8
  %17 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %18 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %17, i32 0, i32 3
  store %struct.wlan_network* %18, %struct.wlan_network** %10, align 8
  %19 = load %struct.cmd_obj*, %struct.cmd_obj** %4, align 8
  %20 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %138

24:                                               ; preds = %2
  %25 = load %struct.cmd_obj*, %struct.cmd_obj** %4, align 8
  %26 = getelementptr inbounds %struct.cmd_obj, %struct.cmd_obj* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @H2C_SUCCESS, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load i32, i32* @_module_rtl871x_cmd_c_, align 4
  %32 = load i32, i32* @_drv_err_, align 4
  %33 = call i32 @RT_TRACE(i32 %31, i32 %32, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %35 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %34, i32 0, i32 2
  %36 = call i32 @_set_timer(i32* %35, i32 1)
  br label %37

37:                                               ; preds = %30, %24
  %38 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %39 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %38, i32 0, i32 2
  %40 = call i32 @_cancel_timer(i32* %39, i32* %5)
  %41 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %42 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %41, i32 0, i32 0
  %43 = call i32 @spin_lock_bh(i32* %42)
  %44 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %45 = load i32, i32* @WIFI_AP_STATE, align 4
  %46 = call i64 @check_fwstate(%struct.mlme_priv* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %74

48:                                               ; preds = %37
  %49 = load %struct.adapter*, %struct.adapter** %3, align 8
  %50 = getelementptr inbounds %struct.adapter, %struct.adapter* %49, i32 0, i32 0
  %51 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %9, align 8
  %52 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call %struct.sta_info* @rtw_get_stainfo(i32* %50, i32 %53)
  store %struct.sta_info* %54, %struct.sta_info** %6, align 8
  %55 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %56 = icmp ne %struct.sta_info* %55, null
  br i1 %56, label %71, label %57

57:                                               ; preds = %48
  %58 = load %struct.adapter*, %struct.adapter** %3, align 8
  %59 = getelementptr inbounds %struct.adapter, %struct.adapter* %58, i32 0, i32 0
  %60 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %9, align 8
  %61 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call %struct.sta_info* @rtw_alloc_stainfo(i32* %59, i32 %62)
  store %struct.sta_info* %63, %struct.sta_info** %6, align 8
  %64 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %65 = icmp eq %struct.sta_info* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %57
  %67 = load i32, i32* @_module_rtl871x_cmd_c_, align 4
  %68 = load i32, i32* @_drv_err_, align 4
  %69 = call i32 @RT_TRACE(i32 %67, i32 %68, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  br label %134

70:                                               ; preds = %57
  br label %71

71:                                               ; preds = %70, %48
  %72 = load %struct.adapter*, %struct.adapter** %3, align 8
  %73 = call i32 @rtw_indicate_connect(%struct.adapter* %72)
  br label %133

74:                                               ; preds = %37
  %75 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %76 = call %struct.wlan_network* @rtw_alloc_network(%struct.mlme_priv* %75)
  store %struct.wlan_network* %76, %struct.wlan_network** %7, align 8
  %77 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %78 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = call i32 @spin_lock_bh(i32* %79)
  %81 = load %struct.wlan_network*, %struct.wlan_network** %7, align 8
  %82 = icmp eq %struct.wlan_network* %81, null
  br i1 %82, label %83, label %101

83:                                               ; preds = %74
  %84 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %85 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %84, i32 0, i32 1
  %86 = call %struct.wlan_network* @rtw_get_oldest_wlan_network(%struct.TYPE_2__* %85)
  store %struct.wlan_network* %86, %struct.wlan_network** %7, align 8
  %87 = load %struct.wlan_network*, %struct.wlan_network** %7, align 8
  %88 = icmp eq %struct.wlan_network* %87, null
  br i1 %88, label %89, label %97

89:                                               ; preds = %83
  %90 = load i32, i32* @_module_rtl871x_cmd_c_, align 4
  %91 = load i32, i32* @_drv_err_, align 4
  %92 = call i32 @RT_TRACE(i32 %90, i32 %91, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0))
  %93 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %94 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = call i32 @spin_unlock_bh(i32* %95)
  br label %134

97:                                               ; preds = %83
  %98 = load i32, i32* @jiffies, align 4
  %99 = load %struct.wlan_network*, %struct.wlan_network** %7, align 8
  %100 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 4
  br label %108

101:                                              ; preds = %74
  %102 = load %struct.wlan_network*, %struct.wlan_network** %7, align 8
  %103 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %102, i32 0, i32 1
  %104 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %105 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 1
  %107 = call i32 @list_add_tail(i32* %103, i32* %106)
  br label %108

108:                                              ; preds = %101, %97
  %109 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %9, align 8
  %110 = call i32 @get_wlan_bssid_ex_sz(%struct.wlan_bssid_ex* %109)
  %111 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %9, align 8
  %112 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 4
  %113 = load %struct.wlan_network*, %struct.wlan_network** %7, align 8
  %114 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %113, i32 0, i32 0
  %115 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %9, align 8
  %116 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %9, align 8
  %117 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @memcpy(i32* %114, %struct.wlan_bssid_ex* %115, i32 %118)
  %120 = load %struct.wlan_network*, %struct.wlan_network** %10, align 8
  %121 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %120, i32 0, i32 0
  %122 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %9, align 8
  %123 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %9, align 8
  %124 = call i32 @get_wlan_bssid_ex_sz(%struct.wlan_bssid_ex* %123)
  %125 = call i32 @memcpy(i32* %121, %struct.wlan_bssid_ex* %122, i32 %124)
  %126 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %127 = load i32, i32* @_FW_UNDER_LINKING, align 4
  %128 = call i32 @_clr_fwstate_(%struct.mlme_priv* %126, i32 %127)
  %129 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %130 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = call i32 @spin_unlock_bh(i32* %131)
  br label %133

133:                                              ; preds = %108, %71
  br label %134

134:                                              ; preds = %133, %89, %66
  %135 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %136 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %135, i32 0, i32 0
  %137 = call i32 @spin_unlock_bh(i32* %136)
  br label %138

138:                                              ; preds = %134, %23
  %139 = load %struct.cmd_obj*, %struct.cmd_obj** %4, align 8
  %140 = call i32 @rtw_free_cmd_obj(%struct.cmd_obj* %139)
  ret void
}

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i32 @_set_timer(i32*, i32) #1

declare dso_local i32 @_cancel_timer(i32*, i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local %struct.sta_info* @rtw_get_stainfo(i32*, i32) #1

declare dso_local %struct.sta_info* @rtw_alloc_stainfo(i32*, i32) #1

declare dso_local i32 @rtw_indicate_connect(%struct.adapter*) #1

declare dso_local %struct.wlan_network* @rtw_alloc_network(%struct.mlme_priv*) #1

declare dso_local %struct.wlan_network* @rtw_get_oldest_wlan_network(%struct.TYPE_2__*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @get_wlan_bssid_ex_sz(%struct.wlan_bssid_ex*) #1

declare dso_local i32 @memcpy(i32*, %struct.wlan_bssid_ex*, i32) #1

declare dso_local i32 @_clr_fwstate_(%struct.mlme_priv*, i32) #1

declare dso_local i32 @rtw_free_cmd_obj(%struct.cmd_obj*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
