; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_mlme_ext.c_OnProbeReq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_mlme_ext.c_OnProbeReq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_ext_priv, %struct.mlme_priv }
%struct.mlme_ext_priv = type { %struct.mlme_ext_info }
%struct.mlme_ext_info = type { i64, %struct.wlan_bssid_ex }
%struct.wlan_bssid_ex = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64 }
%struct.mlme_priv = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.recv_frame = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32* }

@WIFI_STATION_STATE = common dso_local global i32 0, align 4
@_SUCCESS = common dso_local global i32 0, align 4
@_FW_LINKED = common dso_local global i32 0, align 4
@WIFI_ADHOC_MASTER_STATE = common dso_local global i32 0, align 4
@WIFI_AP_STATE = common dso_local global i32 0, align 4
@WLAN_HDR_A3_LEN = common dso_local global i32 0, align 4
@_PROBEREQ_IE_OFFSET_ = common dso_local global i32 0, align 4
@_SSID_IE_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, %struct.recv_frame*)* @OnProbeReq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OnProbeReq(%struct.adapter* %0, %struct.recv_frame* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.recv_frame*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mlme_priv*, align 8
  %9 = alloca %struct.mlme_ext_priv*, align 8
  %10 = alloca %struct.mlme_ext_info*, align 8
  %11 = alloca %struct.wlan_bssid_ex*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store %struct.recv_frame* %1, %struct.recv_frame** %5, align 8
  %14 = load %struct.adapter*, %struct.adapter** %4, align 8
  %15 = getelementptr inbounds %struct.adapter, %struct.adapter* %14, i32 0, i32 1
  store %struct.mlme_priv* %15, %struct.mlme_priv** %8, align 8
  %16 = load %struct.adapter*, %struct.adapter** %4, align 8
  %17 = getelementptr inbounds %struct.adapter, %struct.adapter* %16, i32 0, i32 0
  store %struct.mlme_ext_priv* %17, %struct.mlme_ext_priv** %9, align 8
  %18 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %9, align 8
  %19 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %18, i32 0, i32 0
  store %struct.mlme_ext_info* %19, %struct.mlme_ext_info** %10, align 8
  %20 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %10, align 8
  %21 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %20, i32 0, i32 1
  store %struct.wlan_bssid_ex* %21, %struct.wlan_bssid_ex** %11, align 8
  %22 = load %struct.recv_frame*, %struct.recv_frame** %5, align 8
  %23 = getelementptr inbounds %struct.recv_frame, %struct.recv_frame* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %12, align 8
  %27 = load %struct.recv_frame*, %struct.recv_frame** %5, align 8
  %28 = getelementptr inbounds %struct.recv_frame, %struct.recv_frame* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %13, align 4
  %32 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %33 = load i32, i32* @WIFI_STATION_STATE, align 4
  %34 = call i64 @check_fwstate(%struct.mlme_priv* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %2
  %37 = load i32, i32* @_SUCCESS, align 4
  store i32 %37, i32* %3, align 4
  br label %115

38:                                               ; preds = %2
  %39 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %40 = load i32, i32* @_FW_LINKED, align 4
  %41 = call i64 @check_fwstate(%struct.mlme_priv* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %52, label %43

43:                                               ; preds = %38
  %44 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %45 = load i32, i32* @WIFI_ADHOC_MASTER_STATE, align 4
  %46 = load i32, i32* @WIFI_AP_STATE, align 4
  %47 = or i32 %45, %46
  %48 = call i64 @check_fwstate(%struct.mlme_priv* %44, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %43
  %51 = load i32, i32* @_SUCCESS, align 4
  store i32 %51, i32* %3, align 4
  br label %115

52:                                               ; preds = %43, %38
  %53 = load i32*, i32** %12, align 8
  %54 = load i32, i32* @WLAN_HDR_A3_LEN, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* @_PROBEREQ_IE_OFFSET_, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* @_SSID_IE_, align 4
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* @WLAN_HDR_A3_LEN, align 4
  %63 = sub nsw i32 %61, %62
  %64 = load i32, i32* @_PROBEREQ_IE_OFFSET_, align 4
  %65 = sub nsw i32 %63, %64
  %66 = call i8* @rtw_get_ie(i32* %59, i32 %60, i32* %6, i32 %65)
  store i8* %66, i8** %7, align 8
  %67 = load i8*, i8** %7, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %69, label %113

69:                                               ; preds = %52
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %69
  %73 = load i8*, i8** %7, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 2
  %75 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %11, align 8
  %76 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = inttoptr i64 %78 to i8*
  %80 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %11, align 8
  %81 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i64 @memcmp(i8* %74, i8* %79, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %94, label %86

86:                                               ; preds = %72, %69
  %87 = load i32, i32* %6, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %86
  %90 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %10, align 8
  %91 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %89, %72
  %95 = load i32, i32* @_SUCCESS, align 4
  store i32 %95, i32* %3, align 4
  br label %115

96:                                               ; preds = %89, %86
  %97 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %98 = load i32, i32* @_FW_LINKED, align 4
  %99 = call i64 @check_fwstate(%struct.mlme_priv* %97, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %112

101:                                              ; preds = %96
  %102 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %103 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %101
  %108 = load %struct.adapter*, %struct.adapter** %4, align 8
  %109 = load i32*, i32** %12, align 8
  %110 = call i32 @get_sa(i32* %109)
  %111 = call i32 @issue_probersp(%struct.adapter* %108, i32 %110)
  br label %112

112:                                              ; preds = %107, %101, %96
  br label %113

113:                                              ; preds = %112, %52
  %114 = load i32, i32* @_SUCCESS, align 4
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %113, %94, %50, %36
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i64 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i8* @rtw_get_ie(i32*, i32, i32*, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @issue_probersp(%struct.adapter*, i32) #1

declare dso_local i32 @get_sa(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
