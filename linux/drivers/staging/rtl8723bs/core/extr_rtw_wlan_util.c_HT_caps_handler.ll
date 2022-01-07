; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_wlan_util.c_HT_caps_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_wlan_util.c_HT_caps_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.adapter = type { %struct.mlme_priv, %struct.mlme_ext_priv }
%struct.mlme_priv = type { %struct.ht_priv }
%struct.ht_priv = type { i32, i32, i32 }
%struct.mlme_ext_priv = type { i32, i32*, %struct.mlme_ext_info }
%struct.mlme_ext_info = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32* }
%struct.ndis_80211_var_ie = type { i32, i32* }

@HW_VAR_RF_TYPE = common dso_local global i32 0, align 4
@MCS_RATE_1R = common dso_local global i32 0, align 4
@MCS_RATE_2R = common dso_local global i32 0, align 4
@WIFI_AP_STATE = common dso_local global i32 0, align 4
@STBC_HT_ENABLE_TX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Enable HT Tx STBC !\0A\00", align 1
@LDPC_HT_ENABLE_TX = common dso_local global i32 0, align 4
@LDPC_HT_CAP_TX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Enable HT Tx LDPC!\0A\00", align 1
@STBC_HT_CAP_TX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Enable HT Tx STBC!\0A\00", align 1
@CHANNEL_WIDTH_40 = common dso_local global i32 0, align 4
@MCS_RATE_2R_13TO15_OFF = common dso_local global i32 0, align 4
@pregistrypriv = common dso_local global %struct.TYPE_8__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @HT_caps_handler(%struct.adapter* %0, %struct.ndis_80211_var_ie* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.ndis_80211_var_ie*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mlme_ext_priv*, align 8
  %12 = alloca %struct.mlme_ext_info*, align 8
  %13 = alloca %struct.mlme_priv*, align 8
  %14 = alloca %struct.ht_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.ndis_80211_var_ie* %1, %struct.ndis_80211_var_ie** %4, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %15 = load %struct.adapter*, %struct.adapter** %3, align 8
  %16 = getelementptr inbounds %struct.adapter, %struct.adapter* %15, i32 0, i32 1
  store %struct.mlme_ext_priv* %16, %struct.mlme_ext_priv** %11, align 8
  %17 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %11, align 8
  %18 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %17, i32 0, i32 2
  store %struct.mlme_ext_info* %18, %struct.mlme_ext_info** %12, align 8
  %19 = load %struct.adapter*, %struct.adapter** %3, align 8
  %20 = getelementptr inbounds %struct.adapter, %struct.adapter* %19, i32 0, i32 0
  store %struct.mlme_priv* %20, %struct.mlme_priv** %13, align 8
  %21 = load %struct.mlme_priv*, %struct.mlme_priv** %13, align 8
  %22 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %21, i32 0, i32 0
  store %struct.ht_priv* %22, %struct.ht_priv** %14, align 8
  %23 = load %struct.ndis_80211_var_ie*, %struct.ndis_80211_var_ie** %4, align 8
  %24 = icmp ne %struct.ndis_80211_var_ie* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  br label %267

26:                                               ; preds = %2
  %27 = load %struct.ht_priv*, %struct.ht_priv** %14, align 8
  %28 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %267

32:                                               ; preds = %26
  %33 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %12, align 8
  %34 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %140, %32
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.ndis_80211_var_ie*, %struct.ndis_80211_var_ie** %4, align 8
  %38 = getelementptr inbounds %struct.ndis_80211_var_ie, %struct.ndis_80211_var_ie* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ult i32 %36, %39
  br i1 %40, label %41, label %143

41:                                               ; preds = %35
  %42 = load i32, i32* %5, align 4
  %43 = icmp ne i32 %42, 2
  br i1 %43, label %44, label %62

44:                                               ; preds = %41
  %45 = load %struct.ndis_80211_var_ie*, %struct.ndis_80211_var_ie** %4, align 8
  %46 = getelementptr inbounds %struct.ndis_80211_var_ie, %struct.ndis_80211_var_ie* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %12, align 8
  %53 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, %51
  store i32 %61, i32* %59, align 4
  br label %139

62:                                               ; preds = %41
  %63 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %12, align 8
  %64 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = and i32 %68, 3
  %70 = load %struct.ndis_80211_var_ie*, %struct.ndis_80211_var_ie** %4, align 8
  %71 = getelementptr inbounds %struct.ndis_80211_var_ie, %struct.ndis_80211_var_ie* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, 3
  %78 = icmp sgt i32 %69, %77
  br i1 %78, label %79, label %88

79:                                               ; preds = %62
  %80 = load %struct.ndis_80211_var_ie*, %struct.ndis_80211_var_ie** %4, align 8
  %81 = getelementptr inbounds %struct.ndis_80211_var_ie, %struct.ndis_80211_var_ie* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, 3
  store i32 %87, i32* %7, align 4
  br label %96

88:                                               ; preds = %62
  %89 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %12, align 8
  %90 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = and i32 %94, 3
  store i32 %95, i32* %7, align 4
  br label %96

96:                                               ; preds = %88, %79
  %97 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %12, align 8
  %98 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = and i32 %102, 28
  %104 = load %struct.ndis_80211_var_ie*, %struct.ndis_80211_var_ie** %4, align 8
  %105 = getelementptr inbounds %struct.ndis_80211_var_ie, %struct.ndis_80211_var_ie* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %5, align 4
  %108 = zext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = and i32 %110, 28
  %112 = icmp sgt i32 %103, %111
  br i1 %112, label %113, label %121

113:                                              ; preds = %96
  %114 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %12, align 8
  %115 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = and i32 %119, 28
  store i32 %120, i32* %8, align 4
  br label %130

121:                                              ; preds = %96
  %122 = load %struct.ndis_80211_var_ie*, %struct.ndis_80211_var_ie** %4, align 8
  %123 = getelementptr inbounds %struct.ndis_80211_var_ie, %struct.ndis_80211_var_ie* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %5, align 4
  %126 = zext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = and i32 %128, 28
  store i32 %129, i32* %8, align 4
  br label %130

130:                                              ; preds = %121, %113
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* %8, align 4
  %133 = or i32 %131, %132
  %134 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %12, align 8
  %135 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  store i32 %133, i32* %138, align 8
  br label %139

139:                                              ; preds = %130, %44
  br label %140

140:                                              ; preds = %139
  %141 = load i32, i32* %5, align 4
  %142 = add i32 %141, 1
  store i32 %142, i32* %5, align 4
  br label %35

143:                                              ; preds = %35
  %144 = load %struct.adapter*, %struct.adapter** %3, align 8
  %145 = load i32, i32* @HW_VAR_RF_TYPE, align 4
  %146 = call i32 @rtw_hal_get_hwreg(%struct.adapter* %144, i32 %145, i32* %6)
  store i32 0, i32* %5, align 4
  br label %147

147:                                              ; preds = %169, %143
  %148 = load i32, i32* %5, align 4
  %149 = icmp ult i32 %148, 16
  br i1 %149, label %150, label %172

150:                                              ; preds = %147
  %151 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %11, align 8
  %152 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %5, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %12, align 8
  %159 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 1
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %5, align 4
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %163, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = and i32 %167, %157
  store i32 %168, i32* %166, align 4
  br label %169

169:                                              ; preds = %150
  %170 = load i32, i32* %5, align 4
  %171 = add i32 %170, 1
  store i32 %171, i32* %5, align 4
  br label %147

172:                                              ; preds = %147
  %173 = load i32, i32* %6, align 4
  switch i32 %173, label %184 [
    i32 130, label %174
    i32 129, label %174
    i32 128, label %183
  ]

174:                                              ; preds = %172, %172
  %175 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %12, align 8
  %176 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 1
  %180 = load i32*, i32** %179, align 8
  %181 = load i32, i32* @MCS_RATE_1R, align 4
  %182 = call i32 @set_mcs_rate_by_mask(i32* %180, i32 %181)
  br label %193

183:                                              ; preds = %172
  br label %184

184:                                              ; preds = %172, %183
  %185 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %12, align 8
  %186 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %185, i32 0, i32 1
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 1
  %190 = load i32*, i32** %189, align 8
  %191 = load i32, i32* @MCS_RATE_2R, align 4
  %192 = call i32 @set_mcs_rate_by_mask(i32* %190, i32 %191)
  br label %193

193:                                              ; preds = %184, %174
  %194 = load %struct.mlme_priv*, %struct.mlme_priv** %13, align 8
  %195 = load i32, i32* @WIFI_AP_STATE, align 4
  %196 = call i64 @check_fwstate(%struct.mlme_priv* %194, i32 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %220

198:                                              ; preds = %193
  %199 = load %struct.ht_priv*, %struct.ht_priv** %14, align 8
  %200 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* @STBC_HT_ENABLE_TX, align 4
  %203 = call i64 @TEST_FLAG(i32 %201, i32 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %216

205:                                              ; preds = %198
  %206 = load %struct.ndis_80211_var_ie*, %struct.ndis_80211_var_ie** %4, align 8
  %207 = getelementptr inbounds %struct.ndis_80211_var_ie, %struct.ndis_80211_var_ie* %206, i32 0, i32 1
  %208 = load i32*, i32** %207, align 8
  %209 = call i64 @GET_HT_CAPABILITY_ELE_TX_STBC(i32* %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %216

211:                                              ; preds = %205
  %212 = load i32, i32* %10, align 4
  %213 = load i32, i32* @STBC_HT_ENABLE_TX, align 4
  %214 = call i32 @SET_FLAG(i32 %212, i32 %213)
  %215 = call i32 @DBG_871X(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %216

216:                                              ; preds = %211, %205, %198
  %217 = load i32, i32* %10, align 4
  %218 = load %struct.ht_priv*, %struct.ht_priv** %14, align 8
  %219 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %218, i32 0, i32 1
  store i32 %217, i32* %219, align 4
  br label %267

220:                                              ; preds = %193
  %221 = load %struct.ht_priv*, %struct.ht_priv** %14, align 8
  %222 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* @LDPC_HT_ENABLE_TX, align 4
  %225 = call i64 @TEST_FLAG(i32 %223, i32 %224)
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %240

227:                                              ; preds = %220
  %228 = load %struct.ndis_80211_var_ie*, %struct.ndis_80211_var_ie** %4, align 8
  %229 = getelementptr inbounds %struct.ndis_80211_var_ie, %struct.ndis_80211_var_ie* %228, i32 0, i32 1
  %230 = load i32*, i32** %229, align 8
  %231 = call i64 @GET_HT_CAPABILITY_ELE_LDPC_CAP(i32* %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %240

233:                                              ; preds = %227
  %234 = load i32, i32* %9, align 4
  %235 = load i32, i32* @LDPC_HT_ENABLE_TX, align 4
  %236 = load i32, i32* @LDPC_HT_CAP_TX, align 4
  %237 = or i32 %235, %236
  %238 = call i32 @SET_FLAG(i32 %234, i32 %237)
  %239 = call i32 @DBG_871X(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %240

240:                                              ; preds = %233, %227, %220
  %241 = load i32, i32* %9, align 4
  %242 = load %struct.ht_priv*, %struct.ht_priv** %14, align 8
  %243 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %242, i32 0, i32 2
  store i32 %241, i32* %243, align 4
  %244 = load %struct.ht_priv*, %struct.ht_priv** %14, align 8
  %245 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* @STBC_HT_ENABLE_TX, align 4
  %248 = call i64 @TEST_FLAG(i32 %246, i32 %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %263

250:                                              ; preds = %240
  %251 = load %struct.ndis_80211_var_ie*, %struct.ndis_80211_var_ie** %4, align 8
  %252 = getelementptr inbounds %struct.ndis_80211_var_ie, %struct.ndis_80211_var_ie* %251, i32 0, i32 1
  %253 = load i32*, i32** %252, align 8
  %254 = call i64 @GET_HT_CAPABILITY_ELE_RX_STBC(i32* %253)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %263

256:                                              ; preds = %250
  %257 = load i32, i32* %10, align 4
  %258 = load i32, i32* @STBC_HT_ENABLE_TX, align 4
  %259 = load i32, i32* @STBC_HT_CAP_TX, align 4
  %260 = or i32 %258, %259
  %261 = call i32 @SET_FLAG(i32 %257, i32 %260)
  %262 = call i32 @DBG_871X(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %263

263:                                              ; preds = %256, %250, %240
  %264 = load i32, i32* %10, align 4
  %265 = load %struct.ht_priv*, %struct.ht_priv** %14, align 8
  %266 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %265, i32 0, i32 1
  store i32 %264, i32* %266, align 4
  br label %267

267:                                              ; preds = %25, %31, %263, %216
  ret void
}

declare dso_local i32 @rtw_hal_get_hwreg(%struct.adapter*, i32, i32*) #1

declare dso_local i32 @set_mcs_rate_by_mask(i32*, i32) #1

declare dso_local i64 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i64 @TEST_FLAG(i32, i32) #1

declare dso_local i64 @GET_HT_CAPABILITY_ELE_TX_STBC(i32*) #1

declare dso_local i32 @SET_FLAG(i32, i32) #1

declare dso_local i32 @DBG_871X(i8*) #1

declare dso_local i64 @GET_HT_CAPABILITY_ELE_LDPC_CAP(i32*) #1

declare dso_local i64 @GET_HT_CAPABILITY_ELE_RX_STBC(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
