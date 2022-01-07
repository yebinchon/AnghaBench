; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme.c_rtw_surveydone_event_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme.c_rtw_surveydone_event_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_4__, i32, %struct.mlme_priv }
%struct.TYPE_4__ = type { %struct.wlan_bssid_ex }
%struct.wlan_bssid_ex = type { i32*, i32 }
%struct.mlme_priv = type { i32, i32, %struct.TYPE_6__, i32, i32, i32, i32, i32*, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@_module_rtl871x_mlme_c_ = common dso_local global i32 0, align 4
@_drv_info_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"rtw_surveydone_event_callback: fw_state:%x\0A\0A\00", align 1
@_FW_UNDER_SURVEY = common dso_local global i32 0, align 4
@_drv_err_ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"nic status =%x, survey done event comes too late!\0A\00", align 1
@WIFI_ADHOC_STATE = common dso_local global i32 0, align 4
@_FW_LINKED = common dso_local global i32 0, align 4
@_FW_UNDER_LINKING = common dso_local global i32 0, align 4
@_SUCCESS = common dso_local global i32 0, align 4
@MAX_JOIN_TIMEOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"switching to adhoc master\0A\00", align 1
@WIFI_ADHOC_MASTER_STATE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"Error =>rtw_createbss_cmd status FAIL\0A\00", align 1
@.str.4 = private unnamed_addr constant [57 x i8] c"try_to_join, but select scanning queue fail, to_roam:%d\0A\00", align 1
@RTW_ROAM_ACTIVE = common dso_local global i32 0, align 4
@WIFI_STATION_STATE = common dso_local global i32 0, align 4
@WLAN_REASON_ACTIVE_ROAM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_surveydone_event_callback(%struct.adapter* %0, i32* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlme_priv*, align 8
  %7 = alloca %struct.wlan_bssid_ex*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.adapter*, %struct.adapter** %3, align 8
  %11 = getelementptr inbounds %struct.adapter, %struct.adapter* %10, i32 0, i32 2
  store %struct.mlme_priv* %11, %struct.mlme_priv** %6, align 8
  %12 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %13 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %12, i32 0, i32 1
  %14 = call i32 @spin_lock_bh(i32* %13)
  %15 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %16 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %15, i32 0, i32 7
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %21 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %20, i32 0, i32 8
  store i64 0, i64* %21, align 8
  %22 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %23 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %22, i32 0, i32 7
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @kfree(i32* %24)
  %26 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %27 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %26, i32 0, i32 7
  store i32* null, i32** %27, align 8
  br label %28

28:                                               ; preds = %19, %2
  %29 = load i32, i32* @_module_rtl871x_mlme_c_, align 4
  %30 = load i32, i32* @_drv_info_, align 4
  %31 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %32 = call i32 @get_fwstate(%struct.mlme_priv* %31)
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i8*
  %35 = call i32 @RT_TRACE(i32 %29, i32 %30, i8* %34)
  %36 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %37 = load i32, i32* @_FW_UNDER_SURVEY, align 4
  %38 = call i32 @check_fwstate(%struct.mlme_priv* %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %28
  store i32 1, i32* %5, align 4
  %41 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %42 = load i32, i32* @_FW_UNDER_SURVEY, align 4
  %43 = call i32 @_clr_fwstate_(%struct.mlme_priv* %41, i32 %42)
  br label %52

44:                                               ; preds = %28
  %45 = load i32, i32* @_module_rtl871x_mlme_c_, align 4
  %46 = load i32, i32* @_drv_err_, align 4
  %47 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %48 = call i32 @get_fwstate(%struct.mlme_priv* %47)
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to i8*
  %51 = call i32 @RT_TRACE(i32 %45, i32 %46, i8* %50)
  br label %52

52:                                               ; preds = %44, %40
  %53 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %54 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %53, i32 0, i32 1
  %55 = call i32 @spin_unlock_bh(i32* %54)
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %52
  %59 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %60 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %59, i32 0, i32 6
  %61 = call i32 @_cancel_timer(i32* %60, i32* %5)
  br label %62

62:                                               ; preds = %58, %52
  %63 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %64 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %63, i32 0, i32 1
  %65 = call i32 @spin_lock_bh(i32* %64)
  %66 = load %struct.adapter*, %struct.adapter** %3, align 8
  %67 = getelementptr inbounds %struct.adapter, %struct.adapter* %66, i32 0, i32 1
  %68 = call i32 @rtw_set_signal_stat_timer(i32* %67)
  %69 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %70 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp eq i32 %71, 1
  br i1 %72, label %73, label %200

73:                                               ; preds = %62
  %74 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %75 = load i32, i32* @WIFI_ADHOC_STATE, align 4
  %76 = call i32 @check_fwstate(%struct.mlme_priv* %74, i32 %75)
  %77 = icmp eq i32 %76, 1
  br i1 %77, label %78, label %136

78:                                               ; preds = %73
  %79 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %80 = load i32, i32* @_FW_LINKED, align 4
  %81 = call i32 @check_fwstate(%struct.mlme_priv* %79, i32 %80)
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %135

83:                                               ; preds = %78
  %84 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %85 = load i32, i32* @_FW_UNDER_LINKING, align 4
  %86 = call i32 @set_fwstate(%struct.mlme_priv* %84, i32 %85)
  %87 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %88 = call i32 @rtw_select_and_join_from_scanned_queue(%struct.mlme_priv* %87)
  %89 = load i32, i32* @_SUCCESS, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %83
  %92 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %93 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %92, i32 0, i32 4
  %94 = load i32, i32* @MAX_JOIN_TIMEOUT, align 4
  %95 = call i32 @_set_timer(i32* %93, i32 %94)
  br label %134

96:                                               ; preds = %83
  %97 = load %struct.adapter*, %struct.adapter** %3, align 8
  %98 = getelementptr inbounds %struct.adapter, %struct.adapter* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  store %struct.wlan_bssid_ex* %99, %struct.wlan_bssid_ex** %7, align 8
  %100 = load %struct.adapter*, %struct.adapter** %3, align 8
  %101 = getelementptr inbounds %struct.adapter, %struct.adapter* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  store i32* %104, i32** %8, align 8
  %105 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %106 = load i32, i32* @_FW_UNDER_SURVEY, align 4
  %107 = call i32 @_clr_fwstate_(%struct.mlme_priv* %105, i32 %106)
  %108 = load i32, i32* @_module_rtl871x_mlme_c_, align 4
  %109 = load i32, i32* @_drv_err_, align 4
  %110 = call i32 @RT_TRACE(i32 %108, i32 %109, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %111 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %7, align 8
  %112 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %111, i32 0, i32 1
  %113 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %114 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %113, i32 0, i32 3
  %115 = call i32 @memcpy(i32* %112, i32* %114, i32 4)
  %116 = load %struct.adapter*, %struct.adapter** %3, align 8
  %117 = call i32 @rtw_update_registrypriv_dev_network(%struct.adapter* %116)
  %118 = load i32*, i32** %8, align 8
  %119 = call i32 @rtw_generate_random_ibss(i32* %118)
  %120 = load i32, i32* @WIFI_ADHOC_MASTER_STATE, align 4
  %121 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %122 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %121, i32 0, i32 5
  store i32 %120, i32* %122, align 4
  %123 = load %struct.adapter*, %struct.adapter** %3, align 8
  %124 = call i32 @rtw_createbss_cmd(%struct.adapter* %123)
  %125 = load i32, i32* @_SUCCESS, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %131

127:                                              ; preds = %96
  %128 = load i32, i32* @_module_rtl871x_mlme_c_, align 4
  %129 = load i32, i32* @_drv_err_, align 4
  %130 = call i32 @RT_TRACE(i32 %128, i32 %129, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %131

131:                                              ; preds = %127, %96
  %132 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %133 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %132, i32 0, i32 0
  store i32 0, i32* %133, align 8
  br label %134

134:                                              ; preds = %131, %91
  br label %135

135:                                              ; preds = %134, %78
  br label %199

136:                                              ; preds = %73
  %137 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %138 = load i32, i32* @_FW_UNDER_LINKING, align 4
  %139 = call i32 @set_fwstate(%struct.mlme_priv* %137, i32 %138)
  %140 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %141 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %140, i32 0, i32 0
  store i32 0, i32* %141, align 8
  %142 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %143 = call i32 @rtw_select_and_join_from_scanned_queue(%struct.mlme_priv* %142)
  store i32 %143, i32* %9, align 4
  %144 = load i32, i32* @_SUCCESS, align 4
  %145 = load i32, i32* %9, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %152

147:                                              ; preds = %136
  %148 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %149 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %148, i32 0, i32 4
  %150 = load i32, i32* @MAX_JOIN_TIMEOUT, align 4
  %151 = call i32 @_set_timer(i32* %149, i32 %150)
  br label %198

152:                                              ; preds = %136
  %153 = load i32, i32* %9, align 4
  %154 = icmp eq i32 %153, 2
  br i1 %154, label %155, label %161

155:                                              ; preds = %152
  %156 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %157 = load i32, i32* @_FW_UNDER_LINKING, align 4
  %158 = call i32 @_clr_fwstate_(%struct.mlme_priv* %156, i32 %157)
  %159 = load %struct.adapter*, %struct.adapter** %3, align 8
  %160 = call i32 @rtw_indicate_connect(%struct.adapter* %159)
  br label %197

161:                                              ; preds = %152
  %162 = load %struct.adapter*, %struct.adapter** %3, align 8
  %163 = call i64 @rtw_to_roam(%struct.adapter* %162)
  %164 = call i32 @DBG_871X(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i64 %163)
  %165 = load %struct.adapter*, %struct.adapter** %3, align 8
  %166 = call i64 @rtw_to_roam(%struct.adapter* %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %190

168:                                              ; preds = %161
  %169 = load %struct.adapter*, %struct.adapter** %3, align 8
  %170 = call i64 @rtw_dec_to_roam(%struct.adapter* %169)
  %171 = icmp eq i64 %170, 0
  br i1 %171, label %179, label %172

172:                                              ; preds = %168
  %173 = load i32, i32* @_SUCCESS, align 4
  %174 = load %struct.adapter*, %struct.adapter** %3, align 8
  %175 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %176 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %175, i32 0, i32 3
  %177 = call i32 @rtw_sitesurvey_cmd(%struct.adapter* %174, i32* %176, i32 1, i32* null, i32 0)
  %178 = icmp ne i32 %173, %177
  br i1 %178, label %179, label %186

179:                                              ; preds = %172, %168
  %180 = load %struct.adapter*, %struct.adapter** %3, align 8
  %181 = call i32 @rtw_set_to_roam(%struct.adapter* %180, i32 0)
  %182 = load %struct.adapter*, %struct.adapter** %3, align 8
  %183 = call i32 @rtw_free_assoc_resources(%struct.adapter* %182, i32 1)
  %184 = load %struct.adapter*, %struct.adapter** %3, align 8
  %185 = call i32 @rtw_indicate_disconnect(%struct.adapter* %184)
  br label %189

186:                                              ; preds = %172
  %187 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %188 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %187, i32 0, i32 0
  store i32 1, i32* %188, align 8
  br label %189

189:                                              ; preds = %186, %179
  br label %193

190:                                              ; preds = %161
  %191 = load %struct.adapter*, %struct.adapter** %3, align 8
  %192 = call i32 @rtw_indicate_disconnect(%struct.adapter* %191)
  br label %193

193:                                              ; preds = %190, %189
  %194 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %195 = load i32, i32* @_FW_UNDER_LINKING, align 4
  %196 = call i32 @_clr_fwstate_(%struct.mlme_priv* %194, i32 %195)
  br label %197

197:                                              ; preds = %193, %155
  br label %198

198:                                              ; preds = %197, %147
  br label %199

199:                                              ; preds = %198, %135
  br label %232

200:                                              ; preds = %62
  %201 = load %struct.adapter*, %struct.adapter** %3, align 8
  %202 = load i32, i32* @RTW_ROAM_ACTIVE, align 4
  %203 = call i64 @rtw_chk_roam_flags(%struct.adapter* %201, i32 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %231

205:                                              ; preds = %200
  %206 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %207 = load i32, i32* @WIFI_STATION_STATE, align 4
  %208 = call i32 @check_fwstate(%struct.mlme_priv* %206, i32 %207)
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %230

210:                                              ; preds = %205
  %211 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %212 = load i32, i32* @_FW_LINKED, align 4
  %213 = call i32 @check_fwstate(%struct.mlme_priv* %211, i32 %212)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %230

215:                                              ; preds = %210
  %216 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %217 = call i32 @rtw_select_roaming_candidate(%struct.mlme_priv* %216)
  %218 = load i32, i32* @_SUCCESS, align 4
  %219 = icmp eq i32 %217, %218
  br i1 %219, label %220, label %229

220:                                              ; preds = %215
  %221 = load %struct.adapter*, %struct.adapter** %3, align 8
  %222 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %223 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %222, i32 0, i32 2
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* @WLAN_REASON_ACTIVE_ROAM, align 4
  %228 = call i32 @receive_disconnect(%struct.adapter* %221, i32 %226, i32 %227)
  br label %229

229:                                              ; preds = %220, %215
  br label %230

230:                                              ; preds = %229, %210, %205
  br label %231

231:                                              ; preds = %230, %200
  br label %232

232:                                              ; preds = %231, %199
  %233 = load %struct.mlme_priv*, %struct.mlme_priv** %6, align 8
  %234 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %233, i32 0, i32 1
  %235 = call i32 @spin_unlock_bh(i32* %234)
  %236 = load %struct.adapter*, %struct.adapter** %3, align 8
  %237 = call i32 @rtw_os_xmit_schedule(%struct.adapter* %236)
  %238 = load %struct.adapter*, %struct.adapter** %3, align 8
  %239 = call i32 @rtw_cfg80211_surveydone_event_callback(%struct.adapter* %238)
  %240 = load %struct.adapter*, %struct.adapter** %3, align 8
  %241 = call i32 @rtw_indicate_scan_done(%struct.adapter* %240, i32 0)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i32 @get_fwstate(%struct.mlme_priv*) #1

declare dso_local i32 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @_clr_fwstate_(%struct.mlme_priv*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @_cancel_timer(i32*, i32*) #1

declare dso_local i32 @rtw_set_signal_stat_timer(i32*) #1

declare dso_local i32 @set_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @rtw_select_and_join_from_scanned_queue(%struct.mlme_priv*) #1

declare dso_local i32 @_set_timer(i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @rtw_update_registrypriv_dev_network(%struct.adapter*) #1

declare dso_local i32 @rtw_generate_random_ibss(i32*) #1

declare dso_local i32 @rtw_createbss_cmd(%struct.adapter*) #1

declare dso_local i32 @rtw_indicate_connect(%struct.adapter*) #1

declare dso_local i32 @DBG_871X(i8*, i64) #1

declare dso_local i64 @rtw_to_roam(%struct.adapter*) #1

declare dso_local i64 @rtw_dec_to_roam(%struct.adapter*) #1

declare dso_local i32 @rtw_sitesurvey_cmd(%struct.adapter*, i32*, i32, i32*, i32) #1

declare dso_local i32 @rtw_set_to_roam(%struct.adapter*, i32) #1

declare dso_local i32 @rtw_free_assoc_resources(%struct.adapter*, i32) #1

declare dso_local i32 @rtw_indicate_disconnect(%struct.adapter*) #1

declare dso_local i64 @rtw_chk_roam_flags(%struct.adapter*, i32) #1

declare dso_local i32 @rtw_select_roaming_candidate(%struct.mlme_priv*) #1

declare dso_local i32 @receive_disconnect(%struct.adapter*, i32, i32) #1

declare dso_local i32 @rtw_os_xmit_schedule(%struct.adapter*) #1

declare dso_local i32 @rtw_cfg80211_surveydone_event_callback(%struct.adapter*) #1

declare dso_local i32 @rtw_indicate_scan_done(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
