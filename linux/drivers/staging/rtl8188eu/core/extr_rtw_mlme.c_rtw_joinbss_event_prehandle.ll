; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_mlme.c_rtw_joinbss_event_prehandle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_mlme.c_rtw_joinbss_event_prehandle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_priv, %struct.sta_priv }
%struct.mlme_priv = type { i32, i32, %struct.TYPE_5__, %struct.TYPE_4__, %struct.wlan_network }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.wlan_network = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.sta_priv = type { i32 }
%struct.sta_info = type { i32 }

@_module_rtl871x_mlme_c_ = common dso_local global i32 0, align 4
@_drv_info_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"joinbss event call back received with res=%d\0A\00", align 1
@_drv_err_ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"@@@@@   joinbss event call back  for Any SSid\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"@@@@@   rtw_joinbss_event_callback for SSid:%s\0A\00", align 1
@ETH_ALEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"\0A\0A ***joinbss_evt_callback return a wrong bss ***\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"\0Artw_joinbss_event_callback!! _enter_critical\0A\00", align 1
@_FW_UNDER_LINKING = common dso_local global i32 0, align 4
@_FW_LINKED = common dso_local global i32 0, align 4
@WIFI_STATION_STATE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [53 x i8] c"Can't find ptarget_wlan when joinbss_event callback\0A\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"Can't update stainfo when joinbss_event callback\0A\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"adhoc mode, fw_state:%x\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"Cancel assoc_timer\0A\00", align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"rtw_joinbss_event_callback err: fw_state:%x\00", align 1
@jiffies = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [46 x i8] c"fail! clear _FW_UNDER_LINKING ^^^fw_state=%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_joinbss_event_prehandle(%struct.adapter* %0, i32* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.sta_info*, align 8
  %6 = alloca %struct.sta_info*, align 8
  %7 = alloca %struct.sta_priv*, align 8
  %8 = alloca %struct.mlme_priv*, align 8
  %9 = alloca %struct.wlan_network*, align 8
  %10 = alloca %struct.wlan_network*, align 8
  %11 = alloca %struct.wlan_network*, align 8
  %12 = alloca %struct.wlan_network*, align 8
  %13 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i32* %1, i32** %4, align 8
  store %struct.sta_info* null, %struct.sta_info** %5, align 8
  store %struct.sta_info* null, %struct.sta_info** %6, align 8
  %14 = load %struct.adapter*, %struct.adapter** %3, align 8
  %15 = getelementptr inbounds %struct.adapter, %struct.adapter* %14, i32 0, i32 1
  store %struct.sta_priv* %15, %struct.sta_priv** %7, align 8
  %16 = load %struct.adapter*, %struct.adapter** %3, align 8
  %17 = getelementptr inbounds %struct.adapter, %struct.adapter* %16, i32 0, i32 0
  store %struct.mlme_priv* %17, %struct.mlme_priv** %8, align 8
  %18 = load i32*, i32** %4, align 8
  %19 = bitcast i32* %18 to %struct.wlan_network*
  store %struct.wlan_network* %19, %struct.wlan_network** %9, align 8
  %20 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %21 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %20, i32 0, i32 4
  store %struct.wlan_network* %21, %struct.wlan_network** %10, align 8
  store %struct.wlan_network* null, %struct.wlan_network** %11, align 8
  store %struct.wlan_network* null, %struct.wlan_network** %12, align 8
  store i32 0, i32* %13, align 4
  %22 = load i32, i32* @_module_rtl871x_mlme_c_, align 4
  %23 = load i32, i32* @_drv_info_, align 4
  %24 = load %struct.wlan_network*, %struct.wlan_network** %9, align 8
  %25 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i8*
  %29 = call i32 @RT_TRACE(i32 %22, i32 %23, i8* %28)
  %30 = load %struct.adapter*, %struct.adapter** %3, align 8
  %31 = call i32 @rtw_get_encrypt_decrypt_from_registrypriv(%struct.adapter* %30)
  %32 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %33 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %2
  %38 = load i32, i32* @_module_rtl871x_mlme_c_, align 4
  %39 = load i32, i32* @_drv_err_, align 4
  %40 = call i32 @RT_TRACE(i32 %38, i32 %39, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %51

41:                                               ; preds = %2
  %42 = load i32, i32* @_module_rtl871x_mlme_c_, align 4
  %43 = load i32, i32* @_drv_err_, align 4
  %44 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %45 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i8*
  %50 = call i32 @RT_TRACE(i32 %42, i32 %43, i8* %49)
  br label %51

51:                                               ; preds = %41, %37
  %52 = load %struct.wlan_network*, %struct.wlan_network** %9, align 8
  %53 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.wlan_network*, %struct.wlan_network** %10, align 8
  %57 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @ETH_ALEN, align 4
  %61 = call i32 @memcmp(i32 %55, i32 %59, i32 %60)
  %62 = icmp ne i32 %61, 0
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  store i32 %64, i32* %13, align 4
  %65 = load %struct.wlan_network*, %struct.wlan_network** %9, align 8
  %66 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %65, i32 0, i32 2
  %67 = call i32 @get_wlan_bssid_ex_sz(%struct.TYPE_6__* %66)
  %68 = load %struct.wlan_network*, %struct.wlan_network** %9, align 8
  %69 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 4
  %71 = load %struct.wlan_network*, %struct.wlan_network** %9, align 8
  %72 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = icmp ugt i64 %75, 4
  br i1 %76, label %77, label %81

77:                                               ; preds = %51
  %78 = load i32, i32* @_module_rtl871x_mlme_c_, align 4
  %79 = load i32, i32* @_drv_err_, align 4
  %80 = call i32 @RT_TRACE(i32 %78, i32 %79, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  br label %312

81:                                               ; preds = %51
  %82 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %83 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %82, i32 0, i32 0
  %84 = call i32 @spin_lock_bh(i32* %83)
  %85 = load i32, i32* @_module_rtl871x_mlme_c_, align 4
  %86 = load i32, i32* @_drv_info_, align 4
  %87 = call i32 @RT_TRACE(i32 %85, i32 %86, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  %88 = load %struct.wlan_network*, %struct.wlan_network** %9, align 8
  %89 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %266

92:                                               ; preds = %81
  %93 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %94 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = call i32 @spin_lock_bh(i32* %95)
  %97 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %98 = load i32, i32* @_FW_UNDER_LINKING, align 4
  %99 = call i64 @check_fwstate(%struct.mlme_priv* %97, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %249

101:                                              ; preds = %92
  %102 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %103 = load i32, i32* @_FW_LINKED, align 4
  %104 = call i64 @check_fwstate(%struct.mlme_priv* %102, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %170

106:                                              ; preds = %101
  %107 = load i32, i32* %13, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %106
  %110 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %111 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %110, i32 0, i32 2
  %112 = load %struct.wlan_network*, %struct.wlan_network** %10, align 8
  %113 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call %struct.wlan_network* @rtw_find_network(%struct.TYPE_5__* %111, i32 %115)
  store %struct.wlan_network* %116, %struct.wlan_network** %12, align 8
  br label %169

117:                                              ; preds = %106
  %118 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %119 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %118, i32 0, i32 2
  %120 = load %struct.wlan_network*, %struct.wlan_network** %10, align 8
  %121 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call %struct.wlan_network* @rtw_find_network(%struct.TYPE_5__* %119, i32 %123)
  store %struct.wlan_network* %124, %struct.wlan_network** %11, align 8
  %125 = load %struct.wlan_network*, %struct.wlan_network** %11, align 8
  %126 = icmp ne %struct.wlan_network* %125, null
  br i1 %126, label %127, label %130

127:                                              ; preds = %117
  %128 = load %struct.wlan_network*, %struct.wlan_network** %11, align 8
  %129 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %128, i32 0, i32 1
  store i32 0, i32* %129, align 4
  br label %130

130:                                              ; preds = %127, %117
  %131 = load %struct.sta_priv*, %struct.sta_priv** %7, align 8
  %132 = load %struct.wlan_network*, %struct.wlan_network** %10, align 8
  %133 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call %struct.sta_info* @rtw_get_stainfo(%struct.sta_priv* %131, i32 %135)
  store %struct.sta_info* %136, %struct.sta_info** %6, align 8
  %137 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %138 = icmp ne %struct.sta_info* %137, null
  br i1 %138, label %139, label %149

139:                                              ; preds = %130
  %140 = load %struct.sta_priv*, %struct.sta_priv** %7, align 8
  %141 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %140, i32 0, i32 0
  %142 = call i32 @spin_lock_bh(i32* %141)
  %143 = load %struct.adapter*, %struct.adapter** %3, align 8
  %144 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %145 = call i32 @rtw_free_stainfo(%struct.adapter* %143, %struct.sta_info* %144)
  %146 = load %struct.sta_priv*, %struct.sta_priv** %7, align 8
  %147 = getelementptr inbounds %struct.sta_priv, %struct.sta_priv* %146, i32 0, i32 0
  %148 = call i32 @spin_unlock_bh(i32* %147)
  br label %149

149:                                              ; preds = %139, %130
  %150 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %151 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %150, i32 0, i32 2
  %152 = load %struct.wlan_network*, %struct.wlan_network** %9, align 8
  %153 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %152, i32 0, i32 2
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call %struct.wlan_network* @rtw_find_network(%struct.TYPE_5__* %151, i32 %155)
  store %struct.wlan_network* %156, %struct.wlan_network** %12, align 8
  %157 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %158 = load i32, i32* @WIFI_STATION_STATE, align 4
  %159 = call i64 @check_fwstate(%struct.mlme_priv* %157, i32 %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %168

161:                                              ; preds = %149
  %162 = load %struct.wlan_network*, %struct.wlan_network** %12, align 8
  %163 = icmp ne %struct.wlan_network* %162, null
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = load %struct.wlan_network*, %struct.wlan_network** %12, align 8
  %166 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %165, i32 0, i32 1
  store i32 1, i32* %166, align 4
  br label %167

167:                                              ; preds = %164, %161
  br label %168

168:                                              ; preds = %167, %149
  br label %169

169:                                              ; preds = %168, %109
  br label %190

170:                                              ; preds = %101
  %171 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %172 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %171, i32 0, i32 2
  %173 = load %struct.wlan_network*, %struct.wlan_network** %9, align 8
  %174 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = call %struct.wlan_network* @rtw_find_network(%struct.TYPE_5__* %172, i32 %176)
  store %struct.wlan_network* %177, %struct.wlan_network** %12, align 8
  %178 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %179 = load i32, i32* @WIFI_STATION_STATE, align 4
  %180 = call i64 @check_fwstate(%struct.mlme_priv* %178, i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %189

182:                                              ; preds = %170
  %183 = load %struct.wlan_network*, %struct.wlan_network** %12, align 8
  %184 = icmp ne %struct.wlan_network* %183, null
  br i1 %184, label %185, label %188

185:                                              ; preds = %182
  %186 = load %struct.wlan_network*, %struct.wlan_network** %12, align 8
  %187 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %186, i32 0, i32 1
  store i32 1, i32* %187, align 4
  br label %188

188:                                              ; preds = %185, %182
  br label %189

189:                                              ; preds = %188, %170
  br label %190

190:                                              ; preds = %189, %169
  %191 = load %struct.wlan_network*, %struct.wlan_network** %12, align 8
  %192 = icmp ne %struct.wlan_network* %191, null
  br i1 %192, label %193, label %198

193:                                              ; preds = %190
  %194 = load %struct.adapter*, %struct.adapter** %3, align 8
  %195 = load %struct.wlan_network*, %struct.wlan_network** %12, align 8
  %196 = load %struct.wlan_network*, %struct.wlan_network** %9, align 8
  %197 = call i32 @rtw_joinbss_update_network(%struct.adapter* %194, %struct.wlan_network* %195, %struct.wlan_network* %196)
  br label %206

198:                                              ; preds = %190
  %199 = load i32, i32* @_module_rtl871x_mlme_c_, align 4
  %200 = load i32, i32* @_drv_err_, align 4
  %201 = call i32 @RT_TRACE(i32 %199, i32 %200, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0))
  %202 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %203 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %202, i32 0, i32 2
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 0
  %205 = call i32 @spin_unlock_bh(i32* %204)
  br label %308

206:                                              ; preds = %193
  %207 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %208 = load i32, i32* @WIFI_STATION_STATE, align 4
  %209 = call i64 @check_fwstate(%struct.mlme_priv* %207, i32 %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %226

211:                                              ; preds = %206
  %212 = load %struct.adapter*, %struct.adapter** %3, align 8
  %213 = load %struct.wlan_network*, %struct.wlan_network** %9, align 8
  %214 = call %struct.sta_info* @rtw_joinbss_update_stainfo(%struct.adapter* %212, %struct.wlan_network* %213)
  store %struct.sta_info* %214, %struct.sta_info** %5, align 8
  %215 = load %struct.sta_info*, %struct.sta_info** %5, align 8
  %216 = icmp ne %struct.sta_info* %215, null
  br i1 %216, label %225, label %217

217:                                              ; preds = %211
  %218 = load i32, i32* @_module_rtl871x_mlme_c_, align 4
  %219 = load i32, i32* @_drv_err_, align 4
  %220 = call i32 @RT_TRACE(i32 %218, i32 %219, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0))
  %221 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %222 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %221, i32 0, i32 2
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 0
  %224 = call i32 @spin_unlock_bh(i32* %223)
  br label %308

225:                                              ; preds = %211
  br label %226

226:                                              ; preds = %225, %206
  %227 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %228 = load i32, i32* @WIFI_STATION_STATE, align 4
  %229 = call i64 @check_fwstate(%struct.mlme_priv* %227, i32 %228)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %234

231:                                              ; preds = %226
  %232 = load %struct.adapter*, %struct.adapter** %3, align 8
  %233 = call i32 @rtw_indicate_connect(%struct.adapter* %232)
  br label %242

234:                                              ; preds = %226
  %235 = load i32, i32* @_module_rtl871x_mlme_c_, align 4
  %236 = load i32, i32* @_drv_info_, align 4
  %237 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %238 = call i32 @get_fwstate(%struct.mlme_priv* %237)
  %239 = sext i32 %238 to i64
  %240 = inttoptr i64 %239 to i8*
  %241 = call i32 @RT_TRACE(i32 %235, i32 %236, i8* %240)
  br label %242

242:                                              ; preds = %234, %231
  %243 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %244 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %243, i32 0, i32 1
  %245 = call i32 @del_timer_sync(i32* %244)
  %246 = load i32, i32* @_module_rtl871x_mlme_c_, align 4
  %247 = load i32, i32* @_drv_info_, align 4
  %248 = call i32 @RT_TRACE(i32 %246, i32 %247, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  br label %261

249:                                              ; preds = %92
  %250 = load i32, i32* @_module_rtl871x_mlme_c_, align 4
  %251 = load i32, i32* @_drv_err_, align 4
  %252 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %253 = call i32 @get_fwstate(%struct.mlme_priv* %252)
  %254 = sext i32 %253 to i64
  %255 = inttoptr i64 %254 to i8*
  %256 = call i32 @RT_TRACE(i32 %250, i32 %251, i8* %255)
  %257 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %258 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %257, i32 0, i32 2
  %259 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %258, i32 0, i32 0
  %260 = call i32 @spin_unlock_bh(i32* %259)
  br label %308

261:                                              ; preds = %242
  %262 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %263 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %262, i32 0, i32 2
  %264 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %263, i32 0, i32 0
  %265 = call i32 @spin_unlock_bh(i32* %264)
  br label %307

266:                                              ; preds = %81
  %267 = load %struct.wlan_network*, %struct.wlan_network** %9, align 8
  %268 = getelementptr inbounds %struct.wlan_network, %struct.wlan_network* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = icmp eq i32 %269, -4
  br i1 %270, label %271, label %296

271:                                              ; preds = %266
  %272 = load %struct.adapter*, %struct.adapter** %3, align 8
  %273 = call i32 @rtw_reset_securitypriv(%struct.adapter* %272)
  %274 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %275 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %274, i32 0, i32 1
  %276 = load i64, i64* @jiffies, align 8
  %277 = call i64 @msecs_to_jiffies(i32 1)
  %278 = add nsw i64 %276, %277
  %279 = call i32 @mod_timer(i32* %275, i64 %278)
  %280 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %281 = load i32, i32* @_FW_UNDER_LINKING, align 4
  %282 = call i64 @check_fwstate(%struct.mlme_priv* %280, i32 %281)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %295

284:                                              ; preds = %271
  %285 = load i32, i32* @_module_rtl871x_mlme_c_, align 4
  %286 = load i32, i32* @_drv_err_, align 4
  %287 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %288 = call i32 @get_fwstate(%struct.mlme_priv* %287)
  %289 = sext i32 %288 to i64
  %290 = inttoptr i64 %289 to i8*
  %291 = call i32 @RT_TRACE(i32 %285, i32 %286, i8* %290)
  %292 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %293 = load i32, i32* @_FW_UNDER_LINKING, align 4
  %294 = call i32 @_clr_fwstate_(%struct.mlme_priv* %292, i32 %293)
  br label %295

295:                                              ; preds = %284, %271
  br label %306

296:                                              ; preds = %266
  %297 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %298 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %297, i32 0, i32 1
  %299 = load i64, i64* @jiffies, align 8
  %300 = call i64 @msecs_to_jiffies(i32 1)
  %301 = add nsw i64 %299, %300
  %302 = call i32 @mod_timer(i32* %298, i64 %301)
  %303 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %304 = load i32, i32* @_FW_UNDER_LINKING, align 4
  %305 = call i32 @_clr_fwstate_(%struct.mlme_priv* %303, i32 %304)
  br label %306

306:                                              ; preds = %296, %295
  br label %307

307:                                              ; preds = %306, %261
  br label %308

308:                                              ; preds = %307, %249, %217, %198
  %309 = load %struct.mlme_priv*, %struct.mlme_priv** %8, align 8
  %310 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %309, i32 0, i32 0
  %311 = call i32 @spin_unlock_bh(i32* %310)
  br label %312

312:                                              ; preds = %308, %77
  ret void
}

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i32 @rtw_get_encrypt_decrypt_from_registrypriv(%struct.adapter*) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

declare dso_local i32 @get_wlan_bssid_ex_sz(%struct.TYPE_6__*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local %struct.wlan_network* @rtw_find_network(%struct.TYPE_5__*, i32) #1

declare dso_local %struct.sta_info* @rtw_get_stainfo(%struct.sta_priv*, i32) #1

declare dso_local i32 @rtw_free_stainfo(%struct.adapter*, %struct.sta_info*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @rtw_joinbss_update_network(%struct.adapter*, %struct.wlan_network*, %struct.wlan_network*) #1

declare dso_local %struct.sta_info* @rtw_joinbss_update_stainfo(%struct.adapter*, %struct.wlan_network*) #1

declare dso_local i32 @rtw_indicate_connect(%struct.adapter*) #1

declare dso_local i32 @get_fwstate(%struct.mlme_priv*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @rtw_reset_securitypriv(%struct.adapter*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @_clr_fwstate_(%struct.mlme_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
