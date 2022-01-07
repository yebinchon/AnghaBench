; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_ap.c_start_bss_network.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_ap.c_start_bss_network.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_ext_priv, %struct.security_priv, %struct.mlme_priv, %struct.registry_priv }
%struct.mlme_ext_priv = type { i32, i32, i32, i32, i32, %struct.mlme_ext_info }
%struct.mlme_ext_info = type { i32, i32, %struct.wlan_bssid_ex }
%struct.wlan_bssid_ex = type { i32*, i32*, i32, i64, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64 }
%struct.security_priv = type { i64, i64 }
%struct.mlme_priv = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.registry_priv = type { i32 }
%struct.HT_info_element = type { i32* }

@CHANNEL_WIDTH_20 = common dso_local global i32 0, align 4
@HAL_PRIME_CHNL_OFFSET_DONT_CARE = common dso_local global i32 0, align 4
@_FIXED_IE_LENGTH_ = common dso_local global i64 0, align 8
@_WEP40_ = common dso_local global i64 0, align 8
@_WEP104_ = common dso_local global i64 0, align 8
@_HW_STATE_AP_ = common dso_local global i32 0, align 4
@HW_VAR_BSSID = common dso_local global i32 0, align 4
@HW_VAR_AC_PARAM_VO = common dso_local global i32 0, align 4
@HW_VAR_AC_PARAM_VI = common dso_local global i32 0, align 4
@HW_VAR_AC_PARAM_BE = common dso_local global i32 0, align 4
@HW_VAR_AC_PARAM_BK = common dso_local global i32 0, align 4
@dot11AuthAlgrthm_8021X = common dso_local global i64 0, align 8
@HW_VAR_SEC_CFG = common dso_local global i32 0, align 4
@HW_VAR_BEACON_INTERVAL = common dso_local global i32 0, align 4
@HW_VAR_DO_IQK = common dso_local global i32 0, align 4
@DYNAMIC_ALL_FUNC_ENABLE = common dso_local global i32 0, align 4
@_HT_ADD_INFO_IE_ = common dso_local global i32 0, align 4
@CHANNEL_WIDTH_40 = common dso_local global i32 0, align 4
@HAL_PRIME_CHNL_OFFSET_LOWER = common dso_local global i32 0, align 4
@HAL_PRIME_CHNL_OFFSET_UPPER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"CH =%d, BW =%d, offset =%d\0A\00", align 1
@HW_VAR_BASIC_RATE = common dso_local global i32 0, align 4
@_TIM_IE_ = common dso_local global i32 0, align 4
@_FAIL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"issue_beacon, fail!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @start_bss_network(%struct.adapter* %0, i32* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.registry_priv*, align 8
  %14 = alloca %struct.mlme_priv*, align 8
  %15 = alloca %struct.security_priv*, align 8
  %16 = alloca %struct.wlan_bssid_ex*, align 8
  %17 = alloca %struct.mlme_ext_priv*, align 8
  %18 = alloca %struct.mlme_ext_info*, align 8
  %19 = alloca %struct.wlan_bssid_ex*, align 8
  %20 = alloca %struct.HT_info_element*, align 8
  %21 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i32* %1, i32** %4, align 8
  %22 = load %struct.adapter*, %struct.adapter** %3, align 8
  %23 = getelementptr inbounds %struct.adapter, %struct.adapter* %22, i32 0, i32 3
  store %struct.registry_priv* %23, %struct.registry_priv** %13, align 8
  %24 = load %struct.adapter*, %struct.adapter** %3, align 8
  %25 = getelementptr inbounds %struct.adapter, %struct.adapter* %24, i32 0, i32 2
  store %struct.mlme_priv* %25, %struct.mlme_priv** %14, align 8
  %26 = load %struct.adapter*, %struct.adapter** %3, align 8
  %27 = getelementptr inbounds %struct.adapter, %struct.adapter* %26, i32 0, i32 1
  store %struct.security_priv* %27, %struct.security_priv** %15, align 8
  %28 = load %struct.mlme_priv*, %struct.mlme_priv** %14, align 8
  %29 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 2
  %31 = bitcast i32* %30 to %struct.wlan_bssid_ex*
  store %struct.wlan_bssid_ex* %31, %struct.wlan_bssid_ex** %16, align 8
  %32 = load %struct.adapter*, %struct.adapter** %3, align 8
  %33 = getelementptr inbounds %struct.adapter, %struct.adapter* %32, i32 0, i32 0
  store %struct.mlme_ext_priv* %33, %struct.mlme_ext_priv** %17, align 8
  %34 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %17, align 8
  %35 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %34, i32 0, i32 5
  store %struct.mlme_ext_info* %35, %struct.mlme_ext_info** %18, align 8
  %36 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %18, align 8
  %37 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %36, i32 0, i32 2
  store %struct.wlan_bssid_ex* %37, %struct.wlan_bssid_ex** %19, align 8
  store %struct.HT_info_element* null, %struct.HT_info_element** %20, align 8
  store i32 0, i32* %21, align 4
  %38 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %16, align 8
  %39 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %38, i32 0, i32 5
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %10, align 8
  %42 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %16, align 8
  %43 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %42, i32 0, i32 5
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* @CHANNEL_WIDTH_20, align 4
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* @HAL_PRIME_CHNL_OFFSET_DONT_CARE, align 4
  store i32 %47, i32* %9, align 4
  %48 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %16, align 8
  %49 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @_FIXED_IE_LENGTH_, align 8
  %52 = add nsw i64 %50, %51
  %53 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %16, align 8
  %54 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @_FIXED_IE_LENGTH_, align 8
  %57 = sub nsw i64 %55, %56
  %58 = call i32 @rtw_get_wps_ie(i64 %52, i64 %57, i32* null, i32* null)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %2
  %61 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %17, align 8
  %62 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %61, i32 0, i32 0
  store i32 1, i32* %62, align 8
  br label %63

63:                                               ; preds = %60, %2
  %64 = load %struct.mlme_priv*, %struct.mlme_priv** %14, align 8
  %65 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %18, align 8
  %71 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %70, i32 0, i32 0
  store i32 1, i32* %71, align 8
  br label %72

72:                                               ; preds = %69, %63
  %73 = load %struct.mlme_priv*, %struct.mlme_priv** %14, align 8
  %74 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %72
  %79 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %18, align 8
  %80 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %79, i32 0, i32 0
  store i32 1, i32* %80, align 8
  %81 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %18, align 8
  %82 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %81, i32 0, i32 1
  store i32 1, i32* %82, align 4
  %83 = load %struct.adapter*, %struct.adapter** %3, align 8
  %84 = call i32 @update_hw_ht_param(%struct.adapter* %83)
  br label %85

85:                                               ; preds = %78, %72
  %86 = load %struct.mlme_priv*, %struct.mlme_priv** %14, align 8
  %87 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %107, label %91

91:                                               ; preds = %85
  %92 = load %struct.security_priv*, %struct.security_priv** %15, align 8
  %93 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @_WEP40_, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %106

97:                                               ; preds = %91
  %98 = load %struct.security_priv*, %struct.security_priv** %15, align 8
  %99 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @_WEP104_, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %97
  %104 = load %struct.adapter*, %struct.adapter** %3, align 8
  %105 = call i32 @flush_all_cam_entry(%struct.adapter* %104)
  br label %106

106:                                              ; preds = %103, %97, %91
  br label %107

107:                                              ; preds = %106, %85
  %108 = load %struct.adapter*, %struct.adapter** %3, align 8
  %109 = load i32, i32* @_HW_STATE_AP_, align 4
  %110 = call i32 @Set_MSR(%struct.adapter* %108, i32 %109)
  %111 = load %struct.adapter*, %struct.adapter** %3, align 8
  %112 = load i32, i32* @HW_VAR_BSSID, align 4
  %113 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %16, align 8
  %114 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = call i32 @rtw_hal_set_hwreg(%struct.adapter* %111, i32 %112, i32* %115)
  store i32 3093015, i32* %11, align 4
  %117 = load %struct.adapter*, %struct.adapter** %3, align 8
  %118 = load i32, i32* @HW_VAR_AC_PARAM_VO, align 4
  %119 = call i32 @rtw_hal_set_hwreg(%struct.adapter* %117, i32 %118, i32* %11)
  store i32 6177559, i32* %11, align 4
  %120 = load %struct.adapter*, %struct.adapter** %3, align 8
  %121 = load i32, i32* @HW_VAR_AC_PARAM_VI, align 4
  %122 = call i32 @rtw_hal_set_hwreg(%struct.adapter* %120, i32 %121, i32* %11)
  store i32 6202411, i32* %11, align 4
  %123 = load %struct.adapter*, %struct.adapter** %3, align 8
  %124 = load i32, i32* @HW_VAR_AC_PARAM_BE, align 4
  %125 = call i32 @rtw_hal_set_hwreg(%struct.adapter* %123, i32 %124, i32* %11)
  store i32 42052, i32* %11, align 4
  %126 = load %struct.adapter*, %struct.adapter** %3, align 8
  %127 = load i32, i32* @HW_VAR_AC_PARAM_BK, align 4
  %128 = call i32 @rtw_hal_set_hwreg(%struct.adapter* %126, i32 %127, i32* %11)
  %129 = load %struct.security_priv*, %struct.security_priv** %15, align 8
  %130 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @dot11AuthAlgrthm_8021X, align 8
  %133 = icmp eq i64 %131, %132
  %134 = zext i1 %133 to i64
  %135 = select i1 %133, i32 204, i32 207
  store i32 %135, i32* %6, align 4
  %136 = load %struct.adapter*, %struct.adapter** %3, align 8
  %137 = load i32, i32* @HW_VAR_SEC_CFG, align 4
  %138 = call i32 @rtw_hal_set_hwreg(%struct.adapter* %136, i32 %137, i32* %6)
  %139 = load %struct.adapter*, %struct.adapter** %3, align 8
  %140 = load i32, i32* @HW_VAR_BEACON_INTERVAL, align 4
  %141 = bitcast i64* %10 to i32*
  %142 = call i32 @rtw_hal_set_hwreg(%struct.adapter* %139, i32 %140, i32* %141)
  %143 = load %struct.adapter*, %struct.adapter** %3, align 8
  %144 = load i32, i32* @HW_VAR_DO_IQK, align 4
  %145 = call i32 @rtw_hal_set_hwreg(%struct.adapter* %143, i32 %144, i32* null)
  %146 = load %struct.mlme_priv*, %struct.mlme_priv** %14, align 8
  %147 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %155, label %151

151:                                              ; preds = %107
  %152 = load %struct.adapter*, %struct.adapter** %3, align 8
  %153 = load i32, i32* @DYNAMIC_ALL_FUNC_ENABLE, align 4
  %154 = call i32 @Switch_DM_Func(%struct.adapter* %152, i32 %153, i32 1)
  br label %155

155:                                              ; preds = %151, %107
  %156 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %16, align 8
  %157 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %156, i32 0, i32 4
  %158 = load i64, i64* %157, align 8
  %159 = add i64 %158, 4
  %160 = load i32, i32* @_HT_ADD_INFO_IE_, align 4
  %161 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %16, align 8
  %162 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %161, i32 0, i32 3
  %163 = load i64, i64* %162, align 8
  %164 = sub i64 %163, 4
  %165 = call i32* @rtw_get_ie(i64 %159, i32 %160, i32* %12, i64 %164)
  store i32* %165, i32** %5, align 8
  %166 = load i32*, i32** %5, align 8
  %167 = icmp ne i32* %166, null
  br i1 %167, label %168, label %221

168:                                              ; preds = %155
  %169 = load i32, i32* %12, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %221

171:                                              ; preds = %168
  %172 = load i32*, i32** %5, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 2
  %174 = bitcast i32* %173 to %struct.HT_info_element*
  store %struct.HT_info_element* %174, %struct.HT_info_element** %20, align 8
  %175 = load i32, i32* %7, align 4
  %176 = icmp sgt i32 %175, 14
  br i1 %176, label %177, label %185

177:                                              ; preds = %171
  %178 = load %struct.registry_priv*, %struct.registry_priv** %13, align 8
  %179 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = and i32 %180, 240
  %182 = icmp sgt i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %177
  store i32 1, i32* %21, align 4
  br label %184

184:                                              ; preds = %183, %177
  br label %193

185:                                              ; preds = %171
  %186 = load %struct.registry_priv*, %struct.registry_priv** %13, align 8
  %187 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = and i32 %188, 15
  %190 = icmp sgt i32 %189, 0
  br i1 %190, label %191, label %192

191:                                              ; preds = %185
  store i32 1, i32* %21, align 4
  br label %192

192:                                              ; preds = %191, %185
  br label %193

193:                                              ; preds = %192, %184
  %194 = load i32, i32* %21, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %220

196:                                              ; preds = %193
  %197 = load %struct.HT_info_element*, %struct.HT_info_element** %20, align 8
  %198 = getelementptr inbounds %struct.HT_info_element, %struct.HT_info_element* %197, i32 0, i32 0
  %199 = load i32*, i32** %198, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 0
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @BIT(i32 2)
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %220

205:                                              ; preds = %196
  %206 = load i32, i32* @CHANNEL_WIDTH_40, align 4
  store i32 %206, i32* %8, align 4
  %207 = load %struct.HT_info_element*, %struct.HT_info_element** %20, align 8
  %208 = getelementptr inbounds %struct.HT_info_element, %struct.HT_info_element* %207, i32 0, i32 0
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 0
  %211 = load i32, i32* %210, align 4
  %212 = and i32 %211, 3
  switch i32 %212, label %217 [
    i32 1, label %213
    i32 3, label %215
  ]

213:                                              ; preds = %205
  %214 = load i32, i32* @HAL_PRIME_CHNL_OFFSET_LOWER, align 4
  store i32 %214, i32* %9, align 4
  br label %219

215:                                              ; preds = %205
  %216 = load i32, i32* @HAL_PRIME_CHNL_OFFSET_UPPER, align 4
  store i32 %216, i32* %9, align 4
  br label %219

217:                                              ; preds = %205
  %218 = load i32, i32* @HAL_PRIME_CHNL_OFFSET_DONT_CARE, align 4
  store i32 %218, i32* %9, align 4
  br label %219

219:                                              ; preds = %217, %215, %213
  br label %220

220:                                              ; preds = %219, %196, %193
  br label %221

221:                                              ; preds = %220, %168, %155
  %222 = load %struct.adapter*, %struct.adapter** %3, align 8
  %223 = load i32, i32* %7, align 4
  %224 = load i32, i32* %9, align 4
  %225 = load i32, i32* %8, align 4
  %226 = call i32 @set_channel_bwmode(%struct.adapter* %222, i32 %223, i32 %224, i32 %225)
  %227 = load i32, i32* %7, align 4
  %228 = load i32, i32* %8, align 4
  %229 = load i32, i32* %9, align 4
  %230 = call i32 (i8*, ...) @DBG_871X(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %227, i32 %228, i32 %229)
  %231 = load i32, i32* %7, align 4
  %232 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %17, align 8
  %233 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %232, i32 0, i32 1
  store i32 %231, i32* %233, align 4
  %234 = load i32, i32* %8, align 4
  %235 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %17, align 8
  %236 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %235, i32 0, i32 2
  store i32 %234, i32* %236, align 8
  %237 = load i32, i32* %9, align 4
  %238 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %17, align 8
  %239 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %238, i32 0, i32 3
  store i32 %237, i32* %239, align 4
  %240 = load %struct.mlme_priv*, %struct.mlme_priv** %14, align 8
  %241 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %17, align 8
  %245 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %244, i32 0, i32 4
  store i32 %243, i32* %245, align 8
  %246 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %19, align 8
  %247 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %16, align 8
  %248 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %16, align 8
  %249 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 8
  %251 = call i32 @memcpy(%struct.wlan_bssid_ex* %246, %struct.wlan_bssid_ex* %247, i32 %250)
  %252 = load %struct.adapter*, %struct.adapter** %3, align 8
  %253 = call i32 @update_wireless_mode(%struct.adapter* %252)
  %254 = load %struct.adapter*, %struct.adapter** %3, align 8
  %255 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %16, align 8
  %256 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %255, i32 0, i32 1
  %257 = load i32*, i32** %256, align 8
  %258 = call i32 @UpdateBrateTbl(%struct.adapter* %254, i32* %257)
  %259 = load %struct.adapter*, %struct.adapter** %3, align 8
  %260 = load i32, i32* @HW_VAR_BASIC_RATE, align 4
  %261 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %16, align 8
  %262 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %261, i32 0, i32 1
  %263 = load i32*, i32** %262, align 8
  %264 = call i32 @rtw_hal_set_hwreg(%struct.adapter* %259, i32 %260, i32* %263)
  %265 = load %struct.adapter*, %struct.adapter** %3, align 8
  %266 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %16, align 8
  %267 = call i32 @rtw_get_capability(%struct.wlan_bssid_ex* %266)
  %268 = call i32 @update_capinfo(%struct.adapter* %265, i32 %267)
  %269 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %17, align 8
  %270 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %284

273:                                              ; preds = %221
  %274 = load %struct.adapter*, %struct.adapter** %3, align 8
  %275 = load i32, i32* @_TIM_IE_, align 4
  %276 = call i32 @update_beacon(%struct.adapter* %274, i32 %275, i32* null, i32 1)
  %277 = load %struct.adapter*, %struct.adapter** %3, align 8
  %278 = call i64 @send_beacon(%struct.adapter* %277)
  %279 = load i64, i64* @_FAIL, align 8
  %280 = icmp eq i64 %278, %279
  br i1 %280, label %281, label %283

281:                                              ; preds = %273
  %282 = call i32 (i8*, ...) @DBG_871X(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %283

283:                                              ; preds = %281, %273
  br label %284

284:                                              ; preds = %283, %221
  %285 = load %struct.adapter*, %struct.adapter** %3, align 8
  %286 = call i32 @update_bmc_sta(%struct.adapter* %285)
  ret void
}

declare dso_local i32 @rtw_get_wps_ie(i64, i64, i32*, i32*) #1

declare dso_local i32 @update_hw_ht_param(%struct.adapter*) #1

declare dso_local i32 @flush_all_cam_entry(%struct.adapter*) #1

declare dso_local i32 @Set_MSR(%struct.adapter*, i32) #1

declare dso_local i32 @rtw_hal_set_hwreg(%struct.adapter*, i32, i32*) #1

declare dso_local i32 @Switch_DM_Func(%struct.adapter*, i32, i32) #1

declare dso_local i32* @rtw_get_ie(i64, i32, i32*, i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @set_channel_bwmode(%struct.adapter*, i32, i32, i32) #1

declare dso_local i32 @DBG_871X(i8*, ...) #1

declare dso_local i32 @memcpy(%struct.wlan_bssid_ex*, %struct.wlan_bssid_ex*, i32) #1

declare dso_local i32 @update_wireless_mode(%struct.adapter*) #1

declare dso_local i32 @UpdateBrateTbl(%struct.adapter*, i32*) #1

declare dso_local i32 @update_capinfo(%struct.adapter*, i32) #1

declare dso_local i32 @rtw_get_capability(%struct.wlan_bssid_ex*) #1

declare dso_local i32 @update_beacon(%struct.adapter*, i32, i32*, i32) #1

declare dso_local i64 @send_beacon(%struct.adapter*) #1

declare dso_local i32 @update_bmc_sta(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
