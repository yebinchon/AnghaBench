; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_hw.c_rtl88ee_update_hal_rate_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_hw.c_rtl88ee_update_hal_rate_mask.c"
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
@RATR_INX_WIRELESS_NGB = common dso_local global i32 0, align 4
@RF_1T2R = common dso_local global i32 0, align 4
@RF_1T1R = common dso_local global i32 0, align 4
@COMP_RATR = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"ratr_bitmap :%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"Rate_index:%x, ratr_val:%x, %x:%x:%x:%x:%x\0A\00", align 1
@H2C_88E_RA_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_sta*, i32, i32)* @rtl88ee_update_hal_rate_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl88ee_update_hal_rate_mask(%struct.ieee80211_hw* %0, %struct.ieee80211_sta* %1, i32 %2, i32 %3) #0 {
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
  switch i32 %146, label %289 [
    i32 131, label %147
    i32 130, label %159
    i32 129, label %177
    i32 128, label %177
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
  br label %303

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
  br label %303

177:                                              ; preds = %126, %126
  %178 = load i32, i32* @RATR_INX_WIRELESS_NGB, align 4
  store i32 %178, i32* %15, align 4
  %179 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %180 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @RF_1T2R, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %190, label %184

184:                                              ; preds = %177
  %185 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %186 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @RF_1T1R, align 4
  %189 = icmp eq i32 %187, %188
  br i1 %189, label %190, label %228

190:                                              ; preds = %184, %177
  %191 = load i32, i32* %16, align 4
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %210

193:                                              ; preds = %190
  %194 = load i32, i32* %7, align 4
  %195 = icmp eq i32 %194, 1
  br i1 %195, label %196, label %199

196:                                              ; preds = %193
  %197 = load i32, i32* %14, align 4
  %198 = and i32 %197, 983040
  store i32 %198, i32* %14, align 4
  br label %209

199:                                              ; preds = %193
  %200 = load i32, i32* %7, align 4
  %201 = icmp eq i32 %200, 2
  br i1 %201, label %202, label %205

202:                                              ; preds = %199
  %203 = load i32, i32* %14, align 4
  %204 = and i32 %203, 1044480
  store i32 %204, i32* %14, align 4
  br label %208

205:                                              ; preds = %199
  %206 = load i32, i32* %14, align 4
  %207 = and i32 %206, 1044501
  store i32 %207, i32* %14, align 4
  br label %208

208:                                              ; preds = %205, %202
  br label %209

209:                                              ; preds = %208, %196
  br label %227

210:                                              ; preds = %190
  %211 = load i32, i32* %7, align 4
  %212 = icmp eq i32 %211, 1
  br i1 %212, label %213, label %216

213:                                              ; preds = %210
  %214 = load i32, i32* %14, align 4
  %215 = and i32 %214, 983040
  store i32 %215, i32* %14, align 4
  br label %226

216:                                              ; preds = %210
  %217 = load i32, i32* %7, align 4
  %218 = icmp eq i32 %217, 2
  br i1 %218, label %219, label %222

219:                                              ; preds = %216
  %220 = load i32, i32* %14, align 4
  %221 = and i32 %220, 1044480
  store i32 %221, i32* %14, align 4
  br label %225

222:                                              ; preds = %216
  %223 = load i32, i32* %14, align 4
  %224 = and i32 %223, 1044485
  store i32 %224, i32* %14, align 4
  br label %225

225:                                              ; preds = %222, %219
  br label %226

226:                                              ; preds = %225, %213
  br label %227

227:                                              ; preds = %226, %209
  br label %266

228:                                              ; preds = %184
  %229 = load i32, i32* %16, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %248

231:                                              ; preds = %228
  %232 = load i32, i32* %7, align 4
  %233 = icmp eq i32 %232, 1
  br i1 %233, label %234, label %237

234:                                              ; preds = %231
  %235 = load i32, i32* %14, align 4
  %236 = and i32 %235, 261029888
  store i32 %236, i32* %14, align 4
  br label %247

237:                                              ; preds = %231
  %238 = load i32, i32* %7, align 4
  %239 = icmp eq i32 %238, 2
  br i1 %239, label %240, label %243

240:                                              ; preds = %237
  %241 = load i32, i32* %14, align 4
  %242 = and i32 %241, 261091328
  store i32 %242, i32* %14, align 4
  br label %246

243:                                              ; preds = %237
  %244 = load i32, i32* %14, align 4
  %245 = and i32 %244, 261091349
  store i32 %245, i32* %14, align 4
  br label %246

246:                                              ; preds = %243, %240
  br label %247

247:                                              ; preds = %246, %234
  br label %265

248:                                              ; preds = %228
  %249 = load i32, i32* %7, align 4
  %250 = icmp eq i32 %249, 1
  br i1 %250, label %251, label %254

251:                                              ; preds = %248
  %252 = load i32, i32* %14, align 4
  %253 = and i32 %252, 261029888
  store i32 %253, i32* %14, align 4
  br label %264

254:                                              ; preds = %248
  %255 = load i32, i32* %7, align 4
  %256 = icmp eq i32 %255, 2
  br i1 %256, label %257, label %260

257:                                              ; preds = %254
  %258 = load i32, i32* %14, align 4
  %259 = and i32 %258, 261091328
  store i32 %259, i32* %14, align 4
  br label %263

260:                                              ; preds = %254
  %261 = load i32, i32* %14, align 4
  %262 = and i32 %261, 261091333
  store i32 %262, i32* %14, align 4
  br label %263

263:                                              ; preds = %260, %257
  br label %264

264:                                              ; preds = %263, %251
  br label %265

265:                                              ; preds = %264, %247
  br label %266

266:                                              ; preds = %265, %227
  %267 = load i32, i32* %16, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %272

269:                                              ; preds = %266
  %270 = load i32, i32* %17, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %278, label %272

272:                                              ; preds = %269, %266
  %273 = load i32, i32* %16, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %288, label %275

275:                                              ; preds = %272
  %276 = load i32, i32* %18, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %288

278:                                              ; preds = %275, %269
  %279 = load i32, i32* %22, align 4
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %281, label %282

281:                                              ; preds = %278
  store i32 1, i32* %20, align 4
  br label %287

282:                                              ; preds = %278
  %283 = load i32, i32* %22, align 4
  %284 = icmp eq i32 %283, 1
  br i1 %284, label %285, label %286

285:                                              ; preds = %282
  store i32 0, i32* %20, align 4
  br label %286

286:                                              ; preds = %285, %282
  br label %287

287:                                              ; preds = %286, %281
  br label %288

288:                                              ; preds = %287, %275, %272
  br label %303

289:                                              ; preds = %126
  %290 = load i32, i32* @RATR_INX_WIRELESS_NGB, align 4
  store i32 %290, i32* %15, align 4
  %291 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %292 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 4
  %294 = load i32, i32* @RF_1T2R, align 4
  %295 = icmp eq i32 %293, %294
  br i1 %295, label %296, label %299

296:                                              ; preds = %289
  %297 = load i32, i32* %14, align 4
  %298 = and i32 %297, 1044735
  store i32 %298, i32* %14, align 4
  br label %302

299:                                              ; preds = %289
  %300 = load i32, i32* %14, align 4
  %301 = and i32 %300, 252702975
  store i32 %301, i32* %14, align 4
  br label %302

302:                                              ; preds = %299, %296
  br label %303

303:                                              ; preds = %302, %288, %176, %158
  %304 = load i32, i32* %15, align 4
  %305 = load %struct.rtl_sta_info*, %struct.rtl_sta_info** %13, align 8
  %306 = getelementptr inbounds %struct.rtl_sta_info, %struct.rtl_sta_info* %305, i32 0, i32 1
  store i32 %304, i32* %306, align 4
  %307 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %308 = load i32, i32* @COMP_RATR, align 4
  %309 = load i32, i32* @DBG_DMESG, align 4
  %310 = load i32, i32* %14, align 4
  %311 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, ...) @RT_TRACE(%struct.rtl_priv* %307, i32 %308, i32 %309, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %310)
  %312 = load i32, i32* %14, align 4
  %313 = and i32 %312, 268435455
  %314 = load i32, i32* %15, align 4
  %315 = shl i32 %314, 28
  %316 = or i32 %313, %315
  %317 = bitcast [5 x i32]* %21 to i32*
  store i32 %316, i32* %317, align 16
  %318 = load i32, i32* %22, align 4
  %319 = load i32, i32* %20, align 4
  %320 = icmp ne i32 %319, 0
  %321 = zext i1 %320 to i64
  %322 = select i1 %320, i32 32, i32 0
  %323 = or i32 %318, %322
  %324 = or i32 %323, 128
  %325 = getelementptr inbounds [5 x i32], [5 x i32]* %21, i64 0, i64 4
  store i32 %324, i32* %325, align 16
  %326 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %327 = load i32, i32* @COMP_RATR, align 4
  %328 = load i32, i32* @DBG_DMESG, align 4
  %329 = load i32, i32* %15, align 4
  %330 = load i32, i32* %14, align 4
  %331 = getelementptr inbounds [5 x i32], [5 x i32]* %21, i64 0, i64 0
  %332 = load i32, i32* %331, align 16
  %333 = getelementptr inbounds [5 x i32], [5 x i32]* %21, i64 0, i64 1
  %334 = load i32, i32* %333, align 4
  %335 = getelementptr inbounds [5 x i32], [5 x i32]* %21, i64 0, i64 2
  %336 = load i32, i32* %335, align 8
  %337 = getelementptr inbounds [5 x i32], [5 x i32]* %21, i64 0, i64 3
  %338 = load i32, i32* %337, align 4
  %339 = getelementptr inbounds [5 x i32], [5 x i32]* %21, i64 0, i64 4
  %340 = load i32, i32* %339, align 16
  %341 = call i32 (%struct.rtl_priv*, i32, i32, i8*, i32, ...) @RT_TRACE(%struct.rtl_priv* %326, i32 %327, i32 %328, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %329, i32 %330, i32 %332, i32 %334, i32 %336, i32 %338, i32 %340)
  %342 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %343 = load i32, i32* @H2C_88E_RA_MASK, align 4
  %344 = getelementptr inbounds [5 x i32], [5 x i32]* %21, i64 0, i64 0
  %345 = call i32 @rtl88e_fill_h2c_cmd(%struct.ieee80211_hw* %342, i32 %343, i32 5, i32* %344)
  %346 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %347 = call i32 @BIT(i32 3)
  %348 = call i32 @_rtl88ee_set_bcn_ctrl_reg(%struct.ieee80211_hw* %346, i32 %347, i32 0)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32, ...) #1

declare dso_local i32 @rtl88e_fill_h2c_cmd(%struct.ieee80211_hw*, i32, i32, i32*) #1

declare dso_local i32 @_rtl88ee_set_bcn_ctrl_reg(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
