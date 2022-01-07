; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_main.c_wl1251_op_bss_info_changed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_main.c_wl1251_op_bss_info_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.wl1251* }
%struct.wl1251 = type { i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_bss_conf = type { i32, i64, i32*, i64, i64, i64, i32, i32, i32, i32 }
%struct.sk_buff = type { i32, i32 }

@DEBUG_MAC80211 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"mac80211 bss info changed\00", align 1
@BSS_CHANGED_CQM = common dso_local global i32 0, align 4
@WL1251_DEFAULT_LOW_RSSI_WEIGHT = common dso_local global i32 0, align 4
@WL1251_DEFAULT_LOW_RSSI_DEPTH = common dso_local global i32 0, align 4
@WL1251_ACX_LOW_RSSI_TYPE_EDGE = common dso_local global i32 0, align 4
@BSS_CHANGED_BSSID = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@BSS_CHANGED_ASSOC = common dso_local global i32 0, align 4
@CMD_PS_POLL = common dso_local global i32 0, align 4
@WL1251_DEFAULT_BEACON_INT = common dso_local global i32 0, align 4
@WL1251_DEFAULT_DTIM_PERIOD = common dso_local global i32 0, align 4
@BSS_CHANGED_ERP_SLOT = common dso_local global i32 0, align 4
@SLOT_TIME_SHORT = common dso_local global i32 0, align 4
@SLOT_TIME_LONG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Set slot time failed %d\00", align 1
@BSS_CHANGED_ERP_PREAMBLE = common dso_local global i32 0, align 4
@ACX_PREAMBLE_SHORT = common dso_local global i32 0, align 4
@ACX_PREAMBLE_LONG = common dso_local global i32 0, align 4
@BSS_CHANGED_ERP_CTS_PROT = common dso_local global i32 0, align 4
@CTSPROTECT_ENABLE = common dso_local global i32 0, align 4
@CTSPROTECT_DISABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Set ctsprotect failed %d\00", align 1
@BSS_CHANGED_ARP_FILTER = common dso_local global i32 0, align 4
@BSS_TYPE_STA_BSS = common dso_local global i64 0, align 8
@BSS_CHANGED_BEACON = common dso_local global i32 0, align 4
@CMD_BEACON = common dso_local global i32 0, align 4
@CMD_PROBE_RESP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_bss_conf*, i32)* @wl1251_op_bss_info_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wl1251_op_bss_info_changed(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_bss_conf* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.ieee80211_bss_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.wl1251*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.ieee80211_bss_conf* %2, %struct.ieee80211_bss_conf** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %16 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %15, i32 0, i32 0
  %17 = load %struct.wl1251*, %struct.wl1251** %16, align 8
  store %struct.wl1251* %17, %struct.wl1251** %9, align 8
  %18 = load i32, i32* @DEBUG_MAC80211, align 4
  %19 = call i32 @wl1251_debug(i32 %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %21 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %20, i32 0, i32 1
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %24 = call i32 @wl1251_ps_elp_wakeup(%struct.wl1251* %23)
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %13, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  br label %343

28:                                               ; preds = %4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @BSS_CHANGED_CQM, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %28
  %34 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %35 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %36 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %35, i32 0, i32 9
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @WL1251_DEFAULT_LOW_RSSI_WEIGHT, align 4
  %39 = load i32, i32* @WL1251_DEFAULT_LOW_RSSI_DEPTH, align 4
  %40 = load i32, i32* @WL1251_ACX_LOW_RSSI_TYPE_EDGE, align 4
  %41 = call i32 @wl1251_acx_low_rssi(%struct.wl1251* %34, i32 %37, i32 %38, i32 %39, i32 %40)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %33
  br label %343

45:                                               ; preds = %33
  %46 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %47 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %46, i32 0, i32 9
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %50 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %49, i32 0, i32 8
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %45, %28
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @BSS_CHANGED_BSSID, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %112

56:                                               ; preds = %51
  %57 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %58 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %57, i32 0, i32 7
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %61 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %60, i32 0, i32 8
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @ETH_ALEN, align 4
  %64 = call i64 @memcmp(i32 %59, i32 %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %112

66:                                               ; preds = %56
  %67 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %68 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %67, i32 0, i32 7
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %71 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %70, i32 0, i32 8
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @ETH_ALEN, align 4
  %74 = call i32 @memcpy(i32 %69, i32 %72, i32 %73)
  %75 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %76 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %75, i32 0, i32 7
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @is_zero_ether_addr(i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %111, label %80

80:                                               ; preds = %66
  %81 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %82 = call i32 @wl1251_build_null_data(%struct.wl1251* %81)
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* %13, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %340

86:                                               ; preds = %80
  %87 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %88 = call i32 @wl1251_build_qos_null_data(%struct.wl1251* %87)
  store i32 %88, i32* %13, align 4
  %89 = load i32, i32* %13, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %340

92:                                               ; preds = %86
  %93 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %94 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %95 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %98 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %101 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %104 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @wl1251_join(%struct.wl1251* %93, i64 %96, i32 %99, i32 %102, i32 %105)
  store i32 %106, i32* %13, align 4
  %107 = load i32, i32* %13, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %92
  br label %340

110:                                              ; preds = %92
  br label %111

111:                                              ; preds = %110, %66
  br label %112

112:                                              ; preds = %111, %56, %51
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* @BSS_CHANGED_ASSOC, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %171

117:                                              ; preds = %112
  %118 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %119 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %163

122:                                              ; preds = %117
  %123 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %124 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %123, i32 0, i32 7
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %127 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %126, i32 0, i32 3
  store i32 %125, i32* %127, align 8
  %128 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %129 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %128, i32 0, i32 6
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %132 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 8
  %134 = call %struct.sk_buff* @ieee80211_pspoll_get(i32 %130, i32 %133)
  store %struct.sk_buff* %134, %struct.sk_buff** %11, align 8
  %135 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %136 = icmp ne %struct.sk_buff* %135, null
  br i1 %136, label %138, label %137

137:                                              ; preds = %122
  br label %340

138:                                              ; preds = %122
  %139 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %140 = load i32, i32* @CMD_PS_POLL, align 4
  %141 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %142 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %145 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @wl1251_cmd_template_set(%struct.wl1251* %139, i32 %140, i32 %143, i32 %146)
  store i32 %147, i32* %13, align 4
  %148 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %149 = call i32 @dev_kfree_skb(%struct.sk_buff* %148)
  %150 = load i32, i32* %13, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %138
  br label %340

153:                                              ; preds = %138
  %154 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %155 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %156 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %155, i32 0, i32 6
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @wl1251_acx_aid(%struct.wl1251* %154, i32 %157)
  store i32 %158, i32* %13, align 4
  %159 = load i32, i32* %13, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %153
  br label %340

162:                                              ; preds = %153
  br label %170

163:                                              ; preds = %117
  %164 = load i32, i32* @WL1251_DEFAULT_BEACON_INT, align 4
  %165 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %166 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %165, i32 0, i32 3
  store i32 %164, i32* %166, align 8
  %167 = load i32, i32* @WL1251_DEFAULT_DTIM_PERIOD, align 4
  %168 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %169 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %168, i32 0, i32 2
  store i32 %167, i32* %169, align 4
  br label %170

170:                                              ; preds = %163, %162
  br label %171

171:                                              ; preds = %170, %112
  %172 = load i32, i32* %8, align 4
  %173 = load i32, i32* @BSS_CHANGED_ERP_SLOT, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %196

176:                                              ; preds = %171
  %177 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %178 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %177, i32 0, i32 5
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %176
  %182 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %183 = load i32, i32* @SLOT_TIME_SHORT, align 4
  %184 = call i32 @wl1251_acx_slot(%struct.wl1251* %182, i32 %183)
  store i32 %184, i32* %13, align 4
  br label %189

185:                                              ; preds = %176
  %186 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %187 = load i32, i32* @SLOT_TIME_LONG, align 4
  %188 = call i32 @wl1251_acx_slot(%struct.wl1251* %186, i32 %187)
  store i32 %188, i32* %13, align 4
  br label %189

189:                                              ; preds = %185, %181
  %190 = load i32, i32* %13, align 4
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %192, label %195

192:                                              ; preds = %189
  %193 = load i32, i32* %13, align 4
  %194 = call i32 @wl1251_warning(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %193)
  br label %340

195:                                              ; preds = %189
  br label %196

196:                                              ; preds = %195, %171
  %197 = load i32, i32* %8, align 4
  %198 = load i32, i32* @BSS_CHANGED_ERP_PREAMBLE, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %215

201:                                              ; preds = %196
  %202 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %203 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %202, i32 0, i32 4
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %201
  %207 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %208 = load i32, i32* @ACX_PREAMBLE_SHORT, align 4
  %209 = call i32 @wl1251_acx_set_preamble(%struct.wl1251* %207, i32 %208)
  br label %214

210:                                              ; preds = %201
  %211 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %212 = load i32, i32* @ACX_PREAMBLE_LONG, align 4
  %213 = call i32 @wl1251_acx_set_preamble(%struct.wl1251* %211, i32 %212)
  br label %214

214:                                              ; preds = %210, %206
  br label %215

215:                                              ; preds = %214, %196
  %216 = load i32, i32* %8, align 4
  %217 = load i32, i32* @BSS_CHANGED_ERP_CTS_PROT, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %240

220:                                              ; preds = %215
  %221 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %222 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %221, i32 0, i32 3
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %229

225:                                              ; preds = %220
  %226 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %227 = load i32, i32* @CTSPROTECT_ENABLE, align 4
  %228 = call i32 @wl1251_acx_cts_protect(%struct.wl1251* %226, i32 %227)
  store i32 %228, i32* %13, align 4
  br label %233

229:                                              ; preds = %220
  %230 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %231 = load i32, i32* @CTSPROTECT_DISABLE, align 4
  %232 = call i32 @wl1251_acx_cts_protect(%struct.wl1251* %230, i32 %231)
  store i32 %232, i32* %13, align 4
  br label %233

233:                                              ; preds = %229, %225
  %234 = load i32, i32* %13, align 4
  %235 = icmp slt i32 %234, 0
  br i1 %235, label %236, label %239

236:                                              ; preds = %233
  %237 = load i32, i32* %13, align 4
  %238 = call i32 @wl1251_warning(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %237)
  br label %340

239:                                              ; preds = %233
  br label %240

240:                                              ; preds = %239, %215
  %241 = load i32, i32* %8, align 4
  %242 = load i32, i32* @BSS_CHANGED_ARP_FILTER, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %278

245:                                              ; preds = %240
  %246 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %247 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %246, i32 0, i32 2
  %248 = load i32*, i32** %247, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 0
  %250 = load i32, i32* %249, align 4
  store i32 %250, i32* %14, align 4
  %251 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %252 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = load i64, i64* @BSS_TYPE_STA_BSS, align 8
  %255 = icmp ne i64 %253, %254
  %256 = zext i1 %255 to i32
  %257 = call i32 @WARN_ON(i32 %256)
  %258 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %259 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = icmp eq i32 %260, 1
  br i1 %261, label %262, label %267

262:                                              ; preds = %245
  %263 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %264 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %263, i32 0, i32 1
  %265 = load i64, i64* %264, align 8
  %266 = icmp ne i64 %265, 0
  br label %267

267:                                              ; preds = %262, %245
  %268 = phi i1 [ false, %245 ], [ %266, %262 ]
  %269 = zext i1 %268 to i32
  store i32 %269, i32* %12, align 4
  %270 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %271 = load i32, i32* %12, align 4
  %272 = load i32, i32* %14, align 4
  %273 = call i32 @wl1251_acx_arp_ip_filter(%struct.wl1251* %270, i32 %271, i32 %272)
  store i32 %273, i32* %13, align 4
  %274 = load i32, i32* %13, align 4
  %275 = icmp slt i32 %274, 0
  br i1 %275, label %276, label %277

276:                                              ; preds = %267
  br label %340

277:                                              ; preds = %267
  br label %278

278:                                              ; preds = %277, %240
  %279 = load i32, i32* %8, align 4
  %280 = load i32, i32* @BSS_CHANGED_BEACON, align 4
  %281 = and i32 %279, %280
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %339

283:                                              ; preds = %278
  %284 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %285 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %286 = call %struct.sk_buff* @ieee80211_beacon_get(%struct.ieee80211_hw* %284, %struct.ieee80211_vif* %285)
  store %struct.sk_buff* %286, %struct.sk_buff** %10, align 8
  %287 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %288 = icmp ne %struct.sk_buff* %287, null
  br i1 %288, label %290, label %289

289:                                              ; preds = %283
  br label %340

290:                                              ; preds = %283
  %291 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %292 = load i32, i32* @CMD_BEACON, align 4
  %293 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %294 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 4
  %296 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %297 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = call i32 @wl1251_cmd_template_set(%struct.wl1251* %291, i32 %292, i32 %295, i32 %298)
  store i32 %299, i32* %13, align 4
  %300 = load i32, i32* %13, align 4
  %301 = icmp slt i32 %300, 0
  br i1 %301, label %302, label %305

302:                                              ; preds = %290
  %303 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %304 = call i32 @dev_kfree_skb(%struct.sk_buff* %303)
  br label %340

305:                                              ; preds = %290
  %306 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %307 = load i32, i32* @CMD_PROBE_RESP, align 4
  %308 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %309 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 4
  %311 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %312 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 4
  %314 = call i32 @wl1251_cmd_template_set(%struct.wl1251* %306, i32 %307, i32 %310, i32 %313)
  store i32 %314, i32* %13, align 4
  %315 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %316 = call i32 @dev_kfree_skb(%struct.sk_buff* %315)
  %317 = load i32, i32* %13, align 4
  %318 = icmp slt i32 %317, 0
  br i1 %318, label %319, label %320

319:                                              ; preds = %305
  br label %340

320:                                              ; preds = %305
  %321 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %322 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %323 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %322, i32 0, i32 0
  %324 = load i64, i64* %323, align 8
  %325 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %326 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %325, i32 0, i32 4
  %327 = load i32, i32* %326, align 4
  %328 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %329 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %328, i32 0, i32 3
  %330 = load i32, i32* %329, align 8
  %331 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %332 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %331, i32 0, i32 2
  %333 = load i32, i32* %332, align 4
  %334 = call i32 @wl1251_join(%struct.wl1251* %321, i64 %324, i32 %327, i32 %330, i32 %333)
  store i32 %334, i32* %13, align 4
  %335 = load i32, i32* %13, align 4
  %336 = icmp slt i32 %335, 0
  br i1 %336, label %337, label %338

337:                                              ; preds = %320
  br label %340

338:                                              ; preds = %320
  br label %339

339:                                              ; preds = %338, %278
  br label %340

340:                                              ; preds = %339, %337, %319, %302, %289, %276, %236, %192, %161, %152, %137, %109, %91, %85
  %341 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %342 = call i32 @wl1251_ps_elp_sleep(%struct.wl1251* %341)
  br label %343

343:                                              ; preds = %340, %44, %27
  %344 = load %struct.wl1251*, %struct.wl1251** %9, align 8
  %345 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %344, i32 0, i32 1
  %346 = call i32 @mutex_unlock(i32* %345)
  ret void
}

declare dso_local i32 @wl1251_debug(i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wl1251_ps_elp_wakeup(%struct.wl1251*) #1

declare dso_local i32 @wl1251_acx_low_rssi(%struct.wl1251*, i32, i32, i32, i32) #1

declare dso_local i64 @memcmp(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @is_zero_ether_addr(i32) #1

declare dso_local i32 @wl1251_build_null_data(%struct.wl1251*) #1

declare dso_local i32 @wl1251_build_qos_null_data(%struct.wl1251*) #1

declare dso_local i32 @wl1251_join(%struct.wl1251*, i64, i32, i32, i32) #1

declare dso_local %struct.sk_buff* @ieee80211_pspoll_get(i32, i32) #1

declare dso_local i32 @wl1251_cmd_template_set(%struct.wl1251*, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @wl1251_acx_aid(%struct.wl1251*, i32) #1

declare dso_local i32 @wl1251_acx_slot(%struct.wl1251*, i32) #1

declare dso_local i32 @wl1251_warning(i8*, i32) #1

declare dso_local i32 @wl1251_acx_set_preamble(%struct.wl1251*, i32) #1

declare dso_local i32 @wl1251_acx_cts_protect(%struct.wl1251*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @wl1251_acx_arp_ip_filter(%struct.wl1251*, i32, i32) #1

declare dso_local %struct.sk_buff* @ieee80211_beacon_get(%struct.ieee80211_hw*, %struct.ieee80211_vif*) #1

declare dso_local i32 @wl1251_ps_elp_sleep(%struct.wl1251*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
