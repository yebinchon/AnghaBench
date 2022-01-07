; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ce/extr_hw.c_rtl92ce_update_hal_rate_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ce/extr_hw.c_rtl92ce_update_hal_rate_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_sta = type { i32, i32*, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i32 }
%struct.rtl_mac = type { i64, i32 }
%struct.rtl_hal = type { i64 }
%struct.rtl_sta_info = type { i32, i32 }

@IEEE80211_HT_CAP_SUP_WIDTH_20_40 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_40 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_20 = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@NL80211_IFTYPE_MESH_POINT = common dso_local global i64 0, align 8
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@BAND_ON_5G = common dso_local global i64 0, align 8
@RATR_INX_WIRELESS_B = common dso_local global i32 0, align 4
@RATR_INX_WIRELESS_GB = common dso_local global i32 0, align 4
@RATR_INX_WIRELESS_A = common dso_local global i32 0, align 4
@RATR_INX_WIRELESS_NGB = common dso_local global i32 0, align 4
@RF_1T2R = common dso_local global i32 0, align 4
@RF_1T1R = common dso_local global i32 0, align 4
@COMP_RATR = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"ratr_bitmap :%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Rate_index:%x, ratr_val:%x, %5phC\0A\00", align 1
@H2C_RA_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_sta*, i32, i32)* @rtl92ce_update_hal_rate_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl92ce_update_hal_rate_mask(%struct.ieee80211_hw* %0, %struct.ieee80211_sta* %1, i32 %2, i32 %3) #0 {
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
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %23 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %24 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %23)
  store %struct.rtl_priv* %24, %struct.rtl_priv** %9, align 8
  %25 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %26 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %25, i32 0, i32 0
  store %struct.rtl_phy* %26, %struct.rtl_phy** %10, align 8
  %27 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %28 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %27)
  %29 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %28)
  store %struct.rtl_mac* %29, %struct.rtl_mac** %11, align 8
  %30 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %31 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %30)
  %32 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %31)
  store %struct.rtl_hal* %32, %struct.rtl_hal** %12, align 8
  store %struct.rtl_sta_info* null, %struct.rtl_sta_info** %13, align 8
  %33 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %34 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @IEEE80211_HT_CAP_SUP_WIDTH_20_40, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 1, i32 0
  store i32 %41, i32* %16, align 4
  %42 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %43 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @IEEE80211_HT_CAP_SGI_40, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 1, i32 0
  store i32 %50, i32* %17, align 4
  %51 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %52 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @IEEE80211_HT_CAP_SGI_20, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 1, i32 0
  store i32 %59, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %22, align 4
  %60 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %61 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to %struct.rtl_sta_info*
  store %struct.rtl_sta_info* %63, %struct.rtl_sta_info** %13, align 8
  %64 = load %struct.rtl_sta_info*, %struct.rtl_sta_info** %13, align 8
  %65 = getelementptr inbounds %struct.rtl_sta_info, %struct.rtl_sta_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %19, align 4
  %67 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %68 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %78, label %72

72:                                               ; preds = %4
  %73 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %74 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @NL80211_IFTYPE_MESH_POINT, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %72, %4
  %79 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %80 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  store i32 %81, i32* %16, align 4
  br label %100

82:                                               ; preds = %72
  %83 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %84 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %94, label %88

88:                                               ; preds = %82
  %89 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %90 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %88, %82
  %95 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %96 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %22, align 4
  br label %99

99:                                               ; preds = %94, %88
  br label %100

100:                                              ; preds = %99, %78
  %101 = load %struct.rtl_hal*, %struct.rtl_hal** %12, align 8
  %102 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @BAND_ON_5G, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %113

106:                                              ; preds = %100
  %107 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %108 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  %111 = load i32, i32* %110, align 4
  %112 = shl i32 %111, 4
  store i32 %112, i32* %14, align 4
  br label %119

113:                                              ; preds = %100
  %114 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %115 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 0
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %14, align 4
  br label %119

119:                                              ; preds = %113, %106
  %120 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %121 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %119
  store i32 4095, i32* %14, align 4
  br label %126

126:                                              ; preds = %125, %119
  %127 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %128 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 1
  %133 = load i32, i32* %132, align 4
  %134 = shl i32 %133, 20
  %135 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %136 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 0
  %141 = load i32, i32* %140, align 4
  %142 = shl i32 %141, 12
  %143 = or i32 %134, %142
  %144 = load i32, i32* %14, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %14, align 4
  %146 = load i32, i32* %19, align 4
  switch i32 %146, label %293 [
    i32 131, label %147
    i32 130, label %159
    i32 132, label %177
    i32 129, label %181
    i32 128, label %181
  ]

147:                                              ; preds = %126
  %148 = load i32, i32* @RATR_INX_WIRELESS_B, align 4
  store i32 %148, i32* %15, align 4
  %149 = load i32, i32* %14, align 4
  %150 = and i32 %149, 12
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %147
  %153 = load i32, i32* %14, align 4
  %154 = and i32 %153, 13
  store i32 %154, i32* %14, align 4
  br label %158

155:                                              ; preds = %147
  %156 = load i32, i32* %14, align 4
  %157 = and i32 %156, 15
  store i32 %157, i32* %14, align 4
  br label %158

158:                                              ; preds = %155, %152
  br label %307

159:                                              ; preds = %126
  %160 = load i32, i32* @RATR_INX_WIRELESS_GB, align 4
  store i32 %160, i32* %15, align 4
  %161 = load i32, i32* %7, align 4
  %162 = icmp eq i32 %161, 1
  br i1 %162, label %163, label %166

163:                                              ; preds = %159
  %164 = load i32, i32* %14, align 4
  %165 = and i32 %164, 3840
  store i32 %165, i32* %14, align 4
  br label %176

166:                                              ; preds = %159
  %167 = load i32, i32* %7, align 4
  %168 = icmp eq i32 %167, 2
  br i1 %168, label %169, label %172

169:                                              ; preds = %166
  %170 = load i32, i32* %14, align 4
  %171 = and i32 %170, 4080
  store i32 %171, i32* %14, align 4
  br label %175

172:                                              ; preds = %166
  %173 = load i32, i32* %14, align 4
  %174 = and i32 %173, 4085
  store i32 %174, i32* %14, align 4
  br label %175

175:                                              ; preds = %172, %169
  br label %176

176:                                              ; preds = %175, %163
  br label %307

177:                                              ; preds = %126
  %178 = load i32, i32* @RATR_INX_WIRELESS_A, align 4
  store i32 %178, i32* %15, align 4
  %179 = load i32, i32* %14, align 4
  %180 = and i32 %179, 4080
  store i32 %180, i32* %14, align 4
  br label %307

181:                                              ; preds = %126, %126
  %182 = load i32, i32* @RATR_INX_WIRELESS_NGB, align 4
  store i32 %182, i32* %15, align 4
  %183 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %184 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @RF_1T2R, align 4
  %187 = icmp eq i32 %185, %186
  br i1 %187, label %194, label %188

188:                                              ; preds = %181
  %189 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %190 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @RF_1T1R, align 4
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %194, label %232

194:                                              ; preds = %188, %181
  %195 = load i32, i32* %16, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %214

197:                                              ; preds = %194
  %198 = load i32, i32* %7, align 4
  %199 = icmp eq i32 %198, 1
  br i1 %199, label %200, label %203

200:                                              ; preds = %197
  %201 = load i32, i32* %14, align 4
  %202 = and i32 %201, 983040
  store i32 %202, i32* %14, align 4
  br label %213

203:                                              ; preds = %197
  %204 = load i32, i32* %7, align 4
  %205 = icmp eq i32 %204, 2
  br i1 %205, label %206, label %209

206:                                              ; preds = %203
  %207 = load i32, i32* %14, align 4
  %208 = and i32 %207, 1044480
  store i32 %208, i32* %14, align 4
  br label %212

209:                                              ; preds = %203
  %210 = load i32, i32* %14, align 4
  %211 = and i32 %210, 1044501
  store i32 %211, i32* %14, align 4
  br label %212

212:                                              ; preds = %209, %206
  br label %213

213:                                              ; preds = %212, %200
  br label %231

214:                                              ; preds = %194
  %215 = load i32, i32* %7, align 4
  %216 = icmp eq i32 %215, 1
  br i1 %216, label %217, label %220

217:                                              ; preds = %214
  %218 = load i32, i32* %14, align 4
  %219 = and i32 %218, 983040
  store i32 %219, i32* %14, align 4
  br label %230

220:                                              ; preds = %214
  %221 = load i32, i32* %7, align 4
  %222 = icmp eq i32 %221, 2
  br i1 %222, label %223, label %226

223:                                              ; preds = %220
  %224 = load i32, i32* %14, align 4
  %225 = and i32 %224, 1044480
  store i32 %225, i32* %14, align 4
  br label %229

226:                                              ; preds = %220
  %227 = load i32, i32* %14, align 4
  %228 = and i32 %227, 1044485
  store i32 %228, i32* %14, align 4
  br label %229

229:                                              ; preds = %226, %223
  br label %230

230:                                              ; preds = %229, %217
  br label %231

231:                                              ; preds = %230, %213
  br label %270

232:                                              ; preds = %188
  %233 = load i32, i32* %16, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %252

235:                                              ; preds = %232
  %236 = load i32, i32* %7, align 4
  %237 = icmp eq i32 %236, 1
  br i1 %237, label %238, label %241

238:                                              ; preds = %235
  %239 = load i32, i32* %14, align 4
  %240 = and i32 %239, 252641280
  store i32 %240, i32* %14, align 4
  br label %251

241:                                              ; preds = %235
  %242 = load i32, i32* %7, align 4
  %243 = icmp eq i32 %242, 2
  br i1 %243, label %244, label %247

244:                                              ; preds = %241
  %245 = load i32, i32* %14, align 4
  %246 = and i32 %245, 252702720
  store i32 %246, i32* %14, align 4
  br label %250

247:                                              ; preds = %241
  %248 = load i32, i32* %14, align 4
  %249 = and i32 %248, 252702741
  store i32 %249, i32* %14, align 4
  br label %250

250:                                              ; preds = %247, %244
  br label %251

251:                                              ; preds = %250, %238
  br label %269

252:                                              ; preds = %232
  %253 = load i32, i32* %7, align 4
  %254 = icmp eq i32 %253, 1
  br i1 %254, label %255, label %258

255:                                              ; preds = %252
  %256 = load i32, i32* %14, align 4
  %257 = and i32 %256, 252641280
  store i32 %257, i32* %14, align 4
  br label %268

258:                                              ; preds = %252
  %259 = load i32, i32* %7, align 4
  %260 = icmp eq i32 %259, 2
  br i1 %260, label %261, label %264

261:                                              ; preds = %258
  %262 = load i32, i32* %14, align 4
  %263 = and i32 %262, 252702720
  store i32 %263, i32* %14, align 4
  br label %267

264:                                              ; preds = %258
  %265 = load i32, i32* %14, align 4
  %266 = and i32 %265, 252702725
  store i32 %266, i32* %14, align 4
  br label %267

267:                                              ; preds = %264, %261
  br label %268

268:                                              ; preds = %267, %255
  br label %269

269:                                              ; preds = %268, %251
  br label %270

270:                                              ; preds = %269, %231
  %271 = load i32, i32* %16, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %276

273:                                              ; preds = %270
  %274 = load i32, i32* %17, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %282, label %276

276:                                              ; preds = %273, %270
  %277 = load i32, i32* %16, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %292, label %279

279:                                              ; preds = %276
  %280 = load i32, i32* %18, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %292

282:                                              ; preds = %279, %273
  %283 = load i32, i32* %22, align 4
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %285, label %286

285:                                              ; preds = %282
  store i32 1, i32* %20, align 4
  br label %291

286:                                              ; preds = %282
  %287 = load i32, i32* %22, align 4
  %288 = icmp eq i32 %287, 1
  br i1 %288, label %289, label %290

289:                                              ; preds = %286
  store i32 0, i32* %20, align 4
  br label %290

290:                                              ; preds = %289, %286
  br label %291

291:                                              ; preds = %290, %285
  br label %292

292:                                              ; preds = %291, %279, %276
  br label %307

293:                                              ; preds = %126
  %294 = load i32, i32* @RATR_INX_WIRELESS_NGB, align 4
  store i32 %294, i32* %15, align 4
  %295 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %296 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* @RF_1T2R, align 4
  %299 = icmp eq i32 %297, %298
  br i1 %299, label %300, label %303

300:                                              ; preds = %293
  %301 = load i32, i32* %14, align 4
  %302 = and i32 %301, 1044735
  store i32 %302, i32* %14, align 4
  br label %306

303:                                              ; preds = %293
  %304 = load i32, i32* %14, align 4
  %305 = and i32 %304, 252702975
  store i32 %305, i32* %14, align 4
  br label %306

306:                                              ; preds = %303, %300
  br label %307

307:                                              ; preds = %306, %292, %177, %176, %158
  %308 = load i32, i32* %15, align 4
  %309 = load %struct.rtl_sta_info*, %struct.rtl_sta_info** %13, align 8
  %310 = getelementptr inbounds %struct.rtl_sta_info, %struct.rtl_sta_info* %309, i32 0, i32 1
  store i32 %308, i32* %310, align 4
  %311 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %312 = load i32, i32* @COMP_RATR, align 4
  %313 = load i32, i32* @DBG_DMESG, align 4
  %314 = load i32, i32* %14, align 4
  %315 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, ...) @RT_TRACE(%struct.rtl_priv* %311, i32 %312, i32 %313, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %314)
  %316 = load i32, i32* %14, align 4
  %317 = and i32 %316, 268435455
  %318 = load i32, i32* %15, align 4
  %319 = shl i32 %318, 28
  %320 = or i32 %317, %319
  %321 = bitcast [5 x i32]* %21 to i32*
  store i32 %320, i32* %321, align 16
  %322 = load i32, i32* %22, align 4
  %323 = load i32, i32* %20, align 4
  %324 = icmp ne i32 %323, 0
  %325 = zext i1 %324 to i64
  %326 = select i1 %324, i32 32, i32 0
  %327 = or i32 %322, %326
  %328 = or i32 %327, 128
  %329 = getelementptr inbounds [5 x i32], [5 x i32]* %21, i64 0, i64 4
  store i32 %328, i32* %329, align 16
  %330 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %331 = load i32, i32* @COMP_RATR, align 4
  %332 = load i32, i32* @DBG_DMESG, align 4
  %333 = load i32, i32* %15, align 4
  %334 = load i32, i32* %14, align 4
  %335 = getelementptr inbounds [5 x i32], [5 x i32]* %21, i64 0, i64 0
  %336 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, ...) @RT_TRACE(%struct.rtl_priv* %330, i32 %331, i32 %332, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %333, i32 %334, i32* %335)
  %337 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %338 = load i32, i32* @H2C_RA_MASK, align 4
  %339 = getelementptr inbounds [5 x i32], [5 x i32]* %21, i64 0, i64 0
  %340 = call i32 @rtl92c_fill_h2c_cmd(%struct.ieee80211_hw* %337, i32 %338, i32 5, i32* %339)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32, ...) #1

declare dso_local i32 @rtl92c_fill_h2c_cmd(%struct.ieee80211_hw*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
