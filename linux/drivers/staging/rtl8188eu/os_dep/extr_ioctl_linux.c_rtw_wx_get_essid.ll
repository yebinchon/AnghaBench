; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_ioctl_linux.c_rtw_wx_get_essid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/os_dep/extr_ioctl_linux.c_rtw_wx_get_essid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64 }
%struct.adapter = type { %struct.mlme_priv }
%struct.mlme_priv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.wlan_bssid_ex }
%struct.wlan_bssid_ex = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64 }

@_module_rtl871x_mlme_c_ = common dso_local global i32 0, align 4
@_drv_info_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"rtw_wx_get_essid\0A\00", align 1
@_FW_LINKED = common dso_local global i32 0, align 4
@WIFI_ADHOC_MASTER_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @rtw_wx_get_essid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw_wx_get_essid(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %union.iwreq_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.adapter*, align 8
  %11 = alloca %struct.mlme_priv*, align 8
  %12 = alloca %struct.wlan_bssid_ex*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call i64 @rtw_netdev_priv(%struct.net_device* %13)
  %15 = inttoptr i64 %14 to %struct.adapter*
  store %struct.adapter* %15, %struct.adapter** %10, align 8
  %16 = load %struct.adapter*, %struct.adapter** %10, align 8
  %17 = getelementptr inbounds %struct.adapter, %struct.adapter* %16, i32 0, i32 0
  store %struct.mlme_priv* %17, %struct.mlme_priv** %11, align 8
  %18 = load %struct.mlme_priv*, %struct.mlme_priv** %11, align 8
  %19 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store %struct.wlan_bssid_ex* %20, %struct.wlan_bssid_ex** %12, align 8
  %21 = load i32, i32* @_module_rtl871x_mlme_c_, align 4
  %22 = load i32, i32* @_drv_info_, align 4
  %23 = call i32 @RT_TRACE(i32 %21, i32 %22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.mlme_priv*, %struct.mlme_priv** %11, align 8
  %25 = load i32, i32* @_FW_LINKED, align 4
  %26 = call i64 @check_fwstate(%struct.mlme_priv* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %4
  %29 = load %struct.mlme_priv*, %struct.mlme_priv** %11, align 8
  %30 = load i32, i32* @WIFI_ADHOC_MASTER_STATE, align 4
  %31 = call i64 @check_fwstate(%struct.mlme_priv* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %28, %4
  %34 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %12, align 8
  %35 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %9, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %12, align 8
  %40 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i64, i64* %9, align 8
  %44 = call i32 @memcpy(i8* %38, i32 %42, i64 %43)
  br label %47

45:                                               ; preds = %28
  store i64 0, i64* %9, align 8
  %46 = load i8*, i8** %8, align 8
  store i8 0, i8* %46, align 1
  br label %47

47:                                               ; preds = %45, %33
  %48 = load i64, i64* %9, align 8
  %49 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %50 = bitcast %union.iwreq_data* %49 to %struct.TYPE_6__*
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  store i64 %48, i64* %51, align 8
  %52 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %53 = bitcast %union.iwreq_data* %52 to %struct.TYPE_6__*
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  ret i32 0
}

declare dso_local i64 @rtw_netdev_priv(%struct.net_device*) #1

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i64 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
