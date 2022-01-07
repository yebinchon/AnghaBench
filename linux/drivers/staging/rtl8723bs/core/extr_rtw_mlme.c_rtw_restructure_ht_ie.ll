; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme.c_rtw_restructure_ht_ie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme.c_rtw_restructure_ht_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.TYPE_2__, %struct.mlme_ext_priv, %struct.mlme_priv, %struct.registry_priv }
%struct.TYPE_2__ = type { i64 }
%struct.mlme_ext_priv = type { i64, i32 }
%struct.mlme_priv = type { %struct.ht_priv }
%struct.ht_priv = type { i32, i32, i64, i64 }
%struct.registry_priv = type { i32, i32, i32 }
%struct.rtw_ieee80211_ht_cap = type { i32, i32, i32 }
%struct.HT_info_element = type { i32* }

@IEEE80211_HT_CAP_DSSSCCK40 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_20 = common dso_local global i32 0, align 4
@WIFI_STATION_STATE = common dso_local global i32 0, align 4
@CHANNEL_WIDTH_40 = common dso_local global i64 0, align 8
@_HT_ADD_INFO_IE_ = common dso_local global i32 0, align 4
@CHANNEL_WIDTH_20 = common dso_local global i64 0, align 8
@IEEE80211_HT_CAP_SUP_WIDTH = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_40 = common dso_local global i32 0, align 4
@STBC_HT_ENABLE_TX = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_TX_STBC = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SM_PS = common dso_local global i32 0, align 4
@STBC_HT_ENABLE_RX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"declare supporting RX STBC\0A\00", align 1
@HW_VAR_RF_TYPE = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_RX_STBC_1R = common dso_local global i32 0, align 4
@MCS_RATE_1R = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_RX_STBC_2R = common dso_local global i32 0, align 4
@MCS_RATE_2R = common dso_local global i32 0, align 4
@HAL_DEF_RX_PACKET_OFFSET = common dso_local global i32 0, align 4
@HAL_DEF_MAX_RECVBUF_SZ = common dso_local global i32 0, align 4
@HW_VAR_MAX_RX_AMPDU_FACTOR = common dso_local global i32 0, align 4
@_AES_ = common dso_local global i64 0, align 8
@IEEE80211_HT_CAP_AMPDU_DENSITY = common dso_local global i32 0, align 4
@_HT_CAPABILITY_IE_ = common dso_local global i32 0, align 4
@MCS_RATE_2R_13TO15_OFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_restructure_ht_ie(%struct.adapter* %0, i64* %1, i64* %2, i32 %3, i32* %4, i64 %5) #0 {
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.rtw_ieee80211_ht_cap, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.registry_priv*, align 8
  %24 = alloca %struct.mlme_priv*, align 8
  %25 = alloca %struct.ht_priv*, align 8
  %26 = alloca %struct.mlme_ext_priv*, align 8
  %27 = alloca %struct.HT_info_element*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i64 %5, i64* %12, align 8
  store i64 0, i64* %19, align 8
  store i64 0, i64* %20, align 8
  store i64 0, i64* %21, align 8
  store i64 0, i64* %22, align 8
  %30 = load %struct.adapter*, %struct.adapter** %7, align 8
  %31 = getelementptr inbounds %struct.adapter, %struct.adapter* %30, i32 0, i32 4
  store %struct.registry_priv* %31, %struct.registry_priv** %23, align 8
  %32 = load %struct.adapter*, %struct.adapter** %7, align 8
  %33 = getelementptr inbounds %struct.adapter, %struct.adapter* %32, i32 0, i32 3
  store %struct.mlme_priv* %33, %struct.mlme_priv** %24, align 8
  %34 = load %struct.mlme_priv*, %struct.mlme_priv** %24, align 8
  %35 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %34, i32 0, i32 0
  store %struct.ht_priv* %35, %struct.ht_priv** %25, align 8
  %36 = load %struct.adapter*, %struct.adapter** %7, align 8
  %37 = getelementptr inbounds %struct.adapter, %struct.adapter* %36, i32 0, i32 2
  store %struct.mlme_ext_priv* %37, %struct.mlme_ext_priv** %26, align 8
  %38 = load %struct.ht_priv*, %struct.ht_priv** %25, align 8
  %39 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %38, i32 0, i32 0
  store i32 0, i32* %39, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %14, align 4
  %42 = call i32 @memset(%struct.rtw_ieee80211_ht_cap* %18, i32 0, i32 12)
  %43 = load i32, i32* @IEEE80211_HT_CAP_DSSSCCK40, align 4
  %44 = call i32 @cpu_to_le16(i32 %43)
  %45 = getelementptr inbounds %struct.rtw_ieee80211_ht_cap, %struct.rtw_ieee80211_ht_cap* %18, i32 0, i32 2
  store i32 %44, i32* %45, align 4
  %46 = load %struct.ht_priv*, %struct.ht_priv** %25, align 8
  %47 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %6
  %51 = load i32, i32* @IEEE80211_HT_CAP_SGI_20, align 4
  %52 = call i32 @cpu_to_le16(i32 %51)
  %53 = getelementptr inbounds %struct.rtw_ieee80211_ht_cap, %struct.rtw_ieee80211_ht_cap* %18, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %52
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %50, %6
  %57 = load i64*, i64** %8, align 8
  %58 = icmp eq i64* %57, null
  br i1 %58, label %59, label %78

59:                                               ; preds = %56
  %60 = load %struct.mlme_priv*, %struct.mlme_priv** %24, align 8
  %61 = load i32, i32* @WIFI_STATION_STATE, align 4
  %62 = call i64 @check_fwstate(%struct.mlme_priv* %60, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %59
  %65 = load %struct.adapter*, %struct.adapter** %7, align 8
  %66 = getelementptr inbounds %struct.adapter, %struct.adapter* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %22, align 8
  %69 = load i64, i64* %22, align 8
  %70 = load i64, i64* @CHANNEL_WIDTH_40, align 8
  %71 = icmp sgt i64 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %64
  %73 = load i64, i64* @CHANNEL_WIDTH_40, align 8
  store i64 %73, i64* %22, align 8
  br label %74

74:                                               ; preds = %72, %64
  br label %77

75:                                               ; preds = %59
  %76 = load i64, i64* @CHANNEL_WIDTH_40, align 8
  store i64 %76, i64* %22, align 8
  br label %77

77:                                               ; preds = %75, %74
  br label %117

78:                                               ; preds = %56
  %79 = load i64*, i64** %8, align 8
  %80 = load i32, i32* @_HT_ADD_INFO_IE_, align 4
  %81 = load i32, i32* %10, align 4
  %82 = call i8* @rtw_get_ie(i64* %79, i32 %80, i32* %13, i32 %81)
  store i8* %82, i8** %16, align 8
  %83 = load i8*, i8** %16, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %116

85:                                               ; preds = %78
  %86 = load i32, i32* %13, align 4
  %87 = sext i32 %86 to i64
  %88 = icmp eq i64 %87, 4
  br i1 %88, label %89, label %116

89:                                               ; preds = %85
  %90 = load i8*, i8** %16, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 2
  %92 = bitcast i8* %91 to %struct.HT_info_element*
  store %struct.HT_info_element* %92, %struct.HT_info_element** %27, align 8
  %93 = load %struct.HT_info_element*, %struct.HT_info_element** %27, align 8
  %94 = getelementptr inbounds %struct.HT_info_element, %struct.HT_info_element* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @BIT(i32 2)
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %113

101:                                              ; preds = %89
  %102 = load %struct.HT_info_element*, %struct.HT_info_element** %27, align 8
  %103 = getelementptr inbounds %struct.HT_info_element, %struct.HT_info_element* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %106, 3
  switch i32 %107, label %110 [
    i32 1, label %108
    i32 3, label %108
  ]

108:                                              ; preds = %101, %101
  %109 = load i64, i64* @CHANNEL_WIDTH_40, align 8
  store i64 %109, i64* %22, align 8
  br label %112

110:                                              ; preds = %101
  %111 = load i64, i64* @CHANNEL_WIDTH_20, align 8
  store i64 %111, i64* %22, align 8
  br label %112

112:                                              ; preds = %110, %108
  br label %115

113:                                              ; preds = %89
  %114 = load i64, i64* @CHANNEL_WIDTH_20, align 8
  store i64 %114, i64* %22, align 8
  br label %115

115:                                              ; preds = %113, %112
  br label %116

116:                                              ; preds = %115, %85, %78
  br label %117

117:                                              ; preds = %116, %77
  %118 = load i64, i64* %12, align 8
  %119 = icmp sgt i64 %118, 14
  br i1 %119, label %120, label %128

120:                                              ; preds = %117
  %121 = load %struct.registry_priv*, %struct.registry_priv** %23, align 8
  %122 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = and i32 %123, 240
  %125 = icmp sgt i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %120
  store i64 1, i64* %19, align 8
  br label %127

127:                                              ; preds = %126, %120
  br label %136

128:                                              ; preds = %117
  %129 = load %struct.registry_priv*, %struct.registry_priv** %23, align 8
  %130 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = and i32 %131, 15
  %133 = icmp sgt i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %128
  store i64 1, i64* %19, align 8
  br label %135

135:                                              ; preds = %134, %128
  br label %136

136:                                              ; preds = %135, %127
  %137 = load i64, i64* %19, align 8
  %138 = icmp eq i64 %137, 1
  br i1 %138, label %139, label %160

139:                                              ; preds = %136
  %140 = load i64, i64* %22, align 8
  %141 = load i64, i64* @CHANNEL_WIDTH_40, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %160

143:                                              ; preds = %139
  %144 = load i32, i32* @IEEE80211_HT_CAP_SUP_WIDTH, align 4
  %145 = call i32 @cpu_to_le16(i32 %144)
  %146 = getelementptr inbounds %struct.rtw_ieee80211_ht_cap, %struct.rtw_ieee80211_ht_cap* %18, i32 0, i32 2
  %147 = load i32, i32* %146, align 4
  %148 = or i32 %147, %145
  store i32 %148, i32* %146, align 4
  %149 = load %struct.ht_priv*, %struct.ht_priv** %25, align 8
  %150 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %143
  %154 = load i32, i32* @IEEE80211_HT_CAP_SGI_40, align 4
  %155 = call i32 @cpu_to_le16(i32 %154)
  %156 = getelementptr inbounds %struct.rtw_ieee80211_ht_cap, %struct.rtw_ieee80211_ht_cap* %18, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = or i32 %157, %155
  store i32 %158, i32* %156, align 4
  br label %159

159:                                              ; preds = %153, %143
  br label %160

160:                                              ; preds = %159, %139, %136
  %161 = load %struct.ht_priv*, %struct.ht_priv** %25, align 8
  %162 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @STBC_HT_ENABLE_TX, align 4
  %165 = call i64 @TEST_FLAG(i32 %163, i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %173

167:                                              ; preds = %160
  %168 = load i32, i32* @IEEE80211_HT_CAP_TX_STBC, align 4
  %169 = call i32 @cpu_to_le16(i32 %168)
  %170 = getelementptr inbounds %struct.rtw_ieee80211_ht_cap, %struct.rtw_ieee80211_ht_cap* %18, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = or i32 %171, %169
  store i32 %172, i32* %170, align 4
  br label %173

173:                                              ; preds = %167, %160
  %174 = load i32, i32* @IEEE80211_HT_CAP_SM_PS, align 4
  %175 = call i32 @cpu_to_le16(i32 %174)
  %176 = getelementptr inbounds %struct.rtw_ieee80211_ht_cap, %struct.rtw_ieee80211_ht_cap* %18, i32 0, i32 2
  %177 = load i32, i32* %176, align 4
  %178 = or i32 %177, %175
  store i32 %178, i32* %176, align 4
  %179 = load %struct.ht_priv*, %struct.ht_priv** %25, align 8
  %180 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @STBC_HT_ENABLE_RX, align 4
  %183 = call i64 @TEST_FLAG(i32 %181, i32 %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %201

185:                                              ; preds = %173
  %186 = load i64, i64* %12, align 8
  %187 = icmp sle i64 %186, 14
  br i1 %187, label %188, label %193

188:                                              ; preds = %185
  %189 = load %struct.registry_priv*, %struct.registry_priv** %23, align 8
  %190 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = icmp eq i32 %191, 1
  br i1 %192, label %198, label %193

193:                                              ; preds = %188, %185
  %194 = load %struct.registry_priv*, %struct.registry_priv** %23, align 8
  %195 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = icmp eq i32 %196, 1
  br i1 %197, label %198, label %200

198:                                              ; preds = %193, %188
  store i64 1, i64* %20, align 8
  %199 = call i32 @DBG_871X(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %200

200:                                              ; preds = %198, %193
  br label %201

201:                                              ; preds = %200, %173
  %202 = getelementptr inbounds %struct.rtw_ieee80211_ht_cap, %struct.rtw_ieee80211_ht_cap* %18, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %26, align 8
  %205 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = call i32 @memcpy(i32 %203, i32 %206, i32 16)
  %208 = load %struct.adapter*, %struct.adapter** %7, align 8
  %209 = load i32, i32* @HW_VAR_RF_TYPE, align 4
  %210 = call i32 @rtw_hal_get_hwreg(%struct.adapter* %208, i32 %209, i64* %21)
  %211 = load i64, i64* %21, align 8
  switch i64 %211, label %227 [
    i64 130, label %212
    i64 128, label %226
    i64 129, label %226
  ]

212:                                              ; preds = %201
  %213 = load i64, i64* %20, align 8
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %221

215:                                              ; preds = %212
  %216 = load i32, i32* @IEEE80211_HT_CAP_RX_STBC_1R, align 4
  %217 = call i32 @cpu_to_le16(i32 %216)
  %218 = getelementptr inbounds %struct.rtw_ieee80211_ht_cap, %struct.rtw_ieee80211_ht_cap* %18, i32 0, i32 2
  %219 = load i32, i32* %218, align 4
  %220 = or i32 %219, %217
  store i32 %220, i32* %218, align 4
  br label %221

221:                                              ; preds = %215, %212
  %222 = getelementptr inbounds %struct.rtw_ieee80211_ht_cap, %struct.rtw_ieee80211_ht_cap* %18, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* @MCS_RATE_1R, align 4
  %225 = call i32 @set_mcs_rate_by_mask(i32 %223, i32 %224)
  br label %241

226:                                              ; preds = %201, %201
  br label %227

227:                                              ; preds = %201, %226
  %228 = load i64, i64* %20, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %236

230:                                              ; preds = %227
  %231 = load i32, i32* @IEEE80211_HT_CAP_RX_STBC_2R, align 4
  %232 = call i32 @cpu_to_le16(i32 %231)
  %233 = getelementptr inbounds %struct.rtw_ieee80211_ht_cap, %struct.rtw_ieee80211_ht_cap* %18, i32 0, i32 2
  %234 = load i32, i32* %233, align 4
  %235 = or i32 %234, %232
  store i32 %235, i32* %233, align 4
  br label %236

236:                                              ; preds = %230, %227
  %237 = getelementptr inbounds %struct.rtw_ieee80211_ht_cap, %struct.rtw_ieee80211_ht_cap* %18, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* @MCS_RATE_2R, align 4
  %240 = call i32 @set_mcs_rate_by_mask(i32 %238, i32 %239)
  br label %241

241:                                              ; preds = %236, %221
  %242 = load %struct.adapter*, %struct.adapter** %7, align 8
  %243 = load i32, i32* @HAL_DEF_RX_PACKET_OFFSET, align 4
  %244 = call i32 @rtw_hal_get_def_var(%struct.adapter* %242, i32 %243, i32* %28)
  %245 = load %struct.adapter*, %struct.adapter** %7, align 8
  %246 = load i32, i32* @HAL_DEF_MAX_RECVBUF_SZ, align 4
  %247 = call i32 @rtw_hal_get_def_var(%struct.adapter* %245, i32 %246, i32* %29)
  %248 = load %struct.adapter*, %struct.adapter** %7, align 8
  %249 = getelementptr inbounds %struct.adapter, %struct.adapter* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = icmp ne i32 %250, 255
  br i1 %251, label %252, label %256

252:                                              ; preds = %241
  %253 = load %struct.adapter*, %struct.adapter** %7, align 8
  %254 = getelementptr inbounds %struct.adapter, %struct.adapter* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  store i32 %255, i32* %15, align 4
  br label %260

256:                                              ; preds = %241
  %257 = load %struct.adapter*, %struct.adapter** %7, align 8
  %258 = load i32, i32* @HW_VAR_MAX_RX_AMPDU_FACTOR, align 4
  %259 = call i32 @rtw_hal_get_def_var(%struct.adapter* %257, i32 %258, i32* %15)
  br label %260

260:                                              ; preds = %256, %252
  %261 = load i32, i32* %15, align 4
  %262 = and i32 %261, 3
  %263 = getelementptr inbounds %struct.rtw_ieee80211_ht_cap, %struct.rtw_ieee80211_ht_cap* %18, i32 0, i32 0
  store i32 %262, i32* %263, align 4
  %264 = load %struct.adapter*, %struct.adapter** %7, align 8
  %265 = getelementptr inbounds %struct.adapter, %struct.adapter* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = load i64, i64* @_AES_, align 8
  %269 = icmp eq i64 %267, %268
  br i1 %269, label %270, label %276

270:                                              ; preds = %260
  %271 = load i32, i32* @IEEE80211_HT_CAP_AMPDU_DENSITY, align 4
  %272 = and i32 %271, 28
  %273 = getelementptr inbounds %struct.rtw_ieee80211_ht_cap, %struct.rtw_ieee80211_ht_cap* %18, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = or i32 %274, %272
  store i32 %275, i32* %273, align 4
  br label %282

276:                                              ; preds = %260
  %277 = load i32, i32* @IEEE80211_HT_CAP_AMPDU_DENSITY, align 4
  %278 = and i32 %277, 0
  %279 = getelementptr inbounds %struct.rtw_ieee80211_ht_cap, %struct.rtw_ieee80211_ht_cap* %18, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = or i32 %280, %278
  store i32 %281, i32* %279, align 4
  br label %282

282:                                              ; preds = %276, %270
  %283 = load i64*, i64** %9, align 8
  %284 = load i32, i32* %14, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i64, i64* %283, i64 %285
  %287 = load i32, i32* @_HT_CAPABILITY_IE_, align 4
  %288 = bitcast %struct.rtw_ieee80211_ht_cap* %18 to i8*
  %289 = load i32*, i32** %11, align 8
  %290 = call i8* @rtw_set_ie(i64* %286, i32 %287, i32 12, i8* %288, i32* %289)
  store i8* %290, i8** %17, align 8
  %291 = load %struct.ht_priv*, %struct.ht_priv** %25, align 8
  %292 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %291, i32 0, i32 0
  store i32 1, i32* %292, align 8
  %293 = load i64*, i64** %8, align 8
  %294 = icmp ne i64* %293, null
  br i1 %294, label %295, label %320

295:                                              ; preds = %282
  %296 = load i64*, i64** %8, align 8
  %297 = load i32, i32* @_HT_ADD_INFO_IE_, align 4
  %298 = load i32, i32* %10, align 4
  %299 = call i8* @rtw_get_ie(i64* %296, i32 %297, i32* %13, i32 %298)
  store i8* %299, i8** %16, align 8
  %300 = load i8*, i8** %16, align 8
  %301 = icmp ne i8* %300, null
  br i1 %301, label %302, label %319

302:                                              ; preds = %295
  %303 = load i32, i32* %13, align 4
  %304 = sext i32 %303 to i64
  %305 = icmp eq i64 %304, 4
  br i1 %305, label %306, label %319

306:                                              ; preds = %302
  %307 = load i32*, i32** %11, align 8
  %308 = load i32, i32* %307, align 4
  store i32 %308, i32* %14, align 4
  %309 = load i64*, i64** %9, align 8
  %310 = load i32, i32* %14, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i64, i64* %309, i64 %311
  %313 = load i32, i32* @_HT_ADD_INFO_IE_, align 4
  %314 = load i32, i32* %13, align 4
  %315 = load i8*, i8** %16, align 8
  %316 = getelementptr inbounds i8, i8* %315, i64 2
  %317 = load i32*, i32** %11, align 8
  %318 = call i8* @rtw_set_ie(i64* %312, i32 %313, i32 %314, i8* %316, i32* %317)
  store i8* %318, i8** %17, align 8
  br label %319

319:                                              ; preds = %306, %302, %295
  br label %320

320:                                              ; preds = %319, %282
  %321 = load %struct.ht_priv*, %struct.ht_priv** %25, align 8
  %322 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  ret i32 %323
}

declare dso_local i32 @memset(%struct.rtw_ieee80211_ht_cap*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i64 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i8* @rtw_get_ie(i64*, i32, i32*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @TEST_FLAG(i32, i32) #1

declare dso_local i32 @DBG_871X(i8*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @rtw_hal_get_hwreg(%struct.adapter*, i32, i64*) #1

declare dso_local i32 @set_mcs_rate_by_mask(i32, i32) #1

declare dso_local i32 @rtw_hal_get_def_var(%struct.adapter*, i32, i32*) #1

declare dso_local i8* @rtw_set_ie(i64*, i32, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
