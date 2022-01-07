; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl12xx_update_sta_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl12xx_update_sta_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl12xx_vif = type { i64, i64, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_sta = type { i32, i64 }
%struct.wl1271_station = type { i32, i32 }

@BSS_TYPE_AP_BSS = common dso_local global i64 0, align 8
@BSS_TYPE_STA_BSS = common dso_local global i64 0, align 8
@IEEE80211_STA_NOTEXIST = common dso_local global i32 0, align 4
@IEEE80211_STA_NONE = common dso_local global i32 0, align 4
@IEEE80211_STA_AUTHORIZED = common dso_local global i32 0, align 4
@WLVIF_FLAG_STA_AUTHORIZED = common dso_local global i32 0, align 4
@IEEE80211_STA_ASSOC = common dso_local global i32 0, align 4
@WLVIF_FLAG_STA_STATE_SENT = common dso_local global i32 0, align 4
@IEEE80211_STA_AUTH = common dso_local global i32 0, align 4
@WL12XX_MAX_ROLES = common dso_local global i64 0, align 8
@WL12XX_INVALID_ROLE_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, %struct.wl12xx_vif*, %struct.ieee80211_sta*, i32, i32)* @wl12xx_update_sta_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl12xx_update_sta_state(%struct.wl1271* %0, %struct.wl12xx_vif* %1, %struct.ieee80211_sta* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wl1271*, align 8
  %8 = alloca %struct.wl12xx_vif*, align 8
  %9 = alloca %struct.ieee80211_sta*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.wl1271_station*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %7, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %8, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %17 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @BSS_TYPE_AP_BSS, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %13, align 4
  %22 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %23 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @BSS_TYPE_STA_BSS, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %14, align 4
  %28 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %29 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.wl1271_station*
  store %struct.wl1271_station* %31, %struct.wl1271_station** %12, align 8
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %56

34:                                               ; preds = %5
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @IEEE80211_STA_NOTEXIST, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %56

38:                                               ; preds = %34
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @IEEE80211_STA_NONE, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %38
  %43 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %44 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %45 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %46 = call i32 @wl12xx_sta_add(%struct.wl1271* %43, %struct.wl12xx_vif* %44, %struct.ieee80211_sta* %45)
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %15, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* %15, align 4
  store i32 %50, i32* %6, align 4
  br label %270

51:                                               ; preds = %42
  %52 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %53 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %54 = load %struct.wl1271_station*, %struct.wl1271_station** %12, align 8
  %55 = call i32 @wlcore_update_inconn_sta(%struct.wl1271* %52, %struct.wl12xx_vif* %53, %struct.wl1271_station* %54, i32 1)
  br label %56

56:                                               ; preds = %51, %38, %34, %5
  %57 = load i32, i32* %13, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %76

59:                                               ; preds = %56
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @IEEE80211_STA_NONE, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %59
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* @IEEE80211_STA_NOTEXIST, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %63
  %68 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %69 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %70 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %71 = call i32 @wl12xx_sta_remove(%struct.wl1271* %68, %struct.wl12xx_vif* %69, %struct.ieee80211_sta* %70)
  %72 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %73 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %74 = load %struct.wl1271_station*, %struct.wl1271_station** %12, align 8
  %75 = call i32 @wlcore_update_inconn_sta(%struct.wl1271* %72, %struct.wl12xx_vif* %73, %struct.wl1271_station* %74, i32 0)
  br label %76

76:                                               ; preds = %67, %63, %59, %56
  %77 = load i32, i32* %13, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %123

79:                                               ; preds = %76
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* @IEEE80211_STA_AUTHORIZED, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %123

83:                                               ; preds = %79
  %84 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %85 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %86 = load %struct.wl1271_station*, %struct.wl1271_station** %12, align 8
  %87 = getelementptr inbounds %struct.wl1271_station, %struct.wl1271_station* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @wl12xx_cmd_set_peer_state(%struct.wl1271* %84, %struct.wl12xx_vif* %85, i32 %88)
  store i32 %89, i32* %15, align 4
  %90 = load i32, i32* %15, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %83
  %93 = load i32, i32* %15, align 4
  store i32 %93, i32* %6, align 4
  br label %270

94:                                               ; preds = %83
  %95 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %96 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %97 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %98 = load %struct.wl1271_station*, %struct.wl1271_station** %12, align 8
  %99 = getelementptr inbounds %struct.wl1271_station, %struct.wl1271_station* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @wl12xx_cmd_add_peer(%struct.wl1271* %95, %struct.wl12xx_vif* %96, %struct.ieee80211_sta* %97, i32 %100)
  store i32 %101, i32* %15, align 4
  %102 = load i32, i32* %15, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %94
  %105 = load i32, i32* %15, align 4
  store i32 %105, i32* %6, align 4
  br label %270

106:                                              ; preds = %94
  %107 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %108 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %109 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %108, i32 0, i32 0
  %110 = load %struct.wl1271_station*, %struct.wl1271_station** %12, align 8
  %111 = getelementptr inbounds %struct.wl1271_station, %struct.wl1271_station* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @wl1271_acx_set_ht_capabilities(%struct.wl1271* %107, i32* %109, i32 1, i32 %112)
  store i32 %113, i32* %15, align 4
  %114 = load i32, i32* %15, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %106
  %117 = load i32, i32* %15, align 4
  store i32 %117, i32* %6, align 4
  br label %270

118:                                              ; preds = %106
  %119 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %120 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %121 = load %struct.wl1271_station*, %struct.wl1271_station** %12, align 8
  %122 = call i32 @wlcore_update_inconn_sta(%struct.wl1271* %119, %struct.wl12xx_vif* %120, %struct.wl1271_station* %121, i32 0)
  br label %123

123:                                              ; preds = %118, %79, %76
  %124 = load i32, i32* %14, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %143

126:                                              ; preds = %123
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* @IEEE80211_STA_AUTHORIZED, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %143

130:                                              ; preds = %126
  %131 = load i32, i32* @WLVIF_FLAG_STA_AUTHORIZED, align 4
  %132 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %133 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %132, i32 0, i32 6
  %134 = call i32 @set_bit(i32 %131, i32* %133)
  %135 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %136 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %137 = call i32 @wl12xx_set_authorized(%struct.wl1271* %135, %struct.wl12xx_vif* %136)
  store i32 %137, i32* %15, align 4
  %138 = load i32, i32* %15, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %130
  %141 = load i32, i32* %15, align 4
  store i32 %141, i32* %6, align 4
  br label %270

142:                                              ; preds = %130
  br label %143

143:                                              ; preds = %142, %126, %123
  %144 = load i32, i32* %14, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %163

146:                                              ; preds = %143
  %147 = load i32, i32* %10, align 4
  %148 = load i32, i32* @IEEE80211_STA_AUTHORIZED, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %163

150:                                              ; preds = %146
  %151 = load i32, i32* %11, align 4
  %152 = load i32, i32* @IEEE80211_STA_ASSOC, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %163

154:                                              ; preds = %150
  %155 = load i32, i32* @WLVIF_FLAG_STA_AUTHORIZED, align 4
  %156 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %157 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %156, i32 0, i32 6
  %158 = call i32 @clear_bit(i32 %155, i32* %157)
  %159 = load i32, i32* @WLVIF_FLAG_STA_STATE_SENT, align 4
  %160 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %161 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %160, i32 0, i32 6
  %162 = call i32 @clear_bit(i32 %159, i32* %161)
  br label %163

163:                                              ; preds = %154, %150, %146, %143
  %164 = load i32, i32* %14, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %185

166:                                              ; preds = %163
  %167 = load i32, i32* %10, align 4
  %168 = load i32, i32* @IEEE80211_STA_ASSOC, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %185

170:                                              ; preds = %166
  %171 = load i32, i32* %11, align 4
  %172 = load i32, i32* @IEEE80211_STA_AUTH, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %185

174:                                              ; preds = %170
  %175 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %176 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %177 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %178 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %177, i32 0, i32 5
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %182 = call i32 @wlcore_save_freed_pkts(%struct.wl1271* %175, %struct.wl12xx_vif* %176, i32 %180, %struct.ieee80211_sta* %181)
  %183 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %184 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %183, i32 0, i32 4
  store i32 0, i32* %184, align 8
  br label %185

185:                                              ; preds = %174, %170, %166, %163
  %186 = load i32, i32* %14, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %202

188:                                              ; preds = %185
  %189 = load i32, i32* %10, align 4
  %190 = load i32, i32* @IEEE80211_STA_AUTH, align 4
  %191 = icmp eq i32 %189, %190
  br i1 %191, label %192, label %202

192:                                              ; preds = %188
  %193 = load i32, i32* %11, align 4
  %194 = load i32, i32* @IEEE80211_STA_ASSOC, align 4
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %196, label %202

196:                                              ; preds = %192
  %197 = load %struct.wl1271_station*, %struct.wl1271_station** %12, align 8
  %198 = getelementptr inbounds %struct.wl1271_station, %struct.wl1271_station* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %201 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %200, i32 0, i32 4
  store i32 %199, i32* %201, align 8
  br label %202

202:                                              ; preds = %196, %192, %188, %185
  %203 = load i32, i32* %14, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %229

205:                                              ; preds = %202
  %206 = load i32, i32* %11, align 4
  %207 = load i32, i32* @IEEE80211_STA_AUTHORIZED, align 4
  %208 = icmp eq i32 %206, %207
  br i1 %208, label %213, label %209

209:                                              ; preds = %205
  %210 = load i32, i32* %11, align 4
  %211 = load i32, i32* @IEEE80211_STA_NOTEXIST, align 4
  %212 = icmp eq i32 %210, %211
  br i1 %212, label %213, label %229

213:                                              ; preds = %209, %205
  %214 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %215 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %218 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = call i64 @test_bit(i64 %216, i32 %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %228

222:                                              ; preds = %213
  %223 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %224 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %225 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = call i32 @wl12xx_croc(%struct.wl1271* %223, i64 %226)
  br label %228

228:                                              ; preds = %222, %213
  br label %229

229:                                              ; preds = %228, %209, %202
  %230 = load i32, i32* %14, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %269

232:                                              ; preds = %229
  %233 = load i32, i32* %10, align 4
  %234 = load i32, i32* @IEEE80211_STA_NOTEXIST, align 4
  %235 = icmp eq i32 %233, %234
  br i1 %235, label %236, label %269

236:                                              ; preds = %232
  %237 = load i32, i32* %11, align 4
  %238 = load i32, i32* @IEEE80211_STA_NONE, align 4
  %239 = icmp eq i32 %237, %238
  br i1 %239, label %240, label %269

240:                                              ; preds = %236
  %241 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %242 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = load i64, i64* @WL12XX_MAX_ROLES, align 8
  %245 = call i64 @find_first_bit(i32 %243, i64 %244)
  %246 = load i64, i64* @WL12XX_MAX_ROLES, align 8
  %247 = icmp sge i64 %245, %246
  br i1 %247, label %248, label %268

248:                                              ; preds = %240
  %249 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %250 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %249, i32 0, i32 1
  %251 = load i64, i64* %250, align 8
  %252 = load i64, i64* @WL12XX_INVALID_ROLE_ID, align 8
  %253 = icmp eq i64 %251, %252
  %254 = zext i1 %253 to i32
  %255 = call i32 @WARN_ON(i32 %254)
  %256 = load %struct.wl1271*, %struct.wl1271** %7, align 8
  %257 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %258 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %259 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %258, i32 0, i32 1
  %260 = load i64, i64* %259, align 8
  %261 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %262 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %8, align 8
  %265 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 8
  %267 = call i32 @wl12xx_roc(%struct.wl1271* %256, %struct.wl12xx_vif* %257, i64 %260, i32 %263, i32 %266)
  br label %268

268:                                              ; preds = %248, %240
  br label %269

269:                                              ; preds = %268, %236, %232, %229
  store i32 0, i32* %6, align 4
  br label %270

270:                                              ; preds = %269, %140, %116, %104, %92, %49
  %271 = load i32, i32* %6, align 4
  ret i32 %271
}

declare dso_local i32 @wl12xx_sta_add(%struct.wl1271*, %struct.wl12xx_vif*, %struct.ieee80211_sta*) #1

declare dso_local i32 @wlcore_update_inconn_sta(%struct.wl1271*, %struct.wl12xx_vif*, %struct.wl1271_station*, i32) #1

declare dso_local i32 @wl12xx_sta_remove(%struct.wl1271*, %struct.wl12xx_vif*, %struct.ieee80211_sta*) #1

declare dso_local i32 @wl12xx_cmd_set_peer_state(%struct.wl1271*, %struct.wl12xx_vif*, i32) #1

declare dso_local i32 @wl12xx_cmd_add_peer(%struct.wl1271*, %struct.wl12xx_vif*, %struct.ieee80211_sta*, i32) #1

declare dso_local i32 @wl1271_acx_set_ht_capabilities(%struct.wl1271*, i32*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @wl12xx_set_authorized(%struct.wl1271*, %struct.wl12xx_vif*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @wlcore_save_freed_pkts(%struct.wl1271*, %struct.wl12xx_vif*, i32, %struct.ieee80211_sta*) #1

declare dso_local i64 @test_bit(i64, i32) #1

declare dso_local i32 @wl12xx_croc(%struct.wl1271*, i64) #1

declare dso_local i64 @find_first_bit(i32, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @wl12xx_roc(%struct.wl1271*, %struct.wl12xx_vif*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
