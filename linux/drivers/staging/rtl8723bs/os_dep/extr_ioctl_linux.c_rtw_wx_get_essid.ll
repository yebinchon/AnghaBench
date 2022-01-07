; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_ioctl_linux.c_rtw_wx_get_essid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_ioctl_linux.c_rtw_wx_get_essid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.adapter = type { %struct.mlme_priv }
%struct.mlme_priv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.wlan_bssid_ex }
%struct.wlan_bssid_ex = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

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
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.adapter*, align 8
  %12 = alloca %struct.mlme_priv*, align 8
  %13 = alloca %struct.wlan_bssid_ex*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %7, align 8
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call i64 @rtw_netdev_priv(%struct.net_device* %14)
  %16 = inttoptr i64 %15 to %struct.adapter*
  store %struct.adapter* %16, %struct.adapter** %11, align 8
  %17 = load %struct.adapter*, %struct.adapter** %11, align 8
  %18 = getelementptr inbounds %struct.adapter, %struct.adapter* %17, i32 0, i32 0
  store %struct.mlme_priv* %18, %struct.mlme_priv** %12, align 8
  %19 = load %struct.mlme_priv*, %struct.mlme_priv** %12, align 8
  %20 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  store %struct.wlan_bssid_ex* %21, %struct.wlan_bssid_ex** %13, align 8
  %22 = load i32, i32* @_module_rtl871x_mlme_c_, align 4
  %23 = load i32, i32* @_drv_info_, align 4
  %24 = call i32 @RT_TRACE(i32 %22, i32 %23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.mlme_priv*, %struct.mlme_priv** %12, align 8
  %26 = load i32, i32* @_FW_LINKED, align 4
  %27 = call i32 @check_fwstate(%struct.mlme_priv* %25, i32 %26)
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %34, label %29

29:                                               ; preds = %4
  %30 = load %struct.mlme_priv*, %struct.mlme_priv** %12, align 8
  %31 = load i32, i32* @WIFI_ADHOC_MASTER_STATE, align 4
  %32 = call i32 @check_fwstate(%struct.mlme_priv* %30, i32 %31)
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %53

34:                                               ; preds = %29, %4
  %35 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %13, align 8
  %36 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %41 = bitcast %union.iwreq_data* %40 to %struct.TYPE_6__*
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 4
  %43 = load i8*, i8** %8, align 8
  %44 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %13, align 8
  %45 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @memcpy(i8* %43, i32 %47, i32 %48)
  %50 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %51 = bitcast %union.iwreq_data* %50 to %struct.TYPE_6__*
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  store i32 1, i32* %52, align 4
  br label %54

53:                                               ; preds = %29
  store i32 -1, i32* %10, align 4
  br label %55

54:                                               ; preds = %34
  br label %55

55:                                               ; preds = %54, %53
  %56 = load i32, i32* %10, align 4
  ret i32 %56
}

declare dso_local i64 @rtw_netdev_priv(%struct.net_device*) #1

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i32 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
