; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_xmit.c_rtw_make_wlanhdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_xmit.c_rtw_make_wlanhdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.mlme_priv }
%struct.mlme_priv = type { %struct.qos_priv }
%struct.qos_priv = type { i64 }
%struct.pkt_attrib = type { i32, i32, i32, i32, i32, i64, i32, i32, i64, i64, i32, i32, i32, %struct.sta_info* }
%struct.sta_info = type { i32*, %struct.TYPE_4__, %struct.TYPE_3__, i64 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.TYPE_3__ = type { i32* }
%struct.ieee80211_hdr = type { i32, i32, i32, i32 }

@_SUCCESS = common dso_local global i32 0, align 4
@WLANHDR_OFFSET = common dso_local global i32 0, align 4
@WIFI_DATA_TYPE = common dso_local global i32 0, align 4
@WIFI_STATION_STATE = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@WIFI_AP_STATE = common dso_local global i32 0, align 4
@WIFI_ADHOC_STATE = common dso_local global i32 0, align 4
@WIFI_ADHOC_MASTER_STATE = common dso_local global i32 0, align 4
@_module_rtl871x_xmit_c_ = common dso_local global i32 0, align 4
@_drv_err_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"fw_state:%x is not allowed to xmit frame\0A\00", align 1
@_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_make_wlanhdr(%struct.adapter* %0, i32* %1, %struct.pkt_attrib* %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.pkt_attrib*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ieee80211_hdr*, align 8
  %9 = alloca %struct.mlme_priv*, align 8
  %10 = alloca %struct.qos_priv*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.sta_info*, align 8
  %15 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.pkt_attrib* %2, %struct.pkt_attrib** %6, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = bitcast i32* %16 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %17, %struct.ieee80211_hdr** %8, align 8
  %18 = load %struct.adapter*, %struct.adapter** %4, align 8
  %19 = getelementptr inbounds %struct.adapter, %struct.adapter* %18, i32 0, i32 1
  store %struct.mlme_priv* %19, %struct.mlme_priv** %9, align 8
  %20 = load %struct.mlme_priv*, %struct.mlme_priv** %9, align 8
  %21 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %20, i32 0, i32 0
  store %struct.qos_priv* %21, %struct.qos_priv** %10, align 8
  store i32 0, i32* %11, align 4
  %22 = load i32, i32* @_SUCCESS, align 4
  store i32 %22, i32* %12, align 4
  %23 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %24 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %23, i32 0, i32 3
  store i32* %24, i32** %13, align 8
  %25 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %26 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %25, i32 0, i32 13
  %27 = load %struct.sta_info*, %struct.sta_info** %26, align 8
  %28 = icmp ne %struct.sta_info* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %3
  %30 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %31 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %30, i32 0, i32 13
  %32 = load %struct.sta_info*, %struct.sta_info** %31, align 8
  store %struct.sta_info* %32, %struct.sta_info** %14, align 8
  br label %50

33:                                               ; preds = %3
  %34 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %35 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %34, i32 0, i32 12
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @is_multicast_ether_addr(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load %struct.adapter*, %struct.adapter** %4, align 8
  %41 = call %struct.sta_info* @rtw_get_bcmc_stainfo(%struct.adapter* %40)
  store %struct.sta_info* %41, %struct.sta_info** %14, align 8
  br label %49

42:                                               ; preds = %33
  %43 = load %struct.adapter*, %struct.adapter** %4, align 8
  %44 = getelementptr inbounds %struct.adapter, %struct.adapter* %43, i32 0, i32 0
  %45 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %46 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %45, i32 0, i32 12
  %47 = load i32, i32* %46, align 8
  %48 = call %struct.sta_info* @rtw_get_stainfo(i32* %44, i32 %47)
  store %struct.sta_info* %48, %struct.sta_info** %14, align 8
  br label %49

49:                                               ; preds = %42, %39
  br label %50

50:                                               ; preds = %49, %29
  %51 = load i32*, i32** %5, align 8
  %52 = load i32, i32* @WLANHDR_OFFSET, align 4
  %53 = call i32 @memset(i32* %51, i32 0, i32 %52)
  %54 = load i32*, i32** %13, align 8
  %55 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %56 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @SetFrameSubType(i32* %54, i32 %57)
  %59 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %60 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @WIFI_DATA_TYPE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %377

65:                                               ; preds = %50
  %66 = load %struct.mlme_priv*, %struct.mlme_priv** %9, align 8
  %67 = load i32, i32* @WIFI_STATION_STATE, align 4
  %68 = call i64 @check_fwstate(%struct.mlme_priv* %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %102

70:                                               ; preds = %65
  %71 = load i32*, i32** %13, align 8
  %72 = call i32 @SetToDs(i32* %71)
  %73 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %74 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.mlme_priv*, %struct.mlme_priv** %9, align 8
  %77 = call i32 @get_bssid(%struct.mlme_priv* %76)
  %78 = load i32, i32* @ETH_ALEN, align 4
  %79 = call i32 @memcpy(i32 %75, i32 %77, i32 %78)
  %80 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %81 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %84 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %83, i32 0, i32 10
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @ETH_ALEN, align 4
  %87 = call i32 @memcpy(i32 %82, i32 %85, i32 %86)
  %88 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %89 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %92 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %91, i32 0, i32 11
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @ETH_ALEN, align 4
  %95 = call i32 @memcpy(i32 %90, i32 %93, i32 %94)
  %96 = load %struct.qos_priv*, %struct.qos_priv** %10, align 8
  %97 = getelementptr inbounds %struct.qos_priv, %struct.qos_priv* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %70
  store i32 1, i32* %11, align 4
  br label %101

101:                                              ; preds = %100, %70
  br label %190

102:                                              ; preds = %65
  %103 = load %struct.mlme_priv*, %struct.mlme_priv** %9, align 8
  %104 = load i32, i32* @WIFI_AP_STATE, align 4
  %105 = call i64 @check_fwstate(%struct.mlme_priv* %103, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %139

107:                                              ; preds = %102
  %108 = load i32*, i32** %13, align 8
  %109 = call i32 @SetFrDs(i32* %108)
  %110 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %111 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %114 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %113, i32 0, i32 11
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @ETH_ALEN, align 4
  %117 = call i32 @memcpy(i32 %112, i32 %115, i32 %116)
  %118 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %119 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.mlme_priv*, %struct.mlme_priv** %9, align 8
  %122 = call i32 @get_bssid(%struct.mlme_priv* %121)
  %123 = load i32, i32* @ETH_ALEN, align 4
  %124 = call i32 @memcpy(i32 %120, i32 %122, i32 %123)
  %125 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %126 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %129 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %128, i32 0, i32 10
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @ETH_ALEN, align 4
  %132 = call i32 @memcpy(i32 %127, i32 %130, i32 %131)
  %133 = load %struct.sta_info*, %struct.sta_info** %14, align 8
  %134 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %107
  store i32 1, i32* %11, align 4
  br label %138

138:                                              ; preds = %137, %107
  br label %189

139:                                              ; preds = %102
  %140 = load %struct.mlme_priv*, %struct.mlme_priv** %9, align 8
  %141 = load i32, i32* @WIFI_ADHOC_STATE, align 4
  %142 = call i64 @check_fwstate(%struct.mlme_priv* %140, i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %149, label %144

144:                                              ; preds = %139
  %145 = load %struct.mlme_priv*, %struct.mlme_priv** %9, align 8
  %146 = load i32, i32* @WIFI_ADHOC_MASTER_STATE, align 4
  %147 = call i64 @check_fwstate(%struct.mlme_priv* %145, i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %179

149:                                              ; preds = %144, %139
  %150 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %151 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %154 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %153, i32 0, i32 11
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @ETH_ALEN, align 4
  %157 = call i32 @memcpy(i32 %152, i32 %155, i32 %156)
  %158 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %159 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %162 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %161, i32 0, i32 10
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @ETH_ALEN, align 4
  %165 = call i32 @memcpy(i32 %160, i32 %163, i32 %164)
  %166 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %8, align 8
  %167 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.mlme_priv*, %struct.mlme_priv** %9, align 8
  %170 = call i32 @get_bssid(%struct.mlme_priv* %169)
  %171 = load i32, i32* @ETH_ALEN, align 4
  %172 = call i32 @memcpy(i32 %168, i32 %170, i32 %171)
  %173 = load %struct.sta_info*, %struct.sta_info** %14, align 8
  %174 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %173, i32 0, i32 3
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %149
  store i32 1, i32* %11, align 4
  br label %178

178:                                              ; preds = %177, %149
  br label %188

179:                                              ; preds = %144
  %180 = load i32, i32* @_module_rtl871x_xmit_c_, align 4
  %181 = load i32, i32* @_drv_err_, align 4
  %182 = load %struct.mlme_priv*, %struct.mlme_priv** %9, align 8
  %183 = call i32 @get_fwstate(%struct.mlme_priv* %182)
  %184 = sext i32 %183 to i64
  %185 = inttoptr i64 %184 to i8*
  %186 = call i32 @RT_TRACE(i32 %180, i32 %181, i8* %185)
  %187 = load i32, i32* @_FAIL, align 4
  store i32 %187, i32* %12, align 4
  br label %378

188:                                              ; preds = %178
  br label %189

189:                                              ; preds = %188, %138
  br label %190

190:                                              ; preds = %189, %101
  %191 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %192 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %191, i32 0, i32 9
  %193 = load i64, i64* %192, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %190
  %196 = load i32*, i32** %13, align 8
  %197 = call i32 @SetMData(i32* %196)
  br label %198

198:                                              ; preds = %195, %190
  %199 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %200 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %199, i32 0, i32 8
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %198
  %204 = load i32*, i32** %13, align 8
  %205 = call i32 @SetPrivacy(i32* %204)
  br label %206

206:                                              ; preds = %203, %198
  %207 = load i32, i32* %11, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %240

209:                                              ; preds = %206
  %210 = load i32*, i32** %5, align 8
  %211 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %212 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds i32, i32* %210, i64 %214
  %216 = getelementptr inbounds i32, i32* %215, i64 -2
  %217 = bitcast i32* %216 to i16*
  %218 = bitcast i16* %217 to i32*
  store i32* %218, i32** %7, align 8
  %219 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %220 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %229

223:                                              ; preds = %209
  %224 = load i32*, i32** %7, align 8
  %225 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %226 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = call i32 @SetPriority(i32* %224, i32 %227)
  br label %229

229:                                              ; preds = %223, %209
  %230 = load i32*, i32** %7, align 8
  %231 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %232 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %231, i32 0, i32 7
  %233 = load i32, i32* %232, align 4
  %234 = call i32 @SetEOSP(i32* %230, i32 %233)
  %235 = load i32*, i32** %7, align 8
  %236 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %237 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %236, i32 0, i32 6
  %238 = load i32, i32* %237, align 8
  %239 = call i32 @SetAckpolicy(i32* %235, i32 %238)
  br label %240

240:                                              ; preds = %229, %206
  %241 = load %struct.sta_info*, %struct.sta_info** %14, align 8
  %242 = icmp ne %struct.sta_info* %241, null
  br i1 %242, label %243, label %376

243:                                              ; preds = %240
  %244 = load %struct.sta_info*, %struct.sta_info** %14, align 8
  %245 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %244, i32 0, i32 2
  %246 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %245, i32 0, i32 0
  %247 = load i32*, i32** %246, align 8
  %248 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %249 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 8
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %247, i64 %251
  %253 = load i32, i32* %252, align 4
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %252, align 4
  %255 = load %struct.sta_info*, %struct.sta_info** %14, align 8
  %256 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %255, i32 0, i32 2
  %257 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %256, i32 0, i32 0
  %258 = load i32*, i32** %257, align 8
  %259 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %260 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %259, i32 0, i32 2
  %261 = load i32, i32* %260, align 8
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %258, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = and i32 %264, 4095
  store i32 %265, i32* %263, align 4
  %266 = load %struct.sta_info*, %struct.sta_info** %14, align 8
  %267 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %266, i32 0, i32 2
  %268 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %267, i32 0, i32 0
  %269 = load i32*, i32** %268, align 8
  %270 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %271 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %270, i32 0, i32 2
  %272 = load i32, i32* %271, align 8
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %269, i64 %273
  %275 = load i32, i32* %274, align 4
  %276 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %277 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %276, i32 0, i32 3
  store i32 %275, i32* %277, align 4
  %278 = load i32*, i32** %5, align 8
  %279 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %280 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %279, i32 0, i32 3
  %281 = load i32, i32* %280, align 4
  %282 = call i32 @SetSeqNum(i32* %278, i32 %281)
  %283 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %284 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %283, i32 0, i32 5
  %285 = load i64, i64* %284, align 8
  %286 = icmp ne i64 %285, 0
  br i1 %286, label %287, label %309

287:                                              ; preds = %243
  %288 = load %struct.sta_info*, %struct.sta_info** %14, align 8
  %289 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %288, i32 0, i32 1
  %290 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %289, i32 0, i32 1
  %291 = load i64, i64* %290, align 8
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %309

293:                                              ; preds = %287
  %294 = load %struct.sta_info*, %struct.sta_info** %14, align 8
  %295 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %294, i32 0, i32 1
  %296 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %299 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 8
  %301 = sext i32 %300 to i64
  %302 = call i32 @BIT(i64 %301)
  %303 = and i32 %297, %302
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %308

305:                                              ; preds = %293
  %306 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %307 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %306, i32 0, i32 4
  store i32 1, i32* %307, align 8
  br label %308

308:                                              ; preds = %305, %293
  br label %309

309:                                              ; preds = %308, %287, %243
  %310 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %311 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %310, i32 0, i32 4
  %312 = load i32, i32* %311, align 8
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %375

314:                                              ; preds = %309
  %315 = load %struct.sta_info*, %struct.sta_info** %14, align 8
  %316 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %315, i32 0, i32 0
  %317 = load i32*, i32** %316, align 8
  %318 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %319 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %318, i32 0, i32 2
  %320 = load i32, i32* %319, align 8
  %321 = and i32 %320, 15
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i32, i32* %317, i64 %322
  %324 = load i32, i32* %323, align 4
  store i32 %324, i32* %15, align 4
  %325 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %326 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %325, i32 0, i32 3
  %327 = load i32, i32* %326, align 4
  %328 = load i32, i32* %15, align 4
  %329 = call i64 @SN_LESS(i32 %327, i32 %328)
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %334

331:                                              ; preds = %314
  %332 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %333 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %332, i32 0, i32 4
  store i32 0, i32* %333, align 8
  br label %374

334:                                              ; preds = %314
  %335 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %336 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %335, i32 0, i32 3
  %337 = load i32, i32* %336, align 4
  %338 = load i32, i32* %15, align 4
  %339 = call i64 @SN_EQUAL(i32 %337, i32 %338)
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %356

341:                                              ; preds = %334
  %342 = load i32, i32* %15, align 4
  %343 = add nsw i32 %342, 1
  %344 = and i32 %343, 4095
  %345 = load %struct.sta_info*, %struct.sta_info** %14, align 8
  %346 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %345, i32 0, i32 0
  %347 = load i32*, i32** %346, align 8
  %348 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %349 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %348, i32 0, i32 2
  %350 = load i32, i32* %349, align 8
  %351 = and i32 %350, 15
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds i32, i32* %347, i64 %352
  store i32 %344, i32* %353, align 4
  %354 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %355 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %354, i32 0, i32 4
  store i32 1, i32* %355, align 8
  br label %373

356:                                              ; preds = %334
  %357 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %358 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %357, i32 0, i32 3
  %359 = load i32, i32* %358, align 4
  %360 = add nsw i32 %359, 1
  %361 = and i32 %360, 4095
  %362 = load %struct.sta_info*, %struct.sta_info** %14, align 8
  %363 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %362, i32 0, i32 0
  %364 = load i32*, i32** %363, align 8
  %365 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %366 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %365, i32 0, i32 2
  %367 = load i32, i32* %366, align 8
  %368 = and i32 %367, 15
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i32, i32* %364, i64 %369
  store i32 %361, i32* %370, align 4
  %371 = load %struct.pkt_attrib*, %struct.pkt_attrib** %6, align 8
  %372 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %371, i32 0, i32 4
  store i32 1, i32* %372, align 8
  br label %373

373:                                              ; preds = %356, %341
  br label %374

374:                                              ; preds = %373, %331
  br label %375

375:                                              ; preds = %374, %309
  br label %376

376:                                              ; preds = %375, %240
  br label %377

377:                                              ; preds = %376, %50
  br label %378

378:                                              ; preds = %377, %179
  %379 = load i32, i32* %12, align 4
  ret i32 %379
}

declare dso_local i64 @is_multicast_ether_addr(i32) #1

declare dso_local %struct.sta_info* @rtw_get_bcmc_stainfo(%struct.adapter*) #1

declare dso_local %struct.sta_info* @rtw_get_stainfo(i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @SetFrameSubType(i32*, i32) #1

declare dso_local i64 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @SetToDs(i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @get_bssid(%struct.mlme_priv*) #1

declare dso_local i32 @SetFrDs(i32*) #1

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i32 @get_fwstate(%struct.mlme_priv*) #1

declare dso_local i32 @SetMData(i32*) #1

declare dso_local i32 @SetPrivacy(i32*) #1

declare dso_local i32 @SetPriority(i32*, i32) #1

declare dso_local i32 @SetEOSP(i32*, i32) #1

declare dso_local i32 @SetAckpolicy(i32*, i32) #1

declare dso_local i32 @SetSeqNum(i32*, i32) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i64 @SN_LESS(i32, i32) #1

declare dso_local i64 @SN_EQUAL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
