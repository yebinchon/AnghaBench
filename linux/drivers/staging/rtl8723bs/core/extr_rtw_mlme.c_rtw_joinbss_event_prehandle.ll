; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme.c_rtw_joinbss_event_prehandle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme.c_rtw_joinbss_event_prehandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_priv, %struct.sta_priv }
%struct.mlme_priv = type { i32, i32, %struct.TYPE_8__, %struct.wlan_network*, %struct.TYPE_7__, %struct.TYPE_6__, %struct.wlan_network }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { i64, i32 }
%struct.wlan_network = type { i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.sta_priv = type { i32 }
%struct.sta_info = type { i32 }

@rtw_joinbss_event_prehandle.retry = internal global i32 0, align 4
@_module_rtl871x_mlme_c_ = common dso_local global i32 0, align 4
@_drv_info_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"joinbss event call back received with res =%d\0A\00", align 1
@_drv_err_ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"@@@@@   joinbss event call back  for Any SSid\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"@@@@@   rtw_joinbss_event_callback for SSid:%s\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"\0A\0A ***joinbss_evt_callback return a wrong bss ***\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"\0A rtw_joinbss_event_callback !! spin_lock_irqsave\0A\00", align 1
@_FW_UNDER_LINKING = common dso_local global i32 0, align 4
@_FW_LINKED = common dso_local global i32 0, align 4
@WIFI_STATION_STATE = common dso_local global i32 0, align 4
@_drv_always_ = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [53 x i8] c"Can't find ptarget_wlan when joinbss_event callback\0A\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"Can't update stainfo when joinbss_event callback\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"adhoc mode, fw_state:%x\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"Cancel assoc_timer\0A\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"rtw_joinbss_event_callback err: fw_state:%x\00", align 1
@.str.10 = private unnamed_addr constant [47 x i8] c"fail! clear _FW_UNDER_LINKING ^^^fw_state =%x\0A\00", align 1
@MAX_JOIN_TIMEOUT = common dso_local global i32 0, align 4
@_FAIL = common dso_local global i32 0, align 4
@_SUCCESS = common dso_local global i32 0, align 4
@res = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_joinbss_event_prehandle(%struct.adapter* %0, i32* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sta_info*, align 8
  %7 = alloca %struct.sta_info*, align 8
  %8 = alloca %struct.sta_priv*, align 8
  %9 = alloca %struct.mlme_priv*, align 8
  %10 = alloca %struct.wlan_network*, align 8
  %11 = alloca %struct.wlan_network*, align 8
  %12 = alloca %struct.wlan_network*, align 8
  %13 = alloca %struct.wlan_network*, align 8
  %14 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i32* %1, i32** %4, align 8
  store %struct.sta_info* null, %struct.sta_info** %6, align 8
  store %struct.sta_info* null, %struct.sta_info** %7, align 8
  %15 = load %struct.adapter*, %struct.adapter** %3, align 8
  %16 = getelementptr inbounds %struct.adapter, %struct.adapter* %15, i32 0, i32 1
  store %struct.sta_priv* %16, %struct.sta_priv** %8, align 8
  %17 = load %struct.adapter*, %struct.adapter** %3, align 8
  %18 = getelementptr inbounds %struct.adapter, %struct.adapter* %17, i32 0, i32 0
  store %struct.mlme_priv* %18, %struct.mlme_priv** %9, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = bitcast i32* %19 to %struct.wlan_network*
  store %struct.wlan_network* %20, %struct.wlan_network** %10, align 8
  %21 = load %struct.mlme_priv*, %struct.mlme_priv** %9, align 8
  %22 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %21, i32 0, i32 6
  store %struct.wlan_network* %22, %struct.wlan_network** %11, align 8
  store %struct.wlan_network* null, %struct.wlan_network** %12, align 8
  store %struct.wlan_network* null, %struct.wlan_network** %13, align 8
  store i32 0, i32* %14, align 4
  %23 = load i32, i32* @_module_rtl871x_mlme_c_, align 4
  %24 = load i32, i32* @_drv_info_, align 4
  %25 = load %struct.wlan_network*, %struct.wlan_network** %10, align 8
  %26 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i8*
  %30 = call i32 @RT_TRACE(i32 %23, i32 %24, i8* %29)
  %31 = load %struct.adapter*, %struct.adapter** %3, align 8
  %32 = call i32 @rtw_get_encrypt_decrypt_from_registrypriv(%struct.adapter* %31)
  %33 = load %struct.mlme_priv*, %struct.mlme_priv** %9, align 8
  %34 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %33, i32 0, i32 5
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %2
  %39 = load i32, i32* @_module_rtl871x_mlme_c_, align 4
  %40 = load i32, i32* @_drv_err_, align 4
  %41 = call i32 @RT_TRACE(i32 %39, i32 %40, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %52

42:                                               ; preds = %2
  %43 = load i32, i32* @_module_rtl871x_mlme_c_, align 4
  %44 = load i32, i32* @_drv_err_, align 4
  %45 = load %struct.mlme_priv*, %struct.mlme_priv** %9, align 8
  %46 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %45, i32 0, i32 5
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to i8*
  %51 = call i32 @RT_TRACE(i32 %43, i32 %44, i8* %50)
  br label %52

52:                                               ; preds = %42, %38
  %53 = load %struct.wlan_network*, %struct.wlan_network** %10, align 8
  %54 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.wlan_network*, %struct.wlan_network** %11, align 8
  %58 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @ETH_ALEN, align 4
  %62 = call i32 @memcmp(i32 %56, i32 %60, i32 %61)
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %14, align 4
  %66 = load %struct.wlan_network*, %struct.wlan_network** %10, align 8
  %67 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %66, i32 0, i32 2
  %68 = call i32 @get_wlan_bssid_ex_sz(%struct.TYPE_9__* %67)
  %69 = load %struct.wlan_network*, %struct.wlan_network** %10, align 8
  %70 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 4
  %72 = load %struct.wlan_network*, %struct.wlan_network** %10, align 8
  %73 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = icmp ugt i64 %76, 4
  br i1 %77, label %78, label %82

78:                                               ; preds = %52
  %79 = load i32, i32* @_module_rtl871x_mlme_c_, align 4
  %80 = load i32, i32* @_drv_err_, align 4
  %81 = call i32 @RT_TRACE(i32 %79, i32 %80, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  br label %306

82:                                               ; preds = %52
  %83 = load %struct.mlme_priv*, %struct.mlme_priv** %9, align 8
  %84 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %83, i32 0, i32 0
  %85 = call i32 @spin_lock_bh(i32* %84)
  %86 = load %struct.mlme_priv*, %struct.mlme_priv** %9, align 8
  %87 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  store i64 0, i64* %88, align 8
  %89 = load %struct.mlme_priv*, %struct.mlme_priv** %9, align 8
  %90 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %89, i32 0, i32 4
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  store i64 0, i64* %91, align 8
  %92 = load i32, i32* @_module_rtl871x_mlme_c_, align 4
  %93 = load i32, i32* @_drv_info_, align 4
  %94 = call i32 @RT_TRACE(i32 %92, i32 %93, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0))
  %95 = load %struct.wlan_network*, %struct.wlan_network** %10, align 8
  %96 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %99, label %266

99:                                               ; preds = %82
  %100 = load %struct.mlme_priv*, %struct.mlme_priv** %9, align 8
  %101 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = call i32 @spin_lock_bh(i32* %102)
  store i32 0, i32* @rtw_joinbss_event_prehandle.retry, align 4
  %104 = load %struct.mlme_priv*, %struct.mlme_priv** %9, align 8
  %105 = load i32, i32* @_FW_UNDER_LINKING, align 4
  %106 = call i32 @check_fwstate(%struct.mlme_priv* %104, i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %249

108:                                              ; preds = %99
  %109 = load %struct.mlme_priv*, %struct.mlme_priv** %9, align 8
  %110 = load i32, i32* @_FW_LINKED, align 4
  %111 = call i32 @check_fwstate(%struct.mlme_priv* %109, i32 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %171

113:                                              ; preds = %108
  %114 = load i32, i32* %14, align 4
  %115 = icmp eq i32 %114, 1
  br i1 %115, label %116, label %124

116:                                              ; preds = %113
  %117 = load %struct.mlme_priv*, %struct.mlme_priv** %9, align 8
  %118 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %117, i32 0, i32 2
  %119 = load %struct.wlan_network*, %struct.wlan_network** %11, align 8
  %120 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call %struct.wlan_network* @rtw_find_network(%struct.TYPE_8__* %118, i32 %122)
  store %struct.wlan_network* %123, %struct.wlan_network** %13, align 8
  br label %170

124:                                              ; preds = %113
  %125 = load %struct.mlme_priv*, %struct.mlme_priv** %9, align 8
  %126 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %125, i32 0, i32 2
  %127 = load %struct.wlan_network*, %struct.wlan_network** %11, align 8
  %128 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call %struct.wlan_network* @rtw_find_network(%struct.TYPE_8__* %126, i32 %130)
  store %struct.wlan_network* %131, %struct.wlan_network** %12, align 8
  %132 = load %struct.wlan_network*, %struct.wlan_network** %12, align 8
  %133 = icmp ne %struct.wlan_network* %132, null
  br i1 %133, label %134, label %137

134:                                              ; preds = %124
  %135 = load %struct.wlan_network*, %struct.wlan_network** %12, align 8
  %136 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %135, i32 0, i32 1
  store i32 0, i32* %136, align 4
  br label %137

137:                                              ; preds = %134, %124
  %138 = load %struct.sta_priv*, %struct.sta_priv** %8, align 8
  %139 = load %struct.wlan_network*, %struct.wlan_network** %11, align 8
  %140 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call %struct.sta_info* @rtw_get_stainfo(%struct.sta_priv* %138, i32 %142)
  store %struct.sta_info* %143, %struct.sta_info** %7, align 8
  %144 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %145 = icmp ne %struct.sta_info* %144, null
  br i1 %145, label %146, label %150

146:                                              ; preds = %137
  %147 = load %struct.adapter*, %struct.adapter** %3, align 8
  %148 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %149 = call i32 @rtw_free_stainfo(%struct.adapter* %147, %struct.sta_info* %148)
  br label %150

150:                                              ; preds = %146, %137
  %151 = load %struct.mlme_priv*, %struct.mlme_priv** %9, align 8
  %152 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %151, i32 0, i32 2
  %153 = load %struct.wlan_network*, %struct.wlan_network** %10, align 8
  %154 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = call %struct.wlan_network* @rtw_find_network(%struct.TYPE_8__* %152, i32 %156)
  store %struct.wlan_network* %157, %struct.wlan_network** %13, align 8
  %158 = load %struct.mlme_priv*, %struct.mlme_priv** %9, align 8
  %159 = load i32, i32* @WIFI_STATION_STATE, align 4
  %160 = call i32 @check_fwstate(%struct.mlme_priv* %158, i32 %159)
  %161 = icmp eq i32 %160, 1
  br i1 %161, label %162, label %169

162:                                              ; preds = %150
  %163 = load %struct.wlan_network*, %struct.wlan_network** %13, align 8
  %164 = icmp ne %struct.wlan_network* %163, null
  br i1 %164, label %165, label %168

165:                                              ; preds = %162
  %166 = load %struct.wlan_network*, %struct.wlan_network** %13, align 8
  %167 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %166, i32 0, i32 1
  store i32 1, i32* %167, align 4
  br label %168

168:                                              ; preds = %165, %162
  br label %169

169:                                              ; preds = %168, %150
  br label %170

170:                                              ; preds = %169, %116
  br label %188

171:                                              ; preds = %108
  %172 = load %struct.mlme_priv*, %struct.mlme_priv** %9, align 8
  %173 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %172, i32 0, i32 2
  %174 = load %struct.wlan_network*, %struct.wlan_network** %10, align 8
  %175 = call %struct.wlan_network* @_rtw_find_same_network(%struct.TYPE_8__* %173, %struct.wlan_network* %174)
  store %struct.wlan_network* %175, %struct.wlan_network** %13, align 8
  %176 = load %struct.mlme_priv*, %struct.mlme_priv** %9, align 8
  %177 = load i32, i32* @WIFI_STATION_STATE, align 4
  %178 = call i32 @check_fwstate(%struct.mlme_priv* %176, i32 %177)
  %179 = icmp eq i32 %178, 1
  br i1 %179, label %180, label %187

180:                                              ; preds = %171
  %181 = load %struct.wlan_network*, %struct.wlan_network** %13, align 8
  %182 = icmp ne %struct.wlan_network* %181, null
  br i1 %182, label %183, label %186

183:                                              ; preds = %180
  %184 = load %struct.wlan_network*, %struct.wlan_network** %13, align 8
  %185 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %184, i32 0, i32 1
  store i32 1, i32* %185, align 4
  br label %186

186:                                              ; preds = %183, %180
  br label %187

187:                                              ; preds = %186, %171
  br label %188

188:                                              ; preds = %187, %170
  %189 = load %struct.wlan_network*, %struct.wlan_network** %13, align 8
  %190 = icmp ne %struct.wlan_network* %189, null
  br i1 %190, label %191, label %196

191:                                              ; preds = %188
  %192 = load %struct.adapter*, %struct.adapter** %3, align 8
  %193 = load %struct.wlan_network*, %struct.wlan_network** %13, align 8
  %194 = load %struct.wlan_network*, %struct.wlan_network** %10, align 8
  %195 = call i32 @rtw_joinbss_update_network(%struct.adapter* %192, %struct.wlan_network* %193, %struct.wlan_network* %194)
  br label %203

196:                                              ; preds = %188
  %197 = load i32, i32* @_drv_always_, align 4
  %198 = call i32 @DBG_871X_LEVEL(i32 %197, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0))
  %199 = load %struct.mlme_priv*, %struct.mlme_priv** %9, align 8
  %200 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %199, i32 0, i32 2
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 0
  %202 = call i32 @spin_unlock_bh(i32* %201)
  br label %302

203:                                              ; preds = %191
  %204 = load %struct.mlme_priv*, %struct.mlme_priv** %9, align 8
  %205 = load i32, i32* @WIFI_STATION_STATE, align 4
  %206 = call i32 @check_fwstate(%struct.mlme_priv* %204, i32 %205)
  %207 = icmp eq i32 %206, 1
  br i1 %207, label %208, label %223

208:                                              ; preds = %203
  %209 = load %struct.adapter*, %struct.adapter** %3, align 8
  %210 = load %struct.wlan_network*, %struct.wlan_network** %10, align 8
  %211 = call %struct.sta_info* @rtw_joinbss_update_stainfo(%struct.adapter* %209, %struct.wlan_network* %210)
  store %struct.sta_info* %211, %struct.sta_info** %6, align 8
  %212 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %213 = icmp eq %struct.sta_info* %212, null
  br i1 %213, label %214, label %222

214:                                              ; preds = %208
  %215 = load i32, i32* @_module_rtl871x_mlme_c_, align 4
  %216 = load i32, i32* @_drv_err_, align 4
  %217 = call i32 @RT_TRACE(i32 %215, i32 %216, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0))
  %218 = load %struct.mlme_priv*, %struct.mlme_priv** %9, align 8
  %219 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %218, i32 0, i32 2
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 0
  %221 = call i32 @spin_unlock_bh(i32* %220)
  br label %302

222:                                              ; preds = %208
  br label %223

223:                                              ; preds = %222, %203
  %224 = load %struct.mlme_priv*, %struct.mlme_priv** %9, align 8
  %225 = load i32, i32* @WIFI_STATION_STATE, align 4
  %226 = call i32 @check_fwstate(%struct.mlme_priv* %224, i32 %225)
  %227 = icmp eq i32 %226, 1
  br i1 %227, label %228, label %234

228:                                              ; preds = %223
  %229 = load %struct.wlan_network*, %struct.wlan_network** %13, align 8
  %230 = load %struct.mlme_priv*, %struct.mlme_priv** %9, align 8
  %231 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %230, i32 0, i32 3
  store %struct.wlan_network* %229, %struct.wlan_network** %231, align 8
  %232 = load %struct.adapter*, %struct.adapter** %3, align 8
  %233 = call i32 @rtw_indicate_connect(%struct.adapter* %232)
  br label %242

234:                                              ; preds = %223
  %235 = load i32, i32* @_module_rtl871x_mlme_c_, align 4
  %236 = load i32, i32* @_drv_info_, align 4
  %237 = load %struct.mlme_priv*, %struct.mlme_priv** %9, align 8
  %238 = call i32 @get_fwstate(%struct.mlme_priv* %237)
  %239 = sext i32 %238 to i64
  %240 = inttoptr i64 %239 to i8*
  %241 = call i32 @RT_TRACE(i32 %235, i32 %236, i8* %240)
  br label %242

242:                                              ; preds = %234, %228
  %243 = load %struct.mlme_priv*, %struct.mlme_priv** %9, align 8
  %244 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %243, i32 0, i32 1
  %245 = call i32 @_cancel_timer(i32* %244, i32* %5)
  %246 = load i32, i32* @_module_rtl871x_mlme_c_, align 4
  %247 = load i32, i32* @_drv_info_, align 4
  %248 = call i32 @RT_TRACE(i32 %246, i32 %247, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  br label %261

249:                                              ; preds = %99
  %250 = load i32, i32* @_module_rtl871x_mlme_c_, align 4
  %251 = load i32, i32* @_drv_err_, align 4
  %252 = load %struct.mlme_priv*, %struct.mlme_priv** %9, align 8
  %253 = call i32 @get_fwstate(%struct.mlme_priv* %252)
  %254 = sext i32 %253 to i64
  %255 = inttoptr i64 %254 to i8*
  %256 = call i32 @RT_TRACE(i32 %250, i32 %251, i8* %255)
  %257 = load %struct.mlme_priv*, %struct.mlme_priv** %9, align 8
  %258 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %257, i32 0, i32 2
  %259 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %258, i32 0, i32 0
  %260 = call i32 @spin_unlock_bh(i32* %259)
  br label %302

261:                                              ; preds = %242
  %262 = load %struct.mlme_priv*, %struct.mlme_priv** %9, align 8
  %263 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %262, i32 0, i32 2
  %264 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %263, i32 0, i32 0
  %265 = call i32 @spin_unlock_bh(i32* %264)
  br label %301

266:                                              ; preds = %82
  %267 = load %struct.wlan_network*, %struct.wlan_network** %10, align 8
  %268 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = icmp eq i32 %269, -4
  br i1 %270, label %271, label %293

271:                                              ; preds = %266
  %272 = load %struct.adapter*, %struct.adapter** %3, align 8
  %273 = call i32 @rtw_reset_securitypriv(%struct.adapter* %272)
  %274 = load %struct.mlme_priv*, %struct.mlme_priv** %9, align 8
  %275 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %274, i32 0, i32 1
  %276 = call i32 @_set_timer(i32* %275, i32 1)
  %277 = load %struct.mlme_priv*, %struct.mlme_priv** %9, align 8
  %278 = load i32, i32* @_FW_UNDER_LINKING, align 4
  %279 = call i32 @check_fwstate(%struct.mlme_priv* %277, i32 %278)
  %280 = icmp eq i32 %279, 1
  br i1 %280, label %281, label %292

281:                                              ; preds = %271
  %282 = load i32, i32* @_module_rtl871x_mlme_c_, align 4
  %283 = load i32, i32* @_drv_err_, align 4
  %284 = load %struct.mlme_priv*, %struct.mlme_priv** %9, align 8
  %285 = call i32 @get_fwstate(%struct.mlme_priv* %284)
  %286 = sext i32 %285 to i64
  %287 = inttoptr i64 %286 to i8*
  %288 = call i32 @RT_TRACE(i32 %282, i32 %283, i8* %287)
  %289 = load %struct.mlme_priv*, %struct.mlme_priv** %9, align 8
  %290 = load i32, i32* @_FW_UNDER_LINKING, align 4
  %291 = call i32 @_clr_fwstate_(%struct.mlme_priv* %289, i32 %290)
  br label %292

292:                                              ; preds = %281, %271
  br label %300

293:                                              ; preds = %266
  %294 = load %struct.mlme_priv*, %struct.mlme_priv** %9, align 8
  %295 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %294, i32 0, i32 1
  %296 = call i32 @_set_timer(i32* %295, i32 1)
  %297 = load %struct.mlme_priv*, %struct.mlme_priv** %9, align 8
  %298 = load i32, i32* @_FW_UNDER_LINKING, align 4
  %299 = call i32 @_clr_fwstate_(%struct.mlme_priv* %297, i32 %298)
  br label %300

300:                                              ; preds = %293, %292
  br label %301

301:                                              ; preds = %300, %261
  br label %302

302:                                              ; preds = %301, %249, %214, %196
  %303 = load %struct.mlme_priv*, %struct.mlme_priv** %9, align 8
  %304 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %303, i32 0, i32 0
  %305 = call i32 @spin_unlock_bh(i32* %304)
  br label %306

306:                                              ; preds = %302, %78
  ret void
}

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i32 @rtw_get_encrypt_decrypt_from_registrypriv(%struct.adapter*) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

declare dso_local i32 @get_wlan_bssid_ex_sz(%struct.TYPE_9__*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local %struct.wlan_network* @rtw_find_network(%struct.TYPE_8__*, i32) #1

declare dso_local %struct.sta_info* @rtw_get_stainfo(%struct.sta_priv*, i32) #1

declare dso_local i32 @rtw_free_stainfo(%struct.adapter*, %struct.sta_info*) #1

declare dso_local %struct.wlan_network* @_rtw_find_same_network(%struct.TYPE_8__*, %struct.wlan_network*) #1

declare dso_local i32 @rtw_joinbss_update_network(%struct.adapter*, %struct.wlan_network*, %struct.wlan_network*) #1

declare dso_local i32 @DBG_871X_LEVEL(i32, i8*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local %struct.sta_info* @rtw_joinbss_update_stainfo(%struct.adapter*, %struct.wlan_network*) #1

declare dso_local i32 @rtw_indicate_connect(%struct.adapter*) #1

declare dso_local i32 @get_fwstate(%struct.mlme_priv*) #1

declare dso_local i32 @_cancel_timer(i32*, i32*) #1

declare dso_local i32 @rtw_reset_securitypriv(%struct.adapter*) #1

declare dso_local i32 @_set_timer(i32*, i32) #1

declare dso_local i32 @_clr_fwstate_(%struct.mlme_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
