; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_hw.c_rtl92ee_update_hal_rate_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_hw.c_rtl92ee_update_hal_rate_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_sta = type { i32, i32*, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i32 }
%struct.rtl_mac = type { i64, i32 }
%struct.rtl_sta_info = type { i32, i32 }

@IEEE80211_HT_CAP_SUP_WIDTH_20_40 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_40 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_20 = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@NL80211_IFTYPE_MESH_POINT = common dso_local global i64 0, align 8
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@RATR_INX_WIRELESS_B = common dso_local global i32 0, align 4
@RATR_INX_WIRELESS_GB = common dso_local global i32 0, align 4
@RATR_INX_WIRELESS_NGB = common dso_local global i32 0, align 4
@RATR_INX_WIRELESS_NB = common dso_local global i32 0, align 4
@RF_1T1R = common dso_local global i32 0, align 4
@COMP_RATR = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"ratr_bitmap :%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Rate_index:%x, ratr_val:%x, %x:%x:%x:%x:%x:%x:%x\0A\00", align 1
@H2C_92E_RA_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_sta*, i32, i32)* @rtl92ee_update_hal_rate_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl92ee_update_hal_rate_mask(%struct.ieee80211_hw* %0, %struct.ieee80211_sta* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_sta*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rtl_priv*, align 8
  %10 = alloca %struct.rtl_phy*, align 8
  %11 = alloca %struct.rtl_mac*, align 8
  %12 = alloca %struct.rtl_sta_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca [7 x i32], align 16
  %21 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %22 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %23 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %22)
  store %struct.rtl_priv* %23, %struct.rtl_priv** %9, align 8
  %24 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %25 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %24, i32 0, i32 0
  store %struct.rtl_phy* %25, %struct.rtl_phy** %10, align 8
  %26 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %27 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %26)
  %28 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %27)
  store %struct.rtl_mac* %28, %struct.rtl_mac** %11, align 8
  store %struct.rtl_sta_info* null, %struct.rtl_sta_info** %12, align 8
  %29 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %30 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @IEEE80211_HT_CAP_SUP_WIDTH_20_40, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 1, i32 0
  store i32 %37, i32* %15, align 4
  %38 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %39 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @IEEE80211_HT_CAP_SGI_40, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 1, i32 0
  store i32 %46, i32* %16, align 4
  %47 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %48 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @IEEE80211_HT_CAP_SGI_20, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 1, i32 0
  store i32 %55, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %56 = bitcast [7 x i32]* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %56, i8 0, i64 28, i1 false)
  store i32 0, i32* %21, align 4
  %57 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %58 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to %struct.rtl_sta_info*
  store %struct.rtl_sta_info* %60, %struct.rtl_sta_info** %12, align 8
  %61 = load %struct.rtl_sta_info*, %struct.rtl_sta_info** %12, align 8
  %62 = getelementptr inbounds %struct.rtl_sta_info, %struct.rtl_sta_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %18, align 4
  %64 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %65 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %75, label %69

69:                                               ; preds = %4
  %70 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %71 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @NL80211_IFTYPE_MESH_POINT, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %69, %4
  %76 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %77 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %15, align 4
  br label %97

79:                                               ; preds = %69
  %80 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %81 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %91, label %85

85:                                               ; preds = %79
  %86 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %87 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %85, %79
  %92 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %93 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %21, align 4
  br label %96

96:                                               ; preds = %91, %85
  br label %97

97:                                               ; preds = %96, %75
  %98 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %99 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %13, align 4
  %103 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %104 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %97
  store i32 4095, i32* %13, align 4
  br label %109

109:                                              ; preds = %108, %97
  %110 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %111 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 1
  %116 = load i32, i32* %115, align 4
  %117 = shl i32 %116, 20
  %118 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %119 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  %124 = load i32, i32* %123, align 4
  %125 = shl i32 %124, 12
  %126 = or i32 %117, %125
  %127 = load i32, i32* %13, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %13, align 4
  %129 = load i32, i32* %18, align 4
  switch i32 %129, label %272 [
    i32 130, label %130
    i32 129, label %142
    i32 128, label %160
  ]

130:                                              ; preds = %109
  %131 = load i32, i32* @RATR_INX_WIRELESS_B, align 4
  store i32 %131, i32* %14, align 4
  %132 = load i32, i32* %13, align 4
  %133 = and i32 %132, 12
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %130
  %136 = load i32, i32* %13, align 4
  %137 = and i32 %136, 13
  store i32 %137, i32* %13, align 4
  br label %141

138:                                              ; preds = %130
  %139 = load i32, i32* %13, align 4
  %140 = and i32 %139, 15
  store i32 %140, i32* %13, align 4
  br label %141

141:                                              ; preds = %138, %135
  br label %286

142:                                              ; preds = %109
  %143 = load i32, i32* @RATR_INX_WIRELESS_GB, align 4
  store i32 %143, i32* %14, align 4
  %144 = load i32, i32* %7, align 4
  %145 = icmp eq i32 %144, 1
  br i1 %145, label %146, label %149

146:                                              ; preds = %142
  %147 = load i32, i32* %13, align 4
  %148 = and i32 %147, 3840
  store i32 %148, i32* %13, align 4
  br label %159

149:                                              ; preds = %142
  %150 = load i32, i32* %7, align 4
  %151 = icmp eq i32 %150, 2
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = load i32, i32* %13, align 4
  %154 = and i32 %153, 4080
  store i32 %154, i32* %13, align 4
  br label %158

155:                                              ; preds = %149
  %156 = load i32, i32* %13, align 4
  %157 = and i32 %156, 4085
  store i32 %157, i32* %13, align 4
  br label %158

158:                                              ; preds = %155, %152
  br label %159

159:                                              ; preds = %158, %146
  br label %286

160:                                              ; preds = %109
  %161 = load i32, i32* %15, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %160
  %164 = load i32, i32* @RATR_INX_WIRELESS_NGB, align 4
  store i32 %164, i32* %14, align 4
  br label %167

165:                                              ; preds = %160
  %166 = load i32, i32* @RATR_INX_WIRELESS_NB, align 4
  store i32 %166, i32* %14, align 4
  br label %167

167:                                              ; preds = %165, %163
  %168 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %169 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @RF_1T1R, align 4
  %172 = icmp eq i32 %170, %171
  br i1 %172, label %173, label %211

173:                                              ; preds = %167
  %174 = load i32, i32* %15, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %193

176:                                              ; preds = %173
  %177 = load i32, i32* %7, align 4
  %178 = icmp eq i32 %177, 1
  br i1 %178, label %179, label %182

179:                                              ; preds = %176
  %180 = load i32, i32* %13, align 4
  %181 = and i32 %180, 983040
  store i32 %181, i32* %13, align 4
  br label %192

182:                                              ; preds = %176
  %183 = load i32, i32* %7, align 4
  %184 = icmp eq i32 %183, 2
  br i1 %184, label %185, label %188

185:                                              ; preds = %182
  %186 = load i32, i32* %13, align 4
  %187 = and i32 %186, 1044480
  store i32 %187, i32* %13, align 4
  br label %191

188:                                              ; preds = %182
  %189 = load i32, i32* %13, align 4
  %190 = and i32 %189, 1044501
  store i32 %190, i32* %13, align 4
  br label %191

191:                                              ; preds = %188, %185
  br label %192

192:                                              ; preds = %191, %179
  br label %210

193:                                              ; preds = %173
  %194 = load i32, i32* %7, align 4
  %195 = icmp eq i32 %194, 1
  br i1 %195, label %196, label %199

196:                                              ; preds = %193
  %197 = load i32, i32* %13, align 4
  %198 = and i32 %197, 983040
  store i32 %198, i32* %13, align 4
  br label %209

199:                                              ; preds = %193
  %200 = load i32, i32* %7, align 4
  %201 = icmp eq i32 %200, 2
  br i1 %201, label %202, label %205

202:                                              ; preds = %199
  %203 = load i32, i32* %13, align 4
  %204 = and i32 %203, 1044480
  store i32 %204, i32* %13, align 4
  br label %208

205:                                              ; preds = %199
  %206 = load i32, i32* %13, align 4
  %207 = and i32 %206, 1044485
  store i32 %207, i32* %13, align 4
  br label %208

208:                                              ; preds = %205, %202
  br label %209

209:                                              ; preds = %208, %196
  br label %210

210:                                              ; preds = %209, %192
  br label %249

211:                                              ; preds = %167
  %212 = load i32, i32* %15, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %231

214:                                              ; preds = %211
  %215 = load i32, i32* %7, align 4
  %216 = icmp eq i32 %215, 1
  br i1 %216, label %217, label %220

217:                                              ; preds = %214
  %218 = load i32, i32* %13, align 4
  %219 = and i32 %218, 261029888
  store i32 %219, i32* %13, align 4
  br label %230

220:                                              ; preds = %214
  %221 = load i32, i32* %7, align 4
  %222 = icmp eq i32 %221, 2
  br i1 %222, label %223, label %226

223:                                              ; preds = %220
  %224 = load i32, i32* %13, align 4
  %225 = and i32 %224, 268431360
  store i32 %225, i32* %13, align 4
  br label %229

226:                                              ; preds = %220
  %227 = load i32, i32* %13, align 4
  %228 = and i32 %227, 268431381
  store i32 %228, i32* %13, align 4
  br label %229

229:                                              ; preds = %226, %223
  br label %230

230:                                              ; preds = %229, %217
  br label %248

231:                                              ; preds = %211
  %232 = load i32, i32* %7, align 4
  %233 = icmp eq i32 %232, 1
  br i1 %233, label %234, label %237

234:                                              ; preds = %231
  %235 = load i32, i32* %13, align 4
  %236 = and i32 %235, 261029888
  store i32 %236, i32* %13, align 4
  br label %247

237:                                              ; preds = %231
  %238 = load i32, i32* %7, align 4
  %239 = icmp eq i32 %238, 2
  br i1 %239, label %240, label %243

240:                                              ; preds = %237
  %241 = load i32, i32* %13, align 4
  %242 = and i32 %241, 268431360
  store i32 %242, i32* %13, align 4
  br label %246

243:                                              ; preds = %237
  %244 = load i32, i32* %13, align 4
  %245 = and i32 %244, 268431365
  store i32 %245, i32* %13, align 4
  br label %246

246:                                              ; preds = %243, %240
  br label %247

247:                                              ; preds = %246, %234
  br label %248

248:                                              ; preds = %247, %230
  br label %249

249:                                              ; preds = %248, %210
  %250 = load i32, i32* %15, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %255

252:                                              ; preds = %249
  %253 = load i32, i32* %16, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %261, label %255

255:                                              ; preds = %252, %249
  %256 = load i32, i32* %15, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %271, label %258

258:                                              ; preds = %255
  %259 = load i32, i32* %17, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %271

261:                                              ; preds = %258, %252
  %262 = load i32, i32* %21, align 4
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %261
  store i32 1, i32* %19, align 4
  br label %270

265:                                              ; preds = %261
  %266 = load i32, i32* %21, align 4
  %267 = icmp eq i32 %266, 1
  br i1 %267, label %268, label %269

268:                                              ; preds = %265
  store i32 0, i32* %19, align 4
  br label %269

269:                                              ; preds = %268, %265
  br label %270

270:                                              ; preds = %269, %264
  br label %271

271:                                              ; preds = %270, %258, %255
  br label %286

272:                                              ; preds = %109
  %273 = load i32, i32* @RATR_INX_WIRELESS_NGB, align 4
  store i32 %273, i32* %14, align 4
  %274 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %275 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* @RF_1T1R, align 4
  %278 = icmp eq i32 %276, %277
  br i1 %278, label %279, label %282

279:                                              ; preds = %272
  %280 = load i32, i32* %13, align 4
  %281 = and i32 %280, 1044735
  store i32 %281, i32* %13, align 4
  br label %285

282:                                              ; preds = %272
  %283 = load i32, i32* %13, align 4
  %284 = and i32 %283, 261091583
  store i32 %284, i32* %13, align 4
  br label %285

285:                                              ; preds = %282, %279
  br label %286

286:                                              ; preds = %285, %271, %159, %141
  %287 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %288 = load i32, i32* %14, align 4
  %289 = call i32 @_rtl92ee_mrate_idx_to_arfr_id(%struct.ieee80211_hw* %287, i32 %288)
  store i32 %289, i32* %14, align 4
  %290 = load i32, i32* %14, align 4
  %291 = load %struct.rtl_sta_info*, %struct.rtl_sta_info** %12, align 8
  %292 = getelementptr inbounds %struct.rtl_sta_info, %struct.rtl_sta_info* %291, i32 0, i32 1
  store i32 %290, i32* %292, align 4
  %293 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %294 = load i32, i32* @COMP_RATR, align 4
  %295 = load i32, i32* @DBG_DMESG, align 4
  %296 = load i32, i32* %13, align 4
  %297 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, ...) @RT_TRACE(%struct.rtl_priv* %293, i32 %294, i32 %295, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %296)
  %298 = load i32, i32* %13, align 4
  %299 = and i32 %298, 268435455
  %300 = load i32, i32* %14, align 4
  %301 = shl i32 %300, 28
  %302 = or i32 %299, %301
  %303 = bitcast [7 x i32]* %20 to i32*
  store i32 %302, i32* %303, align 16
  %304 = load i32, i32* %21, align 4
  %305 = getelementptr inbounds [7 x i32], [7 x i32]* %20, i64 0, i64 0
  store i32 %304, i32* %305, align 16
  %306 = load i32, i32* %14, align 4
  %307 = load i32, i32* %19, align 4
  %308 = icmp ne i32 %307, 0
  %309 = zext i1 %308 to i64
  %310 = select i1 %308, i32 128, i32 0
  %311 = or i32 %306, %310
  %312 = getelementptr inbounds [7 x i32], [7 x i32]* %20, i64 0, i64 1
  store i32 %311, i32* %312, align 4
  %313 = load i32, i32* %15, align 4
  %314 = load i32, i32* %8, align 4
  %315 = icmp ne i32 %314, 0
  %316 = xor i1 %315, true
  %317 = zext i1 %316 to i32
  %318 = shl i32 %317, 3
  %319 = or i32 %313, %318
  %320 = getelementptr inbounds [7 x i32], [7 x i32]* %20, i64 0, i64 2
  store i32 %319, i32* %320, align 8
  %321 = load i32, i32* %13, align 4
  %322 = and i32 %321, 255
  %323 = getelementptr inbounds [7 x i32], [7 x i32]* %20, i64 0, i64 3
  store i32 %322, i32* %323, align 4
  %324 = load i32, i32* %13, align 4
  %325 = and i32 %324, 65280
  %326 = ashr i32 %325, 8
  %327 = getelementptr inbounds [7 x i32], [7 x i32]* %20, i64 0, i64 4
  store i32 %326, i32* %327, align 16
  %328 = load i32, i32* %13, align 4
  %329 = and i32 %328, 16711680
  %330 = ashr i32 %329, 16
  %331 = getelementptr inbounds [7 x i32], [7 x i32]* %20, i64 0, i64 5
  store i32 %330, i32* %331, align 4
  %332 = load i32, i32* %13, align 4
  %333 = and i32 %332, -16777216
  %334 = lshr i32 %333, 24
  %335 = getelementptr inbounds [7 x i32], [7 x i32]* %20, i64 0, i64 6
  store i32 %334, i32* %335, align 8
  %336 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %337 = load i32, i32* @COMP_RATR, align 4
  %338 = load i32, i32* @DBG_DMESG, align 4
  %339 = load i32, i32* %14, align 4
  %340 = load i32, i32* %13, align 4
  %341 = getelementptr inbounds [7 x i32], [7 x i32]* %20, i64 0, i64 0
  %342 = load i32, i32* %341, align 16
  %343 = getelementptr inbounds [7 x i32], [7 x i32]* %20, i64 0, i64 1
  %344 = load i32, i32* %343, align 4
  %345 = getelementptr inbounds [7 x i32], [7 x i32]* %20, i64 0, i64 2
  %346 = load i32, i32* %345, align 8
  %347 = getelementptr inbounds [7 x i32], [7 x i32]* %20, i64 0, i64 3
  %348 = load i32, i32* %347, align 4
  %349 = getelementptr inbounds [7 x i32], [7 x i32]* %20, i64 0, i64 4
  %350 = load i32, i32* %349, align 16
  %351 = getelementptr inbounds [7 x i32], [7 x i32]* %20, i64 0, i64 5
  %352 = load i32, i32* %351, align 4
  %353 = getelementptr inbounds [7 x i32], [7 x i32]* %20, i64 0, i64 6
  %354 = load i32, i32* %353, align 8
  %355 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, ...) @RT_TRACE(%struct.rtl_priv* %336, i32 %337, i32 %338, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %339, i32 %340, i32 %342, i32 %344, i32 %346, i32 %348, i32 %350, i32 %352, i32 %354)
  %356 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %357 = load i32, i32* @H2C_92E_RA_MASK, align 4
  %358 = getelementptr inbounds [7 x i32], [7 x i32]* %20, i64 0, i64 0
  %359 = call i32 @rtl92ee_fill_h2c_cmd(%struct.ieee80211_hw* %356, i32 %357, i32 7, i32* %358)
  %360 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %361 = call i32 @BIT(i32 3)
  %362 = call i32 @_rtl92ee_set_bcn_ctrl_reg(%struct.ieee80211_hw* %360, i32 %361, i32 0)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @_rtl92ee_mrate_idx_to_arfr_id(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32, ...) #1

declare dso_local i32 @rtl92ee_fill_h2c_cmd(%struct.ieee80211_hw*, i32, i32, i32*) #1

declare dso_local i32 @_rtl92ee_set_bcn_ctrl_reg(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
