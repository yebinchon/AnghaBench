; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_ioctl_set.c_rtw_get_cur_max_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_ioctl_set.c_rtw_get_cur_max_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_priv, %struct.registry_priv, %struct.mlme_ext_priv }
%struct.mlme_priv = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.wlan_bssid_ex }
%struct.wlan_bssid_ex = type { i32*, i64, i32* }
%struct.registry_priv = type { i32 }
%struct.mlme_ext_priv = type { i32, i64, %struct.mlme_ext_info }
%struct.mlme_ext_info = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32* }

@_FW_LINKED = common dso_local global i32 0, align 4
@WIFI_ADHOC_MASTER_STATE = common dso_local global i32 0, align 4
@WIRELESS_11_24N = common dso_local global i32 0, align 4
@WIRELESS_11_5N = common dso_local global i32 0, align 4
@_HT_CAPABILITY_IE_ = common dso_local global i32 0, align 4
@HT_INFO_HT_PARAM_REC_TRANS_CHNL_WIDTH = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_20 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_40 = common dso_local global i32 0, align 4
@RF_1T1R = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_get_cur_max_rate(%struct.adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlme_ext_priv*, align 8
  %9 = alloca %struct.mlme_ext_info*, align 8
  %10 = alloca %struct.registry_priv*, align 8
  %11 = alloca %struct.mlme_priv*, align 8
  %12 = alloca %struct.wlan_bssid_ex*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %17 = load %struct.adapter*, %struct.adapter** %3, align 8
  %18 = getelementptr inbounds %struct.adapter, %struct.adapter* %17, i32 0, i32 2
  store %struct.mlme_ext_priv* %18, %struct.mlme_ext_priv** %8, align 8
  %19 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %8, align 8
  %20 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %19, i32 0, i32 2
  store %struct.mlme_ext_info* %20, %struct.mlme_ext_info** %9, align 8
  %21 = load %struct.adapter*, %struct.adapter** %3, align 8
  %22 = getelementptr inbounds %struct.adapter, %struct.adapter* %21, i32 0, i32 1
  store %struct.registry_priv* %22, %struct.registry_priv** %10, align 8
  %23 = load %struct.adapter*, %struct.adapter** %3, align 8
  %24 = getelementptr inbounds %struct.adapter, %struct.adapter* %23, i32 0, i32 0
  store %struct.mlme_priv* %24, %struct.mlme_priv** %11, align 8
  %25 = load %struct.mlme_priv*, %struct.mlme_priv** %11, align 8
  %26 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  store %struct.wlan_bssid_ex* %27, %struct.wlan_bssid_ex** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i64 0, i64* %16, align 8
  %28 = load %struct.mlme_priv*, %struct.mlme_priv** %11, align 8
  %29 = load i32, i32* @_FW_LINKED, align 4
  %30 = call i32 @check_fwstate(%struct.mlme_priv* %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %1
  %33 = load %struct.mlme_priv*, %struct.mlme_priv** %11, align 8
  %34 = load i32, i32* @WIFI_ADHOC_MASTER_STATE, align 4
  %35 = call i32 @check_fwstate(%struct.mlme_priv* %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %160

38:                                               ; preds = %32, %1
  %39 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %8, align 8
  %40 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @WIRELESS_11_24N, align 4
  %43 = load i32, i32* @WIRELESS_11_5N, align 4
  %44 = or i32 %42, %43
  %45 = and i32 %41, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %117

47:                                               ; preds = %38
  %48 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %12, align 8
  %49 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 12
  %52 = load i32, i32* @_HT_CAPABILITY_IE_, align 4
  %53 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %12, align 8
  %54 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %55, 12
  %57 = call i32* @rtw_get_ie(i32* %51, i32 %52, i64* %16, i64 %56)
  store i32* %57, i32** %5, align 8
  %58 = load i32*, i32** %5, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %116

60:                                               ; preds = %47
  %61 = load i64, i64* %16, align 8
  %62 = icmp sgt i64 %61, 0
  br i1 %62, label %63, label %116

63:                                               ; preds = %60
  %64 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %8, align 8
  %65 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %63
  %69 = load i32, i32* @HT_INFO_HT_PARAM_REC_TRANS_CHNL_WIDTH, align 4
  %70 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %9, align 8
  %71 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %69, %75
  %77 = icmp ne i32 %76, 0
  br label %78

78:                                               ; preds = %68, %63
  %79 = phi i1 [ false, %63 ], [ %77, %68 ]
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i32 1, i32 0
  store i32 %81, i32* %13, align 4
  %82 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %9, align 8
  %83 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @le16_to_cpu(i32 %85)
  %87 = load i32, i32* @IEEE80211_HT_CAP_SGI_20, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i32 1, i32 0
  store i32 %91, i32* %14, align 4
  %92 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %9, align 8
  %93 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @le16_to_cpu(i32 %95)
  %97 = load i32, i32* @IEEE80211_HT_CAP_SGI_40, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i32 1, i32 0
  store i32 %101, i32* %15, align 4
  %102 = load i32, i32* @RF_1T1R, align 4
  %103 = load i32, i32* %13, align 4
  %104 = load %struct.registry_priv*, %struct.registry_priv** %10, align 8
  %105 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %103, %106
  %108 = load i32, i32* %14, align 4
  %109 = load i32, i32* %15, align 4
  %110 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %9, align 8
  %111 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @rtw_mcs_rate(i32 %102, i32 %107, i32 %108, i32 %109, i32 %114)
  store i32 %115, i32* %7, align 4
  br label %116

116:                                              ; preds = %78, %60, %47
  br label %158

117:                                              ; preds = %38
  br label %118

118:                                              ; preds = %152, %117
  %119 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %12, align 8
  %120 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = load i32, i32* %4, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %118
  %128 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %12, align 8
  %129 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %4, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %134, 255
  br label %136

136:                                              ; preds = %127, %118
  %137 = phi i1 [ false, %118 ], [ %135, %127 ]
  br i1 %137, label %138, label %155

138:                                              ; preds = %136
  %139 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %12, align 8
  %140 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %4, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = and i32 %145, 127
  store i32 %146, i32* %6, align 4
  %147 = load i32, i32* %6, align 4
  %148 = load i32, i32* %7, align 4
  %149 = icmp sgt i32 %147, %148
  br i1 %149, label %150, label %152

150:                                              ; preds = %138
  %151 = load i32, i32* %6, align 4
  store i32 %151, i32* %7, align 4
  br label %152

152:                                              ; preds = %150, %138
  %153 = load i32, i32* %4, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %4, align 4
  br label %118

155:                                              ; preds = %136
  %156 = load i32, i32* %7, align 4
  %157 = mul nsw i32 %156, 5
  store i32 %157, i32* %7, align 4
  br label %158

158:                                              ; preds = %155, %116
  %159 = load i32, i32* %7, align 4
  store i32 %159, i32* %2, align 4
  br label %160

160:                                              ; preds = %158, %37
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local i32 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32* @rtw_get_ie(i32*, i32, i64*, i64) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @rtw_mcs_rate(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
