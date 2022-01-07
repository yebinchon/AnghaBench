; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_cmd.c_ConstructBeacon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_cmd.c_ConstructBeacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.mlme_ext_priv }
%struct.mlme_ext_priv = type { %struct.mlme_ext_info }
%struct.mlme_ext_info = type { i32, %struct.wlan_bssid_ex }
%struct.wlan_bssid_ex = type { i8*, i32, i8*, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i8* }
%struct.ieee80211_hdr = type { i32*, i32*, i32*, i64 }

@__const.ConstructBeacon.bc_addr = private unnamed_addr constant [6 x i32] [i32 255, i32 255, i32 255, i32 255, i32 255, i32 255], align 16
@ETH_ALEN = common dso_local global i32 0, align 4
@WIFI_BEACON = common dso_local global i32 0, align 4
@WIFI_FW_AP_STATE = common dso_local global i32 0, align 4
@_SSID_IE_ = common dso_local global i32 0, align 4
@_SUPPORTEDRATES_IE_ = common dso_local global i32 0, align 4
@_DSSET_IE_ = common dso_local global i32 0, align 4
@WIFI_FW_ADHOC_STATE = common dso_local global i32 0, align 4
@_IBSS_PARA_IE_ = common dso_local global i32 0, align 4
@_EXT_SUPPORTEDRATES_IE_ = common dso_local global i32 0, align 4
@TXDESC_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"beacon frame too large\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, i32*, i32*)* @ConstructBeacon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ConstructBeacon(%struct.adapter* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ieee80211_hdr*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mlme_ext_priv*, align 8
  %12 = alloca %struct.mlme_ext_info*, align 8
  %13 = alloca %struct.wlan_bssid_ex*, align 8
  %14 = alloca [6 x i32], align 16
  %15 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %16 = load %struct.adapter*, %struct.adapter** %4, align 8
  %17 = getelementptr inbounds %struct.adapter, %struct.adapter* %16, i32 0, i32 1
  store %struct.mlme_ext_priv* %17, %struct.mlme_ext_priv** %11, align 8
  %18 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %11, align 8
  %19 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %18, i32 0, i32 0
  store %struct.mlme_ext_info* %19, %struct.mlme_ext_info** %12, align 8
  %20 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %12, align 8
  %21 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %20, i32 0, i32 1
  store %struct.wlan_bssid_ex* %21, %struct.wlan_bssid_ex** %13, align 8
  %22 = bitcast [6 x i32]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %22, i8* align 16 bitcast ([6 x i32]* @__const.ConstructBeacon.bc_addr to i8*), i64 24, i1 false)
  %23 = load i32*, i32** %5, align 8
  %24 = bitcast i32* %23 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %24, %struct.ieee80211_hdr** %7, align 8
  %25 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %26 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %25, i32 0, i32 3
  store i64* %26, i64** %8, align 8
  %27 = load i64*, i64** %8, align 8
  store i64 0, i64* %27, align 8
  %28 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %29 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 0
  %32 = load i32, i32* @ETH_ALEN, align 4
  %33 = call i32 (i32*, ...) @memcpy(i32* %30, i32* %31, i32 %32)
  %34 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %35 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.adapter*, %struct.adapter** %4, align 8
  %38 = getelementptr inbounds %struct.adapter, %struct.adapter* %37, i32 0, i32 0
  %39 = call i8* @myid(i32* %38)
  %40 = load i32, i32* @ETH_ALEN, align 4
  %41 = call i32 (i32*, ...) @memcpy(i32* %36, i8* %39, i32 %40)
  %42 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %43 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %13, align 8
  %46 = call i8* @get_my_bssid(%struct.wlan_bssid_ex* %45)
  %47 = load i32, i32* @ETH_ALEN, align 4
  %48 = call i32 (i32*, ...) @memcpy(i32* %44, i8* %46, i32 %47)
  %49 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %50 = call i32 @SetSeqNum(%struct.ieee80211_hdr* %49, i32 0)
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* @WIFI_BEACON, align 4
  %53 = call i32 @SetFrameSubType(i32* %51, i32 %52)
  %54 = load i32*, i32** %5, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 4
  store i32* %55, i32** %5, align 8
  store i32 4, i32* %10, align 4
  %56 = load i32*, i32** %5, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 8
  store i32* %57, i32** %5, align 8
  %58 = load i32, i32* %10, align 4
  %59 = add nsw i32 %58, 8
  store i32 %59, i32* %10, align 4
  %60 = load i32*, i32** %5, align 8
  %61 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %13, align 8
  %62 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %61, i32 0, i32 0
  %63 = load i8*, i8** %62, align 8
  %64 = call i64 @rtw_get_beacon_interval_from_ie(i8* %63)
  %65 = inttoptr i64 %64 to i8*
  %66 = call i32 (i32*, ...) @memcpy(i32* %60, i8* %65, i32 2)
  %67 = load i32*, i32** %5, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  store i32* %68, i32** %5, align 8
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 2
  store i32 %70, i32* %10, align 4
  %71 = load i32*, i32** %5, align 8
  %72 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %13, align 8
  %73 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = call i64 @rtw_get_capability_from_ie(i8* %74)
  %76 = inttoptr i64 %75 to i8*
  %77 = call i32 (i32*, ...) @memcpy(i32* %71, i8* %76, i32 2)
  %78 = load i32*, i32** %5, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 2
  store i32* %79, i32** %5, align 8
  %80 = load i32, i32* %10, align 4
  %81 = add nsw i32 %80, 2
  store i32 %81, i32* %10, align 4
  %82 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %12, align 8
  %83 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = and i32 %84, 3
  %86 = load i32, i32* @WIFI_FW_AP_STATE, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %105

88:                                               ; preds = %3
  %89 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %13, align 8
  %90 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = sub i64 %92, 4
  %94 = load i32, i32* %10, align 4
  %95 = sext i32 %94 to i64
  %96 = add i64 %95, %93
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %10, align 4
  %98 = load i32*, i32** %5, align 8
  %99 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %13, align 8
  %100 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 4
  %103 = load i32, i32* %10, align 4
  %104 = call i32 (i32*, ...) @memcpy(i32* %98, i8* %102, i32 %103)
  br label %166

105:                                              ; preds = %3
  %106 = load i32*, i32** %5, align 8
  %107 = load i32, i32* @_SSID_IE_, align 4
  %108 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %13, align 8
  %109 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %108, i32 0, i32 4
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %13, align 8
  %113 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %112, i32 0, i32 4
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  %115 = load i8*, i8** %114, align 8
  %116 = call i32* @rtw_set_ie(i32* %106, i32 %107, i32 %111, i8* %115, i32* %10)
  store i32* %116, i32** %5, align 8
  %117 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %13, align 8
  %118 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %117, i32 0, i32 2
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 @rtw_get_rateset_len(i8* %119)
  store i32 %120, i32* %9, align 4
  %121 = load i32*, i32** %5, align 8
  %122 = load i32, i32* @_SUPPORTEDRATES_IE_, align 4
  %123 = load i32, i32* %9, align 4
  %124 = icmp sgt i32 %123, 8
  br i1 %124, label %125, label %126

125:                                              ; preds = %105
  br label %128

126:                                              ; preds = %105
  %127 = load i32, i32* %9, align 4
  br label %128

128:                                              ; preds = %126, %125
  %129 = phi i32 [ 8, %125 ], [ %127, %126 ]
  %130 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %13, align 8
  %131 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %130, i32 0, i32 2
  %132 = load i8*, i8** %131, align 8
  %133 = call i32* @rtw_set_ie(i32* %121, i32 %122, i32 %129, i8* %132, i32* %10)
  store i32* %133, i32** %5, align 8
  %134 = load i32*, i32** %5, align 8
  %135 = load i32, i32* @_DSSET_IE_, align 4
  %136 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %13, align 8
  %137 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 0
  %139 = bitcast i32* %138 to i8*
  %140 = call i32* @rtw_set_ie(i32* %134, i32 %135, i32 1, i8* %139, i32* %10)
  store i32* %140, i32** %5, align 8
  %141 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %12, align 8
  %142 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = and i32 %143, 3
  %145 = load i32, i32* @WIFI_FW_ADHOC_STATE, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %152

147:                                              ; preds = %128
  store i32 0, i32* %15, align 4
  %148 = load i32*, i32** %5, align 8
  %149 = load i32, i32* @_IBSS_PARA_IE_, align 4
  %150 = bitcast i32* %15 to i8*
  %151 = call i32* @rtw_set_ie(i32* %148, i32 %149, i32 2, i8* %150, i32* %10)
  store i32* %151, i32** %5, align 8
  br label %152

152:                                              ; preds = %147, %128
  %153 = load i32, i32* %9, align 4
  %154 = icmp sgt i32 %153, 8
  br i1 %154, label %155, label %165

155:                                              ; preds = %152
  %156 = load i32*, i32** %5, align 8
  %157 = load i32, i32* @_EXT_SUPPORTEDRATES_IE_, align 4
  %158 = load i32, i32* %9, align 4
  %159 = sub nsw i32 %158, 8
  %160 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %13, align 8
  %161 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %160, i32 0, i32 2
  %162 = load i8*, i8** %161, align 8
  %163 = getelementptr inbounds i8, i8* %162, i64 8
  %164 = call i32* @rtw_set_ie(i32* %156, i32 %157, i32 %159, i8* %163, i32* %10)
  store i32* %164, i32** %5, align 8
  br label %165

165:                                              ; preds = %155, %152
  br label %166

166:                                              ; preds = %165, %88
  %167 = load i32, i32* %10, align 4
  %168 = load i32, i32* @TXDESC_SIZE, align 4
  %169 = add nsw i32 %167, %168
  %170 = icmp sgt i32 %169, 512
  br i1 %170, label %171, label %173

171:                                              ; preds = %166
  %172 = call i32 @DBG_871X(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %176

173:                                              ; preds = %166
  %174 = load i32, i32* %10, align 4
  %175 = load i32*, i32** %6, align 8
  store i32 %174, i32* %175, align 4
  br label %176

176:                                              ; preds = %173, %171
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memcpy(i32*, ...) #2

declare dso_local i8* @myid(i32*) #2

declare dso_local i8* @get_my_bssid(%struct.wlan_bssid_ex*) #2

declare dso_local i32 @SetSeqNum(%struct.ieee80211_hdr*, i32) #2

declare dso_local i32 @SetFrameSubType(i32*, i32) #2

declare dso_local i64 @rtw_get_beacon_interval_from_ie(i8*) #2

declare dso_local i64 @rtw_get_capability_from_ie(i8*) #2

declare dso_local i32* @rtw_set_ie(i32*, i32, i32, i8*, i32*) #2

declare dso_local i32 @rtw_get_rateset_len(i8*) #2

declare dso_local i32 @DBG_871X(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
