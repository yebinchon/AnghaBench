; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_hw.c_read_power_value_fromprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_hw.c_read_power_value_fromprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.txpower_info_2g = type { i32**, i32**, i32**, i32**, i32**, i32** }
%struct.txpower_info_5g = type { i32**, i32**, i32**, i32** }
%struct.rtl_priv = type { i32 }

@EEPROM_TX_PWR_INX = common dso_local global i32 0, align 4
@COMP_INIT = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"hal_ReadPowerValueFromPROM88E():PROMContent[0x%x]=0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"auto load fail : Use Default value!\0A\00", align 1
@MAX_RF_PATH = common dso_local global i32 0, align 4
@MAX_CHNL_GROUP_24G = common dso_local global i32 0, align 4
@MAX_TX_COUNT = common dso_local global i32 0, align 4
@MAX_CHNL_GROUP_5G = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.txpower_info_2g*, %struct.txpower_info_5g*, i32, i32*)* @read_power_value_fromprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @read_power_value_fromprom(%struct.ieee80211_hw* %0, %struct.txpower_info_2g* %1, %struct.txpower_info_5g* %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca %struct.txpower_info_2g*, align 8
  %8 = alloca %struct.txpower_info_5g*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.rtl_priv*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store %struct.txpower_info_2g* %1, %struct.txpower_info_2g** %7, align 8
  store %struct.txpower_info_5g* %2, %struct.txpower_info_5g** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %17 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %16)
  store %struct.rtl_priv* %17, %struct.rtl_priv** %11, align 8
  %18 = load i32, i32* @EEPROM_TX_PWR_INX, align 4
  store i32 %18, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %19 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %20 = load i32, i32* @COMP_INIT, align 4
  %21 = load i32, i32* @DBG_LOUD, align 4
  %22 = load i32, i32* %13, align 4
  %23 = add nsw i32 %22, 1
  %24 = load i32*, i32** %10, align 8
  %25 = load i32, i32* %13, align 4
  %26 = add nsw i32 %25, 1
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %19, i32 %20, i32 %21, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %29)
  %31 = load i32*, i32** %10, align 8
  %32 = load i32, i32* %13, align 4
  %33 = add nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 255, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %5
  store i32 1, i32* %9, align 4
  br label %39

39:                                               ; preds = %38, %5
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %39
  %43 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %44 = load i32, i32* @COMP_INIT, align 4
  %45 = load i32, i32* @DBG_LOUD, align 4
  %46 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %43, i32 %44, i32 %45, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  br label %47

47:                                               ; preds = %55, %42
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @MAX_RF_PATH, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %47
  %52 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @set_24g_base(%struct.txpower_info_2g* %52, i32 %53)
  br label %55

55:                                               ; preds = %51
  %56 = load i32, i32* %12, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %12, align 4
  br label %47

58:                                               ; preds = %47
  br label %1022

59:                                               ; preds = %39
  store i32 0, i32* %12, align 4
  br label %60

60:                                               ; preds = %1019, %59
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* @MAX_RF_PATH, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %1022

64:                                               ; preds = %60
  store i32 0, i32* %14, align 4
  br label %65

65:                                               ; preds = %110, %64
  %66 = load i32, i32* %14, align 4
  %67 = load i32, i32* @MAX_CHNL_GROUP_24G, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %113

69:                                               ; preds = %65
  %70 = load i32*, i32** %10, align 8
  %71 = load i32, i32* %13, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %13, align 4
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %77 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %76, i32 0, i32 0
  %78 = load i32**, i32*** %77, align 8
  %79 = load i32, i32* %12, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32*, i32** %78, i64 %80
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %14, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  store i32 %75, i32* %85, align 4
  %86 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %87 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %86, i32 0, i32 0
  %88 = load i32**, i32*** %87, align 8
  %89 = load i32, i32* %12, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32*, i32** %88, i64 %90
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %14, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = icmp eq i32 %96, 255
  br i1 %97, label %98, label %109

98:                                               ; preds = %69
  %99 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %100 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %99, i32 0, i32 0
  %101 = load i32**, i32*** %100, align 8
  %102 = load i32, i32* %12, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32*, i32** %101, i64 %103
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %14, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  store i32 45, i32* %108, align 4
  br label %109

109:                                              ; preds = %98, %69
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %14, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %14, align 4
  br label %65

113:                                              ; preds = %65
  store i32 0, i32* %14, align 4
  br label %114

114:                                              ; preds = %160, %113
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* @MAX_CHNL_GROUP_24G, align 4
  %117 = sub nsw i32 %116, 1
  %118 = icmp slt i32 %115, %117
  br i1 %118, label %119, label %163

119:                                              ; preds = %114
  %120 = load i32*, i32** %10, align 8
  %121 = load i32, i32* %13, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %13, align 4
  %123 = sext i32 %121 to i64
  %124 = getelementptr inbounds i32, i32* %120, i64 %123
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %127 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %126, i32 0, i32 1
  %128 = load i32**, i32*** %127, align 8
  %129 = load i32, i32* %12, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32*, i32** %128, i64 %130
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %14, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  store i32 %125, i32* %135, align 4
  %136 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %137 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %136, i32 0, i32 1
  %138 = load i32**, i32*** %137, align 8
  %139 = load i32, i32* %12, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32*, i32** %138, i64 %140
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %14, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = icmp eq i32 %146, 255
  br i1 %147, label %148, label %159

148:                                              ; preds = %119
  %149 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %150 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %149, i32 0, i32 1
  %151 = load i32**, i32*** %150, align 8
  %152 = load i32, i32* %12, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32*, i32** %151, i64 %153
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %14, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  store i32 45, i32* %158, align 4
  br label %159

159:                                              ; preds = %148, %119
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %14, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %14, align 4
  br label %114

163:                                              ; preds = %114
  %164 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %165 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %164, i32 0, i32 2
  %166 = load i32**, i32*** %165, align 8
  %167 = load i32, i32* %12, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32*, i32** %166, i64 %168
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 0
  store i32 0, i32* %171, align 4
  %172 = load i32*, i32** %10, align 8
  %173 = load i32, i32* %13, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = icmp eq i32 %176, 255
  br i1 %177, label %178, label %187

178:                                              ; preds = %163
  %179 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %180 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %179, i32 0, i32 3
  %181 = load i32**, i32*** %180, align 8
  %182 = load i32, i32* %12, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32*, i32** %181, i64 %183
  %185 = load i32*, i32** %184, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 0
  store i32 2, i32* %186, align 4
  br label %227

187:                                              ; preds = %163
  %188 = load i32*, i32** %10, align 8
  %189 = load i32, i32* %13, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = and i32 %192, 240
  %194 = ashr i32 %193, 4
  %195 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %196 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %195, i32 0, i32 3
  %197 = load i32**, i32*** %196, align 8
  %198 = load i32, i32* %12, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32*, i32** %197, i64 %199
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 0
  store i32 %194, i32* %202, align 4
  %203 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %204 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %203, i32 0, i32 3
  %205 = load i32**, i32*** %204, align 8
  %206 = load i32, i32* %12, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32*, i32** %205, i64 %207
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 0
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @BIT(i32 3)
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %226

215:                                              ; preds = %187
  %216 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %217 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %216, i32 0, i32 3
  %218 = load i32**, i32*** %217, align 8
  %219 = load i32, i32* %12, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32*, i32** %218, i64 %220
  %222 = load i32*, i32** %221, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 0
  %224 = load i32, i32* %223, align 4
  %225 = or i32 %224, 240
  store i32 %225, i32* %223, align 4
  br label %226

226:                                              ; preds = %215, %187
  br label %227

227:                                              ; preds = %226, %178
  %228 = load i32*, i32** %10, align 8
  %229 = load i32, i32* %13, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = icmp eq i32 %232, 255
  br i1 %233, label %234, label %243

234:                                              ; preds = %227
  %235 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %236 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %235, i32 0, i32 4
  %237 = load i32**, i32*** %236, align 8
  %238 = load i32, i32* %12, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32*, i32** %237, i64 %239
  %241 = load i32*, i32** %240, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 0
  store i32 4, i32* %242, align 4
  br label %282

243:                                              ; preds = %227
  %244 = load i32*, i32** %10, align 8
  %245 = load i32, i32* %13, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %244, i64 %246
  %248 = load i32, i32* %247, align 4
  %249 = and i32 %248, 15
  %250 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %251 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %250, i32 0, i32 4
  %252 = load i32**, i32*** %251, align 8
  %253 = load i32, i32* %12, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32*, i32** %252, i64 %254
  %256 = load i32*, i32** %255, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 0
  store i32 %249, i32* %257, align 4
  %258 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %259 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %258, i32 0, i32 4
  %260 = load i32**, i32*** %259, align 8
  %261 = load i32, i32* %12, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32*, i32** %260, i64 %262
  %264 = load i32*, i32** %263, align 8
  %265 = getelementptr inbounds i32, i32* %264, i64 0
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @BIT(i32 3)
  %268 = and i32 %266, %267
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %281

270:                                              ; preds = %243
  %271 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %272 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %271, i32 0, i32 4
  %273 = load i32**, i32*** %272, align 8
  %274 = load i32, i32* %12, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32*, i32** %273, i64 %275
  %277 = load i32*, i32** %276, align 8
  %278 = getelementptr inbounds i32, i32* %277, i64 0
  %279 = load i32, i32* %278, align 4
  %280 = or i32 %279, 240
  store i32 %280, i32* %278, align 4
  br label %281

281:                                              ; preds = %270, %243
  br label %282

282:                                              ; preds = %281, %234
  %283 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %284 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %283, i32 0, i32 5
  %285 = load i32**, i32*** %284, align 8
  %286 = load i32, i32* %12, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32*, i32** %285, i64 %287
  %289 = load i32*, i32** %288, align 8
  %290 = getelementptr inbounds i32, i32* %289, i64 0
  store i32 0, i32* %290, align 4
  %291 = load i32, i32* %13, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %13, align 4
  store i32 1, i32* %15, align 4
  br label %293

293:                                              ; preds = %556, %282
  %294 = load i32, i32* %15, align 4
  %295 = load i32, i32* @MAX_TX_COUNT, align 4
  %296 = icmp slt i32 %294, %295
  br i1 %296, label %297, label %559

297:                                              ; preds = %293
  %298 = load i32*, i32** %10, align 8
  %299 = load i32, i32* %13, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i32, i32* %298, i64 %300
  %302 = load i32, i32* %301, align 4
  %303 = icmp eq i32 %302, 255
  br i1 %303, label %304, label %315

304:                                              ; preds = %297
  %305 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %306 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %305, i32 0, i32 2
  %307 = load i32**, i32*** %306, align 8
  %308 = load i32, i32* %12, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i32*, i32** %307, i64 %309
  %311 = load i32*, i32** %310, align 8
  %312 = load i32, i32* %15, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i32, i32* %311, i64 %313
  store i32 254, i32* %314, align 4
  br label %361

315:                                              ; preds = %297
  %316 = load i32*, i32** %10, align 8
  %317 = load i32, i32* %13, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i32, i32* %316, i64 %318
  %320 = load i32, i32* %319, align 4
  %321 = and i32 %320, 240
  %322 = ashr i32 %321, 4
  %323 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %324 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %323, i32 0, i32 2
  %325 = load i32**, i32*** %324, align 8
  %326 = load i32, i32* %12, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i32*, i32** %325, i64 %327
  %329 = load i32*, i32** %328, align 8
  %330 = load i32, i32* %15, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds i32, i32* %329, i64 %331
  store i32 %322, i32* %332, align 4
  %333 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %334 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %333, i32 0, i32 2
  %335 = load i32**, i32*** %334, align 8
  %336 = load i32, i32* %12, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds i32*, i32** %335, i64 %337
  %339 = load i32*, i32** %338, align 8
  %340 = load i32, i32* %15, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i32, i32* %339, i64 %341
  %343 = load i32, i32* %342, align 4
  %344 = call i32 @BIT(i32 3)
  %345 = and i32 %343, %344
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %360

347:                                              ; preds = %315
  %348 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %349 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %348, i32 0, i32 2
  %350 = load i32**, i32*** %349, align 8
  %351 = load i32, i32* %12, align 4
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds i32*, i32** %350, i64 %352
  %354 = load i32*, i32** %353, align 8
  %355 = load i32, i32* %15, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i32, i32* %354, i64 %356
  %358 = load i32, i32* %357, align 4
  %359 = or i32 %358, 240
  store i32 %359, i32* %357, align 4
  br label %360

360:                                              ; preds = %347, %315
  br label %361

361:                                              ; preds = %360, %304
  %362 = load i32*, i32** %10, align 8
  %363 = load i32, i32* %13, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds i32, i32* %362, i64 %364
  %366 = load i32, i32* %365, align 4
  %367 = icmp eq i32 %366, 255
  br i1 %367, label %368, label %379

368:                                              ; preds = %361
  %369 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %370 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %369, i32 0, i32 3
  %371 = load i32**, i32*** %370, align 8
  %372 = load i32, i32* %12, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds i32*, i32** %371, i64 %373
  %375 = load i32*, i32** %374, align 8
  %376 = load i32, i32* %15, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i32, i32* %375, i64 %377
  store i32 254, i32* %378, align 4
  br label %424

379:                                              ; preds = %361
  %380 = load i32*, i32** %10, align 8
  %381 = load i32, i32* %13, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds i32, i32* %380, i64 %382
  %384 = load i32, i32* %383, align 4
  %385 = and i32 %384, 15
  %386 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %387 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %386, i32 0, i32 3
  %388 = load i32**, i32*** %387, align 8
  %389 = load i32, i32* %12, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds i32*, i32** %388, i64 %390
  %392 = load i32*, i32** %391, align 8
  %393 = load i32, i32* %15, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds i32, i32* %392, i64 %394
  store i32 %385, i32* %395, align 4
  %396 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %397 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %396, i32 0, i32 3
  %398 = load i32**, i32*** %397, align 8
  %399 = load i32, i32* %12, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds i32*, i32** %398, i64 %400
  %402 = load i32*, i32** %401, align 8
  %403 = load i32, i32* %15, align 4
  %404 = sext i32 %403 to i64
  %405 = getelementptr inbounds i32, i32* %402, i64 %404
  %406 = load i32, i32* %405, align 4
  %407 = call i32 @BIT(i32 3)
  %408 = and i32 %406, %407
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %423

410:                                              ; preds = %379
  %411 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %412 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %411, i32 0, i32 3
  %413 = load i32**, i32*** %412, align 8
  %414 = load i32, i32* %12, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds i32*, i32** %413, i64 %415
  %417 = load i32*, i32** %416, align 8
  %418 = load i32, i32* %15, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds i32, i32* %417, i64 %419
  %421 = load i32, i32* %420, align 4
  %422 = or i32 %421, 240
  store i32 %422, i32* %420, align 4
  br label %423

423:                                              ; preds = %410, %379
  br label %424

424:                                              ; preds = %423, %368
  %425 = load i32, i32* %13, align 4
  %426 = add nsw i32 %425, 1
  store i32 %426, i32* %13, align 4
  %427 = load i32*, i32** %10, align 8
  %428 = load i32, i32* %13, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds i32, i32* %427, i64 %429
  %431 = load i32, i32* %430, align 4
  %432 = icmp eq i32 %431, 255
  br i1 %432, label %433, label %444

433:                                              ; preds = %424
  %434 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %435 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %434, i32 0, i32 4
  %436 = load i32**, i32*** %435, align 8
  %437 = load i32, i32* %12, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds i32*, i32** %436, i64 %438
  %440 = load i32*, i32** %439, align 8
  %441 = load i32, i32* %15, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds i32, i32* %440, i64 %442
  store i32 254, i32* %443, align 4
  br label %490

444:                                              ; preds = %424
  %445 = load i32*, i32** %10, align 8
  %446 = load i32, i32* %13, align 4
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds i32, i32* %445, i64 %447
  %449 = load i32, i32* %448, align 4
  %450 = and i32 %449, 240
  %451 = ashr i32 %450, 4
  %452 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %453 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %452, i32 0, i32 4
  %454 = load i32**, i32*** %453, align 8
  %455 = load i32, i32* %12, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds i32*, i32** %454, i64 %456
  %458 = load i32*, i32** %457, align 8
  %459 = load i32, i32* %15, align 4
  %460 = sext i32 %459 to i64
  %461 = getelementptr inbounds i32, i32* %458, i64 %460
  store i32 %451, i32* %461, align 4
  %462 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %463 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %462, i32 0, i32 4
  %464 = load i32**, i32*** %463, align 8
  %465 = load i32, i32* %12, align 4
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds i32*, i32** %464, i64 %466
  %468 = load i32*, i32** %467, align 8
  %469 = load i32, i32* %15, align 4
  %470 = sext i32 %469 to i64
  %471 = getelementptr inbounds i32, i32* %468, i64 %470
  %472 = load i32, i32* %471, align 4
  %473 = call i32 @BIT(i32 3)
  %474 = and i32 %472, %473
  %475 = icmp ne i32 %474, 0
  br i1 %475, label %476, label %489

476:                                              ; preds = %444
  %477 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %478 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %477, i32 0, i32 4
  %479 = load i32**, i32*** %478, align 8
  %480 = load i32, i32* %12, align 4
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds i32*, i32** %479, i64 %481
  %483 = load i32*, i32** %482, align 8
  %484 = load i32, i32* %15, align 4
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds i32, i32* %483, i64 %485
  %487 = load i32, i32* %486, align 4
  %488 = or i32 %487, 240
  store i32 %488, i32* %486, align 4
  br label %489

489:                                              ; preds = %476, %444
  br label %490

490:                                              ; preds = %489, %433
  %491 = load i32*, i32** %10, align 8
  %492 = load i32, i32* %13, align 4
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds i32, i32* %491, i64 %493
  %495 = load i32, i32* %494, align 4
  %496 = icmp eq i32 %495, 255
  br i1 %496, label %497, label %508

497:                                              ; preds = %490
  %498 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %499 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %498, i32 0, i32 5
  %500 = load i32**, i32*** %499, align 8
  %501 = load i32, i32* %12, align 4
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds i32*, i32** %500, i64 %502
  %504 = load i32*, i32** %503, align 8
  %505 = load i32, i32* %15, align 4
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds i32, i32* %504, i64 %506
  store i32 254, i32* %507, align 4
  br label %553

508:                                              ; preds = %490
  %509 = load i32*, i32** %10, align 8
  %510 = load i32, i32* %13, align 4
  %511 = sext i32 %510 to i64
  %512 = getelementptr inbounds i32, i32* %509, i64 %511
  %513 = load i32, i32* %512, align 4
  %514 = and i32 %513, 15
  %515 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %516 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %515, i32 0, i32 5
  %517 = load i32**, i32*** %516, align 8
  %518 = load i32, i32* %12, align 4
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds i32*, i32** %517, i64 %519
  %521 = load i32*, i32** %520, align 8
  %522 = load i32, i32* %15, align 4
  %523 = sext i32 %522 to i64
  %524 = getelementptr inbounds i32, i32* %521, i64 %523
  store i32 %514, i32* %524, align 4
  %525 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %526 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %525, i32 0, i32 5
  %527 = load i32**, i32*** %526, align 8
  %528 = load i32, i32* %12, align 4
  %529 = sext i32 %528 to i64
  %530 = getelementptr inbounds i32*, i32** %527, i64 %529
  %531 = load i32*, i32** %530, align 8
  %532 = load i32, i32* %15, align 4
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds i32, i32* %531, i64 %533
  %535 = load i32, i32* %534, align 4
  %536 = call i32 @BIT(i32 3)
  %537 = and i32 %535, %536
  %538 = icmp ne i32 %537, 0
  br i1 %538, label %539, label %552

539:                                              ; preds = %508
  %540 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %541 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %540, i32 0, i32 5
  %542 = load i32**, i32*** %541, align 8
  %543 = load i32, i32* %12, align 4
  %544 = sext i32 %543 to i64
  %545 = getelementptr inbounds i32*, i32** %542, i64 %544
  %546 = load i32*, i32** %545, align 8
  %547 = load i32, i32* %15, align 4
  %548 = sext i32 %547 to i64
  %549 = getelementptr inbounds i32, i32* %546, i64 %548
  %550 = load i32, i32* %549, align 4
  %551 = or i32 %550, 240
  store i32 %551, i32* %549, align 4
  br label %552

552:                                              ; preds = %539, %508
  br label %553

553:                                              ; preds = %552, %497
  %554 = load i32, i32* %13, align 4
  %555 = add nsw i32 %554, 1
  store i32 %555, i32* %13, align 4
  br label %556

556:                                              ; preds = %553
  %557 = load i32, i32* %15, align 4
  %558 = add nsw i32 %557, 1
  store i32 %558, i32* %15, align 4
  br label %293

559:                                              ; preds = %293
  store i32 0, i32* %14, align 4
  br label %560

560:                                              ; preds = %605, %559
  %561 = load i32, i32* %14, align 4
  %562 = load i32, i32* @MAX_CHNL_GROUP_5G, align 4
  %563 = icmp slt i32 %561, %562
  br i1 %563, label %564, label %608

564:                                              ; preds = %560
  %565 = load i32*, i32** %10, align 8
  %566 = load i32, i32* %13, align 4
  %567 = add nsw i32 %566, 1
  store i32 %567, i32* %13, align 4
  %568 = sext i32 %566 to i64
  %569 = getelementptr inbounds i32, i32* %565, i64 %568
  %570 = load i32, i32* %569, align 4
  %571 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %572 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %571, i32 0, i32 0
  %573 = load i32**, i32*** %572, align 8
  %574 = load i32, i32* %12, align 4
  %575 = sext i32 %574 to i64
  %576 = getelementptr inbounds i32*, i32** %573, i64 %575
  %577 = load i32*, i32** %576, align 8
  %578 = load i32, i32* %14, align 4
  %579 = sext i32 %578 to i64
  %580 = getelementptr inbounds i32, i32* %577, i64 %579
  store i32 %570, i32* %580, align 4
  %581 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %582 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %581, i32 0, i32 0
  %583 = load i32**, i32*** %582, align 8
  %584 = load i32, i32* %12, align 4
  %585 = sext i32 %584 to i64
  %586 = getelementptr inbounds i32*, i32** %583, i64 %585
  %587 = load i32*, i32** %586, align 8
  %588 = load i32, i32* %14, align 4
  %589 = sext i32 %588 to i64
  %590 = getelementptr inbounds i32, i32* %587, i64 %589
  %591 = load i32, i32* %590, align 4
  %592 = icmp eq i32 %591, 255
  br i1 %592, label %593, label %604

593:                                              ; preds = %564
  %594 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %595 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %594, i32 0, i32 0
  %596 = load i32**, i32*** %595, align 8
  %597 = load i32, i32* %12, align 4
  %598 = sext i32 %597 to i64
  %599 = getelementptr inbounds i32*, i32** %596, i64 %598
  %600 = load i32*, i32** %599, align 8
  %601 = load i32, i32* %14, align 4
  %602 = sext i32 %601 to i64
  %603 = getelementptr inbounds i32, i32* %600, i64 %602
  store i32 254, i32* %603, align 4
  br label %604

604:                                              ; preds = %593, %564
  br label %605

605:                                              ; preds = %604
  %606 = load i32, i32* %14, align 4
  %607 = add nsw i32 %606, 1
  store i32 %607, i32* %14, align 4
  br label %560

608:                                              ; preds = %560
  %609 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %610 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %609, i32 0, i32 1
  %611 = load i32**, i32*** %610, align 8
  %612 = load i32, i32* %12, align 4
  %613 = sext i32 %612 to i64
  %614 = getelementptr inbounds i32*, i32** %611, i64 %613
  %615 = load i32*, i32** %614, align 8
  %616 = getelementptr inbounds i32, i32* %615, i64 0
  store i32 0, i32* %616, align 4
  %617 = load i32*, i32** %10, align 8
  %618 = load i32, i32* %13, align 4
  %619 = sext i32 %618 to i64
  %620 = getelementptr inbounds i32, i32* %617, i64 %619
  %621 = load i32, i32* %620, align 4
  %622 = icmp eq i32 %621, 255
  br i1 %622, label %623, label %632

623:                                              ; preds = %608
  %624 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %625 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %624, i32 0, i32 2
  %626 = load i32**, i32*** %625, align 8
  %627 = load i32, i32* %12, align 4
  %628 = sext i32 %627 to i64
  %629 = getelementptr inbounds i32*, i32** %626, i64 %628
  %630 = load i32*, i32** %629, align 8
  %631 = getelementptr inbounds i32, i32* %630, i64 0
  store i32 0, i32* %631, align 4
  br label %672

632:                                              ; preds = %608
  %633 = load i32*, i32** %10, align 8
  %634 = load i32, i32* %13, align 4
  %635 = sext i32 %634 to i64
  %636 = getelementptr inbounds i32, i32* %633, i64 %635
  %637 = load i32, i32* %636, align 4
  %638 = and i32 %637, 240
  %639 = ashr i32 %638, 4
  %640 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %641 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %640, i32 0, i32 2
  %642 = load i32**, i32*** %641, align 8
  %643 = load i32, i32* %12, align 4
  %644 = sext i32 %643 to i64
  %645 = getelementptr inbounds i32*, i32** %642, i64 %644
  %646 = load i32*, i32** %645, align 8
  %647 = getelementptr inbounds i32, i32* %646, i64 0
  store i32 %639, i32* %647, align 4
  %648 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %649 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %648, i32 0, i32 2
  %650 = load i32**, i32*** %649, align 8
  %651 = load i32, i32* %12, align 4
  %652 = sext i32 %651 to i64
  %653 = getelementptr inbounds i32*, i32** %650, i64 %652
  %654 = load i32*, i32** %653, align 8
  %655 = getelementptr inbounds i32, i32* %654, i64 0
  %656 = load i32, i32* %655, align 4
  %657 = call i32 @BIT(i32 3)
  %658 = and i32 %656, %657
  %659 = icmp ne i32 %658, 0
  br i1 %659, label %660, label %671

660:                                              ; preds = %632
  %661 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %662 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %661, i32 0, i32 2
  %663 = load i32**, i32*** %662, align 8
  %664 = load i32, i32* %12, align 4
  %665 = sext i32 %664 to i64
  %666 = getelementptr inbounds i32*, i32** %663, i64 %665
  %667 = load i32*, i32** %666, align 8
  %668 = getelementptr inbounds i32, i32* %667, i64 0
  %669 = load i32, i32* %668, align 4
  %670 = or i32 %669, 240
  store i32 %670, i32* %668, align 4
  br label %671

671:                                              ; preds = %660, %632
  br label %672

672:                                              ; preds = %671, %623
  %673 = load i32*, i32** %10, align 8
  %674 = load i32, i32* %13, align 4
  %675 = sext i32 %674 to i64
  %676 = getelementptr inbounds i32, i32* %673, i64 %675
  %677 = load i32, i32* %676, align 4
  %678 = icmp eq i32 %677, 255
  br i1 %678, label %679, label %688

679:                                              ; preds = %672
  %680 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %681 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %680, i32 0, i32 3
  %682 = load i32**, i32*** %681, align 8
  %683 = load i32, i32* %12, align 4
  %684 = sext i32 %683 to i64
  %685 = getelementptr inbounds i32*, i32** %682, i64 %684
  %686 = load i32*, i32** %685, align 8
  %687 = getelementptr inbounds i32, i32* %686, i64 0
  store i32 4, i32* %687, align 4
  br label %727

688:                                              ; preds = %672
  %689 = load i32*, i32** %10, align 8
  %690 = load i32, i32* %13, align 4
  %691 = sext i32 %690 to i64
  %692 = getelementptr inbounds i32, i32* %689, i64 %691
  %693 = load i32, i32* %692, align 4
  %694 = and i32 %693, 15
  %695 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %696 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %695, i32 0, i32 3
  %697 = load i32**, i32*** %696, align 8
  %698 = load i32, i32* %12, align 4
  %699 = sext i32 %698 to i64
  %700 = getelementptr inbounds i32*, i32** %697, i64 %699
  %701 = load i32*, i32** %700, align 8
  %702 = getelementptr inbounds i32, i32* %701, i64 0
  store i32 %694, i32* %702, align 4
  %703 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %704 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %703, i32 0, i32 3
  %705 = load i32**, i32*** %704, align 8
  %706 = load i32, i32* %12, align 4
  %707 = sext i32 %706 to i64
  %708 = getelementptr inbounds i32*, i32** %705, i64 %707
  %709 = load i32*, i32** %708, align 8
  %710 = getelementptr inbounds i32, i32* %709, i64 0
  %711 = load i32, i32* %710, align 4
  %712 = call i32 @BIT(i32 3)
  %713 = and i32 %711, %712
  %714 = icmp ne i32 %713, 0
  br i1 %714, label %715, label %726

715:                                              ; preds = %688
  %716 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %717 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %716, i32 0, i32 3
  %718 = load i32**, i32*** %717, align 8
  %719 = load i32, i32* %12, align 4
  %720 = sext i32 %719 to i64
  %721 = getelementptr inbounds i32*, i32** %718, i64 %720
  %722 = load i32*, i32** %721, align 8
  %723 = getelementptr inbounds i32, i32* %722, i64 0
  %724 = load i32, i32* %723, align 4
  %725 = or i32 %724, 240
  store i32 %725, i32* %723, align 4
  br label %726

726:                                              ; preds = %715, %688
  br label %727

727:                                              ; preds = %726, %679
  %728 = load i32, i32* %13, align 4
  %729 = add nsw i32 %728, 1
  store i32 %729, i32* %13, align 4
  store i32 1, i32* %15, align 4
  br label %730

730:                                              ; preds = %864, %727
  %731 = load i32, i32* %15, align 4
  %732 = load i32, i32* @MAX_TX_COUNT, align 4
  %733 = icmp slt i32 %731, %732
  br i1 %733, label %734, label %867

734:                                              ; preds = %730
  %735 = load i32*, i32** %10, align 8
  %736 = load i32, i32* %13, align 4
  %737 = sext i32 %736 to i64
  %738 = getelementptr inbounds i32, i32* %735, i64 %737
  %739 = load i32, i32* %738, align 4
  %740 = icmp eq i32 %739, 255
  br i1 %740, label %741, label %752

741:                                              ; preds = %734
  %742 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %743 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %742, i32 0, i32 1
  %744 = load i32**, i32*** %743, align 8
  %745 = load i32, i32* %12, align 4
  %746 = sext i32 %745 to i64
  %747 = getelementptr inbounds i32*, i32** %744, i64 %746
  %748 = load i32*, i32** %747, align 8
  %749 = load i32, i32* %15, align 4
  %750 = sext i32 %749 to i64
  %751 = getelementptr inbounds i32, i32* %748, i64 %750
  store i32 254, i32* %751, align 4
  br label %798

752:                                              ; preds = %734
  %753 = load i32*, i32** %10, align 8
  %754 = load i32, i32* %13, align 4
  %755 = sext i32 %754 to i64
  %756 = getelementptr inbounds i32, i32* %753, i64 %755
  %757 = load i32, i32* %756, align 4
  %758 = and i32 %757, 240
  %759 = ashr i32 %758, 4
  %760 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %761 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %760, i32 0, i32 1
  %762 = load i32**, i32*** %761, align 8
  %763 = load i32, i32* %12, align 4
  %764 = sext i32 %763 to i64
  %765 = getelementptr inbounds i32*, i32** %762, i64 %764
  %766 = load i32*, i32** %765, align 8
  %767 = load i32, i32* %15, align 4
  %768 = sext i32 %767 to i64
  %769 = getelementptr inbounds i32, i32* %766, i64 %768
  store i32 %759, i32* %769, align 4
  %770 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %771 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %770, i32 0, i32 1
  %772 = load i32**, i32*** %771, align 8
  %773 = load i32, i32* %12, align 4
  %774 = sext i32 %773 to i64
  %775 = getelementptr inbounds i32*, i32** %772, i64 %774
  %776 = load i32*, i32** %775, align 8
  %777 = load i32, i32* %15, align 4
  %778 = sext i32 %777 to i64
  %779 = getelementptr inbounds i32, i32* %776, i64 %778
  %780 = load i32, i32* %779, align 4
  %781 = call i32 @BIT(i32 3)
  %782 = and i32 %780, %781
  %783 = icmp ne i32 %782, 0
  br i1 %783, label %784, label %797

784:                                              ; preds = %752
  %785 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %786 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %785, i32 0, i32 1
  %787 = load i32**, i32*** %786, align 8
  %788 = load i32, i32* %12, align 4
  %789 = sext i32 %788 to i64
  %790 = getelementptr inbounds i32*, i32** %787, i64 %789
  %791 = load i32*, i32** %790, align 8
  %792 = load i32, i32* %15, align 4
  %793 = sext i32 %792 to i64
  %794 = getelementptr inbounds i32, i32* %791, i64 %793
  %795 = load i32, i32* %794, align 4
  %796 = or i32 %795, 240
  store i32 %796, i32* %794, align 4
  br label %797

797:                                              ; preds = %784, %752
  br label %798

798:                                              ; preds = %797, %741
  %799 = load i32*, i32** %10, align 8
  %800 = load i32, i32* %13, align 4
  %801 = sext i32 %800 to i64
  %802 = getelementptr inbounds i32, i32* %799, i64 %801
  %803 = load i32, i32* %802, align 4
  %804 = icmp eq i32 %803, 255
  br i1 %804, label %805, label %816

805:                                              ; preds = %798
  %806 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %807 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %806, i32 0, i32 2
  %808 = load i32**, i32*** %807, align 8
  %809 = load i32, i32* %12, align 4
  %810 = sext i32 %809 to i64
  %811 = getelementptr inbounds i32*, i32** %808, i64 %810
  %812 = load i32*, i32** %811, align 8
  %813 = load i32, i32* %15, align 4
  %814 = sext i32 %813 to i64
  %815 = getelementptr inbounds i32, i32* %812, i64 %814
  store i32 254, i32* %815, align 4
  br label %861

816:                                              ; preds = %798
  %817 = load i32*, i32** %10, align 8
  %818 = load i32, i32* %13, align 4
  %819 = sext i32 %818 to i64
  %820 = getelementptr inbounds i32, i32* %817, i64 %819
  %821 = load i32, i32* %820, align 4
  %822 = and i32 %821, 15
  %823 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %824 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %823, i32 0, i32 2
  %825 = load i32**, i32*** %824, align 8
  %826 = load i32, i32* %12, align 4
  %827 = sext i32 %826 to i64
  %828 = getelementptr inbounds i32*, i32** %825, i64 %827
  %829 = load i32*, i32** %828, align 8
  %830 = load i32, i32* %15, align 4
  %831 = sext i32 %830 to i64
  %832 = getelementptr inbounds i32, i32* %829, i64 %831
  store i32 %822, i32* %832, align 4
  %833 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %834 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %833, i32 0, i32 2
  %835 = load i32**, i32*** %834, align 8
  %836 = load i32, i32* %12, align 4
  %837 = sext i32 %836 to i64
  %838 = getelementptr inbounds i32*, i32** %835, i64 %837
  %839 = load i32*, i32** %838, align 8
  %840 = load i32, i32* %15, align 4
  %841 = sext i32 %840 to i64
  %842 = getelementptr inbounds i32, i32* %839, i64 %841
  %843 = load i32, i32* %842, align 4
  %844 = call i32 @BIT(i32 3)
  %845 = and i32 %843, %844
  %846 = icmp ne i32 %845, 0
  br i1 %846, label %847, label %860

847:                                              ; preds = %816
  %848 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %849 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %848, i32 0, i32 2
  %850 = load i32**, i32*** %849, align 8
  %851 = load i32, i32* %12, align 4
  %852 = sext i32 %851 to i64
  %853 = getelementptr inbounds i32*, i32** %850, i64 %852
  %854 = load i32*, i32** %853, align 8
  %855 = load i32, i32* %15, align 4
  %856 = sext i32 %855 to i64
  %857 = getelementptr inbounds i32, i32* %854, i64 %856
  %858 = load i32, i32* %857, align 4
  %859 = or i32 %858, 240
  store i32 %859, i32* %857, align 4
  br label %860

860:                                              ; preds = %847, %816
  br label %861

861:                                              ; preds = %860, %805
  %862 = load i32, i32* %13, align 4
  %863 = add nsw i32 %862, 1
  store i32 %863, i32* %13, align 4
  br label %864

864:                                              ; preds = %861
  %865 = load i32, i32* %15, align 4
  %866 = add nsw i32 %865, 1
  store i32 %866, i32* %15, align 4
  br label %730

867:                                              ; preds = %730
  %868 = load i32*, i32** %10, align 8
  %869 = load i32, i32* %13, align 4
  %870 = sext i32 %869 to i64
  %871 = getelementptr inbounds i32, i32* %868, i64 %870
  %872 = load i32, i32* %871, align 4
  %873 = icmp eq i32 %872, 255
  br i1 %873, label %874, label %891

874:                                              ; preds = %867
  %875 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %876 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %875, i32 0, i32 3
  %877 = load i32**, i32*** %876, align 8
  %878 = load i32, i32* %12, align 4
  %879 = sext i32 %878 to i64
  %880 = getelementptr inbounds i32*, i32** %877, i64 %879
  %881 = load i32*, i32** %880, align 8
  %882 = getelementptr inbounds i32, i32* %881, i64 1
  store i32 254, i32* %882, align 4
  %883 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %884 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %883, i32 0, i32 3
  %885 = load i32**, i32*** %884, align 8
  %886 = load i32, i32* %12, align 4
  %887 = sext i32 %886 to i64
  %888 = getelementptr inbounds i32*, i32** %885, i64 %887
  %889 = load i32*, i32** %888, align 8
  %890 = getelementptr inbounds i32, i32* %889, i64 2
  store i32 254, i32* %890, align 4
  br label %921

891:                                              ; preds = %867
  %892 = load i32*, i32** %10, align 8
  %893 = load i32, i32* %13, align 4
  %894 = sext i32 %893 to i64
  %895 = getelementptr inbounds i32, i32* %892, i64 %894
  %896 = load i32, i32* %895, align 4
  %897 = and i32 %896, 240
  %898 = ashr i32 %897, 4
  %899 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %900 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %899, i32 0, i32 3
  %901 = load i32**, i32*** %900, align 8
  %902 = load i32, i32* %12, align 4
  %903 = sext i32 %902 to i64
  %904 = getelementptr inbounds i32*, i32** %901, i64 %903
  %905 = load i32*, i32** %904, align 8
  %906 = getelementptr inbounds i32, i32* %905, i64 1
  store i32 %898, i32* %906, align 4
  %907 = load i32*, i32** %10, align 8
  %908 = load i32, i32* %13, align 4
  %909 = sext i32 %908 to i64
  %910 = getelementptr inbounds i32, i32* %907, i64 %909
  %911 = load i32, i32* %910, align 4
  %912 = and i32 %911, 15
  %913 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %914 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %913, i32 0, i32 3
  %915 = load i32**, i32*** %914, align 8
  %916 = load i32, i32* %12, align 4
  %917 = sext i32 %916 to i64
  %918 = getelementptr inbounds i32*, i32** %915, i64 %917
  %919 = load i32*, i32** %918, align 8
  %920 = getelementptr inbounds i32, i32* %919, i64 2
  store i32 %912, i32* %920, align 4
  br label %921

921:                                              ; preds = %891, %874
  %922 = load i32, i32* %13, align 4
  %923 = add nsw i32 %922, 1
  store i32 %923, i32* %13, align 4
  %924 = load i32*, i32** %10, align 8
  %925 = load i32, i32* %13, align 4
  %926 = sext i32 %925 to i64
  %927 = getelementptr inbounds i32, i32* %924, i64 %926
  %928 = load i32, i32* %927, align 4
  %929 = icmp eq i32 %928, 255
  br i1 %929, label %930, label %939

930:                                              ; preds = %921
  %931 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %932 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %931, i32 0, i32 3
  %933 = load i32**, i32*** %932, align 8
  %934 = load i32, i32* %12, align 4
  %935 = sext i32 %934 to i64
  %936 = getelementptr inbounds i32*, i32** %933, i64 %935
  %937 = load i32*, i32** %936, align 8
  %938 = getelementptr inbounds i32, i32* %937, i64 3
  store i32 254, i32* %938, align 4
  br label %954

939:                                              ; preds = %921
  %940 = load i32*, i32** %10, align 8
  %941 = load i32, i32* %13, align 4
  %942 = sext i32 %941 to i64
  %943 = getelementptr inbounds i32, i32* %940, i64 %942
  %944 = load i32, i32* %943, align 4
  %945 = and i32 %944, 15
  %946 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %947 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %946, i32 0, i32 3
  %948 = load i32**, i32*** %947, align 8
  %949 = load i32, i32* %12, align 4
  %950 = sext i32 %949 to i64
  %951 = getelementptr inbounds i32*, i32** %948, i64 %950
  %952 = load i32*, i32** %951, align 8
  %953 = getelementptr inbounds i32, i32* %952, i64 3
  store i32 %945, i32* %953, align 4
  br label %954

954:                                              ; preds = %939, %930
  %955 = load i32, i32* %13, align 4
  %956 = add nsw i32 %955, 1
  store i32 %956, i32* %13, align 4
  store i32 1, i32* %15, align 4
  br label %957

957:                                              ; preds = %1015, %954
  %958 = load i32, i32* %15, align 4
  %959 = load i32, i32* @MAX_TX_COUNT, align 4
  %960 = icmp slt i32 %958, %959
  br i1 %960, label %961, label %1018

961:                                              ; preds = %957
  %962 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %963 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %962, i32 0, i32 3
  %964 = load i32**, i32*** %963, align 8
  %965 = load i32, i32* %12, align 4
  %966 = sext i32 %965 to i64
  %967 = getelementptr inbounds i32*, i32** %964, i64 %966
  %968 = load i32*, i32** %967, align 8
  %969 = load i32, i32* %15, align 4
  %970 = sext i32 %969 to i64
  %971 = getelementptr inbounds i32, i32* %968, i64 %970
  %972 = load i32, i32* %971, align 4
  %973 = icmp eq i32 %972, 255
  br i1 %973, label %974, label %985

974:                                              ; preds = %961
  %975 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %976 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %975, i32 0, i32 3
  %977 = load i32**, i32*** %976, align 8
  %978 = load i32, i32* %12, align 4
  %979 = sext i32 %978 to i64
  %980 = getelementptr inbounds i32*, i32** %977, i64 %979
  %981 = load i32*, i32** %980, align 8
  %982 = load i32, i32* %15, align 4
  %983 = sext i32 %982 to i64
  %984 = getelementptr inbounds i32, i32* %981, i64 %983
  store i32 254, i32* %984, align 4
  br label %1014

985:                                              ; preds = %961
  %986 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %987 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %986, i32 0, i32 3
  %988 = load i32**, i32*** %987, align 8
  %989 = load i32, i32* %12, align 4
  %990 = sext i32 %989 to i64
  %991 = getelementptr inbounds i32*, i32** %988, i64 %990
  %992 = load i32*, i32** %991, align 8
  %993 = load i32, i32* %15, align 4
  %994 = sext i32 %993 to i64
  %995 = getelementptr inbounds i32, i32* %992, i64 %994
  %996 = load i32, i32* %995, align 4
  %997 = call i32 @BIT(i32 3)
  %998 = and i32 %996, %997
  %999 = icmp ne i32 %998, 0
  br i1 %999, label %1000, label %1013

1000:                                             ; preds = %985
  %1001 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %1002 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %1001, i32 0, i32 3
  %1003 = load i32**, i32*** %1002, align 8
  %1004 = load i32, i32* %12, align 4
  %1005 = sext i32 %1004 to i64
  %1006 = getelementptr inbounds i32*, i32** %1003, i64 %1005
  %1007 = load i32*, i32** %1006, align 8
  %1008 = load i32, i32* %15, align 4
  %1009 = sext i32 %1008 to i64
  %1010 = getelementptr inbounds i32, i32* %1007, i64 %1009
  %1011 = load i32, i32* %1010, align 4
  %1012 = or i32 %1011, 240
  store i32 %1012, i32* %1010, align 4
  br label %1013

1013:                                             ; preds = %1000, %985
  br label %1014

1014:                                             ; preds = %1013, %974
  br label %1015

1015:                                             ; preds = %1014
  %1016 = load i32, i32* %15, align 4
  %1017 = add nsw i32 %1016, 1
  store i32 %1017, i32* %15, align 4
  br label %957

1018:                                             ; preds = %957
  br label %1019

1019:                                             ; preds = %1018
  %1020 = load i32, i32* %12, align 4
  %1021 = add nsw i32 %1020, 1
  store i32 %1021, i32* %12, align 4
  br label %60

1022:                                             ; preds = %58, %60
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @set_24g_base(%struct.txpower_info_2g*, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
