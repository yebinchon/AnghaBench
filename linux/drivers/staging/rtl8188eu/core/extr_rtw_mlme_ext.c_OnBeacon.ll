; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_mlme_ext.c_OnBeacon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_mlme_ext.c_OnBeacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.sta_priv, %struct.mlme_priv, %struct.mlme_ext_priv }
%struct.sta_priv = type { i32 }
%struct.mlme_priv = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.mlme_ext_priv = type { %struct.TYPE_6__, %struct.mlme_ext_info }
%struct.TYPE_6__ = type { i64 }
%struct.mlme_ext_info = type { i32, %struct.TYPE_7__*, %struct.wlan_bssid_ex, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.wlan_bssid_ex = type { i32 }
%struct.recv_frame = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32* }
%struct.sta_info = type { i32 }

@_SUCCESS = common dso_local global i32 0, align 4
@SCAN_PROCESS = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@WIFI_FW_AUTH_NULL = common dso_local global i32 0, align 4
@WIFI_FW_STATION_STATE = common dso_local global i32 0, align 4
@WIFI_FW_ASSOC_SUCCESS = common dso_local global i32 0, align 4
@_drv_info_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"ap has changed, disconnect now\0A \00", align 1
@WIFI_FW_ADHOC_STATE = common dso_local global i32 0, align 4
@NUM_STA = common dso_local global i32 0, align 4
@WLAN_HDR_A3_LEN = common dso_local global i32 0, align 4
@_BEACON_IE_OFFSET_ = common dso_local global i32 0, align 4
@_FAIL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, %struct.recv_frame*)* @OnBeacon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OnBeacon(%struct.adapter* %0, %struct.recv_frame* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.recv_frame*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sta_info*, align 8
  %8 = alloca %struct.mlme_ext_priv*, align 8
  %9 = alloca %struct.mlme_ext_info*, align 8
  %10 = alloca %struct.mlme_priv*, align 8
  %11 = alloca %struct.sta_priv*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.wlan_bssid_ex*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.wlan_bssid_ex*, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store %struct.recv_frame* %1, %struct.recv_frame** %5, align 8
  %17 = load %struct.adapter*, %struct.adapter** %4, align 8
  %18 = getelementptr inbounds %struct.adapter, %struct.adapter* %17, i32 0, i32 2
  store %struct.mlme_ext_priv* %18, %struct.mlme_ext_priv** %8, align 8
  %19 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %8, align 8
  %20 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %19, i32 0, i32 1
  store %struct.mlme_ext_info* %20, %struct.mlme_ext_info** %9, align 8
  %21 = load %struct.adapter*, %struct.adapter** %4, align 8
  %22 = getelementptr inbounds %struct.adapter, %struct.adapter* %21, i32 0, i32 1
  store %struct.mlme_priv* %22, %struct.mlme_priv** %10, align 8
  %23 = load %struct.adapter*, %struct.adapter** %4, align 8
  %24 = getelementptr inbounds %struct.adapter, %struct.adapter* %23, i32 0, i32 0
  store %struct.sta_priv* %24, %struct.sta_priv** %11, align 8
  %25 = load %struct.recv_frame*, %struct.recv_frame** %5, align 8
  %26 = getelementptr inbounds %struct.recv_frame, %struct.recv_frame* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %12, align 8
  %30 = load %struct.recv_frame*, %struct.recv_frame** %5, align 8
  %31 = getelementptr inbounds %struct.recv_frame, %struct.recv_frame* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* @_SUCCESS, align 4
  store i32 %35, i32* %15, align 4
  %36 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %9, align 8
  %37 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %36, i32 0, i32 2
  store %struct.wlan_bssid_ex* %37, %struct.wlan_bssid_ex** %16, align 8
  %38 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %8, align 8
  %39 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @SCAN_PROCESS, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %2
  %45 = load %struct.adapter*, %struct.adapter** %4, align 8
  %46 = load %struct.recv_frame*, %struct.recv_frame** %5, align 8
  %47 = call i32 @report_survey_event(%struct.adapter* %45, %struct.recv_frame* %46)
  %48 = load i32, i32* @_SUCCESS, align 4
  store i32 %48, i32* %3, align 4
  br label %233

49:                                               ; preds = %2
  %50 = load i32*, i32** %12, align 8
  %51 = call i32 @GetAddr3Ptr(i32* %50)
  %52 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %16, align 8
  %53 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @ETH_ALEN, align 4
  %56 = call i32 @memcmp(i32 %51, i32 %54, i32 %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %230, label %58

58:                                               ; preds = %49
  %59 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %9, align 8
  %60 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @WIFI_FW_AUTH_NULL, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %107

65:                                               ; preds = %58
  %66 = call i64 @rtw_malloc(i32 4)
  %67 = inttoptr i64 %66 to %struct.wlan_bssid_ex*
  store %struct.wlan_bssid_ex* %67, %struct.wlan_bssid_ex** %14, align 8
  %68 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %14, align 8
  %69 = icmp ne %struct.wlan_bssid_ex* %68, null
  br i1 %69, label %70, label %90

70:                                               ; preds = %65
  %71 = load %struct.adapter*, %struct.adapter** %4, align 8
  %72 = load %struct.recv_frame*, %struct.recv_frame** %5, align 8
  %73 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %14, align 8
  %74 = call i32 @collect_bss_info(%struct.adapter* %71, %struct.recv_frame* %72, %struct.wlan_bssid_ex* %73)
  %75 = load i32, i32* @_SUCCESS, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %70
  %78 = load %struct.mlme_priv*, %struct.mlme_priv** %10, align 8
  %79 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %14, align 8
  %82 = load %struct.adapter*, %struct.adapter** %4, align 8
  %83 = call i32 @update_network(i32* %80, %struct.wlan_bssid_ex* %81, %struct.adapter* %82, i32 1)
  %84 = load %struct.mlme_priv*, %struct.mlme_priv** %10, align 8
  %85 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %84, i32 0, i32 0
  %86 = call i32 @rtw_get_bcn_info(%struct.TYPE_8__* %85)
  br label %87

87:                                               ; preds = %77, %70
  %88 = load %struct.wlan_bssid_ex*, %struct.wlan_bssid_ex** %14, align 8
  %89 = call i32 @kfree(%struct.wlan_bssid_ex* %88)
  br label %90

90:                                               ; preds = %87, %65
  %91 = load i32*, i32** %12, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 4
  %93 = load i32, i32* %13, align 4
  %94 = sext i32 %93 to i64
  %95 = sub i64 %94, 4
  %96 = trunc i64 %95 to i32
  %97 = call i32 @check_assoc_AP(i32* %92, i32 %96)
  %98 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %9, align 8
  %99 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %98, i32 0, i32 3
  store i32 %97, i32* %99, align 4
  %100 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %8, align 8
  %101 = load i32*, i32** %12, align 8
  %102 = load i32, i32* %13, align 4
  %103 = call i32 @update_TSF(%struct.mlme_ext_priv* %100, i32* %101, i32 %102)
  %104 = load %struct.adapter*, %struct.adapter** %4, align 8
  %105 = call i32 @start_clnt_auth(%struct.adapter* %104)
  %106 = load i32, i32* @_SUCCESS, align 4
  store i32 %106, i32* %3, align 4
  br label %233

107:                                              ; preds = %58
  %108 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %9, align 8
  %109 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = and i32 %110, 3
  %112 = load i32, i32* @WIFI_FW_STATION_STATE, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %158

114:                                              ; preds = %107
  %115 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %9, align 8
  %116 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @WIFI_FW_ASSOC_SUCCESS, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %158

121:                                              ; preds = %114
  %122 = load %struct.sta_priv*, %struct.sta_priv** %11, align 8
  %123 = load i32*, i32** %12, align 8
  %124 = call i32 @GetAddr2Ptr(i32* %123)
  %125 = call %struct.sta_info* @rtw_get_stainfo(%struct.sta_priv* %122, i32 %124)
  store %struct.sta_info* %125, %struct.sta_info** %7, align 8
  %126 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %127 = icmp ne %struct.sta_info* %126, null
  br i1 %127, label %128, label %157

128:                                              ; preds = %121
  %129 = load %struct.adapter*, %struct.adapter** %4, align 8
  %130 = load i32*, i32** %12, align 8
  %131 = load i32, i32* %13, align 4
  %132 = call i32 @rtw_check_bcn_info(%struct.adapter* %129, i32* %130, i32 %131)
  store i32 %132, i32* %15, align 4
  %133 = load i32, i32* %15, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %145, label %135

135:                                              ; preds = %128
  %136 = load i32, i32* @_drv_info_, align 4
  %137 = call i32 @DBG_88E_LEVEL(i32 %136, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %138 = load %struct.adapter*, %struct.adapter** %4, align 8
  %139 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %9, align 8
  %140 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.wlan_bssid_ex, %struct.wlan_bssid_ex* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @receive_disconnect(%struct.adapter* %138, i32 %142, i32 65535)
  %144 = load i32, i32* @_SUCCESS, align 4
  store i32 %144, i32* %3, align 4
  br label %233

145:                                              ; preds = %128
  %146 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %147 = call i32 @sta_rx_pkts(%struct.sta_info* %146)
  %148 = and i32 %147, 15
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %145
  %151 = load %struct.adapter*, %struct.adapter** %4, align 8
  %152 = load i32*, i32** %12, align 8
  %153 = load i32, i32* %13, align 4
  %154 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %155 = call i32 @update_beacon_info(%struct.adapter* %151, i32* %152, i32 %153, %struct.sta_info* %154)
  br label %156

156:                                              ; preds = %150, %145
  br label %157

157:                                              ; preds = %156, %121
  br label %229

158:                                              ; preds = %114, %107
  %159 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %9, align 8
  %160 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = and i32 %161, 3
  %163 = load i32, i32* @WIFI_FW_ADHOC_STATE, align 4
  %164 = icmp eq i32 %162, %163
  br i1 %164, label %165, label %228

165:                                              ; preds = %158
  %166 = load %struct.sta_priv*, %struct.sta_priv** %11, align 8
  %167 = load i32*, i32** %12, align 8
  %168 = call i32 @GetAddr2Ptr(i32* %167)
  %169 = call %struct.sta_info* @rtw_get_stainfo(%struct.sta_priv* %166, i32 %168)
  store %struct.sta_info* %169, %struct.sta_info** %7, align 8
  %170 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %171 = icmp ne %struct.sta_info* %170, null
  br i1 %171, label %172, label %184

172:                                              ; preds = %165
  %173 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %174 = call i32 @sta_rx_pkts(%struct.sta_info* %173)
  %175 = and i32 %174, 15
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %172
  %178 = load %struct.adapter*, %struct.adapter** %4, align 8
  %179 = load i32*, i32** %12, align 8
  %180 = load i32, i32* %13, align 4
  %181 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %182 = call i32 @update_beacon_info(%struct.adapter* %178, i32* %179, i32 %180, %struct.sta_info* %181)
  br label %183

183:                                              ; preds = %177, %172
  br label %227

184:                                              ; preds = %165
  %185 = load %struct.adapter*, %struct.adapter** %4, align 8
  %186 = call i32 @allocate_fw_sta_entry(%struct.adapter* %185)
  store i32 %186, i32* %6, align 4
  %187 = load i32, i32* %6, align 4
  %188 = load i32, i32* @NUM_STA, align 4
  %189 = icmp eq i32 %187, %188
  br i1 %189, label %190, label %191

190:                                              ; preds = %184
  br label %231

191:                                              ; preds = %184
  %192 = load %struct.adapter*, %struct.adapter** %4, align 8
  %193 = load i32*, i32** %12, align 8
  %194 = load i32, i32* @WLAN_HDR_A3_LEN, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  %197 = load i32, i32* @_BEACON_IE_OFFSET_, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  %200 = load i32, i32* %13, align 4
  %201 = load i32, i32* @WLAN_HDR_A3_LEN, align 4
  %202 = sub nsw i32 %200, %201
  %203 = load i32, i32* @_BEACON_IE_OFFSET_, align 4
  %204 = sub nsw i32 %202, %203
  %205 = load i32, i32* %6, align 4
  %206 = call i64 @update_sta_support_rate(%struct.adapter* %192, i32* %199, i32 %204, i32 %205)
  %207 = load i64, i64* @_FAIL, align 8
  %208 = icmp eq i64 %206, %207
  br i1 %208, label %209, label %217

209:                                              ; preds = %191
  %210 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %9, align 8
  %211 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %210, i32 0, i32 1
  %212 = load %struct.TYPE_7__*, %struct.TYPE_7__** %211, align 8
  %213 = load i32, i32* %6, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i64 %214
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 0
  store i64 0, i64* %216, align 8
  br label %231

217:                                              ; preds = %191
  %218 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %8, align 8
  %219 = load i32*, i32** %12, align 8
  %220 = load i32, i32* %13, align 4
  %221 = call i32 @update_TSF(%struct.mlme_ext_priv* %218, i32* %219, i32 %220)
  %222 = load %struct.adapter*, %struct.adapter** %4, align 8
  %223 = load i32*, i32** %12, align 8
  %224 = call i32 @GetAddr2Ptr(i32* %223)
  %225 = load i32, i32* %6, align 4
  %226 = call i32 @report_add_sta_event(%struct.adapter* %222, i32 %224, i32 %225)
  br label %227

227:                                              ; preds = %217, %183
  br label %228

228:                                              ; preds = %227, %158
  br label %229

229:                                              ; preds = %228, %157
  br label %230

230:                                              ; preds = %229, %49
  br label %231

231:                                              ; preds = %230, %209, %190
  %232 = load i32, i32* @_SUCCESS, align 4
  store i32 %232, i32* %3, align 4
  br label %233

233:                                              ; preds = %231, %135, %90, %44
  %234 = load i32, i32* %3, align 4
  ret i32 %234
}

declare dso_local i32 @report_survey_event(%struct.adapter*, %struct.recv_frame*) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

declare dso_local i32 @GetAddr3Ptr(i32*) #1

declare dso_local i64 @rtw_malloc(i32) #1

declare dso_local i32 @collect_bss_info(%struct.adapter*, %struct.recv_frame*, %struct.wlan_bssid_ex*) #1

declare dso_local i32 @update_network(i32*, %struct.wlan_bssid_ex*, %struct.adapter*, i32) #1

declare dso_local i32 @rtw_get_bcn_info(%struct.TYPE_8__*) #1

declare dso_local i32 @kfree(%struct.wlan_bssid_ex*) #1

declare dso_local i32 @check_assoc_AP(i32*, i32) #1

declare dso_local i32 @update_TSF(%struct.mlme_ext_priv*, i32*, i32) #1

declare dso_local i32 @start_clnt_auth(%struct.adapter*) #1

declare dso_local %struct.sta_info* @rtw_get_stainfo(%struct.sta_priv*, i32) #1

declare dso_local i32 @GetAddr2Ptr(i32*) #1

declare dso_local i32 @rtw_check_bcn_info(%struct.adapter*, i32*, i32) #1

declare dso_local i32 @DBG_88E_LEVEL(i32, i8*) #1

declare dso_local i32 @receive_disconnect(%struct.adapter*, i32, i32) #1

declare dso_local i32 @sta_rx_pkts(%struct.sta_info*) #1

declare dso_local i32 @update_beacon_info(%struct.adapter*, i32*, i32, %struct.sta_info*) #1

declare dso_local i32 @allocate_fw_sta_entry(%struct.adapter*) #1

declare dso_local i64 @update_sta_support_rate(%struct.adapter*, i32*, i32, i32) #1

declare dso_local i32 @report_add_sta_event(%struct.adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
