; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_hw.c_rtl92de_update_hal_rate_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_hw.c_rtl92de_update_hal_rate_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_sta = type { i64, i32, i32*, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.rtl_priv = type { %struct.rtl_phy }
%struct.rtl_phy = type { i32 }
%struct.rtl_mac = type { i64, i32 }
%struct.rtl_hal = type { i64 }
%struct.rtl_sta_info = type { i32, i32, i32 }

@IEEE80211_STA_RX_BW_40 = common dso_local global i64 0, align 8
@IEEE80211_HT_CAP_SGI_40 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_20 = common dso_local global i32 0, align 4
@IEEE80211_SMPS_OFF = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@BAND_ON_5G = common dso_local global i64 0, align 8
@RATR_INX_WIRELESS_B = common dso_local global i32 0, align 4
@RATR_INX_WIRELESS_GB = common dso_local global i32 0, align 4
@RATR_INX_WIRELESS_G = common dso_local global i32 0, align 4
@RATR_INX_WIRELESS_NGB = common dso_local global i32 0, align 4
@RATR_INX_WIRELESS_NG = common dso_local global i32 0, align 4
@IEEE80211_SMPS_STATIC = common dso_local global i32 0, align 4
@RF_1T2R = common dso_local global i32 0, align 4
@RF_1T1R = common dso_local global i32 0, align 4
@COMP_RATR = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"ratr_bitmap :%x value0:%x value1:%x\0A\00", align 1
@H2C_RA_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_sta*, i32, i32)* @rtl92de_update_hal_rate_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl92de_update_hal_rate_mask(%struct.ieee80211_hw* %0, %struct.ieee80211_sta* %1, i32 %2, i32 %3) #0 {
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
  %21 = alloca [2 x i32], align 4
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
  %27 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %26, i32 0, i32 0
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
  %41 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %42 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @IEEE80211_HT_CAP_SGI_40, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i32 1, i32 0
  store i32 %49, i32* %17, align 4
  %50 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %51 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @IEEE80211_HT_CAP_SGI_20, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i32 1, i32 0
  store i32 %58, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %22, align 4
  %59 = load i32, i32* @IEEE80211_SMPS_OFF, align 4
  store i32 %59, i32* %23, align 4
  %60 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %61 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to %struct.rtl_sta_info*
  store %struct.rtl_sta_info* %63, %struct.rtl_sta_info** %13, align 8
  %64 = load %struct.rtl_sta_info*, %struct.rtl_sta_info** %13, align 8
  %65 = getelementptr inbounds %struct.rtl_sta_info, %struct.rtl_sta_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %23, align 4
  %67 = load %struct.rtl_sta_info*, %struct.rtl_sta_info** %13, align 8
  %68 = getelementptr inbounds %struct.rtl_sta_info, %struct.rtl_sta_info* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %19, align 4
  %70 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %71 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %4
  %76 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %77 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %16, align 4
  br label %97

79:                                               ; preds = %4
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
  %93 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %22, align 4
  br label %96

96:                                               ; preds = %91, %85
  br label %97

97:                                               ; preds = %96, %75
  %98 = load %struct.rtl_hal*, %struct.rtl_hal** %12, align 8
  %99 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @BAND_ON_5G, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %110

103:                                              ; preds = %97
  %104 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %105 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  %108 = load i32, i32* %107, align 4
  %109 = shl i32 %108, 4
  store i32 %109, i32* %14, align 4
  br label %116

110:                                              ; preds = %97
  %111 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %112 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %14, align 4
  br label %116

116:                                              ; preds = %110, %103
  %117 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %118 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 1
  %123 = load i32, i32* %122, align 4
  %124 = shl i32 %123, 20
  %125 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %126 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  %131 = load i32, i32* %130, align 4
  %132 = shl i32 %131, 12
  %133 = or i32 %124, %132
  %134 = load i32, i32* %14, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %14, align 4
  %136 = load i32, i32* %19, align 4
  switch i32 %136, label %311 [
    i32 131, label %137
    i32 130, label %149
    i32 132, label %167
    i32 129, label %171
    i32 128, label %171
  ]

137:                                              ; preds = %116
  %138 = load i32, i32* @RATR_INX_WIRELESS_B, align 4
  store i32 %138, i32* %15, align 4
  %139 = load i32, i32* %14, align 4
  %140 = and i32 %139, 12
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %137
  %143 = load i32, i32* %14, align 4
  %144 = and i32 %143, 13
  store i32 %144, i32* %14, align 4
  br label %148

145:                                              ; preds = %137
  %146 = load i32, i32* %14, align 4
  %147 = and i32 %146, 15
  store i32 %147, i32* %14, align 4
  br label %148

148:                                              ; preds = %145, %142
  br label %325

149:                                              ; preds = %116
  %150 = load i32, i32* @RATR_INX_WIRELESS_GB, align 4
  store i32 %150, i32* %15, align 4
  %151 = load i32, i32* %7, align 4
  %152 = icmp eq i32 %151, 1
  br i1 %152, label %153, label %156

153:                                              ; preds = %149
  %154 = load i32, i32* %14, align 4
  %155 = and i32 %154, 3840
  store i32 %155, i32* %14, align 4
  br label %166

156:                                              ; preds = %149
  %157 = load i32, i32* %7, align 4
  %158 = icmp eq i32 %157, 2
  br i1 %158, label %159, label %162

159:                                              ; preds = %156
  %160 = load i32, i32* %14, align 4
  %161 = and i32 %160, 4080
  store i32 %161, i32* %14, align 4
  br label %165

162:                                              ; preds = %156
  %163 = load i32, i32* %14, align 4
  %164 = and i32 %163, 4085
  store i32 %164, i32* %14, align 4
  br label %165

165:                                              ; preds = %162, %159
  br label %166

166:                                              ; preds = %165, %153
  br label %325

167:                                              ; preds = %116
  %168 = load i32, i32* @RATR_INX_WIRELESS_G, align 4
  store i32 %168, i32* %15, align 4
  %169 = load i32, i32* %14, align 4
  %170 = and i32 %169, 4080
  store i32 %170, i32* %14, align 4
  br label %325

171:                                              ; preds = %116, %116
  %172 = load i32, i32* %19, align 4
  %173 = icmp eq i32 %172, 129
  br i1 %173, label %174, label %176

174:                                              ; preds = %171
  %175 = load i32, i32* @RATR_INX_WIRELESS_NGB, align 4
  store i32 %175, i32* %15, align 4
  br label %178

176:                                              ; preds = %171
  %177 = load i32, i32* @RATR_INX_WIRELESS_NG, align 4
  store i32 %177, i32* %15, align 4
  br label %178

178:                                              ; preds = %176, %174
  %179 = load i32, i32* %23, align 4
  %180 = load i32, i32* @IEEE80211_SMPS_STATIC, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %199

182:                                              ; preds = %178
  %183 = load i32, i32* %7, align 4
  %184 = icmp eq i32 %183, 1
  br i1 %184, label %185, label %188

185:                                              ; preds = %182
  %186 = load i32, i32* %14, align 4
  %187 = and i32 %186, 458752
  store i32 %187, i32* %14, align 4
  br label %198

188:                                              ; preds = %182
  %189 = load i32, i32* %7, align 4
  %190 = icmp eq i32 %189, 2
  br i1 %190, label %191, label %194

191:                                              ; preds = %188
  %192 = load i32, i32* %14, align 4
  %193 = and i32 %192, 520192
  store i32 %193, i32* %14, align 4
  br label %197

194:                                              ; preds = %188
  %195 = load i32, i32* %14, align 4
  %196 = and i32 %195, 520197
  store i32 %196, i32* %14, align 4
  br label %197

197:                                              ; preds = %194, %191
  br label %198

198:                                              ; preds = %197, %185
  br label %288

199:                                              ; preds = %178
  %200 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %201 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @RF_1T2R, align 4
  %204 = icmp eq i32 %202, %203
  br i1 %204, label %211, label %205

205:                                              ; preds = %199
  %206 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %207 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* @RF_1T1R, align 4
  %210 = icmp eq i32 %208, %209
  br i1 %210, label %211, label %249

211:                                              ; preds = %205, %199
  %212 = load i32, i32* %16, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %231

214:                                              ; preds = %211
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
  %228 = and i32 %227, 1044501
  store i32 %228, i32* %14, align 4
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
  %235 = load i32, i32* %14, align 4
  %236 = and i32 %235, 983040
  store i32 %236, i32* %14, align 4
  br label %247

237:                                              ; preds = %231
  %238 = load i32, i32* %7, align 4
  %239 = icmp eq i32 %238, 2
  br i1 %239, label %240, label %243

240:                                              ; preds = %237
  %241 = load i32, i32* %14, align 4
  %242 = and i32 %241, 1044480
  store i32 %242, i32* %14, align 4
  br label %246

243:                                              ; preds = %237
  %244 = load i32, i32* %14, align 4
  %245 = and i32 %244, 1044485
  store i32 %245, i32* %14, align 4
  br label %246

246:                                              ; preds = %243, %240
  br label %247

247:                                              ; preds = %246, %234
  br label %248

248:                                              ; preds = %247, %230
  br label %287

249:                                              ; preds = %205
  %250 = load i32, i32* %16, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %269

252:                                              ; preds = %249
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
  %266 = and i32 %265, 252702741
  store i32 %266, i32* %14, align 4
  br label %267

267:                                              ; preds = %264, %261
  br label %268

268:                                              ; preds = %267, %255
  br label %286

269:                                              ; preds = %249
  %270 = load i32, i32* %7, align 4
  %271 = icmp eq i32 %270, 1
  br i1 %271, label %272, label %275

272:                                              ; preds = %269
  %273 = load i32, i32* %14, align 4
  %274 = and i32 %273, 252641280
  store i32 %274, i32* %14, align 4
  br label %285

275:                                              ; preds = %269
  %276 = load i32, i32* %7, align 4
  %277 = icmp eq i32 %276, 2
  br i1 %277, label %278, label %281

278:                                              ; preds = %275
  %279 = load i32, i32* %14, align 4
  %280 = and i32 %279, 252702720
  store i32 %280, i32* %14, align 4
  br label %284

281:                                              ; preds = %275
  %282 = load i32, i32* %14, align 4
  %283 = and i32 %282, 252702725
  store i32 %283, i32* %14, align 4
  br label %284

284:                                              ; preds = %281, %278
  br label %285

285:                                              ; preds = %284, %272
  br label %286

286:                                              ; preds = %285, %268
  br label %287

287:                                              ; preds = %286, %248
  br label %288

288:                                              ; preds = %287, %198
  %289 = load i32, i32* %16, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %294

291:                                              ; preds = %288
  %292 = load i32, i32* %17, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %300, label %294

294:                                              ; preds = %291, %288
  %295 = load i32, i32* %16, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %310, label %297

297:                                              ; preds = %294
  %298 = load i32, i32* %18, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %310

300:                                              ; preds = %297, %291
  %301 = load i32, i32* %22, align 4
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %303, label %304

303:                                              ; preds = %300
  store i32 1, i32* %20, align 4
  br label %309

304:                                              ; preds = %300
  %305 = load i32, i32* %22, align 4
  %306 = icmp eq i32 %305, 1
  br i1 %306, label %307, label %308

307:                                              ; preds = %304
  store i32 0, i32* %20, align 4
  br label %308

308:                                              ; preds = %307, %304
  br label %309

309:                                              ; preds = %308, %303
  br label %310

310:                                              ; preds = %309, %297, %294
  br label %325

311:                                              ; preds = %116
  %312 = load i32, i32* @RATR_INX_WIRELESS_NGB, align 4
  store i32 %312, i32* %15, align 4
  %313 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %314 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %313, i32 0, i32 0
  %315 = load i32, i32* %314, align 4
  %316 = load i32, i32* @RF_1T2R, align 4
  %317 = icmp eq i32 %315, %316
  br i1 %317, label %318, label %321

318:                                              ; preds = %311
  %319 = load i32, i32* %14, align 4
  %320 = and i32 %319, 1044735
  store i32 %320, i32* %14, align 4
  br label %324

321:                                              ; preds = %311
  %322 = load i32, i32* %14, align 4
  %323 = and i32 %322, 252702975
  store i32 %323, i32* %14, align 4
  br label %324

324:                                              ; preds = %321, %318
  br label %325

325:                                              ; preds = %324, %310, %167, %166, %148
  %326 = load i32, i32* %14, align 4
  %327 = and i32 %326, 268435455
  %328 = load i32, i32* %15, align 4
  %329 = shl i32 %328, 28
  %330 = or i32 %327, %329
  %331 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 0
  store i32 %330, i32* %331, align 4
  %332 = load i32, i32* %22, align 4
  %333 = load i32, i32* %20, align 4
  %334 = icmp ne i32 %333, 0
  %335 = zext i1 %334 to i64
  %336 = select i1 %334, i32 32, i32 0
  %337 = or i32 %332, %336
  %338 = or i32 %337, 128
  %339 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 1
  store i32 %338, i32* %339, align 4
  %340 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %341 = load i32, i32* @COMP_RATR, align 4
  %342 = load i32, i32* @DBG_DMESG, align 4
  %343 = load i32, i32* %14, align 4
  %344 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 0
  %345 = load i32, i32* %344, align 4
  %346 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 1
  %347 = load i32, i32* %346, align 4
  %348 = call i32 @RT_TRACE(%struct.rtl_priv* %340, i32 %341, i32 %342, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %343, i32 %345, i32 %347)
  %349 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %350 = load i32, i32* @H2C_RA_MASK, align 4
  %351 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 0
  %352 = call i32 @rtl92d_fill_h2c_cmd(%struct.ieee80211_hw* %349, i32 %350, i32 5, i32* %351)
  %353 = load i32, i32* %22, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %359

355:                                              ; preds = %325
  %356 = load i32, i32* %15, align 4
  %357 = load %struct.rtl_sta_info*, %struct.rtl_sta_info** %13, align 8
  %358 = getelementptr inbounds %struct.rtl_sta_info, %struct.rtl_sta_info* %357, i32 0, i32 2
  store i32 %356, i32* %358, align 4
  br label %359

359:                                              ; preds = %355, %325
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @rtl92d_fill_h2c_cmd(%struct.ieee80211_hw*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
