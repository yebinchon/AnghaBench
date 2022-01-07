; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_hw.c_rtl92se_update_hal_rate_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_hw.c_rtl92se_update_hal_rate_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_sta = type { i64, i32, i32*, %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.rtl_priv = type { %struct.TYPE_6__, %struct.rtl_phy }
%struct.TYPE_6__ = type { i64 }
%struct.rtl_phy = type { i32 }
%struct.rtl_mac = type { i64, i32 }
%struct.rtl_hal = type { i64 }
%struct.rtl_sta_info = type { i32, i32 }

@IEEE80211_STA_RX_BW_40 = common dso_local global i64 0, align 8
@IEEE80211_HT_CAP_SGI_40 = common dso_local global i32 0, align 4
@IEEE80211_HT_CAP_SGI_20 = common dso_local global i32 0, align 4
@IEEE80211_SMPS_OFF = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@BAND_ON_5G = common dso_local global i64 0, align 8
@WIRELESS_11B = common dso_local global i32 0, align 4
@RATR_INX_WIRELESS_B = common dso_local global i32 0, align 4
@WIRELESS_11G = common dso_local global i32 0, align 4
@RATR_INX_WIRELESS_GB = common dso_local global i32 0, align 4
@WIRELESS_11A = common dso_local global i32 0, align 4
@RATR_INX_WIRELESS_A = common dso_local global i32 0, align 4
@WIRELESS_11N = common dso_local global i32 0, align 4
@RATR_INX_WIRELESS_NGB = common dso_local global i32 0, align 4
@IEEE80211_SMPS_STATIC = common dso_local global i32 0, align 4
@RF_1T2R = common dso_local global i32 0, align 4
@RF_1T1R = common dso_local global i32 0, align 4
@VERSION_8192S_BCUT = common dso_local global i64 0, align 8
@VERSION_8192S_ACUT = common dso_local global i64 0, align 8
@SG_RATE = common dso_local global i32 0, align 4
@COMP_RATR = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"mask = %x, bitmap = %x\0A\00", align 1
@WFM5 = common dso_local global i32 0, align 4
@FW_RA_UPDATE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_sta*, i32, i32)* @rtl92se_update_hal_rate_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl92se_update_hal_rate_mask(%struct.ieee80211_hw* %0, %struct.ieee80211_sta* %1, i32 %2, i32 %3) #0 {
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
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %28 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %29 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %28)
  store %struct.rtl_priv* %29, %struct.rtl_priv** %9, align 8
  %30 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %31 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %30, i32 0, i32 1
  store %struct.rtl_phy* %31, %struct.rtl_phy** %10, align 8
  %32 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %33 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %32)
  %34 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %33)
  store %struct.rtl_mac* %34, %struct.rtl_mac** %11, align 8
  %35 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %36 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %35)
  %37 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %36)
  store %struct.rtl_hal* %37, %struct.rtl_hal** %12, align 8
  store %struct.rtl_sta_info* null, %struct.rtl_sta_info** %13, align 8
  store i32 0, i32* %15, align 4
  %38 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %39 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @IEEE80211_STA_RX_BW_40, align 8
  %42 = icmp sge i64 %40, %41
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 1, i32 0
  store i32 %44, i32* %16, align 4
  %45 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %46 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @IEEE80211_HT_CAP_SGI_40, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i32 1, i32 0
  store i32 %53, i32* %17, align 4
  %54 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %55 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @IEEE80211_HT_CAP_SGI_20, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 1, i32 0
  store i32 %62, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  %63 = load i32, i32* @IEEE80211_SMPS_OFF, align 4
  store i32 %63, i32* %27, align 4
  %64 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %65 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to %struct.rtl_sta_info*
  store %struct.rtl_sta_info* %67, %struct.rtl_sta_info** %13, align 8
  %68 = load %struct.rtl_sta_info*, %struct.rtl_sta_info** %13, align 8
  %69 = getelementptr inbounds %struct.rtl_sta_info, %struct.rtl_sta_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %19, align 4
  %71 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %72 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %4
  %77 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %78 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %16, align 4
  br label %98

80:                                               ; preds = %4
  %81 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %82 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %92, label %86

86:                                               ; preds = %80
  %87 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %88 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %86, %80
  %93 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %94 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %26, align 4
  br label %97

97:                                               ; preds = %92, %86
  br label %98

98:                                               ; preds = %97, %76
  %99 = load %struct.rtl_hal*, %struct.rtl_hal** %12, align 8
  %100 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @BAND_ON_5G, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %111

104:                                              ; preds = %98
  %105 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %106 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 1
  %109 = load i32, i32* %108, align 4
  %110 = shl i32 %109, 4
  store i32 %110, i32* %14, align 4
  br label %117

111:                                              ; preds = %98
  %112 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %113 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %112, i32 0, i32 2
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 0
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %14, align 4
  br label %117

117:                                              ; preds = %111, %104
  %118 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %119 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %117
  store i32 4095, i32* %14, align 4
  br label %124

124:                                              ; preds = %123, %117
  %125 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %126 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 1
  %131 = load i32, i32* %130, align 4
  %132 = shl i32 %131, 20
  %133 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %134 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  %139 = load i32, i32* %138, align 4
  %140 = shl i32 %139, 12
  %141 = or i32 %132, %140
  %142 = load i32, i32* %14, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %14, align 4
  %144 = load i32, i32* %19, align 4
  switch i32 %144, label %317 [
    i32 131, label %145
    i32 130, label %160
    i32 132, label %183
    i32 129, label %190
    i32 128, label %190
  ]

145:                                              ; preds = %124
  %146 = load i32, i32* @WIRELESS_11B, align 4
  %147 = load i32, i32* %24, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %24, align 4
  %149 = load i32, i32* @RATR_INX_WIRELESS_B, align 4
  store i32 %149, i32* %15, align 4
  %150 = load i32, i32* %14, align 4
  %151 = and i32 %150, 12
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %145
  %154 = load i32, i32* %14, align 4
  %155 = and i32 %154, 13
  store i32 %155, i32* %14, align 4
  br label %159

156:                                              ; preds = %145
  %157 = load i32, i32* %14, align 4
  %158 = and i32 %157, 15
  store i32 %158, i32* %14, align 4
  br label %159

159:                                              ; preds = %156, %153
  br label %338

160:                                              ; preds = %124
  %161 = load i32, i32* @WIRELESS_11G, align 4
  %162 = load i32, i32* @WIRELESS_11B, align 4
  %163 = or i32 %161, %162
  %164 = load i32, i32* %24, align 4
  %165 = or i32 %164, %163
  store i32 %165, i32* %24, align 4
  %166 = load i32, i32* @RATR_INX_WIRELESS_GB, align 4
  store i32 %166, i32* %15, align 4
  %167 = load i32, i32* %7, align 4
  %168 = icmp eq i32 %167, 1
  br i1 %168, label %169, label %172

169:                                              ; preds = %160
  %170 = load i32, i32* %14, align 4
  %171 = and i32 %170, 3840
  store i32 %171, i32* %14, align 4
  br label %182

172:                                              ; preds = %160
  %173 = load i32, i32* %7, align 4
  %174 = icmp eq i32 %173, 2
  br i1 %174, label %175, label %178

175:                                              ; preds = %172
  %176 = load i32, i32* %14, align 4
  %177 = and i32 %176, 4080
  store i32 %177, i32* %14, align 4
  br label %181

178:                                              ; preds = %172
  %179 = load i32, i32* %14, align 4
  %180 = and i32 %179, 4085
  store i32 %180, i32* %14, align 4
  br label %181

181:                                              ; preds = %178, %175
  br label %182

182:                                              ; preds = %181, %169
  br label %338

183:                                              ; preds = %124
  %184 = load i32, i32* @WIRELESS_11A, align 4
  %185 = load i32, i32* %24, align 4
  %186 = or i32 %185, %184
  store i32 %186, i32* %24, align 4
  %187 = load i32, i32* @RATR_INX_WIRELESS_A, align 4
  store i32 %187, i32* %15, align 4
  %188 = load i32, i32* %14, align 4
  %189 = and i32 %188, 4080
  store i32 %189, i32* %14, align 4
  br label %338

190:                                              ; preds = %124, %124
  %191 = load i32, i32* @WIRELESS_11N, align 4
  %192 = load i32, i32* @WIRELESS_11G, align 4
  %193 = or i32 %191, %192
  %194 = load i32, i32* @WIRELESS_11B, align 4
  %195 = or i32 %193, %194
  %196 = load i32, i32* %24, align 4
  %197 = or i32 %196, %195
  store i32 %197, i32* %24, align 4
  %198 = load i32, i32* @RATR_INX_WIRELESS_NGB, align 4
  store i32 %198, i32* %15, align 4
  %199 = load i32, i32* %27, align 4
  %200 = load i32, i32* @IEEE80211_SMPS_STATIC, align 4
  %201 = icmp eq i32 %199, %200
  br i1 %201, label %202, label %219

202:                                              ; preds = %190
  %203 = load i32, i32* %7, align 4
  %204 = icmp eq i32 %203, 1
  br i1 %204, label %205, label %208

205:                                              ; preds = %202
  %206 = load i32, i32* %14, align 4
  %207 = and i32 %206, 458752
  store i32 %207, i32* %14, align 4
  br label %218

208:                                              ; preds = %202
  %209 = load i32, i32* %7, align 4
  %210 = icmp eq i32 %209, 2
  br i1 %210, label %211, label %214

211:                                              ; preds = %208
  %212 = load i32, i32* %14, align 4
  %213 = and i32 %212, 520192
  store i32 %213, i32* %14, align 4
  br label %217

214:                                              ; preds = %208
  %215 = load i32, i32* %14, align 4
  %216 = and i32 %215, 520197
  store i32 %216, i32* %14, align 4
  br label %217

217:                                              ; preds = %214, %211
  br label %218

218:                                              ; preds = %217, %205
  br label %294

219:                                              ; preds = %190
  %220 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %221 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* @RF_1T2R, align 4
  %224 = icmp eq i32 %222, %223
  br i1 %224, label %231, label %225

225:                                              ; preds = %219
  %226 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %227 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* @RF_1T1R, align 4
  %230 = icmp eq i32 %228, %229
  br i1 %230, label %231, label %262

231:                                              ; preds = %225, %219
  %232 = load i32, i32* %7, align 4
  %233 = icmp eq i32 %232, 1
  br i1 %233, label %234, label %237

234:                                              ; preds = %231
  %235 = load i32, i32* %14, align 4
  %236 = and i32 %235, 983040
  store i32 %236, i32* %14, align 4
  br label %261

237:                                              ; preds = %231
  %238 = load i32, i32* %7, align 4
  %239 = icmp eq i32 %238, 3
  br i1 %239, label %240, label %243

240:                                              ; preds = %237
  %241 = load i32, i32* %14, align 4
  %242 = and i32 %241, 1032192
  store i32 %242, i32* %14, align 4
  br label %260

243:                                              ; preds = %237
  %244 = load i32, i32* %7, align 4
  %245 = icmp eq i32 %244, 5
  br i1 %245, label %246, label %249

246:                                              ; preds = %243
  %247 = load i32, i32* %14, align 4
  %248 = and i32 %247, 1044480
  store i32 %248, i32* %14, align 4
  br label %259

249:                                              ; preds = %243
  %250 = load i32, i32* %16, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %255

252:                                              ; preds = %249
  %253 = load i32, i32* %14, align 4
  %254 = and i32 %253, 1044501
  store i32 %254, i32* %14, align 4
  br label %258

255:                                              ; preds = %249
  %256 = load i32, i32* %14, align 4
  %257 = and i32 %256, 1044485
  store i32 %257, i32* %14, align 4
  br label %258

258:                                              ; preds = %255, %252
  br label %259

259:                                              ; preds = %258, %246
  br label %260

260:                                              ; preds = %259, %240
  br label %261

261:                                              ; preds = %260, %234
  br label %293

262:                                              ; preds = %225
  %263 = load i32, i32* %7, align 4
  %264 = icmp eq i32 %263, 1
  br i1 %264, label %265, label %268

265:                                              ; preds = %262
  %266 = load i32, i32* %14, align 4
  %267 = and i32 %266, 261029888
  store i32 %267, i32* %14, align 4
  br label %292

268:                                              ; preds = %262
  %269 = load i32, i32* %7, align 4
  %270 = icmp eq i32 %269, 3
  br i1 %270, label %271, label %274

271:                                              ; preds = %268
  %272 = load i32, i32* %14, align 4
  %273 = and i32 %272, 261079040
  store i32 %273, i32* %14, align 4
  br label %291

274:                                              ; preds = %268
  %275 = load i32, i32* %7, align 4
  %276 = icmp eq i32 %275, 5
  br i1 %276, label %277, label %280

277:                                              ; preds = %274
  %278 = load i32, i32* %14, align 4
  %279 = and i32 %278, 261091328
  store i32 %279, i32* %14, align 4
  br label %290

280:                                              ; preds = %274
  %281 = load i32, i32* %16, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %286

283:                                              ; preds = %280
  %284 = load i32, i32* %14, align 4
  %285 = and i32 %284, 261091349
  store i32 %285, i32* %14, align 4
  br label %289

286:                                              ; preds = %280
  %287 = load i32, i32* %14, align 4
  %288 = and i32 %287, 261091333
  store i32 %288, i32* %14, align 4
  br label %289

289:                                              ; preds = %286, %283
  br label %290

290:                                              ; preds = %289, %277
  br label %291

291:                                              ; preds = %290, %271
  br label %292

292:                                              ; preds = %291, %265
  br label %293

293:                                              ; preds = %292, %261
  br label %294

294:                                              ; preds = %293, %218
  %295 = load i32, i32* %16, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %300

297:                                              ; preds = %294
  %298 = load i32, i32* %17, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %306, label %300

300:                                              ; preds = %297, %294
  %301 = load i32, i32* %16, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %316, label %303

303:                                              ; preds = %300
  %304 = load i32, i32* %18, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %316

306:                                              ; preds = %303, %297
  %307 = load i32, i32* %26, align 4
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %309, label %310

309:                                              ; preds = %306
  store i32 1, i32* %20, align 4
  br label %315

310:                                              ; preds = %306
  %311 = load i32, i32* %26, align 4
  %312 = icmp eq i32 %311, 1
  br i1 %312, label %313, label %314

313:                                              ; preds = %310
  store i32 0, i32* %20, align 4
  br label %314

314:                                              ; preds = %313, %310
  br label %315

315:                                              ; preds = %314, %309
  br label %316

316:                                              ; preds = %315, %303, %300
  br label %338

317:                                              ; preds = %124
  %318 = load i32, i32* @WIRELESS_11N, align 4
  %319 = load i32, i32* @WIRELESS_11G, align 4
  %320 = or i32 %318, %319
  %321 = load i32, i32* @WIRELESS_11B, align 4
  %322 = or i32 %320, %321
  %323 = load i32, i32* %24, align 4
  %324 = or i32 %323, %322
  store i32 %324, i32* %24, align 4
  %325 = load i32, i32* @RATR_INX_WIRELESS_NGB, align 4
  store i32 %325, i32* %15, align 4
  %326 = load %struct.rtl_phy*, %struct.rtl_phy** %10, align 8
  %327 = getelementptr inbounds %struct.rtl_phy, %struct.rtl_phy* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 4
  %329 = load i32, i32* @RF_1T2R, align 4
  %330 = icmp eq i32 %328, %329
  br i1 %330, label %331, label %334

331:                                              ; preds = %317
  %332 = load i32, i32* %14, align 4
  %333 = and i32 %332, 1044735
  store i32 %333, i32* %14, align 4
  br label %337

334:                                              ; preds = %317
  %335 = load i32, i32* %14, align 4
  %336 = and i32 %335, 261091583
  store i32 %336, i32* %14, align 4
  br label %337

337:                                              ; preds = %334, %331
  br label %338

338:                                              ; preds = %337, %316, %183, %182, %159
  %339 = load i32, i32* %15, align 4
  %340 = load %struct.rtl_sta_info*, %struct.rtl_sta_info** %13, align 8
  %341 = getelementptr inbounds %struct.rtl_sta_info, %struct.rtl_sta_info* %340, i32 0, i32 1
  store i32 %339, i32* %341, align 4
  %342 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %343 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %342, i32 0, i32 0
  %344 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %343, i32 0, i32 0
  %345 = load i64, i64* %344, align 8
  %346 = load i64, i64* @VERSION_8192S_BCUT, align 8
  %347 = icmp sge i64 %345, %346
  br i1 %347, label %348, label %351

348:                                              ; preds = %338
  %349 = load i32, i32* %14, align 4
  %350 = and i32 %349, 268435455
  store i32 %350, i32* %14, align 4
  br label %362

351:                                              ; preds = %338
  %352 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %353 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %352, i32 0, i32 0
  %354 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %353, i32 0, i32 0
  %355 = load i64, i64* %354, align 8
  %356 = load i64, i64* @VERSION_8192S_ACUT, align 8
  %357 = icmp eq i64 %355, %356
  br i1 %357, label %358, label %361

358:                                              ; preds = %351
  %359 = load i32, i32* %14, align 4
  %360 = and i32 %359, 268435440
  store i32 %360, i32* %14, align 4
  br label %361

361:                                              ; preds = %358, %351
  br label %362

362:                                              ; preds = %361, %348
  %363 = load i32, i32* %20, align 4
  %364 = icmp ne i32 %363, 0
  br i1 %364, label %365, label %399

365:                                              ; preds = %362
  %366 = load i32, i32* %14, align 4
  %367 = or i32 %366, 268435456
  store i32 %367, i32* %14, align 4
  %368 = load i32, i32* %14, align 4
  %369 = ashr i32 %368, 12
  store i32 %369, i32* %21, align 4
  store i32 15, i32* %22, align 4
  br label %370

370:                                              ; preds = %381, %365
  %371 = load i32, i32* %22, align 4
  %372 = icmp sgt i32 %371, 0
  br i1 %372, label %373, label %384

373:                                              ; preds = %370
  %374 = load i32, i32* %22, align 4
  %375 = shl i32 1, %374
  %376 = load i32, i32* %21, align 4
  %377 = and i32 %375, %376
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %380

379:                                              ; preds = %373
  br label %384

380:                                              ; preds = %373
  br label %381

381:                                              ; preds = %380
  %382 = load i32, i32* %22, align 4
  %383 = add nsw i32 %382, -1
  store i32 %383, i32* %22, align 4
  br label %370

384:                                              ; preds = %379, %370
  %385 = load i32, i32* %22, align 4
  %386 = shl i32 %385, 12
  %387 = load i32, i32* %22, align 4
  %388 = shl i32 %387, 8
  %389 = or i32 %386, %388
  %390 = load i32, i32* %22, align 4
  %391 = shl i32 %390, 4
  %392 = or i32 %389, %391
  %393 = load i32, i32* %22, align 4
  %394 = or i32 %392, %393
  store i32 %394, i32* %22, align 4
  %395 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %396 = load i32, i32* @SG_RATE, align 4
  %397 = load i32, i32* %22, align 4
  %398 = call i32 @rtl_write_byte(%struct.rtl_priv* %395, i32 %396, i32 %397)
  br label %399

399:                                              ; preds = %384, %362
  %400 = load i32, i32* %25, align 4
  %401 = icmp ne i32 %400, 0
  %402 = zext i1 %401 to i64
  %403 = select i1 %401, i32 1, i32 0
  %404 = shl i32 %403, 9
  %405 = load i32, i32* %26, align 4
  %406 = and i32 %405, 31
  %407 = shl i32 %406, 4
  %408 = or i32 %404, %407
  %409 = load i32, i32* %24, align 4
  %410 = and i32 %409, 15
  %411 = or i32 %408, %410
  %412 = load i32, i32* %23, align 4
  %413 = or i32 %412, %411
  store i32 %413, i32* %23, align 4
  %414 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %415 = load i32, i32* @COMP_RATR, align 4
  %416 = load i32, i32* @DBG_TRACE, align 4
  %417 = load i32, i32* %23, align 4
  %418 = load i32, i32* %14, align 4
  %419 = call i32 @RT_TRACE(%struct.rtl_priv* %414, i32 %415, i32 %416, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %417, i32 %418)
  %420 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %421 = load i32, i32* %14, align 4
  %422 = call i32 @rtl_write_dword(%struct.rtl_priv* %420, i32 708, i32 %421)
  %423 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %424 = load i32, i32* @WFM5, align 4
  %425 = load i32, i32* @FW_RA_UPDATE_MASK, align 4
  %426 = load i32, i32* %23, align 4
  %427 = shl i32 %426, 8
  %428 = or i32 %425, %427
  %429 = call i32 @rtl_write_dword(%struct.rtl_priv* %423, i32 %424, i32 %428)
  %430 = load i32, i32* %26, align 4
  %431 = icmp ne i32 %430, 0
  br i1 %431, label %432, label %436

432:                                              ; preds = %399
  %433 = load i32, i32* %15, align 4
  %434 = load %struct.rtl_sta_info*, %struct.rtl_sta_info** %13, align 8
  %435 = getelementptr inbounds %struct.rtl_sta_info, %struct.rtl_sta_info* %434, i32 0, i32 1
  store i32 %433, i32* %435, align 4
  br label %436

436:                                              ; preds = %432, %399
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
