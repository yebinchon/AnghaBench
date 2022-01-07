; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_ioctl_linux.c_r8711_wx_get_essid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_ioctl_linux.c_r8711_wx_get_essid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct._adapter = type { %struct.mlme_priv }
%struct.mlme_priv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.wlan_bssid_ex }
%struct.wlan_bssid_ex = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@_FW_LINKED = common dso_local global i32 0, align 4
@WIFI_ADHOC_MASTER_STATE = common dso_local global i32 0, align 4
@ENOLINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @r8711_wx_get_essid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r8711_wx_get_essid(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %union.iwreq_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct._adapter*, align 8
  %10 = alloca %struct.mlme_priv*, align 8
  %11 = alloca %struct.wlan_bssid_ex*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %7, align 8
  store i8* %3, i8** %8, align 8
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call %struct._adapter* @netdev_priv(%struct.net_device* %14)
  store %struct._adapter* %15, %struct._adapter** %9, align 8
  %16 = load %struct._adapter*, %struct._adapter** %9, align 8
  %17 = getelementptr inbounds %struct._adapter, %struct._adapter* %16, i32 0, i32 0
  store %struct.mlme_priv* %17, %struct.mlme_priv** %10, align 8
  %18 = load %struct.mlme_priv*, %struct.mlme_priv** %10, align 8
  %19 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store %struct.wlan_bssid_ex* %20, %struct.wlan_bssid_ex** %11, align 8
  store i32 0, i32* %13, align 4
  %21 = load %struct.mlme_priv*, %struct.mlme_priv** %10, align 8
  %22 = load i32, i32* @_FW_LINKED, align 4
  %23 = load i32, i32* @WIFI_ADHOC_MASTER_STATE, align 4
  %24 = or i32 %22, %23
  %25 = call i64 @check_fwstate(%struct.mlme_priv* %21, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %46

27:                                               ; preds = %4
  %28 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %11, align 8
  %29 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %34 = bitcast %union.iwreq_data* %33 to %struct.TYPE_6__*
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 4
  %36 = load i8*, i8** %8, align 8
  %37 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %11, align 8
  %38 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @memcpy(i8* %36, i32 %40, i32 %41)
  %43 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %44 = bitcast %union.iwreq_data* %43 to %struct.TYPE_6__*
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  store i32 1, i32* %45, align 4
  br label %49

46:                                               ; preds = %4
  %47 = load i32, i32* @ENOLINK, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %13, align 4
  br label %49

49:                                               ; preds = %46, %27
  %50 = load i32, i32* %13, align 4
  ret i32 %50
}

declare dso_local %struct._adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
