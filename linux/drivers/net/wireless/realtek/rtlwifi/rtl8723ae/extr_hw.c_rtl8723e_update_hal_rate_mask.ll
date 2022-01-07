; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_hw.c_rtl8723e_update_hal_rate_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723ae/extr_hw.c_rtl8723e_update_hal_rate_mask.c"
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
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@BAND_ON_5G = common dso_local global i64 0, align 8
@RATR_INX_WIRELESS_B = common dso_local global i32 0, align 4
@RATR_INX_WIRELESS_GB = common dso_local global i32 0, align 4
@RATR_INX_WIRELESS_G = common dso_local global i32 0, align 4
@RATR_INX_WIRELESS_NGB = common dso_local global i32 0, align 4
@RF_1T2R = common dso_local global i32 0, align 4
@RF_1T1R = common dso_local global i32 0, align 4
@COMP_RATR = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"ratr_bitmap :%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Rate_index:%x, ratr_val:%x, %x:%x:%x:%x:%x\0A\00", align 1
@H2C_RA_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_sta*, i32, i32)* @rtl8723e_update_hal_rate_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8723e_update_hal_rate_mask(%struct.ieee80211_hw* %0, %struct.ieee80211_sta* %1, i32 %2, i32 %3) #0 {
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
  br i1 %71, label %72, label %76

72:                                               ; preds = %4
  %73 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %74 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  store i32 %75, i32* %16, align 4
  br label %94

76:                                               ; preds = %4
  %77 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %78 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %88, label %82

82:                                               ; preds = %76
  %83 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %84 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %82, %76
  %89 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %90 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %22, align 4
  br label %93

93:                                               ; preds = %88, %82
  br label %94

94:                                               ; preds = %93, %72
  %95 = load %struct.rtl_hal*, %struct.rtl_hal** %12, align 8
  %96 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @BAND_ON_5G, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %107

100:                                              ; preds = %94
  %101 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %102 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  %105 = load i32, i32* %104, align 4
  %106 = shl i32 %105, 4
  store i32 %106, i32* %14, align 4
  br label %113

107:                                              ; preds = %94
  %108 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %109 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %14, align 4
  br label %113

113:                                              ; preds = %107, %100
  %114 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %115 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %113
  store i32 4095, i32* %14, align 4
  br label %120

120:                                              ; preds = %119, %113
  %121 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %122 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 1
  %127 = load i32, i32* %126, align 4
  %128 = shl i32 %127, 20
  %129 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %130 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  %135 = load i32, i32* %134, align 4
  %136 = shl i32 %135, 12
  %137 = or i32 %128, %136
  %138 = load i32, i32* %14, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %14, align 4
  %140 = load i32, i32* %19, align 4
  switch i32 %140, label %287 [
    i32 131, label %141
    i32 130, label %153
    i32 132, label %171
    i32 129, label %175
    i32 128, label %175
  ]

141:                                              ; preds = %120
  %142 = load i32, i32* @RATR_INX_WIRELESS_B, align 4
  store i32 %142, i32* %15, align 4
  %143 = load i32, i32* %14, align 4
  %144 = and i32 %143, 12
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %141
  %147 = load i32, i32* %14, align 4
  %148 = and i32 %147, 13
  store i32 %148, i32* %14, align 4
  br label %152

149:                                              ; preds = %141
  %150 = load i32, i32* %14, align 4
  %151 = and i32 %150, 15
  store i32 %151, i32* %14, align 4
  br label %152

152:                                              ; preds = %149, %146
  br label %301

153:                                              ; preds = %120
  %154 = load i32, i32* @RATR_INX_WIRELESS_GB, align 4
  store i32 %154, i32* %15, align 4
  %155 = load i32, i32* %7, align 4
  %156 = icmp eq i32 %155, 1
  br i1 %156, label %157, label %160

157:                                              ; preds = %153
  %158 = load i32, i32* %14, align 4
  %159 = and i32 %158, 3840
  store i32 %159, i32* %14, align 4
  br label %170

160:                                              ; preds = %153
  %161 = load i32, i32* %7, align 4
  %162 = icmp eq i32 %161, 2
  br i1 %162, label %163, label %166

163:                                              ; preds = %160
  %164 = load i32, i32* %14, align 4
  %165 = and i32 %164, 4080
  store i32 %165, i32* %14, align 4
  br label %169

166:                                              ; preds = %160
  %167 = load i32, i32* %14, align 4
  %168 = and i32 %167, 4085
  store i32 %168, i32* %14, align 4
  br label %169

169:                                              ; preds = %166, %163
  br label %170

170:                                              ; preds = %169, %157
  br label %301

171:                                              ; preds = %120
  %172 = load i32, i32* @RATR_INX_WIRELESS_G, align 4
  store i32 %172, i32* %15, align 4
  %173 = load i32, i32* %14, align 4
  %174 = and i32 %173, 4080
  store i32 %174, i32* %14, align 4
  br label %301

175:                                              ; preds = %120, %120
  %176 = load i32, i32* @RATR_INX_WIRELESS_NGB, align 4
  store i32 %176, i32* %15, align 4
  %177 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %178 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @RF_1T2R, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %188, label %182

182:                                              ; preds = %175
  %183 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %184 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @RF_1T1R, align 4
  %187 = icmp eq i32 %185, %186
  br i1 %187, label %188, label %226

188:                                              ; preds = %182, %175
  %189 = load i32, i32* %16, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %208

191:                                              ; preds = %188
  %192 = load i32, i32* %7, align 4
  %193 = icmp eq i32 %192, 1
  br i1 %193, label %194, label %197

194:                                              ; preds = %191
  %195 = load i32, i32* %14, align 4
  %196 = and i32 %195, 983040
  store i32 %196, i32* %14, align 4
  br label %207

197:                                              ; preds = %191
  %198 = load i32, i32* %7, align 4
  %199 = icmp eq i32 %198, 2
  br i1 %199, label %200, label %203

200:                                              ; preds = %197
  %201 = load i32, i32* %14, align 4
  %202 = and i32 %201, 1044480
  store i32 %202, i32* %14, align 4
  br label %206

203:                                              ; preds = %197
  %204 = load i32, i32* %14, align 4
  %205 = and i32 %204, 1044501
  store i32 %205, i32* %14, align 4
  br label %206

206:                                              ; preds = %203, %200
  br label %207

207:                                              ; preds = %206, %194
  br label %225

208:                                              ; preds = %188
  %209 = load i32, i32* %7, align 4
  %210 = icmp eq i32 %209, 1
  br i1 %210, label %211, label %214

211:                                              ; preds = %208
  %212 = load i32, i32* %14, align 4
  %213 = and i32 %212, 983040
  store i32 %213, i32* %14, align 4
  br label %224

214:                                              ; preds = %208
  %215 = load i32, i32* %7, align 4
  %216 = icmp eq i32 %215, 2
  br i1 %216, label %217, label %220

217:                                              ; preds = %214
  %218 = load i32, i32* %14, align 4
  %219 = and i32 %218, 1044480
  store i32 %219, i32* %14, align 4
  br label %223

220:                                              ; preds = %214
  %221 = load i32, i32* %14, align 4
  %222 = and i32 %221, 1044485
  store i32 %222, i32* %14, align 4
  br label %223

223:                                              ; preds = %220, %217
  br label %224

224:                                              ; preds = %223, %211
  br label %225

225:                                              ; preds = %224, %207
  br label %264

226:                                              ; preds = %182
  %227 = load i32, i32* %16, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %246

229:                                              ; preds = %226
  %230 = load i32, i32* %7, align 4
  %231 = icmp eq i32 %230, 1
  br i1 %231, label %232, label %235

232:                                              ; preds = %229
  %233 = load i32, i32* %14, align 4
  %234 = and i32 %233, 252641280
  store i32 %234, i32* %14, align 4
  br label %245

235:                                              ; preds = %229
  %236 = load i32, i32* %7, align 4
  %237 = icmp eq i32 %236, 2
  br i1 %237, label %238, label %241

238:                                              ; preds = %235
  %239 = load i32, i32* %14, align 4
  %240 = and i32 %239, 252702720
  store i32 %240, i32* %14, align 4
  br label %244

241:                                              ; preds = %235
  %242 = load i32, i32* %14, align 4
  %243 = and i32 %242, 252702741
  store i32 %243, i32* %14, align 4
  br label %244

244:                                              ; preds = %241, %238
  br label %245

245:                                              ; preds = %244, %232
  br label %263

246:                                              ; preds = %226
  %247 = load i32, i32* %7, align 4
  %248 = icmp eq i32 %247, 1
  br i1 %248, label %249, label %252

249:                                              ; preds = %246
  %250 = load i32, i32* %14, align 4
  %251 = and i32 %250, 252641280
  store i32 %251, i32* %14, align 4
  br label %262

252:                                              ; preds = %246
  %253 = load i32, i32* %7, align 4
  %254 = icmp eq i32 %253, 2
  br i1 %254, label %255, label %258

255:                                              ; preds = %252
  %256 = load i32, i32* %14, align 4
  %257 = and i32 %256, 252702720
  store i32 %257, i32* %14, align 4
  br label %261

258:                                              ; preds = %252
  %259 = load i32, i32* %14, align 4
  %260 = and i32 %259, 252702725
  store i32 %260, i32* %14, align 4
  br label %261

261:                                              ; preds = %258, %255
  br label %262

262:                                              ; preds = %261, %249
  br label %263

263:                                              ; preds = %262, %245
  br label %264

264:                                              ; preds = %263, %225
  %265 = load i32, i32* %16, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %270

267:                                              ; preds = %264
  %268 = load i32, i32* %17, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %276, label %270

270:                                              ; preds = %267, %264
  %271 = load i32, i32* %16, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %286, label %273

273:                                              ; preds = %270
  %274 = load i32, i32* %18, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %286

276:                                              ; preds = %273, %267
  %277 = load i32, i32* %22, align 4
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %279, label %280

279:                                              ; preds = %276
  store i32 1, i32* %20, align 4
  br label %285

280:                                              ; preds = %276
  %281 = load i32, i32* %22, align 4
  %282 = icmp eq i32 %281, 1
  br i1 %282, label %283, label %284

283:                                              ; preds = %280
  store i32 0, i32* %20, align 4
  br label %284

284:                                              ; preds = %283, %280
  br label %285

285:                                              ; preds = %284, %279
  br label %286

286:                                              ; preds = %285, %273, %270
  br label %301

287:                                              ; preds = %120
  %288 = load i32, i32* @RATR_INX_WIRELESS_NGB, align 4
  store i32 %288, i32* %15, align 4
  %289 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %290 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = load i32, i32* @RF_1T2R, align 4
  %293 = icmp eq i32 %291, %292
  br i1 %293, label %294, label %297

294:                                              ; preds = %287
  %295 = load i32, i32* %14, align 4
  %296 = and i32 %295, 1044735
  store i32 %296, i32* %14, align 4
  br label %300

297:                                              ; preds = %287
  %298 = load i32, i32* %14, align 4
  %299 = and i32 %298, 252702975
  store i32 %299, i32* %14, align 4
  br label %300

300:                                              ; preds = %297, %294
  br label %301

301:                                              ; preds = %300, %286, %171, %170, %152
  %302 = load i32, i32* %15, align 4
  %303 = load %struct.rtl_sta_info*, %struct.rtl_sta_info** %13, align 8
  %304 = getelementptr inbounds %struct.rtl_sta_info, %struct.rtl_sta_info* %303, i32 0, i32 1
  store i32 %302, i32* %304, align 4
  %305 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %306 = load i32, i32* @COMP_RATR, align 4
  %307 = load i32, i32* @DBG_DMESG, align 4
  %308 = load i32, i32* %14, align 4
  %309 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, ...) @RT_TRACE(%struct.rtl_priv* %305, i32 %306, i32 %307, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %308)
  %310 = load i32, i32* %14, align 4
  %311 = and i32 %310, 268435455
  %312 = load i32, i32* %15, align 4
  %313 = shl i32 %312, 28
  %314 = or i32 %311, %313
  %315 = bitcast [5 x i32]* %21 to i32*
  store i32 %314, i32* %315, align 16
  %316 = load i32, i32* %22, align 4
  %317 = load i32, i32* %20, align 4
  %318 = icmp ne i32 %317, 0
  %319 = zext i1 %318 to i64
  %320 = select i1 %318, i32 32, i32 0
  %321 = or i32 %316, %320
  %322 = or i32 %321, 128
  %323 = getelementptr inbounds [5 x i32], [5 x i32]* %21, i64 0, i64 4
  store i32 %322, i32* %323, align 16
  %324 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %325 = load i32, i32* @COMP_RATR, align 4
  %326 = load i32, i32* @DBG_DMESG, align 4
  %327 = load i32, i32* %15, align 4
  %328 = load i32, i32* %14, align 4
  %329 = getelementptr inbounds [5 x i32], [5 x i32]* %21, i64 0, i64 0
  %330 = load i32, i32* %329, align 16
  %331 = getelementptr inbounds [5 x i32], [5 x i32]* %21, i64 0, i64 1
  %332 = load i32, i32* %331, align 4
  %333 = getelementptr inbounds [5 x i32], [5 x i32]* %21, i64 0, i64 2
  %334 = load i32, i32* %333, align 8
  %335 = getelementptr inbounds [5 x i32], [5 x i32]* %21, i64 0, i64 3
  %336 = load i32, i32* %335, align 4
  %337 = getelementptr inbounds [5 x i32], [5 x i32]* %21, i64 0, i64 4
  %338 = load i32, i32* %337, align 16
  %339 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, ...) @RT_TRACE(%struct.rtl_priv* %324, i32 %325, i32 %326, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %327, i32 %328, i32 %330, i32 %332, i32 %334, i32 %336, i32 %338)
  %340 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %341 = load i32, i32* @H2C_RA_MASK, align 4
  %342 = getelementptr inbounds [5 x i32], [5 x i32]* %21, i64 0, i64 0
  %343 = call i32 @rtl8723e_fill_h2c_cmd(%struct.ieee80211_hw* %340, i32 %341, i32 5, i32* %342)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32, ...) #1

declare dso_local i32 @rtl8723e_fill_h2c_cmd(%struct.ieee80211_hw*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
