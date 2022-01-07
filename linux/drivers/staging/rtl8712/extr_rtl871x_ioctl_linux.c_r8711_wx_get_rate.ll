; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_ioctl_linux.c_r8711_wx_get_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_ioctl_linux.c_r8711_wx_get_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64 }
%struct._adapter = type { %struct.TYPE_5__, %struct.mlme_priv }
%struct.TYPE_5__ = type { i8 }
%struct.mlme_priv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.wlan_bssid_ex }
%struct.wlan_bssid_ex = type { i32*, i64, i32* }
%struct.ieee80211_ht_cap = type { i32, i32 }

@_FW_LINKED = common dso_local global i32 0, align 4
@WIFI_ADHOC_MASTER_STATE = common dso_local global i32 0, align 4
@ENOLINK = common dso_local global i32 0, align 4
@_HT_CAPABILITY_IE_ = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SUP_WIDTH = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_20 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_40 = common dso_local global i32 0, align 4
@RTL8712_RF_2T2R = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @r8711_wx_get_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r8711_wx_get_rate(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca %union.iwreq_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct._adapter*, align 8
  %11 = alloca %struct.mlme_priv*, align 8
  %12 = alloca %struct.wlan_bssid_ex*, align 8
  %13 = alloca %struct.ieee80211_ht_cap*, align 8
  %14 = alloca i8, align 1
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %8, align 8
  store i8* %3, i8** %9, align 8
  %24 = load %struct.net_device*, %struct.net_device** %6, align 8
  %25 = call %struct._adapter* @netdev_priv(%struct.net_device* %24)
  store %struct._adapter* %25, %struct._adapter** %10, align 8
  %26 = load %struct._adapter*, %struct._adapter** %10, align 8
  %27 = getelementptr inbounds %struct._adapter, %struct._adapter* %26, i32 0, i32 1
  store %struct.mlme_priv* %27, %struct.mlme_priv** %11, align 8
  %28 = load %struct.mlme_priv*, %struct.mlme_priv** %11, align 8
  %29 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store %struct.wlan_bssid_ex* %30, %struct.wlan_bssid_ex** %12, align 8
  %31 = load %struct._adapter*, %struct._adapter** %10, align 8
  %32 = getelementptr inbounds %struct._adapter, %struct._adapter* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i8, i8* %33, align 8
  store i8 %34, i8* %14, align 1
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i64 0, i64* %20, align 8
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %15, align 4
  %35 = load %struct.mlme_priv*, %struct.mlme_priv** %11, align 8
  %36 = load i32, i32* @_FW_LINKED, align 4
  %37 = load i32, i32* @WIFI_ADHOC_MASTER_STATE, align 4
  %38 = or i32 %36, %37
  %39 = call i32 @check_fwstate(%struct.mlme_priv* %35, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %4
  %42 = load i32, i32* @ENOLINK, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %186

44:                                               ; preds = %4
  %45 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %12, align 8
  %46 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 12
  %49 = load i32, i32* @_HT_CAPABILITY_IE_, align 4
  %50 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %12, align 8
  %51 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = sub nsw i64 %52, 12
  %54 = call i32* @r8712_get_ie(i32* %48, i32 %49, i64* %20, i64 %53)
  store i32* %54, i32** %16, align 8
  %55 = load i32*, i32** %16, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %88

57:                                               ; preds = %44
  %58 = load i64, i64* %20, align 8
  %59 = icmp sgt i64 %58, 0
  br i1 %59, label %60, label %88

60:                                               ; preds = %57
  store i32 1, i32* %19, align 4
  %61 = load i32*, i32** %16, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 2
  %63 = bitcast i32* %62 to %struct.ieee80211_ht_cap*
  store %struct.ieee80211_ht_cap* %63, %struct.ieee80211_ht_cap** %13, align 8
  %64 = load %struct.ieee80211_ht_cap*, %struct.ieee80211_ht_cap** %13, align 8
  %65 = getelementptr inbounds %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @memcpy(i32* %23, i32 %66, i32 2)
  %68 = load %struct.ieee80211_ht_cap*, %struct.ieee80211_ht_cap** %13, align 8
  %69 = getelementptr inbounds %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @le16_to_cpu(i32 %70)
  %72 = load i32, i32* @IEEE80211_HT_CAP_SUP_WIDTH, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i32 1, i32 0
  store i32 %76, i32* %21, align 4
  %77 = load %struct.ieee80211_ht_cap*, %struct.ieee80211_ht_cap** %13, align 8
  %78 = getelementptr inbounds %struct.ieee80211_ht_cap, %struct.ieee80211_ht_cap* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @le16_to_cpu(i32 %79)
  %81 = load i32, i32* @IEEE80211_HT_CAP_SGI_20, align 4
  %82 = load i32, i32* @IEEE80211_HT_CAP_SGI_40, align 4
  %83 = or i32 %81, %82
  %84 = and i32 %80, %83
  %85 = icmp ne i32 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i32 1, i32 0
  store i32 %87, i32* %22, align 4
  br label %88

88:                                               ; preds = %60, %57, %44
  br label %89

89:                                               ; preds = %123, %88
  %90 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %12, align 8
  %91 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %15, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %107

98:                                               ; preds = %89
  %99 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %12, align 8
  %100 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %15, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 255
  br label %107

107:                                              ; preds = %98, %89
  %108 = phi i1 [ false, %89 ], [ %106, %98 ]
  br i1 %108, label %109, label %134

109:                                              ; preds = %107
  %110 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %12, align 8
  %111 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %15, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = and i32 %116, 127
  store i32 %117, i32* %17, align 4
  %118 = load i32, i32* %17, align 4
  %119 = load i32, i32* %18, align 4
  %120 = icmp sgt i32 %118, %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %109
  %122 = load i32, i32* %17, align 4
  store i32 %122, i32* %18, align 4
  br label %123

123:                                              ; preds = %121, %109
  %124 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %125 = bitcast %union.iwreq_data* %124 to %struct.TYPE_6__*
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  store i64 0, i64* %126, align 8
  %127 = load i32, i32* %17, align 4
  %128 = mul nsw i32 %127, 500000
  %129 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %130 = bitcast %union.iwreq_data* %129 to %struct.TYPE_6__*
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  store i32 %128, i32* %131, align 8
  %132 = load i32, i32* %15, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %15, align 4
  br label %89

134:                                              ; preds = %107
  %135 = load i32, i32* %19, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %180

137:                                              ; preds = %134
  %138 = load i32, i32* %23, align 4
  %139 = and i32 %138, 32768
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %162

141:                                              ; preds = %137
  %142 = load i8, i8* %14, align 1
  %143 = zext i8 %142 to i32
  %144 = load i8, i8* @RTL8712_RF_2T2R, align 1
  %145 = zext i8 %144 to i32
  %146 = icmp eq i32 %143, %145
  br i1 %146, label %147, label %162

147:                                              ; preds = %141
  %148 = load i32, i32* %21, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %147
  %151 = load i32, i32* %22, align 4
  %152 = icmp ne i32 %151, 0
  %153 = zext i1 %152 to i64
  %154 = select i1 %152, i32 300, i32 270
  br label %160

155:                                              ; preds = %147
  %156 = load i32, i32* %22, align 4
  %157 = icmp ne i32 %156, 0
  %158 = zext i1 %157 to i64
  %159 = select i1 %157, i32 144, i32 130
  br label %160

160:                                              ; preds = %155, %150
  %161 = phi i32 [ %154, %150 ], [ %159, %155 ]
  store i32 %161, i32* %18, align 4
  br label %177

162:                                              ; preds = %141, %137
  %163 = load i32, i32* %21, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %162
  %166 = load i32, i32* %22, align 4
  %167 = icmp ne i32 %166, 0
  %168 = zext i1 %167 to i64
  %169 = select i1 %167, i32 150, i32 135
  br label %175

170:                                              ; preds = %162
  %171 = load i32, i32* %22, align 4
  %172 = icmp ne i32 %171, 0
  %173 = zext i1 %172 to i64
  %174 = select i1 %172, i32 72, i32 65
  br label %175

175:                                              ; preds = %170, %165
  %176 = phi i32 [ %169, %165 ], [ %174, %170 ]
  store i32 %176, i32* %18, align 4
  br label %177

177:                                              ; preds = %175, %160
  %178 = load i32, i32* %18, align 4
  %179 = mul nsw i32 %178, 2
  store i32 %179, i32* %18, align 4
  br label %180

180:                                              ; preds = %177, %134
  %181 = load i32, i32* %18, align 4
  %182 = mul nsw i32 %181, 500000
  %183 = load %union.iwreq_data*, %union.iwreq_data** %8, align 8
  %184 = bitcast %union.iwreq_data* %183 to %struct.TYPE_6__*
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 0
  store i32 %182, i32* %185, align 8
  store i32 0, i32* %5, align 4
  br label %186

186:                                              ; preds = %180, %41
  %187 = load i32, i32* %5, align 4
  ret i32 %187
}

declare dso_local %struct._adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32* @r8712_get_ie(i32*, i32, i64*, i64) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
