; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_ioctl_linux.c_rtw_indicate_wx_assoc_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_ioctl_linux.c_rtw_indicate_wx_assoc_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_ext_priv, %struct.mlme_priv }
%struct.mlme_ext_priv = type { %struct.mlme_ext_info }
%struct.mlme_ext_info = type { i32 }
%struct.mlme_priv = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%union.iwreq_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.wlan_bssid_ex = type { i32 }

@ARPHRD_ETHER = common dso_local global i32 0, align 4
@WIFI_ADHOC_MASTER_STATE = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@_drv_always_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"assoc success\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_indicate_wx_assoc_event(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %union.iwreq_data, align 4
  %4 = alloca %struct.mlme_priv*, align 8
  %5 = alloca %struct.mlme_ext_priv*, align 8
  %6 = alloca %struct.mlme_ext_info*, align 8
  %7 = alloca %struct.wlan_bssid_ex*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %8 = load %struct.adapter*, %struct.adapter** %2, align 8
  %9 = getelementptr inbounds %struct.adapter, %struct.adapter* %8, i32 0, i32 1
  store %struct.mlme_priv* %9, %struct.mlme_priv** %4, align 8
  %10 = load %struct.adapter*, %struct.adapter** %2, align 8
  %11 = getelementptr inbounds %struct.adapter, %struct.adapter* %10, i32 0, i32 0
  store %struct.mlme_ext_priv* %11, %struct.mlme_ext_priv** %5, align 8
  %12 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %5, align 8
  %13 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %12, i32 0, i32 0
  store %struct.mlme_ext_info* %13, %struct.mlme_ext_info** %6, align 8
  %14 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %6, align 8
  %15 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %14, i32 0, i32 0
  %16 = bitcast i32* %15 to %struct.wlan_bssid_ex*
  store %struct.wlan_bssid_ex* %16, %struct.wlan_bssid_ex** %7, align 8
  %17 = call i32 @memset(%union.iwreq_data* %3, i32 0, i32 8)
  %18 = load i32, i32* @ARPHRD_ETHER, align 4
  %19 = bitcast %union.iwreq_data* %3 to %struct.TYPE_4__*
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %22 = load i32, i32* @WIFI_ADHOC_MASTER_STATE, align 4
  %23 = call i32 @check_fwstate(%struct.mlme_priv* %21, i32 %22)
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %34

25:                                               ; preds = %1
  %26 = bitcast %union.iwreq_data* %3 to %struct.TYPE_4__*
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %7, align 8
  %30 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @ETH_ALEN, align 4
  %33 = call i32 @memcpy(i32 %28, i32 %31, i32 %32)
  br label %45

34:                                               ; preds = %1
  %35 = bitcast %union.iwreq_data* %3 to %struct.TYPE_4__*
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %39 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @ETH_ALEN, align 4
  %44 = call i32 @memcpy(i32 %37, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %34, %25
  %46 = load i32, i32* @_drv_always_, align 4
  %47 = call i32 @DBG_871X_LEVEL(i32 %46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @memset(%union.iwreq_data*, i32, i32) #1

declare dso_local i32 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @DBG_871X_LEVEL(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
