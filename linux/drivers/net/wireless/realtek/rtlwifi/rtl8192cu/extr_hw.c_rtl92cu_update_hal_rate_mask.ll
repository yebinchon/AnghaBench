; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_hw.c_rtl92cu_update_hal_rate_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_hw.c_rtl92cu_update_hal_rate_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_sta = type { i64, i32, i32*, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.rtl_priv = type { %struct.TYPE_6__, i32, %struct.rtl_phy }
%struct.TYPE_6__ = type { i32 }
%struct.rtl_phy = type { i32 }
%struct.rtl_mac = type { i64, i32 }
%struct.rtl_hal = type { i64 }
%struct.rtl_sta_info = type { i32, i32 }

@IEEE80211_STA_RX_BW_40 = common dso_local global i64 0, align 8
@IEEE80211_HT_CAP_SGI_40 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_20 = common dso_local global i32 0, align 4
@IEEE80211_SMPS_OFF = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@NL80211_IFTYPE_MESH_POINT = common dso_local global i64 0, align 8
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@BAND_ON_5G = common dso_local global i64 0, align 8
@RATR_INX_WIRELESS_B = common dso_local global i32 0, align 4
@RATR_INX_WIRELESS_GB = common dso_local global i32 0, align 4
@RATR_INX_WIRELESS_A = common dso_local global i32 0, align 4
@RATR_INX_WIRELESS_NGB = common dso_local global i32 0, align 4
@IEEE80211_SMPS_STATIC = common dso_local global i32 0, align 4
@RF_1T2R = common dso_local global i32 0, align 4
@RF_1T1R = common dso_local global i32 0, align 4
@COMP_RATR = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"ratr_bitmap :%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Rate_index:%x, ratr_val:%x, %5phC\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_sta*, i32, i32)* @rtl92cu_update_hal_rate_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl92cu_update_hal_rate_mask(%struct.ieee80211_hw* %0, %struct.ieee80211_sta* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_sta*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rtl_priv*, align 8
  %10 = alloca %struct.rtl_phy*, align 8
  %11 = alloca %struct.rtl_mac*, align 8
  %12 = alloca %struct.rtl_hal*, align 8
  %13 = alloca %struct.rtl_sta_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca [5 x i32], align 16
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %24 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %25 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %24)
  store %struct.rtl_priv* %25, %struct.rtl_priv** %9, align 8
  %26 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %27 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %26, i32 0, i32 2
  store %struct.rtl_phy* %27, %struct.rtl_phy** %10, align 8
  %28 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %29 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %28)
  %30 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %29)
  store %struct.rtl_mac* %30, %struct.rtl_mac** %11, align 8
  %31 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %32 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %31)
  %33 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %32)
  store %struct.rtl_hal* %33, %struct.rtl_hal** %12, align 8
  store %struct.rtl_sta_info* null, %struct.rtl_sta_info** %13, align 8
  %34 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %35 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @IEEE80211_STA_RX_BW_40, align 8
  %38 = icmp sge i64 %36, %37
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i32 1, i32 0
  store i32 %40, i32* %16, align 4
  %41 = load i32, i32* %16, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %4
  %44 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %45 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @IEEE80211_HT_CAP_SGI_40, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br label %51

51:                                               ; preds = %43, %4
  %52 = phi i1 [ false, %4 ], [ %50, %43 ]
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 1, i32 0
  store i32 %54, i32* %17, align 4
  %55 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %56 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @IEEE80211_HT_CAP_SGI_20, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 1, i32 0
  store i32 %63, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %22, align 4
  %64 = load i32, i32* @IEEE80211_SMPS_OFF, align 4
  store i32 %64, i32* %23, align 4
  %65 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %66 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to %struct.rtl_sta_info*
  store %struct.rtl_sta_info* %68, %struct.rtl_sta_info** %13, align 8
  %69 = load %struct.rtl_sta_info*, %struct.rtl_sta_info** %13, align 8
  %70 = getelementptr inbounds %struct.rtl_sta_info, %struct.rtl_sta_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %19, align 4
  %72 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %73 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %83, label %77

77:                                               ; preds = %51
  %78 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %79 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @NL80211_IFTYPE_MESH_POINT, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %77, %51
  %84 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %85 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  store i32 %86, i32* %16, align 4
  br label %105

87:                                               ; preds = %77
  %88 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %89 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %99, label %93

93:                                               ; preds = %87
  %94 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %95 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %93, %87
  %100 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %101 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %22, align 4
  br label %104

104:                                              ; preds = %99, %93
  br label %105

105:                                              ; preds = %104, %83
  %106 = load %struct.rtl_hal*, %struct.rtl_hal** %12, align 8
  %107 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @BAND_ON_5G, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %118

111:                                              ; preds = %105
  %112 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %113 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %112, i32 0, i32 2
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 1
  %116 = load i32, i32* %115, align 4
  %117 = shl i32 %116, 4
  store i32 %117, i32* %14, align 4
  br label %124

118:                                              ; preds = %105
  %119 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %120 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %119, i32 0, i32 2
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 0
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %14, align 4
  br label %124

124:                                              ; preds = %118, %111
  %125 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %126 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %124
  store i32 4095, i32* %14, align 4
  br label %131

131:                                              ; preds = %130, %124
  %132 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %133 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %132, i32 0, i32 3
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 1
  %138 = load i32, i32* %137, align 4
  %139 = shl i32 %138, 20
  %140 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %141 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %140, i32 0, i32 3
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 0
  %146 = load i32, i32* %145, align 4
  %147 = shl i32 %146, 12
  %148 = or i32 %139, %147
  %149 = load i32, i32* %14, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %14, align 4
  %151 = load i32, i32* %19, align 4
  switch i32 %151, label %320 [
    i32 131, label %152
    i32 130, label %164
    i32 132, label %182
    i32 129, label %186
    i32 128, label %186
  ]

152:                                              ; preds = %131
  %153 = load i32, i32* @RATR_INX_WIRELESS_B, align 4
  store i32 %153, i32* %15, align 4
  %154 = load i32, i32* %14, align 4
  %155 = and i32 %154, 12
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %152
  %158 = load i32, i32* %14, align 4
  %159 = and i32 %158, 13
  store i32 %159, i32* %14, align 4
  br label %163

160:                                              ; preds = %152
  %161 = load i32, i32* %14, align 4
  %162 = and i32 %161, 15
  store i32 %162, i32* %14, align 4
  br label %163

163:                                              ; preds = %160, %157
  br label %334

164:                                              ; preds = %131
  %165 = load i32, i32* @RATR_INX_WIRELESS_GB, align 4
  store i32 %165, i32* %15, align 4
  %166 = load i32, i32* %7, align 4
  %167 = icmp eq i32 %166, 1
  br i1 %167, label %168, label %171

168:                                              ; preds = %164
  %169 = load i32, i32* %14, align 4
  %170 = and i32 %169, 3840
  store i32 %170, i32* %14, align 4
  br label %181

171:                                              ; preds = %164
  %172 = load i32, i32* %7, align 4
  %173 = icmp eq i32 %172, 2
  br i1 %173, label %174, label %177

174:                                              ; preds = %171
  %175 = load i32, i32* %14, align 4
  %176 = and i32 %175, 4080
  store i32 %176, i32* %14, align 4
  br label %180

177:                                              ; preds = %171
  %178 = load i32, i32* %14, align 4
  %179 = and i32 %178, 4085
  store i32 %179, i32* %14, align 4
  br label %180

180:                                              ; preds = %177, %174
  br label %181

181:                                              ; preds = %180, %168
  br label %334

182:                                              ; preds = %131
  %183 = load i32, i32* @RATR_INX_WIRELESS_A, align 4
  store i32 %183, i32* %15, align 4
  %184 = load i32, i32* %14, align 4
  %185 = and i32 %184, 4080
  store i32 %185, i32* %14, align 4
  br label %334

186:                                              ; preds = %131, %131
  %187 = load i32, i32* @RATR_INX_WIRELESS_NGB, align 4
  store i32 %187, i32* %15, align 4
  %188 = load i32, i32* %23, align 4
  %189 = load i32, i32* @IEEE80211_SMPS_STATIC, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %208

191:                                              ; preds = %186
  %192 = load i32, i32* %7, align 4
  %193 = icmp eq i32 %192, 1
  br i1 %193, label %194, label %197

194:                                              ; preds = %191
  %195 = load i32, i32* %14, align 4
  %196 = and i32 %195, 458752
  store i32 %196, i32* %14, align 4
  br label %207

197:                                              ; preds = %191
  %198 = load i32, i32* %7, align 4
  %199 = icmp eq i32 %198, 2
  br i1 %199, label %200, label %203

200:                                              ; preds = %197
  %201 = load i32, i32* %14, align 4
  %202 = and i32 %201, 520192
  store i32 %202, i32* %14, align 4
  br label %206

203:                                              ; preds = %197
  %204 = load i32, i32* %14, align 4
  %205 = and i32 %204, 520197
  store i32 %205, i32* %14, align 4
  br label %206

206:                                              ; preds = %203, %200
  br label %207

207:                                              ; preds = %206, %194
  br label %297

208:                                              ; preds = %186
  %209 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %210 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @RF_1T2R, align 4
  %213 = icmp eq i32 %211, %212
  br i1 %213, label %220, label %214

214:                                              ; preds = %208
  %215 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %216 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* @RF_1T1R, align 4
  %219 = icmp eq i32 %217, %218
  br i1 %219, label %220, label %258

220:                                              ; preds = %214, %208
  %221 = load i32, i32* %16, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %240

223:                                              ; preds = %220
  %224 = load i32, i32* %7, align 4
  %225 = icmp eq i32 %224, 1
  br i1 %225, label %226, label %229

226:                                              ; preds = %223
  %227 = load i32, i32* %14, align 4
  %228 = and i32 %227, 983040
  store i32 %228, i32* %14, align 4
  br label %239

229:                                              ; preds = %223
  %230 = load i32, i32* %7, align 4
  %231 = icmp eq i32 %230, 2
  br i1 %231, label %232, label %235

232:                                              ; preds = %229
  %233 = load i32, i32* %14, align 4
  %234 = and i32 %233, 1044480
  store i32 %234, i32* %14, align 4
  br label %238

235:                                              ; preds = %229
  %236 = load i32, i32* %14, align 4
  %237 = and i32 %236, 1044501
  store i32 %237, i32* %14, align 4
  br label %238

238:                                              ; preds = %235, %232
  br label %239

239:                                              ; preds = %238, %226
  br label %257

240:                                              ; preds = %220
  %241 = load i32, i32* %7, align 4
  %242 = icmp eq i32 %241, 1
  br i1 %242, label %243, label %246

243:                                              ; preds = %240
  %244 = load i32, i32* %14, align 4
  %245 = and i32 %244, 983040
  store i32 %245, i32* %14, align 4
  br label %256

246:                                              ; preds = %240
  %247 = load i32, i32* %7, align 4
  %248 = icmp eq i32 %247, 2
  br i1 %248, label %249, label %252

249:                                              ; preds = %246
  %250 = load i32, i32* %14, align 4
  %251 = and i32 %250, 1044480
  store i32 %251, i32* %14, align 4
  br label %255

252:                                              ; preds = %246
  %253 = load i32, i32* %14, align 4
  %254 = and i32 %253, 1044485
  store i32 %254, i32* %14, align 4
  br label %255

255:                                              ; preds = %252, %249
  br label %256

256:                                              ; preds = %255, %243
  br label %257

257:                                              ; preds = %256, %239
  br label %296

258:                                              ; preds = %214
  %259 = load i32, i32* %16, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %278

261:                                              ; preds = %258
  %262 = load i32, i32* %7, align 4
  %263 = icmp eq i32 %262, 1
  br i1 %263, label %264, label %267

264:                                              ; preds = %261
  %265 = load i32, i32* %14, align 4
  %266 = and i32 %265, 252641280
  store i32 %266, i32* %14, align 4
  br label %277

267:                                              ; preds = %261
  %268 = load i32, i32* %7, align 4
  %269 = icmp eq i32 %268, 2
  br i1 %269, label %270, label %273

270:                                              ; preds = %267
  %271 = load i32, i32* %14, align 4
  %272 = and i32 %271, 252702720
  store i32 %272, i32* %14, align 4
  br label %276

273:                                              ; preds = %267
  %274 = load i32, i32* %14, align 4
  %275 = and i32 %274, 252702741
  store i32 %275, i32* %14, align 4
  br label %276

276:                                              ; preds = %273, %270
  br label %277

277:                                              ; preds = %276, %264
  br label %295

278:                                              ; preds = %258
  %279 = load i32, i32* %7, align 4
  %280 = icmp eq i32 %279, 1
  br i1 %280, label %281, label %284

281:                                              ; preds = %278
  %282 = load i32, i32* %14, align 4
  %283 = and i32 %282, 252641280
  store i32 %283, i32* %14, align 4
  br label %294

284:                                              ; preds = %278
  %285 = load i32, i32* %7, align 4
  %286 = icmp eq i32 %285, 2
  br i1 %286, label %287, label %290

287:                                              ; preds = %284
  %288 = load i32, i32* %14, align 4
  %289 = and i32 %288, 252702720
  store i32 %289, i32* %14, align 4
  br label %293

290:                                              ; preds = %284
  %291 = load i32, i32* %14, align 4
  %292 = and i32 %291, 252702725
  store i32 %292, i32* %14, align 4
  br label %293

293:                                              ; preds = %290, %287
  br label %294

294:                                              ; preds = %293, %281
  br label %295

295:                                              ; preds = %294, %277
  br label %296

296:                                              ; preds = %295, %257
  br label %297

297:                                              ; preds = %296, %207
  %298 = load i32, i32* %16, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %303

300:                                              ; preds = %297
  %301 = load i32, i32* %17, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %309, label %303

303:                                              ; preds = %300, %297
  %304 = load i32, i32* %16, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %319, label %306

306:                                              ; preds = %303
  %307 = load i32, i32* %18, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %319

309:                                              ; preds = %306, %300
  %310 = load i32, i32* %22, align 4
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %312, label %313

312:                                              ; preds = %309
  store i32 1, i32* %20, align 4
  br label %318

313:                                              ; preds = %309
  %314 = load i32, i32* %22, align 4
  %315 = icmp eq i32 %314, 1
  br i1 %315, label %316, label %317

316:                                              ; preds = %313
  store i32 0, i32* %20, align 4
  br label %317

317:                                              ; preds = %316, %313
  br label %318

318:                                              ; preds = %317, %312
  br label %319

319:                                              ; preds = %318, %306, %303
  br label %334

320:                                              ; preds = %131
  %321 = load i32, i32* @RATR_INX_WIRELESS_NGB, align 4
  store i32 %321, i32* %15, align 4
  %322 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %323 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 4
  %325 = load i32, i32* @RF_1T2R, align 4
  %326 = icmp eq i32 %324, %325
  br i1 %326, label %327, label %330

327:                                              ; preds = %320
  %328 = load i32, i32* %14, align 4
  %329 = and i32 %328, 1044735
  store i32 %329, i32* %14, align 4
  br label %333

330:                                              ; preds = %320
  %331 = load i32, i32* %14, align 4
  %332 = and i32 %331, 252702975
  store i32 %332, i32* %14, align 4
  br label %333

333:                                              ; preds = %330, %327
  br label %334

334:                                              ; preds = %333, %319, %182, %181, %163
  %335 = load i32, i32* %15, align 4
  %336 = load %struct.rtl_sta_info*, %struct.rtl_sta_info** %13, align 8
  %337 = getelementptr inbounds %struct.rtl_sta_info, %struct.rtl_sta_info* %336, i32 0, i32 1
  store i32 %335, i32* %337, align 4
  %338 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %339 = load i32, i32* @COMP_RATR, align 4
  %340 = load i32, i32* @DBG_DMESG, align 4
  %341 = load i32, i32* %14, align 4
  %342 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, ...) @RT_TRACE(%struct.rtl_priv* %338, i32 %339, i32 %340, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %341)
  %343 = load i32, i32* %14, align 4
  %344 = and i32 %343, 268435455
  %345 = load i32, i32* %15, align 4
  %346 = shl i32 %345, 28
  %347 = or i32 %344, %346
  %348 = bitcast [5 x i32]* %21 to i32*
  store i32 %347, i32* %348, align 16
  %349 = load i32, i32* %22, align 4
  %350 = load i32, i32* %20, align 4
  %351 = icmp ne i32 %350, 0
  %352 = zext i1 %351 to i64
  %353 = select i1 %351, i32 32, i32 0
  %354 = or i32 %349, %353
  %355 = or i32 %354, 128
  %356 = getelementptr inbounds [5 x i32], [5 x i32]* %21, i64 0, i64 4
  store i32 %355, i32* %356, align 16
  %357 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %358 = load i32, i32* @COMP_RATR, align 4
  %359 = load i32, i32* @DBG_DMESG, align 4
  %360 = load i32, i32* %15, align 4
  %361 = load i32, i32* %14, align 4
  %362 = getelementptr inbounds [5 x i32], [5 x i32]* %21, i64 0, i64 0
  %363 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, ...) @RT_TRACE(%struct.rtl_priv* %357, i32 %358, i32 %359, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %360, i32 %361, i32* %362)
  %364 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %365 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %364, i32 0, i32 1
  %366 = load i32, i32* %365, align 4
  %367 = getelementptr inbounds [5 x i32], [5 x i32]* %21, i64 0, i64 0
  %368 = call i32 @memcpy(i32 %366, i32* %367, i32 5)
  %369 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %370 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %369, i32 0, i32 0
  %371 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %370, i32 0, i32 0
  %372 = call i32 @schedule_work(i32* %371)
  %373 = load i32, i32* %22, align 4
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %379

375:                                              ; preds = %334
  %376 = load i32, i32* %15, align 4
  %377 = load %struct.rtl_sta_info*, %struct.rtl_sta_info** %13, align 8
  %378 = getelementptr inbounds %struct.rtl_sta_info, %struct.rtl_sta_info* %377, i32 0, i32 1
  store i32 %376, i32* %378, align 4
  br label %379

379:                                              ; preds = %375, %334
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32, ...) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
