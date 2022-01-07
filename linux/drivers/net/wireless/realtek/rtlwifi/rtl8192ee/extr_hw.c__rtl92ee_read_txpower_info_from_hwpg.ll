; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_hw.c__rtl92ee_read_txpower_info_from_hwpg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_hw.c__rtl92ee_read_txpower_info_from_hwpg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_efuse = type { i32**, i32**, i32, i32, i32*, i32, i32**, i32**, i32**, i32**, i32**, i32**, i32**, i32**, i32**, i32** }
%struct.txpower_info_2g = type { i32**, i32**, i32**, i32**, i32**, i32** }
%struct.txpower_info_5g = type { i32**, i32**, i32**, i32**, i32** }

@MAX_RF_PATH = common dso_local global i32 0, align 4
@CHANNEL_MAX_NUMBER_2G = common dso_local global i32 0, align 4
@CHANNEL_MAX_NUMBER_5G = common dso_local global i32 0, align 4
@channel5g = common dso_local global i32* null, align 8
@CHANNEL_MAX_NUMBER_5G_80M = common dso_local global i32 0, align 4
@channel5g_80m = common dso_local global i32* null, align 8
@MAX_TX_COUNT = common dso_local global i32 0, align 4
@EEPROM_THERMAL_METER_92E = common dso_local global i64 0, align 8
@EEPROM_DEFAULT_THERMALMETER = common dso_local global i8* null, align 8
@FINIT = common dso_local global i32 0, align 4
@INIT_TXPOWER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"thermalmeter = 0x%x\0A\00", align 1
@EEPROM_RF_BOARD_OPTION_92E = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"eeprom_regulatory = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i32, i32*)* @_rtl92ee_read_txpower_info_from_hwpg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92ee_read_txpower_info_from_hwpg(%struct.ieee80211_hw* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.rtl_priv*, align 8
  %8 = alloca %struct.rtl_efuse*, align 8
  %9 = alloca %struct.txpower_info_2g, align 8
  %10 = alloca %struct.txpower_info_5g, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %17 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %16)
  store %struct.rtl_priv* %17, %struct.rtl_priv** %7, align 8
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %19 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %18)
  %20 = call %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv* %19)
  store %struct.rtl_efuse* %20, %struct.rtl_efuse** %8, align 8
  %21 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @_rtl8192ee_read_power_value_fromprom(%struct.ieee80211_hw* %21, %struct.txpower_info_2g* %9, %struct.txpower_info_5g* %10, i32 %22, i32* %23)
  store i32 0, i32* %11, align 4
  br label %25

25:                                               ; preds = %380, %3
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* @MAX_RF_PATH, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %383

29:                                               ; preds = %25
  store i32 0, i32* %13, align 4
  br label %30

30:                                               ; preds = %122, %29
  %31 = load i32, i32* %13, align 4
  %32 = icmp slt i32 %31, 14
  br i1 %32, label %33, label %125

33:                                               ; preds = %30
  %34 = load i32, i32* %13, align 4
  %35 = add nsw i32 %34, 1
  %36 = call i32 @_rtl92ee_get_chnl_group(i32 %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* @CHANNEL_MAX_NUMBER_2G, align 4
  %39 = sub nsw i32 %38, 1
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %80

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %9, i32 0, i32 5
  %43 = load i32**, i32*** %42, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32*, i32** %43, i64 %45
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 5
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %51 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %50, i32 0, i32 15
  %52 = load i32**, i32*** %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %52, i64 %54
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %13, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 %49, i32* %59, align 4
  %60 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %9, i32 0, i32 4
  %61 = load i32**, i32*** %60, align 8
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32*, i32** %61, i64 %63
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %71 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %70, i32 0, i32 14
  %72 = load i32**, i32*** %71, align 8
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32*, i32** %72, i64 %74
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %13, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32 %69, i32* %79, align 4
  br label %121

80:                                               ; preds = %33
  %81 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %9, i32 0, i32 5
  %82 = load i32**, i32*** %81, align 8
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32*, i32** %82, i64 %84
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %12, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %92 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %91, i32 0, i32 15
  %93 = load i32**, i32*** %92, align 8
  %94 = load i32, i32* %11, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32*, i32** %93, i64 %95
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %13, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  store i32 %90, i32* %100, align 4
  %101 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %9, i32 0, i32 4
  %102 = load i32**, i32*** %101, align 8
  %103 = load i32, i32* %11, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32*, i32** %102, i64 %104
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %12, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %112 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %111, i32 0, i32 14
  %113 = load i32**, i32*** %112, align 8
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i32*, i32** %113, i64 %115
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %13, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  store i32 %110, i32* %120, align 4
  br label %121

121:                                              ; preds = %80, %41
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %13, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %13, align 4
  br label %30

125:                                              ; preds = %30
  store i32 0, i32* %13, align 4
  br label %126

126:                                              ; preds = %157, %125
  %127 = load i32, i32* %13, align 4
  %128 = load i32, i32* @CHANNEL_MAX_NUMBER_5G, align 4
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %130, label %160

130:                                              ; preds = %126
  %131 = load i32*, i32** @channel5g, align 8
  %132 = load i32, i32* %13, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @_rtl92ee_get_chnl_group(i32 %135)
  store i32 %136, i32* %12, align 4
  %137 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %10, i32 0, i32 0
  %138 = load i32**, i32*** %137, align 8
  %139 = load i32, i32* %11, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32*, i32** %138, i64 %140
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %12, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %148 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %147, i32 0, i32 0
  %149 = load i32**, i32*** %148, align 8
  %150 = load i32, i32* %11, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32*, i32** %149, i64 %151
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %13, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  store i32 %146, i32* %156, align 4
  br label %157

157:                                              ; preds = %130
  %158 = load i32, i32* %13, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %13, align 4
  br label %126

160:                                              ; preds = %126
  store i32 0, i32* %13, align 4
  br label %161

161:                                              ; preds = %207, %160
  %162 = load i32, i32* %13, align 4
  %163 = load i32, i32* @CHANNEL_MAX_NUMBER_5G_80M, align 4
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %210

165:                                              ; preds = %161
  %166 = load i32*, i32** @channel5g_80m, align 8
  %167 = load i32, i32* %13, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @_rtl92ee_get_chnl_group(i32 %170)
  store i32 %171, i32* %12, align 4
  %172 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %10, i32 0, i32 0
  %173 = load i32**, i32*** %172, align 8
  %174 = load i32, i32* %11, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32*, i32** %173, i64 %175
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* %12, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = load i32, i32* %180, align 4
  store i32 %181, i32* %14, align 4
  %182 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %10, i32 0, i32 0
  %183 = load i32**, i32*** %182, align 8
  %184 = load i32, i32* %11, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32*, i32** %183, i64 %185
  %187 = load i32*, i32** %186, align 8
  %188 = load i32, i32* %12, align 4
  %189 = add nsw i32 %188, 1
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %187, i64 %190
  %192 = load i32, i32* %191, align 4
  store i32 %192, i32* %15, align 4
  %193 = load i32, i32* %14, align 4
  %194 = load i32, i32* %15, align 4
  %195 = add nsw i32 %193, %194
  %196 = sdiv i32 %195, 2
  %197 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %198 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %197, i32 0, i32 1
  %199 = load i32**, i32*** %198, align 8
  %200 = load i32, i32* %11, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32*, i32** %199, i64 %201
  %203 = load i32*, i32** %202, align 8
  %204 = load i32, i32* %13, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  store i32 %196, i32* %206, align 4
  br label %207

207:                                              ; preds = %165
  %208 = load i32, i32* %13, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %13, align 4
  br label %161

210:                                              ; preds = %161
  store i32 0, i32* %13, align 4
  br label %211

211:                                              ; preds = %376, %210
  %212 = load i32, i32* %13, align 4
  %213 = load i32, i32* @MAX_TX_COUNT, align 4
  %214 = icmp slt i32 %212, %213
  br i1 %214, label %215, label %379

215:                                              ; preds = %211
  %216 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %9, i32 0, i32 3
  %217 = load i32**, i32*** %216, align 8
  %218 = load i32, i32* %11, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i32*, i32** %217, i64 %219
  %221 = load i32*, i32** %220, align 8
  %222 = load i32, i32* %13, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i32, i32* %221, i64 %223
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %227 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %226, i32 0, i32 13
  %228 = load i32**, i32*** %227, align 8
  %229 = load i32, i32* %11, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32*, i32** %228, i64 %230
  %232 = load i32*, i32** %231, align 8
  %233 = load i32, i32* %13, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  store i32 %225, i32* %235, align 4
  %236 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %9, i32 0, i32 2
  %237 = load i32**, i32*** %236, align 8
  %238 = load i32, i32* %11, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32*, i32** %237, i64 %239
  %241 = load i32*, i32** %240, align 8
  %242 = load i32, i32* %13, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %241, i64 %243
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %247 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %246, i32 0, i32 12
  %248 = load i32**, i32*** %247, align 8
  %249 = load i32, i32* %11, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32*, i32** %248, i64 %250
  %252 = load i32*, i32** %251, align 8
  %253 = load i32, i32* %13, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  store i32 %245, i32* %255, align 4
  %256 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %9, i32 0, i32 1
  %257 = load i32**, i32*** %256, align 8
  %258 = load i32, i32* %11, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32*, i32** %257, i64 %259
  %261 = load i32*, i32** %260, align 8
  %262 = load i32, i32* %13, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32, i32* %261, i64 %263
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %267 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %266, i32 0, i32 11
  %268 = load i32**, i32*** %267, align 8
  %269 = load i32, i32* %11, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32*, i32** %268, i64 %270
  %272 = load i32*, i32** %271, align 8
  %273 = load i32, i32* %13, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32, i32* %272, i64 %274
  store i32 %265, i32* %275, align 4
  %276 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %9, i32 0, i32 0
  %277 = load i32**, i32*** %276, align 8
  %278 = load i32, i32* %11, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds i32*, i32** %277, i64 %279
  %281 = load i32*, i32** %280, align 8
  %282 = load i32, i32* %13, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32, i32* %281, i64 %283
  %285 = load i32, i32* %284, align 4
  %286 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %287 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %286, i32 0, i32 10
  %288 = load i32**, i32*** %287, align 8
  %289 = load i32, i32* %11, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i32*, i32** %288, i64 %290
  %292 = load i32*, i32** %291, align 8
  %293 = load i32, i32* %13, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds i32, i32* %292, i64 %294
  store i32 %285, i32* %295, align 4
  %296 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %10, i32 0, i32 4
  %297 = load i32**, i32*** %296, align 8
  %298 = load i32, i32* %11, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i32*, i32** %297, i64 %299
  %301 = load i32*, i32** %300, align 8
  %302 = load i32, i32* %13, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i32, i32* %301, i64 %303
  %305 = load i32, i32* %304, align 4
  %306 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %307 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %306, i32 0, i32 9
  %308 = load i32**, i32*** %307, align 8
  %309 = load i32, i32* %11, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i32*, i32** %308, i64 %310
  %312 = load i32*, i32** %311, align 8
  %313 = load i32, i32* %13, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i32, i32* %312, i64 %314
  store i32 %305, i32* %315, align 4
  %316 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %10, i32 0, i32 3
  %317 = load i32**, i32*** %316, align 8
  %318 = load i32, i32* %11, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds i32*, i32** %317, i64 %319
  %321 = load i32*, i32** %320, align 8
  %322 = load i32, i32* %13, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i32, i32* %321, i64 %323
  %325 = load i32, i32* %324, align 4
  %326 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %327 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %326, i32 0, i32 8
  %328 = load i32**, i32*** %327, align 8
  %329 = load i32, i32* %11, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i32*, i32** %328, i64 %330
  %332 = load i32*, i32** %331, align 8
  %333 = load i32, i32* %13, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i32, i32* %332, i64 %334
  store i32 %325, i32* %335, align 4
  %336 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %10, i32 0, i32 2
  %337 = load i32**, i32*** %336, align 8
  %338 = load i32, i32* %11, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i32*, i32** %337, i64 %339
  %341 = load i32*, i32** %340, align 8
  %342 = load i32, i32* %13, align 4
  %343 = sext i32 %342 to i64
  %344 = getelementptr inbounds i32, i32* %341, i64 %343
  %345 = load i32, i32* %344, align 4
  %346 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %347 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %346, i32 0, i32 7
  %348 = load i32**, i32*** %347, align 8
  %349 = load i32, i32* %11, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i32*, i32** %348, i64 %350
  %352 = load i32*, i32** %351, align 8
  %353 = load i32, i32* %13, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i32, i32* %352, i64 %354
  store i32 %345, i32* %355, align 4
  %356 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %10, i32 0, i32 1
  %357 = load i32**, i32*** %356, align 8
  %358 = load i32, i32* %11, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds i32*, i32** %357, i64 %359
  %361 = load i32*, i32** %360, align 8
  %362 = load i32, i32* %13, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i32, i32* %361, i64 %363
  %365 = load i32, i32* %364, align 4
  %366 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %367 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %366, i32 0, i32 6
  %368 = load i32**, i32*** %367, align 8
  %369 = load i32, i32* %11, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i32*, i32** %368, i64 %370
  %372 = load i32*, i32** %371, align 8
  %373 = load i32, i32* %13, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i32, i32* %372, i64 %374
  store i32 %365, i32* %375, align 4
  br label %376

376:                                              ; preds = %215
  %377 = load i32, i32* %13, align 4
  %378 = add nsw i32 %377, 1
  store i32 %378, i32* %13, align 4
  br label %211

379:                                              ; preds = %211
  br label %380

380:                                              ; preds = %379
  %381 = load i32, i32* %11, align 4
  %382 = add nsw i32 %381, 1
  store i32 %382, i32* %11, align 4
  br label %25

383:                                              ; preds = %25
  %384 = load i32, i32* %5, align 4
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %393, label %386

386:                                              ; preds = %383
  %387 = load i32*, i32** %6, align 8
  %388 = load i64, i64* @EEPROM_THERMAL_METER_92E, align 8
  %389 = getelementptr inbounds i32, i32* %387, i64 %388
  %390 = load i32, i32* %389, align 4
  %391 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %392 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %391, i32 0, i32 2
  store i32 %390, i32* %392, align 8
  br label %398

393:                                              ; preds = %383
  %394 = load i8*, i8** @EEPROM_DEFAULT_THERMALMETER, align 8
  %395 = ptrtoint i8* %394 to i32
  %396 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %397 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %396, i32 0, i32 2
  store i32 %395, i32* %397, align 8
  br label %398

398:                                              ; preds = %393, %386
  %399 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %400 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %399, i32 0, i32 2
  %401 = load i32, i32* %400, align 8
  %402 = icmp eq i32 %401, 255
  br i1 %402, label %406, label %403

403:                                              ; preds = %398
  %404 = load i32, i32* %5, align 4
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %406, label %413

406:                                              ; preds = %403, %398
  %407 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %408 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %407, i32 0, i32 3
  store i32 1, i32* %408, align 4
  %409 = load i8*, i8** @EEPROM_DEFAULT_THERMALMETER, align 8
  %410 = ptrtoint i8* %409 to i32
  %411 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %412 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %411, i32 0, i32 2
  store i32 %410, i32* %412, align 8
  br label %413

413:                                              ; preds = %406, %403
  %414 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %415 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %414, i32 0, i32 2
  %416 = load i32, i32* %415, align 8
  %417 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %418 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %417, i32 0, i32 4
  %419 = load i32*, i32** %418, align 8
  %420 = getelementptr inbounds i32, i32* %419, i64 0
  store i32 %416, i32* %420, align 4
  %421 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %422 = load i32, i32* @FINIT, align 4
  %423 = load i32, i32* @INIT_TXPOWER, align 4
  %424 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %425 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %424, i32 0, i32 2
  %426 = load i32, i32* %425, align 8
  %427 = call i32 @RTPRINT(%struct.rtl_priv* %421, i32 %422, i32 %423, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %426)
  %428 = load i32, i32* %5, align 4
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %447, label %430

430:                                              ; preds = %413
  %431 = load i32*, i32** %6, align 8
  %432 = load i64, i64* @EEPROM_RF_BOARD_OPTION_92E, align 8
  %433 = getelementptr inbounds i32, i32* %431, i64 %432
  %434 = load i32, i32* %433, align 4
  %435 = and i32 %434, 7
  %436 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %437 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %436, i32 0, i32 5
  store i32 %435, i32* %437, align 8
  %438 = load i32*, i32** %6, align 8
  %439 = load i64, i64* @EEPROM_RF_BOARD_OPTION_92E, align 8
  %440 = getelementptr inbounds i32, i32* %438, i64 %439
  %441 = load i32, i32* %440, align 4
  %442 = icmp eq i32 %441, 255
  br i1 %442, label %443, label %446

443:                                              ; preds = %430
  %444 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %445 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %444, i32 0, i32 5
  store i32 0, i32* %445, align 8
  br label %446

446:                                              ; preds = %443, %430
  br label %450

447:                                              ; preds = %413
  %448 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %449 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %448, i32 0, i32 5
  store i32 0, i32* %449, align 8
  br label %450

450:                                              ; preds = %447, %446
  %451 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %452 = load i32, i32* @FINIT, align 4
  %453 = load i32, i32* @INIT_TXPOWER, align 4
  %454 = load %struct.rtl_efuse*, %struct.rtl_efuse** %8, align 8
  %455 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %454, i32 0, i32 5
  %456 = load i32, i32* %455, align 8
  %457 = call i32 @RTPRINT(%struct.rtl_priv* %451, i32 %452, i32 %453, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %456)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv*) #1

declare dso_local i32 @_rtl8192ee_read_power_value_fromprom(%struct.ieee80211_hw*, %struct.txpower_info_2g*, %struct.txpower_info_5g*, i32, i32*) #1

declare dso_local i32 @_rtl92ee_get_chnl_group(i32) #1

declare dso_local i32 @RTPRINT(%struct.rtl_priv*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
