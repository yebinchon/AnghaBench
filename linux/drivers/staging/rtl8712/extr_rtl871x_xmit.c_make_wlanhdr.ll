; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_xmit.c_make_wlanhdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_xmit.c_make_wlanhdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { i32, %struct.mlme_priv }
%struct.mlme_priv = type { %struct.qos_priv }
%struct.qos_priv = type { i64 }
%struct.pkt_attrib = type { i32, i32, i64, i32, i32, %struct.sta_info*, i32, i64, i32, i32 }
%struct.sta_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.ieee80211_hdr = type { i32, i32, i32, i32 }

@WLANHDR_OFFSET = common dso_local global i32 0, align 4
@WIFI_DATA_TYPE = common dso_local global i32 0, align 4
@WIFI_STATION_STATE = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@WIFI_AP_STATE = common dso_local global i32 0, align 4
@WIFI_ADHOC_STATE = common dso_local global i32 0, align 4
@WIFI_ADHOC_MASTER_STATE = common dso_local global i32 0, align 4
@WIFI_MP_STATE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._adapter*, i32*, %struct.pkt_attrib*)* @make_wlanhdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_wlanhdr(%struct._adapter* %0, i32* %1, %struct.pkt_attrib* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._adapter*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.pkt_attrib*, align 8
  %8 = alloca i16*, align 8
  %9 = alloca %struct.ieee80211_hdr*, align 8
  %10 = alloca %struct.mlme_priv*, align 8
  %11 = alloca %struct.qos_priv*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.sta_info*, align 8
  %14 = alloca i32, align 4
  store %struct._adapter* %0, %struct._adapter** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.pkt_attrib* %2, %struct.pkt_attrib** %7, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = bitcast i32* %15 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %16, %struct.ieee80211_hdr** %9, align 8
  %17 = load %struct._adapter*, %struct._adapter** %5, align 8
  %18 = getelementptr inbounds %struct._adapter, %struct._adapter* %17, i32 0, i32 1
  store %struct.mlme_priv* %18, %struct.mlme_priv** %10, align 8
  %19 = load %struct.mlme_priv*, %struct.mlme_priv** %10, align 8
  %20 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %19, i32 0, i32 0
  store %struct.qos_priv* %20, %struct.qos_priv** %11, align 8
  %21 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %22 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %21, i32 0, i32 3
  store i32* %22, i32** %12, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* @WLANHDR_OFFSET, align 4
  %25 = call i32 @memset(i32* %23, i32 0, i32 %24)
  %26 = load i32*, i32** %12, align 8
  %27 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %28 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @SetFrameSubType(i32* %26, i32 %29)
  %31 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %32 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @WIFI_DATA_TYPE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %274

37:                                               ; preds = %3
  %38 = load %struct.mlme_priv*, %struct.mlme_priv** %10, align 8
  %39 = load i32, i32* @WIFI_STATION_STATE, align 4
  %40 = call i64 @check_fwstate(%struct.mlme_priv* %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %68

42:                                               ; preds = %37
  %43 = load i32*, i32** %12, align 8
  %44 = call i32 @SetToDs(i32* %43)
  %45 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %46 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.mlme_priv*, %struct.mlme_priv** %10, align 8
  %49 = call i32 @get_bssid(%struct.mlme_priv* %48)
  %50 = load i32, i32* @ETH_ALEN, align 4
  %51 = call i32 @memcpy(i32 %47, i32 %49, i32 %50)
  %52 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %53 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %56 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %55, i32 0, i32 8
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @ETH_ALEN, align 4
  %59 = call i32 @memcpy(i32 %54, i32 %57, i32 %58)
  %60 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %61 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %64 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %63, i32 0, i32 9
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @ETH_ALEN, align 4
  %67 = call i32 @memcpy(i32 %62, i32 %65, i32 %66)
  br label %168

68:                                               ; preds = %37
  %69 = load %struct.mlme_priv*, %struct.mlme_priv** %10, align 8
  %70 = load i32, i32* @WIFI_AP_STATE, align 4
  %71 = call i64 @check_fwstate(%struct.mlme_priv* %69, i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %99

73:                                               ; preds = %68
  %74 = load i32*, i32** %12, align 8
  %75 = call i32 @SetFrDs(i32* %74)
  %76 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %77 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %80 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %79, i32 0, i32 9
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @ETH_ALEN, align 4
  %83 = call i32 @memcpy(i32 %78, i32 %81, i32 %82)
  %84 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %85 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.mlme_priv*, %struct.mlme_priv** %10, align 8
  %88 = call i32 @get_bssid(%struct.mlme_priv* %87)
  %89 = load i32, i32* @ETH_ALEN, align 4
  %90 = call i32 @memcpy(i32 %86, i32 %88, i32 %89)
  %91 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %92 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %95 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %94, i32 0, i32 8
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @ETH_ALEN, align 4
  %98 = call i32 @memcpy(i32 %93, i32 %96, i32 %97)
  br label %167

99:                                               ; preds = %68
  %100 = load %struct.mlme_priv*, %struct.mlme_priv** %10, align 8
  %101 = load i32, i32* @WIFI_ADHOC_STATE, align 4
  %102 = call i64 @check_fwstate(%struct.mlme_priv* %100, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %99
  %105 = load %struct.mlme_priv*, %struct.mlme_priv** %10, align 8
  %106 = load i32, i32* @WIFI_ADHOC_MASTER_STATE, align 4
  %107 = call i64 @check_fwstate(%struct.mlme_priv* %105, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %133

109:                                              ; preds = %104, %99
  %110 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %111 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %114 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %113, i32 0, i32 9
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @ETH_ALEN, align 4
  %117 = call i32 @memcpy(i32 %112, i32 %115, i32 %116)
  %118 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %119 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %122 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %121, i32 0, i32 8
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* @ETH_ALEN, align 4
  %125 = call i32 @memcpy(i32 %120, i32 %123, i32 %124)
  %126 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %127 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.mlme_priv*, %struct.mlme_priv** %10, align 8
  %130 = call i32 @get_bssid(%struct.mlme_priv* %129)
  %131 = load i32, i32* @ETH_ALEN, align 4
  %132 = call i32 @memcpy(i32 %128, i32 %130, i32 %131)
  br label %166

133:                                              ; preds = %104
  %134 = load %struct.mlme_priv*, %struct.mlme_priv** %10, align 8
  %135 = load i32, i32* @WIFI_MP_STATE, align 4
  %136 = call i64 @check_fwstate(%struct.mlme_priv* %134, i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %162

138:                                              ; preds = %133
  %139 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %140 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %143 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %142, i32 0, i32 9
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @ETH_ALEN, align 4
  %146 = call i32 @memcpy(i32 %141, i32 %144, i32 %145)
  %147 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %148 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %151 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %150, i32 0, i32 8
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @ETH_ALEN, align 4
  %154 = call i32 @memcpy(i32 %149, i32 %152, i32 %153)
  %155 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %156 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.mlme_priv*, %struct.mlme_priv** %10, align 8
  %159 = call i32 @get_bssid(%struct.mlme_priv* %158)
  %160 = load i32, i32* @ETH_ALEN, align 4
  %161 = call i32 @memcpy(i32 %157, i32 %159, i32 %160)
  br label %165

162:                                              ; preds = %133
  %163 = load i32, i32* @EINVAL, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %4, align 4
  br label %275

165:                                              ; preds = %138
  br label %166

166:                                              ; preds = %165, %109
  br label %167

167:                                              ; preds = %166, %73
  br label %168

168:                                              ; preds = %167, %42
  %169 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %170 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %169, i32 0, i32 7
  %171 = load i64, i64* %170, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %168
  %174 = load i32*, i32** %12, align 8
  %175 = call i32 @SetPrivacy(i32* %174)
  br label %176

176:                                              ; preds = %173, %168
  %177 = load %struct.qos_priv*, %struct.qos_priv** %11, align 8
  %178 = getelementptr inbounds %struct.qos_priv, %struct.qos_priv* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %206

181:                                              ; preds = %176
  %182 = load i32*, i32** %6, align 8
  %183 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %184 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %182, i64 %186
  %188 = getelementptr inbounds i32, i32* %187, i64 -2
  %189 = bitcast i32* %188 to i16*
  store i16* %189, i16** %8, align 8
  %190 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %191 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %190, i32 0, i32 2
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %181
  %195 = load i16*, i16** %8, align 8
  %196 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %197 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %196, i32 0, i32 2
  %198 = load i64, i64* %197, align 8
  %199 = call i32 @SetPriority(i16* %195, i64 %198)
  br label %200

200:                                              ; preds = %194, %181
  %201 = load i16*, i16** %8, align 8
  %202 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %203 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %202, i32 0, i32 6
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @SetAckpolicy(i16* %201, i32 %204)
  br label %206

206:                                              ; preds = %200, %176
  %207 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %208 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %207, i32 0, i32 4
  %209 = load i32, i32* %208, align 4
  %210 = call i32 @is_multicast_ether_addr(i32 %209)
  store i32 %210, i32* %14, align 4
  %211 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %212 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %211, i32 0, i32 5
  %213 = load %struct.sta_info*, %struct.sta_info** %212, align 8
  %214 = icmp ne %struct.sta_info* %213, null
  br i1 %214, label %215, label %219

215:                                              ; preds = %206
  %216 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %217 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %216, i32 0, i32 5
  %218 = load %struct.sta_info*, %struct.sta_info** %217, align 8
  store %struct.sta_info* %218, %struct.sta_info** %13, align 8
  br label %233

219:                                              ; preds = %206
  %220 = load i32, i32* %14, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %225

222:                                              ; preds = %219
  %223 = load %struct._adapter*, %struct._adapter** %5, align 8
  %224 = call %struct.sta_info* @r8712_get_bcmc_stainfo(%struct._adapter* %223)
  store %struct.sta_info* %224, %struct.sta_info** %13, align 8
  br label %232

225:                                              ; preds = %219
  %226 = load %struct._adapter*, %struct._adapter** %5, align 8
  %227 = getelementptr inbounds %struct._adapter, %struct._adapter* %226, i32 0, i32 0
  %228 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %229 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %228, i32 0, i32 4
  %230 = load i32, i32* %229, align 4
  %231 = call %struct.sta_info* @r8712_get_stainfo(i32* %227, i32 %230)
  store %struct.sta_info* %231, %struct.sta_info** %13, align 8
  br label %232

232:                                              ; preds = %225, %222
  br label %233

233:                                              ; preds = %232, %215
  %234 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %235 = icmp ne %struct.sta_info* %234, null
  br i1 %235, label %236, label %273

236:                                              ; preds = %233
  %237 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %238 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %238, i32 0, i32 0
  %240 = load i32*, i32** %239, align 8
  %241 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %242 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %241, i32 0, i32 2
  %243 = load i64, i64* %242, align 8
  %244 = getelementptr inbounds i32, i32* %240, i64 %243
  %245 = load i32, i32* %244, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %244, align 4
  %247 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %248 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %248, i32 0, i32 0
  %250 = load i32*, i32** %249, align 8
  %251 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %252 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %251, i32 0, i32 2
  %253 = load i64, i64* %252, align 8
  %254 = getelementptr inbounds i32, i32* %250, i64 %253
  %255 = load i32, i32* %254, align 4
  %256 = and i32 %255, 4095
  store i32 %256, i32* %254, align 4
  %257 = load %struct.sta_info*, %struct.sta_info** %13, align 8
  %258 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %258, i32 0, i32 0
  %260 = load i32*, i32** %259, align 8
  %261 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %262 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %261, i32 0, i32 2
  %263 = load i64, i64* %262, align 8
  %264 = getelementptr inbounds i32, i32* %260, i64 %263
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %267 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %266, i32 0, i32 3
  store i32 %265, i32* %267, align 8
  %268 = load i32*, i32** %6, align 8
  %269 = load %struct.pkt_attrib*, %struct.pkt_attrib** %7, align 8
  %270 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %269, i32 0, i32 3
  %271 = load i32, i32* %270, align 8
  %272 = call i32 @SetSeqNum(i32* %268, i32 %271)
  br label %273

273:                                              ; preds = %236, %233
  br label %274

274:                                              ; preds = %273, %3
  store i32 0, i32* %4, align 4
  br label %275

275:                                              ; preds = %274, %162
  %276 = load i32, i32* %4, align 4
  ret i32 %276
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @SetFrameSubType(i32*, i32) #1

declare dso_local i64 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @SetToDs(i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @get_bssid(%struct.mlme_priv*) #1

declare dso_local i32 @SetFrDs(i32*) #1

declare dso_local i32 @SetPrivacy(i32*) #1

declare dso_local i32 @SetPriority(i16*, i64) #1

declare dso_local i32 @SetAckpolicy(i16*, i32) #1

declare dso_local i32 @is_multicast_ether_addr(i32) #1

declare dso_local %struct.sta_info* @r8712_get_bcmc_stainfo(%struct._adapter*) #1

declare dso_local %struct.sta_info* @r8712_get_stainfo(i32*, i32) #1

declare dso_local i32 @SetSeqNum(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
