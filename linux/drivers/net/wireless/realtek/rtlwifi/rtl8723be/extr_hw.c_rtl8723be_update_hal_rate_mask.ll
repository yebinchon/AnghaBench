; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_hw.c_rtl8723be_update_hal_rate_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_hw.c_rtl8723be_update_hal_rate_mask.c"
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
@RF_1T1R = common dso_local global i32 0, align 4
@RF_1T2R = common dso_local global i32 0, align 4
@COMP_RATR = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"ratr_bitmap :%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Rate_index:%x, ratr_val:%x, %x:%x:%x:%x:%x:%x:%x\0A\00", align 1
@H2C_8723B_RA_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_sta*, i32, i32)* @rtl8723be_update_hal_rate_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8723be_update_hal_rate_mask(%struct.ieee80211_hw* %0, %struct.ieee80211_sta* %1, i32 %2, i32 %3) #0 {
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
  store i32 0, i32* %21, align 4
  %56 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %57 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to %struct.rtl_sta_info*
  store %struct.rtl_sta_info* %59, %struct.rtl_sta_info** %12, align 8
  %60 = load %struct.rtl_sta_info*, %struct.rtl_sta_info** %12, align 8
  %61 = getelementptr inbounds %struct.rtl_sta_info, %struct.rtl_sta_info* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %18, align 4
  %63 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %64 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %74, label %68

68:                                               ; preds = %4
  %69 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %70 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @NL80211_IFTYPE_MESH_POINT, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %68, %4
  %75 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %76 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %15, align 4
  br label %96

78:                                               ; preds = %68
  %79 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %80 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %90, label %84

84:                                               ; preds = %78
  %85 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %86 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %84, %78
  %91 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %92 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %21, align 4
  br label %95

95:                                               ; preds = %90, %84
  br label %96

96:                                               ; preds = %95, %74
  %97 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %98 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %13, align 4
  %102 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %103 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %108

107:                                              ; preds = %96
  store i32 4095, i32* %13, align 4
  br label %108

108:                                              ; preds = %107, %96
  %109 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %110 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 1
  %115 = load i32, i32* %114, align 4
  %116 = shl i32 %115, 20
  %117 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %118 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 0
  %123 = load i32, i32* %122, align 4
  %124 = shl i32 %123, 12
  %125 = or i32 %116, %124
  %126 = load i32, i32* %13, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %13, align 4
  %128 = load i32, i32* %18, align 4
  switch i32 %128, label %265 [
    i32 131, label %129
    i32 130, label %141
    i32 129, label %159
    i32 128, label %159
  ]

129:                                              ; preds = %108
  %130 = load i32, i32* @RATR_INX_WIRELESS_B, align 4
  store i32 %130, i32* %14, align 4
  %131 = load i32, i32* %13, align 4
  %132 = and i32 %131, 12
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %129
  %135 = load i32, i32* %13, align 4
  %136 = and i32 %135, 13
  store i32 %136, i32* %13, align 4
  br label %140

137:                                              ; preds = %129
  %138 = load i32, i32* %13, align 4
  %139 = and i32 %138, 15
  store i32 %139, i32* %13, align 4
  br label %140

140:                                              ; preds = %137, %134
  br label %279

141:                                              ; preds = %108
  %142 = load i32, i32* @RATR_INX_WIRELESS_GB, align 4
  store i32 %142, i32* %14, align 4
  %143 = load i32, i32* %7, align 4
  %144 = icmp eq i32 %143, 1
  br i1 %144, label %145, label %148

145:                                              ; preds = %141
  %146 = load i32, i32* %13, align 4
  %147 = and i32 %146, 3840
  store i32 %147, i32* %13, align 4
  br label %158

148:                                              ; preds = %141
  %149 = load i32, i32* %7, align 4
  %150 = icmp eq i32 %149, 2
  br i1 %150, label %151, label %154

151:                                              ; preds = %148
  %152 = load i32, i32* %13, align 4
  %153 = and i32 %152, 4080
  store i32 %153, i32* %13, align 4
  br label %157

154:                                              ; preds = %148
  %155 = load i32, i32* %13, align 4
  %156 = and i32 %155, 4085
  store i32 %156, i32* %13, align 4
  br label %157

157:                                              ; preds = %154, %151
  br label %158

158:                                              ; preds = %157, %145
  br label %279

159:                                              ; preds = %108, %108
  %160 = load i32, i32* @RATR_INX_WIRELESS_NGB, align 4
  store i32 %160, i32* %14, align 4
  %161 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %162 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @RF_1T1R, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %204

166:                                              ; preds = %159
  %167 = load i32, i32* %15, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %186

169:                                              ; preds = %166
  %170 = load i32, i32* %7, align 4
  %171 = icmp eq i32 %170, 1
  br i1 %171, label %172, label %175

172:                                              ; preds = %169
  %173 = load i32, i32* %13, align 4
  %174 = and i32 %173, 983040
  store i32 %174, i32* %13, align 4
  br label %185

175:                                              ; preds = %169
  %176 = load i32, i32* %7, align 4
  %177 = icmp eq i32 %176, 2
  br i1 %177, label %178, label %181

178:                                              ; preds = %175
  %179 = load i32, i32* %13, align 4
  %180 = and i32 %179, 1044480
  store i32 %180, i32* %13, align 4
  br label %184

181:                                              ; preds = %175
  %182 = load i32, i32* %13, align 4
  %183 = and i32 %182, 1044501
  store i32 %183, i32* %13, align 4
  br label %184

184:                                              ; preds = %181, %178
  br label %185

185:                                              ; preds = %184, %172
  br label %203

186:                                              ; preds = %166
  %187 = load i32, i32* %7, align 4
  %188 = icmp eq i32 %187, 1
  br i1 %188, label %189, label %192

189:                                              ; preds = %186
  %190 = load i32, i32* %13, align 4
  %191 = and i32 %190, 983040
  store i32 %191, i32* %13, align 4
  br label %202

192:                                              ; preds = %186
  %193 = load i32, i32* %7, align 4
  %194 = icmp eq i32 %193, 2
  br i1 %194, label %195, label %198

195:                                              ; preds = %192
  %196 = load i32, i32* %13, align 4
  %197 = and i32 %196, 1044480
  store i32 %197, i32* %13, align 4
  br label %201

198:                                              ; preds = %192
  %199 = load i32, i32* %13, align 4
  %200 = and i32 %199, 1044485
  store i32 %200, i32* %13, align 4
  br label %201

201:                                              ; preds = %198, %195
  br label %202

202:                                              ; preds = %201, %189
  br label %203

203:                                              ; preds = %202, %185
  br label %242

204:                                              ; preds = %159
  %205 = load i32, i32* %15, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %224

207:                                              ; preds = %204
  %208 = load i32, i32* %7, align 4
  %209 = icmp eq i32 %208, 1
  br i1 %209, label %210, label %213

210:                                              ; preds = %207
  %211 = load i32, i32* %13, align 4
  %212 = and i32 %211, 261029888
  store i32 %212, i32* %13, align 4
  br label %223

213:                                              ; preds = %207
  %214 = load i32, i32* %7, align 4
  %215 = icmp eq i32 %214, 2
  br i1 %215, label %216, label %219

216:                                              ; preds = %213
  %217 = load i32, i32* %13, align 4
  %218 = and i32 %217, 261091328
  store i32 %218, i32* %13, align 4
  br label %222

219:                                              ; preds = %213
  %220 = load i32, i32* %13, align 4
  %221 = and i32 %220, 261091349
  store i32 %221, i32* %13, align 4
  br label %222

222:                                              ; preds = %219, %216
  br label %223

223:                                              ; preds = %222, %210
  br label %241

224:                                              ; preds = %204
  %225 = load i32, i32* %7, align 4
  %226 = icmp eq i32 %225, 1
  br i1 %226, label %227, label %230

227:                                              ; preds = %224
  %228 = load i32, i32* %13, align 4
  %229 = and i32 %228, 261029888
  store i32 %229, i32* %13, align 4
  br label %240

230:                                              ; preds = %224
  %231 = load i32, i32* %7, align 4
  %232 = icmp eq i32 %231, 2
  br i1 %232, label %233, label %236

233:                                              ; preds = %230
  %234 = load i32, i32* %13, align 4
  %235 = and i32 %234, 261091328
  store i32 %235, i32* %13, align 4
  br label %239

236:                                              ; preds = %230
  %237 = load i32, i32* %13, align 4
  %238 = and i32 %237, 261091333
  store i32 %238, i32* %13, align 4
  br label %239

239:                                              ; preds = %236, %233
  br label %240

240:                                              ; preds = %239, %227
  br label %241

241:                                              ; preds = %240, %223
  br label %242

242:                                              ; preds = %241, %203
  %243 = load i32, i32* %15, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %248

245:                                              ; preds = %242
  %246 = load i32, i32* %16, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %254, label %248

248:                                              ; preds = %245, %242
  %249 = load i32, i32* %15, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %264, label %251

251:                                              ; preds = %248
  %252 = load i32, i32* %17, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %264

254:                                              ; preds = %251, %245
  %255 = load i32, i32* %21, align 4
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %258

257:                                              ; preds = %254
  store i32 1, i32* %19, align 4
  br label %263

258:                                              ; preds = %254
  %259 = load i32, i32* %21, align 4
  %260 = icmp eq i32 %259, 1
  br i1 %260, label %261, label %262

261:                                              ; preds = %258
  store i32 0, i32* %19, align 4
  br label %262

262:                                              ; preds = %261, %258
  br label %263

263:                                              ; preds = %262, %257
  br label %264

264:                                              ; preds = %263, %251, %248
  br label %279

265:                                              ; preds = %108
  %266 = load i32, i32* @RATR_INX_WIRELESS_NGB, align 4
  store i32 %266, i32* %14, align 4
  %267 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %268 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* @RF_1T2R, align 4
  %271 = icmp eq i32 %269, %270
  br i1 %271, label %272, label %275

272:                                              ; preds = %265
  %273 = load i32, i32* %13, align 4
  %274 = and i32 %273, 1044735
  store i32 %274, i32* %13, align 4
  br label %278

275:                                              ; preds = %265
  %276 = load i32, i32* %13, align 4
  %277 = and i32 %276, 252702975
  store i32 %277, i32* %13, align 4
  br label %278

278:                                              ; preds = %275, %272
  br label %279

279:                                              ; preds = %278, %264, %158, %140
  %280 = load i32, i32* %14, align 4
  %281 = load %struct.rtl_sta_info*, %struct.rtl_sta_info** %12, align 8
  %282 = getelementptr inbounds %struct.rtl_sta_info, %struct.rtl_sta_info* %281, i32 0, i32 1
  store i32 %280, i32* %282, align 4
  %283 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %284 = load i32, i32* @COMP_RATR, align 4
  %285 = load i32, i32* @DBG_DMESG, align 4
  %286 = load i32, i32* %13, align 4
  %287 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, ...) @RT_TRACE(%struct.rtl_priv* %283, i32 %284, i32 %285, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %286)
  %288 = load i32, i32* %13, align 4
  %289 = and i32 %288, 268435455
  %290 = load i32, i32* %14, align 4
  %291 = shl i32 %290, 28
  %292 = or i32 %289, %291
  %293 = bitcast [7 x i32]* %20 to i32*
  store i32 %292, i32* %293, align 16
  %294 = load i32, i32* %21, align 4
  %295 = getelementptr inbounds [7 x i32], [7 x i32]* %20, i64 0, i64 0
  store i32 %294, i32* %295, align 16
  %296 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %297 = load i32, i32* %14, align 4
  %298 = call i32 @_rtl8723be_mrate_idx_to_arfr_id(%struct.ieee80211_hw* %296, i32 %297)
  %299 = load i32, i32* %19, align 4
  %300 = icmp ne i32 %299, 0
  %301 = zext i1 %300 to i64
  %302 = select i1 %300, i32 128, i32 0
  %303 = or i32 %298, %302
  %304 = getelementptr inbounds [7 x i32], [7 x i32]* %20, i64 0, i64 1
  store i32 %303, i32* %304, align 4
  %305 = load i32, i32* %15, align 4
  %306 = load i32, i32* %8, align 4
  %307 = icmp ne i32 %306, 0
  %308 = xor i1 %307, true
  %309 = zext i1 %308 to i32
  %310 = shl i32 %309, 3
  %311 = or i32 %305, %310
  %312 = getelementptr inbounds [7 x i32], [7 x i32]* %20, i64 0, i64 2
  store i32 %311, i32* %312, align 8
  %313 = load i32, i32* %13, align 4
  %314 = and i32 %313, 255
  %315 = getelementptr inbounds [7 x i32], [7 x i32]* %20, i64 0, i64 3
  store i32 %314, i32* %315, align 4
  %316 = load i32, i32* %13, align 4
  %317 = and i32 %316, 65280
  %318 = ashr i32 %317, 8
  %319 = getelementptr inbounds [7 x i32], [7 x i32]* %20, i64 0, i64 4
  store i32 %318, i32* %319, align 16
  %320 = load i32, i32* %13, align 4
  %321 = and i32 %320, 16711680
  %322 = ashr i32 %321, 16
  %323 = getelementptr inbounds [7 x i32], [7 x i32]* %20, i64 0, i64 5
  store i32 %322, i32* %323, align 4
  %324 = load i32, i32* %13, align 4
  %325 = and i32 %324, -16777216
  %326 = lshr i32 %325, 24
  %327 = getelementptr inbounds [7 x i32], [7 x i32]* %20, i64 0, i64 6
  store i32 %326, i32* %327, align 8
  %328 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %329 = load i32, i32* @COMP_RATR, align 4
  %330 = load i32, i32* @DBG_DMESG, align 4
  %331 = load i32, i32* %14, align 4
  %332 = load i32, i32* %13, align 4
  %333 = getelementptr inbounds [7 x i32], [7 x i32]* %20, i64 0, i64 0
  %334 = load i32, i32* %333, align 16
  %335 = getelementptr inbounds [7 x i32], [7 x i32]* %20, i64 0, i64 1
  %336 = load i32, i32* %335, align 4
  %337 = getelementptr inbounds [7 x i32], [7 x i32]* %20, i64 0, i64 2
  %338 = load i32, i32* %337, align 8
  %339 = getelementptr inbounds [7 x i32], [7 x i32]* %20, i64 0, i64 3
  %340 = load i32, i32* %339, align 4
  %341 = getelementptr inbounds [7 x i32], [7 x i32]* %20, i64 0, i64 4
  %342 = load i32, i32* %341, align 16
  %343 = getelementptr inbounds [7 x i32], [7 x i32]* %20, i64 0, i64 5
  %344 = load i32, i32* %343, align 4
  %345 = getelementptr inbounds [7 x i32], [7 x i32]* %20, i64 0, i64 6
  %346 = load i32, i32* %345, align 8
  %347 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, ...) @RT_TRACE(%struct.rtl_priv* %328, i32 %329, i32 %330, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %331, i32 %332, i32 %334, i32 %336, i32 %338, i32 %340, i32 %342, i32 %344, i32 %346)
  %348 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %349 = load i32, i32* @H2C_8723B_RA_MASK, align 4
  %350 = getelementptr inbounds [7 x i32], [7 x i32]* %20, i64 0, i64 0
  %351 = call i32 @rtl8723be_fill_h2c_cmd(%struct.ieee80211_hw* %348, i32 %349, i32 7, i32* %350)
  %352 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %353 = call i32 @BIT(i32 3)
  %354 = call i32 @_rtl8723be_set_bcn_ctrl_reg(%struct.ieee80211_hw* %352, i32 %353, i32 0)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32, ...) #1

declare dso_local i32 @_rtl8723be_mrate_idx_to_arfr_id(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @rtl8723be_fill_h2c_cmd(%struct.ieee80211_hw*, i32, i32, i32*) #1

declare dso_local i32 @_rtl8723be_set_bcn_ctrl_reg(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
