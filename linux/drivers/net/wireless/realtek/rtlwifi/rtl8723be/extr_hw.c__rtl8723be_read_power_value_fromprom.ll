; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_hw.c__rtl8723be_read_power_value_fromprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_hw.c__rtl8723be_read_power_value_fromprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.txpower_info_2g = type { i32**, i32**, i32**, i32**, i32**, i32** }
%struct.txpower_info_5g = type { i32**, i32**, i32**, i32** }
%struct.rtl_priv = type { i32 }

@EEPROM_TX_PWR_INX = common dso_local global i32 0, align 4
@COMP_INIT = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"hal_ReadPowerValueFromPROM8723BE(): PROMContent[0x%x]=0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"auto load fail : Use Default value!\0A\00", align 1
@MAX_RF_PATH = common dso_local global i32 0, align 4
@MAX_CHNL_GROUP_24G = common dso_local global i32 0, align 4
@MAX_TX_COUNT = common dso_local global i32 0, align 4
@MAX_CHNL_GROUP_5G = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.txpower_info_2g*, %struct.txpower_info_5g*, i32, i32*)* @_rtl8723be_read_power_value_fromprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl8723be_read_power_value_fromprom(%struct.ieee80211_hw* %0, %struct.txpower_info_2g* %1, %struct.txpower_info_5g* %2, i32 %3, i32* %4) #0 {
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
  %30 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %19, i32 %20, i32 %21, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %29)
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
  br i1 %41, label %42, label %155

42:                                               ; preds = %39
  %43 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %44 = load i32, i32* @COMP_INIT, align 4
  %45 = load i32, i32* @DBG_LOUD, align 4
  %46 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %43, i32 %44, i32 %45, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %12, align 4
  br label %47

47:                                               ; preds = %151, %42
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @MAX_RF_PATH, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %154

51:                                               ; preds = %47
  store i32 0, i32* %14, align 4
  br label %52

52:                                               ; preds = %77, %51
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* @MAX_CHNL_GROUP_24G, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %80

56:                                               ; preds = %52
  %57 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %58 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %57, i32 0, i32 0
  %59 = load i32**, i32*** %58, align 8
  %60 = load i32, i32* %12, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32*, i32** %59, i64 %61
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %14, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32 45, i32* %66, align 4
  %67 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %68 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %67, i32 0, i32 1
  %69 = load i32**, i32*** %68, align 8
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32*, i32** %69, i64 %71
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %14, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 45, i32* %76, align 4
  br label %77

77:                                               ; preds = %56
  %78 = load i32, i32* %14, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %14, align 4
  br label %52

80:                                               ; preds = %52
  store i32 0, i32* %15, align 4
  br label %81

81:                                               ; preds = %147, %80
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* @MAX_TX_COUNT, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %150

85:                                               ; preds = %81
  %86 = load i32, i32* %15, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %105

88:                                               ; preds = %85
  %89 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %90 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %89, i32 0, i32 2
  %91 = load i32**, i32*** %90, align 8
  %92 = load i32, i32* %12, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32*, i32** %91, i64 %93
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  store i32 2, i32* %96, align 4
  %97 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %98 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %97, i32 0, i32 3
  %99 = load i32**, i32*** %98, align 8
  %100 = load i32, i32* %12, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32*, i32** %99, i64 %101
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  store i32 4, i32* %104, align 4
  br label %146

105:                                              ; preds = %85
  %106 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %107 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %106, i32 0, i32 2
  %108 = load i32**, i32*** %107, align 8
  %109 = load i32, i32* %12, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32*, i32** %108, i64 %110
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %15, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  store i32 254, i32* %115, align 4
  %116 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %117 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %116, i32 0, i32 4
  %118 = load i32**, i32*** %117, align 8
  %119 = load i32, i32* %12, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32*, i32** %118, i64 %120
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %15, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  store i32 254, i32* %125, align 4
  %126 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %127 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %126, i32 0, i32 5
  %128 = load i32**, i32*** %127, align 8
  %129 = load i32, i32* %12, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32*, i32** %128, i64 %130
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %15, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  store i32 254, i32* %135, align 4
  %136 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %137 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %136, i32 0, i32 3
  %138 = load i32**, i32*** %137, align 8
  %139 = load i32, i32* %12, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32*, i32** %138, i64 %140
  %142 = load i32*, i32** %141, align 8
  %143 = load i32, i32* %15, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  store i32 254, i32* %145, align 4
  br label %146

146:                                              ; preds = %105, %88
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %15, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %15, align 4
  br label %81

150:                                              ; preds = %81
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %12, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %12, align 4
  br label %47

154:                                              ; preds = %47
  br label %1162

155:                                              ; preds = %39
  store i32 0, i32* %12, align 4
  br label %156

156:                                              ; preds = %1159, %155
  %157 = load i32, i32* %12, align 4
  %158 = load i32, i32* @MAX_RF_PATH, align 4
  %159 = icmp slt i32 %157, %158
  br i1 %159, label %160, label %1162

160:                                              ; preds = %156
  store i32 0, i32* %14, align 4
  br label %161

161:                                              ; preds = %206, %160
  %162 = load i32, i32* %14, align 4
  %163 = load i32, i32* @MAX_CHNL_GROUP_24G, align 4
  %164 = icmp slt i32 %162, %163
  br i1 %164, label %165, label %209

165:                                              ; preds = %161
  %166 = load i32*, i32** %10, align 8
  %167 = load i32, i32* %13, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %13, align 4
  %169 = sext i32 %167 to i64
  %170 = getelementptr inbounds i32, i32* %166, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %173 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %172, i32 0, i32 0
  %174 = load i32**, i32*** %173, align 8
  %175 = load i32, i32* %12, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32*, i32** %174, i64 %176
  %178 = load i32*, i32** %177, align 8
  %179 = load i32, i32* %14, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  store i32 %171, i32* %181, align 4
  %182 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %183 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %182, i32 0, i32 0
  %184 = load i32**, i32*** %183, align 8
  %185 = load i32, i32* %12, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32*, i32** %184, i64 %186
  %188 = load i32*, i32** %187, align 8
  %189 = load i32, i32* %14, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %188, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = icmp eq i32 %192, 255
  br i1 %193, label %194, label %205

194:                                              ; preds = %165
  %195 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %196 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %195, i32 0, i32 0
  %197 = load i32**, i32*** %196, align 8
  %198 = load i32, i32* %12, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32*, i32** %197, i64 %199
  %201 = load i32*, i32** %200, align 8
  %202 = load i32, i32* %14, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32, i32* %201, i64 %203
  store i32 45, i32* %204, align 4
  br label %205

205:                                              ; preds = %194, %165
  br label %206

206:                                              ; preds = %205
  %207 = load i32, i32* %14, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %14, align 4
  br label %161

209:                                              ; preds = %161
  store i32 0, i32* %14, align 4
  br label %210

210:                                              ; preds = %256, %209
  %211 = load i32, i32* %14, align 4
  %212 = load i32, i32* @MAX_CHNL_GROUP_24G, align 4
  %213 = sub nsw i32 %212, 1
  %214 = icmp slt i32 %211, %213
  br i1 %214, label %215, label %259

215:                                              ; preds = %210
  %216 = load i32*, i32** %10, align 8
  %217 = load i32, i32* %13, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %13, align 4
  %219 = sext i32 %217 to i64
  %220 = getelementptr inbounds i32, i32* %216, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %223 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %222, i32 0, i32 1
  %224 = load i32**, i32*** %223, align 8
  %225 = load i32, i32* %12, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32*, i32** %224, i64 %226
  %228 = load i32*, i32** %227, align 8
  %229 = load i32, i32* %14, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  store i32 %221, i32* %231, align 4
  %232 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %233 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %232, i32 0, i32 1
  %234 = load i32**, i32*** %233, align 8
  %235 = load i32, i32* %12, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32*, i32** %234, i64 %236
  %238 = load i32*, i32** %237, align 8
  %239 = load i32, i32* %14, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %238, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = icmp eq i32 %242, 255
  br i1 %243, label %244, label %255

244:                                              ; preds = %215
  %245 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %246 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %245, i32 0, i32 1
  %247 = load i32**, i32*** %246, align 8
  %248 = load i32, i32* %12, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32*, i32** %247, i64 %249
  %251 = load i32*, i32** %250, align 8
  %252 = load i32, i32* %14, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i32, i32* %251, i64 %253
  store i32 45, i32* %254, align 4
  br label %255

255:                                              ; preds = %244, %215
  br label %256

256:                                              ; preds = %255
  %257 = load i32, i32* %14, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %14, align 4
  br label %210

259:                                              ; preds = %210
  store i32 0, i32* %15, align 4
  br label %260

260:                                              ; preds = %677, %259
  %261 = load i32, i32* %15, align 4
  %262 = load i32, i32* @MAX_TX_COUNT, align 4
  %263 = icmp slt i32 %261, %262
  br i1 %263, label %264, label %680

264:                                              ; preds = %260
  %265 = load i32, i32* %15, align 4
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %417

267:                                              ; preds = %264
  %268 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %269 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %268, i32 0, i32 4
  %270 = load i32**, i32*** %269, align 8
  %271 = load i32, i32* %12, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds i32*, i32** %270, i64 %272
  %274 = load i32*, i32** %273, align 8
  %275 = load i32, i32* %15, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32, i32* %274, i64 %276
  store i32 0, i32* %277, align 4
  %278 = load i32*, i32** %10, align 8
  %279 = load i32, i32* %13, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i32, i32* %278, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = icmp eq i32 %282, 255
  br i1 %283, label %284, label %295

284:                                              ; preds = %267
  %285 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %286 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %285, i32 0, i32 2
  %287 = load i32**, i32*** %286, align 8
  %288 = load i32, i32* %12, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i32*, i32** %287, i64 %289
  %291 = load i32*, i32** %290, align 8
  %292 = load i32, i32* %15, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32, i32* %291, i64 %293
  store i32 2, i32* %294, align 4
  br label %341

295:                                              ; preds = %267
  %296 = load i32*, i32** %10, align 8
  %297 = load i32, i32* %13, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i32, i32* %296, i64 %298
  %300 = load i32, i32* %299, align 4
  %301 = and i32 %300, 240
  %302 = ashr i32 %301, 4
  %303 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %304 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %303, i32 0, i32 2
  %305 = load i32**, i32*** %304, align 8
  %306 = load i32, i32* %12, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i32*, i32** %305, i64 %307
  %309 = load i32*, i32** %308, align 8
  %310 = load i32, i32* %15, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i32, i32* %309, i64 %311
  store i32 %302, i32* %312, align 4
  %313 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %314 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %313, i32 0, i32 2
  %315 = load i32**, i32*** %314, align 8
  %316 = load i32, i32* %12, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i32*, i32** %315, i64 %317
  %319 = load i32*, i32** %318, align 8
  %320 = load i32, i32* %15, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i32, i32* %319, i64 %321
  %323 = load i32, i32* %322, align 4
  %324 = call i32 @BIT(i32 3)
  %325 = and i32 %323, %324
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %340

327:                                              ; preds = %295
  %328 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %329 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %328, i32 0, i32 2
  %330 = load i32**, i32*** %329, align 8
  %331 = load i32, i32* %12, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i32*, i32** %330, i64 %332
  %334 = load i32*, i32** %333, align 8
  %335 = load i32, i32* %15, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i32, i32* %334, i64 %336
  %338 = load i32, i32* %337, align 4
  %339 = or i32 %338, 240
  store i32 %339, i32* %337, align 4
  br label %340

340:                                              ; preds = %327, %295
  br label %341

341:                                              ; preds = %340, %284
  %342 = load i32*, i32** %10, align 8
  %343 = load i32, i32* %13, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i32, i32* %342, i64 %344
  %346 = load i32, i32* %345, align 4
  %347 = icmp eq i32 %346, 255
  br i1 %347, label %348, label %359

348:                                              ; preds = %341
  %349 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %350 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %349, i32 0, i32 3
  %351 = load i32**, i32*** %350, align 8
  %352 = load i32, i32* %12, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i32*, i32** %351, i64 %353
  %355 = load i32*, i32** %354, align 8
  %356 = load i32, i32* %15, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i32, i32* %355, i64 %357
  store i32 4, i32* %358, align 4
  br label %404

359:                                              ; preds = %341
  %360 = load i32*, i32** %10, align 8
  %361 = load i32, i32* %13, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds i32, i32* %360, i64 %362
  %364 = load i32, i32* %363, align 4
  %365 = and i32 %364, 15
  %366 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %367 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %366, i32 0, i32 3
  %368 = load i32**, i32*** %367, align 8
  %369 = load i32, i32* %12, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i32*, i32** %368, i64 %370
  %372 = load i32*, i32** %371, align 8
  %373 = load i32, i32* %15, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds i32, i32* %372, i64 %374
  store i32 %365, i32* %375, align 4
  %376 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %377 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %376, i32 0, i32 3
  %378 = load i32**, i32*** %377, align 8
  %379 = load i32, i32* %12, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i32*, i32** %378, i64 %380
  %382 = load i32*, i32** %381, align 8
  %383 = load i32, i32* %15, align 4
  %384 = sext i32 %383 to i64
  %385 = getelementptr inbounds i32, i32* %382, i64 %384
  %386 = load i32, i32* %385, align 4
  %387 = call i32 @BIT(i32 3)
  %388 = and i32 %386, %387
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %403

390:                                              ; preds = %359
  %391 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %392 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %391, i32 0, i32 3
  %393 = load i32**, i32*** %392, align 8
  %394 = load i32, i32* %12, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds i32*, i32** %393, i64 %395
  %397 = load i32*, i32** %396, align 8
  %398 = load i32, i32* %15, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds i32, i32* %397, i64 %399
  %401 = load i32, i32* %400, align 4
  %402 = or i32 %401, 240
  store i32 %402, i32* %400, align 4
  br label %403

403:                                              ; preds = %390, %359
  br label %404

404:                                              ; preds = %403, %348
  %405 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %406 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %405, i32 0, i32 5
  %407 = load i32**, i32*** %406, align 8
  %408 = load i32, i32* %12, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i32*, i32** %407, i64 %409
  %411 = load i32*, i32** %410, align 8
  %412 = load i32, i32* %15, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds i32, i32* %411, i64 %413
  store i32 0, i32* %414, align 4
  %415 = load i32, i32* %13, align 4
  %416 = add nsw i32 %415, 1
  store i32 %416, i32* %13, align 4
  br label %676

417:                                              ; preds = %264
  %418 = load i32*, i32** %10, align 8
  %419 = load i32, i32* %13, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds i32, i32* %418, i64 %420
  %422 = load i32, i32* %421, align 4
  %423 = icmp eq i32 %422, 255
  br i1 %423, label %424, label %435

424:                                              ; preds = %417
  %425 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %426 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %425, i32 0, i32 4
  %427 = load i32**, i32*** %426, align 8
  %428 = load i32, i32* %12, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds i32*, i32** %427, i64 %429
  %431 = load i32*, i32** %430, align 8
  %432 = load i32, i32* %15, align 4
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds i32, i32* %431, i64 %433
  store i32 254, i32* %434, align 4
  br label %481

435:                                              ; preds = %417
  %436 = load i32*, i32** %10, align 8
  %437 = load i32, i32* %13, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds i32, i32* %436, i64 %438
  %440 = load i32, i32* %439, align 4
  %441 = and i32 %440, 240
  %442 = ashr i32 %441, 4
  %443 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %444 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %443, i32 0, i32 4
  %445 = load i32**, i32*** %444, align 8
  %446 = load i32, i32* %12, align 4
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds i32*, i32** %445, i64 %447
  %449 = load i32*, i32** %448, align 8
  %450 = load i32, i32* %15, align 4
  %451 = sext i32 %450 to i64
  %452 = getelementptr inbounds i32, i32* %449, i64 %451
  store i32 %442, i32* %452, align 4
  %453 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %454 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %453, i32 0, i32 4
  %455 = load i32**, i32*** %454, align 8
  %456 = load i32, i32* %12, align 4
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds i32*, i32** %455, i64 %457
  %459 = load i32*, i32** %458, align 8
  %460 = load i32, i32* %15, align 4
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds i32, i32* %459, i64 %461
  %463 = load i32, i32* %462, align 4
  %464 = call i32 @BIT(i32 3)
  %465 = and i32 %463, %464
  %466 = icmp ne i32 %465, 0
  br i1 %466, label %467, label %480

467:                                              ; preds = %435
  %468 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %469 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %468, i32 0, i32 4
  %470 = load i32**, i32*** %469, align 8
  %471 = load i32, i32* %12, align 4
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds i32*, i32** %470, i64 %472
  %474 = load i32*, i32** %473, align 8
  %475 = load i32, i32* %15, align 4
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds i32, i32* %474, i64 %476
  %478 = load i32, i32* %477, align 4
  %479 = or i32 %478, 240
  store i32 %479, i32* %477, align 4
  br label %480

480:                                              ; preds = %467, %435
  br label %481

481:                                              ; preds = %480, %424
  %482 = load i32*, i32** %10, align 8
  %483 = load i32, i32* %13, align 4
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds i32, i32* %482, i64 %484
  %486 = load i32, i32* %485, align 4
  %487 = icmp eq i32 %486, 255
  br i1 %487, label %488, label %499

488:                                              ; preds = %481
  %489 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %490 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %489, i32 0, i32 2
  %491 = load i32**, i32*** %490, align 8
  %492 = load i32, i32* %12, align 4
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds i32*, i32** %491, i64 %493
  %495 = load i32*, i32** %494, align 8
  %496 = load i32, i32* %15, align 4
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds i32, i32* %495, i64 %497
  store i32 254, i32* %498, align 4
  br label %544

499:                                              ; preds = %481
  %500 = load i32*, i32** %10, align 8
  %501 = load i32, i32* %13, align 4
  %502 = sext i32 %501 to i64
  %503 = getelementptr inbounds i32, i32* %500, i64 %502
  %504 = load i32, i32* %503, align 4
  %505 = and i32 %504, 15
  %506 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %507 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %506, i32 0, i32 2
  %508 = load i32**, i32*** %507, align 8
  %509 = load i32, i32* %12, align 4
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds i32*, i32** %508, i64 %510
  %512 = load i32*, i32** %511, align 8
  %513 = load i32, i32* %15, align 4
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds i32, i32* %512, i64 %514
  store i32 %505, i32* %515, align 4
  %516 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %517 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %516, i32 0, i32 2
  %518 = load i32**, i32*** %517, align 8
  %519 = load i32, i32* %12, align 4
  %520 = sext i32 %519 to i64
  %521 = getelementptr inbounds i32*, i32** %518, i64 %520
  %522 = load i32*, i32** %521, align 8
  %523 = load i32, i32* %15, align 4
  %524 = sext i32 %523 to i64
  %525 = getelementptr inbounds i32, i32* %522, i64 %524
  %526 = load i32, i32* %525, align 4
  %527 = call i32 @BIT(i32 3)
  %528 = and i32 %526, %527
  %529 = icmp ne i32 %528, 0
  br i1 %529, label %530, label %543

530:                                              ; preds = %499
  %531 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %532 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %531, i32 0, i32 2
  %533 = load i32**, i32*** %532, align 8
  %534 = load i32, i32* %12, align 4
  %535 = sext i32 %534 to i64
  %536 = getelementptr inbounds i32*, i32** %533, i64 %535
  %537 = load i32*, i32** %536, align 8
  %538 = load i32, i32* %15, align 4
  %539 = sext i32 %538 to i64
  %540 = getelementptr inbounds i32, i32* %537, i64 %539
  %541 = load i32, i32* %540, align 4
  %542 = or i32 %541, 240
  store i32 %542, i32* %540, align 4
  br label %543

543:                                              ; preds = %530, %499
  br label %544

544:                                              ; preds = %543, %488
  %545 = load i32, i32* %13, align 4
  %546 = add nsw i32 %545, 1
  store i32 %546, i32* %13, align 4
  %547 = load i32*, i32** %10, align 8
  %548 = load i32, i32* %13, align 4
  %549 = sext i32 %548 to i64
  %550 = getelementptr inbounds i32, i32* %547, i64 %549
  %551 = load i32, i32* %550, align 4
  %552 = icmp eq i32 %551, 255
  br i1 %552, label %553, label %564

553:                                              ; preds = %544
  %554 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %555 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %554, i32 0, i32 3
  %556 = load i32**, i32*** %555, align 8
  %557 = load i32, i32* %12, align 4
  %558 = sext i32 %557 to i64
  %559 = getelementptr inbounds i32*, i32** %556, i64 %558
  %560 = load i32*, i32** %559, align 8
  %561 = load i32, i32* %15, align 4
  %562 = sext i32 %561 to i64
  %563 = getelementptr inbounds i32, i32* %560, i64 %562
  store i32 254, i32* %563, align 4
  br label %610

564:                                              ; preds = %544
  %565 = load i32*, i32** %10, align 8
  %566 = load i32, i32* %13, align 4
  %567 = sext i32 %566 to i64
  %568 = getelementptr inbounds i32, i32* %565, i64 %567
  %569 = load i32, i32* %568, align 4
  %570 = and i32 %569, 240
  %571 = ashr i32 %570, 4
  %572 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %573 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %572, i32 0, i32 3
  %574 = load i32**, i32*** %573, align 8
  %575 = load i32, i32* %12, align 4
  %576 = sext i32 %575 to i64
  %577 = getelementptr inbounds i32*, i32** %574, i64 %576
  %578 = load i32*, i32** %577, align 8
  %579 = load i32, i32* %15, align 4
  %580 = sext i32 %579 to i64
  %581 = getelementptr inbounds i32, i32* %578, i64 %580
  store i32 %571, i32* %581, align 4
  %582 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %583 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %582, i32 0, i32 3
  %584 = load i32**, i32*** %583, align 8
  %585 = load i32, i32* %12, align 4
  %586 = sext i32 %585 to i64
  %587 = getelementptr inbounds i32*, i32** %584, i64 %586
  %588 = load i32*, i32** %587, align 8
  %589 = load i32, i32* %15, align 4
  %590 = sext i32 %589 to i64
  %591 = getelementptr inbounds i32, i32* %588, i64 %590
  %592 = load i32, i32* %591, align 4
  %593 = call i32 @BIT(i32 3)
  %594 = and i32 %592, %593
  %595 = icmp ne i32 %594, 0
  br i1 %595, label %596, label %609

596:                                              ; preds = %564
  %597 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %598 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %597, i32 0, i32 3
  %599 = load i32**, i32*** %598, align 8
  %600 = load i32, i32* %12, align 4
  %601 = sext i32 %600 to i64
  %602 = getelementptr inbounds i32*, i32** %599, i64 %601
  %603 = load i32*, i32** %602, align 8
  %604 = load i32, i32* %15, align 4
  %605 = sext i32 %604 to i64
  %606 = getelementptr inbounds i32, i32* %603, i64 %605
  %607 = load i32, i32* %606, align 4
  %608 = or i32 %607, 240
  store i32 %608, i32* %606, align 4
  br label %609

609:                                              ; preds = %596, %564
  br label %610

610:                                              ; preds = %609, %553
  %611 = load i32*, i32** %10, align 8
  %612 = load i32, i32* %13, align 4
  %613 = sext i32 %612 to i64
  %614 = getelementptr inbounds i32, i32* %611, i64 %613
  %615 = load i32, i32* %614, align 4
  %616 = icmp eq i32 %615, 255
  br i1 %616, label %617, label %628

617:                                              ; preds = %610
  %618 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %619 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %618, i32 0, i32 5
  %620 = load i32**, i32*** %619, align 8
  %621 = load i32, i32* %12, align 4
  %622 = sext i32 %621 to i64
  %623 = getelementptr inbounds i32*, i32** %620, i64 %622
  %624 = load i32*, i32** %623, align 8
  %625 = load i32, i32* %15, align 4
  %626 = sext i32 %625 to i64
  %627 = getelementptr inbounds i32, i32* %624, i64 %626
  store i32 254, i32* %627, align 4
  br label %673

628:                                              ; preds = %610
  %629 = load i32*, i32** %10, align 8
  %630 = load i32, i32* %13, align 4
  %631 = sext i32 %630 to i64
  %632 = getelementptr inbounds i32, i32* %629, i64 %631
  %633 = load i32, i32* %632, align 4
  %634 = and i32 %633, 15
  %635 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %636 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %635, i32 0, i32 5
  %637 = load i32**, i32*** %636, align 8
  %638 = load i32, i32* %12, align 4
  %639 = sext i32 %638 to i64
  %640 = getelementptr inbounds i32*, i32** %637, i64 %639
  %641 = load i32*, i32** %640, align 8
  %642 = load i32, i32* %15, align 4
  %643 = sext i32 %642 to i64
  %644 = getelementptr inbounds i32, i32* %641, i64 %643
  store i32 %634, i32* %644, align 4
  %645 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %646 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %645, i32 0, i32 5
  %647 = load i32**, i32*** %646, align 8
  %648 = load i32, i32* %12, align 4
  %649 = sext i32 %648 to i64
  %650 = getelementptr inbounds i32*, i32** %647, i64 %649
  %651 = load i32*, i32** %650, align 8
  %652 = load i32, i32* %15, align 4
  %653 = sext i32 %652 to i64
  %654 = getelementptr inbounds i32, i32* %651, i64 %653
  %655 = load i32, i32* %654, align 4
  %656 = call i32 @BIT(i32 3)
  %657 = and i32 %655, %656
  %658 = icmp ne i32 %657, 0
  br i1 %658, label %659, label %672

659:                                              ; preds = %628
  %660 = load %struct.txpower_info_2g*, %struct.txpower_info_2g** %7, align 8
  %661 = getelementptr inbounds %struct.txpower_info_2g, %struct.txpower_info_2g* %660, i32 0, i32 5
  %662 = load i32**, i32*** %661, align 8
  %663 = load i32, i32* %12, align 4
  %664 = sext i32 %663 to i64
  %665 = getelementptr inbounds i32*, i32** %662, i64 %664
  %666 = load i32*, i32** %665, align 8
  %667 = load i32, i32* %15, align 4
  %668 = sext i32 %667 to i64
  %669 = getelementptr inbounds i32, i32* %666, i64 %668
  %670 = load i32, i32* %669, align 4
  %671 = or i32 %670, 240
  store i32 %671, i32* %669, align 4
  br label %672

672:                                              ; preds = %659, %628
  br label %673

673:                                              ; preds = %672, %617
  %674 = load i32, i32* %13, align 4
  %675 = add nsw i32 %674, 1
  store i32 %675, i32* %13, align 4
  br label %676

676:                                              ; preds = %673, %404
  br label %677

677:                                              ; preds = %676
  %678 = load i32, i32* %15, align 4
  %679 = add nsw i32 %678, 1
  store i32 %679, i32* %15, align 4
  br label %260

680:                                              ; preds = %260
  store i32 0, i32* %14, align 4
  br label %681

681:                                              ; preds = %726, %680
  %682 = load i32, i32* %14, align 4
  %683 = load i32, i32* @MAX_CHNL_GROUP_5G, align 4
  %684 = icmp slt i32 %682, %683
  br i1 %684, label %685, label %729

685:                                              ; preds = %681
  %686 = load i32*, i32** %10, align 8
  %687 = load i32, i32* %13, align 4
  %688 = add nsw i32 %687, 1
  store i32 %688, i32* %13, align 4
  %689 = sext i32 %687 to i64
  %690 = getelementptr inbounds i32, i32* %686, i64 %689
  %691 = load i32, i32* %690, align 4
  %692 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %693 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %692, i32 0, i32 0
  %694 = load i32**, i32*** %693, align 8
  %695 = load i32, i32* %12, align 4
  %696 = sext i32 %695 to i64
  %697 = getelementptr inbounds i32*, i32** %694, i64 %696
  %698 = load i32*, i32** %697, align 8
  %699 = load i32, i32* %14, align 4
  %700 = sext i32 %699 to i64
  %701 = getelementptr inbounds i32, i32* %698, i64 %700
  store i32 %691, i32* %701, align 4
  %702 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %703 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %702, i32 0, i32 0
  %704 = load i32**, i32*** %703, align 8
  %705 = load i32, i32* %12, align 4
  %706 = sext i32 %705 to i64
  %707 = getelementptr inbounds i32*, i32** %704, i64 %706
  %708 = load i32*, i32** %707, align 8
  %709 = load i32, i32* %14, align 4
  %710 = sext i32 %709 to i64
  %711 = getelementptr inbounds i32, i32* %708, i64 %710
  %712 = load i32, i32* %711, align 4
  %713 = icmp eq i32 %712, 255
  br i1 %713, label %714, label %725

714:                                              ; preds = %685
  %715 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %716 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %715, i32 0, i32 0
  %717 = load i32**, i32*** %716, align 8
  %718 = load i32, i32* %12, align 4
  %719 = sext i32 %718 to i64
  %720 = getelementptr inbounds i32*, i32** %717, i64 %719
  %721 = load i32*, i32** %720, align 8
  %722 = load i32, i32* %14, align 4
  %723 = sext i32 %722 to i64
  %724 = getelementptr inbounds i32, i32* %721, i64 %723
  store i32 254, i32* %724, align 4
  br label %725

725:                                              ; preds = %714, %685
  br label %726

726:                                              ; preds = %725
  %727 = load i32, i32* %14, align 4
  %728 = add nsw i32 %727, 1
  store i32 %728, i32* %14, align 4
  br label %681

729:                                              ; preds = %681
  store i32 0, i32* %15, align 4
  br label %730

730:                                              ; preds = %1004, %729
  %731 = load i32, i32* %15, align 4
  %732 = load i32, i32* @MAX_TX_COUNT, align 4
  %733 = icmp slt i32 %731, %732
  br i1 %733, label %734, label %1007

734:                                              ; preds = %730
  %735 = load i32, i32* %15, align 4
  %736 = icmp eq i32 %735, 0
  br i1 %736, label %737, label %873

737:                                              ; preds = %734
  %738 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %739 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %738, i32 0, i32 1
  %740 = load i32**, i32*** %739, align 8
  %741 = load i32, i32* %12, align 4
  %742 = sext i32 %741 to i64
  %743 = getelementptr inbounds i32*, i32** %740, i64 %742
  %744 = load i32*, i32** %743, align 8
  %745 = load i32, i32* %15, align 4
  %746 = sext i32 %745 to i64
  %747 = getelementptr inbounds i32, i32* %744, i64 %746
  store i32 0, i32* %747, align 4
  %748 = load i32*, i32** %10, align 8
  %749 = load i32, i32* %13, align 4
  %750 = sext i32 %749 to i64
  %751 = getelementptr inbounds i32, i32* %748, i64 %750
  %752 = load i32, i32* %751, align 4
  %753 = icmp eq i32 %752, 255
  br i1 %753, label %754, label %765

754:                                              ; preds = %737
  %755 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %756 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %755, i32 0, i32 2
  %757 = load i32**, i32*** %756, align 8
  %758 = load i32, i32* %12, align 4
  %759 = sext i32 %758 to i64
  %760 = getelementptr inbounds i32*, i32** %757, i64 %759
  %761 = load i32*, i32** %760, align 8
  %762 = load i32, i32* %15, align 4
  %763 = sext i32 %762 to i64
  %764 = getelementptr inbounds i32, i32* %761, i64 %763
  store i32 0, i32* %764, align 4
  br label %809

765:                                              ; preds = %737
  %766 = load i32*, i32** %10, align 8
  %767 = load i32, i32* %13, align 4
  %768 = sext i32 %767 to i64
  %769 = getelementptr inbounds i32, i32* %766, i64 %768
  %770 = load i32, i32* %769, align 4
  %771 = and i32 %770, 240
  %772 = ashr i32 %771, 4
  %773 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %774 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %773, i32 0, i32 2
  %775 = load i32**, i32*** %774, align 8
  %776 = load i32, i32* %12, align 4
  %777 = sext i32 %776 to i64
  %778 = getelementptr inbounds i32*, i32** %775, i64 %777
  %779 = load i32*, i32** %778, align 8
  %780 = getelementptr inbounds i32, i32* %779, i64 0
  store i32 %772, i32* %780, align 4
  %781 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %782 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %781, i32 0, i32 2
  %783 = load i32**, i32*** %782, align 8
  %784 = load i32, i32* %12, align 4
  %785 = sext i32 %784 to i64
  %786 = getelementptr inbounds i32*, i32** %783, i64 %785
  %787 = load i32*, i32** %786, align 8
  %788 = load i32, i32* %15, align 4
  %789 = sext i32 %788 to i64
  %790 = getelementptr inbounds i32, i32* %787, i64 %789
  %791 = load i32, i32* %790, align 4
  %792 = call i32 @BIT(i32 3)
  %793 = and i32 %791, %792
  %794 = icmp ne i32 %793, 0
  br i1 %794, label %795, label %808

795:                                              ; preds = %765
  %796 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %797 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %796, i32 0, i32 2
  %798 = load i32**, i32*** %797, align 8
  %799 = load i32, i32* %12, align 4
  %800 = sext i32 %799 to i64
  %801 = getelementptr inbounds i32*, i32** %798, i64 %800
  %802 = load i32*, i32** %801, align 8
  %803 = load i32, i32* %15, align 4
  %804 = sext i32 %803 to i64
  %805 = getelementptr inbounds i32, i32* %802, i64 %804
  %806 = load i32, i32* %805, align 4
  %807 = or i32 %806, 240
  store i32 %807, i32* %805, align 4
  br label %808

808:                                              ; preds = %795, %765
  br label %809

809:                                              ; preds = %808, %754
  %810 = load i32*, i32** %10, align 8
  %811 = load i32, i32* %13, align 4
  %812 = sext i32 %811 to i64
  %813 = getelementptr inbounds i32, i32* %810, i64 %812
  %814 = load i32, i32* %813, align 4
  %815 = icmp eq i32 %814, 255
  br i1 %815, label %816, label %827

816:                                              ; preds = %809
  %817 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %818 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %817, i32 0, i32 3
  %819 = load i32**, i32*** %818, align 8
  %820 = load i32, i32* %12, align 4
  %821 = sext i32 %820 to i64
  %822 = getelementptr inbounds i32*, i32** %819, i64 %821
  %823 = load i32*, i32** %822, align 8
  %824 = load i32, i32* %15, align 4
  %825 = sext i32 %824 to i64
  %826 = getelementptr inbounds i32, i32* %823, i64 %825
  store i32 4, i32* %826, align 4
  br label %870

827:                                              ; preds = %809
  %828 = load i32*, i32** %10, align 8
  %829 = load i32, i32* %13, align 4
  %830 = sext i32 %829 to i64
  %831 = getelementptr inbounds i32, i32* %828, i64 %830
  %832 = load i32, i32* %831, align 4
  %833 = and i32 %832, 15
  %834 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %835 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %834, i32 0, i32 3
  %836 = load i32**, i32*** %835, align 8
  %837 = load i32, i32* %12, align 4
  %838 = sext i32 %837 to i64
  %839 = getelementptr inbounds i32*, i32** %836, i64 %838
  %840 = load i32*, i32** %839, align 8
  %841 = getelementptr inbounds i32, i32* %840, i64 0
  store i32 %833, i32* %841, align 4
  %842 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %843 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %842, i32 0, i32 3
  %844 = load i32**, i32*** %843, align 8
  %845 = load i32, i32* %12, align 4
  %846 = sext i32 %845 to i64
  %847 = getelementptr inbounds i32*, i32** %844, i64 %846
  %848 = load i32*, i32** %847, align 8
  %849 = load i32, i32* %15, align 4
  %850 = sext i32 %849 to i64
  %851 = getelementptr inbounds i32, i32* %848, i64 %850
  %852 = load i32, i32* %851, align 4
  %853 = call i32 @BIT(i32 3)
  %854 = and i32 %852, %853
  %855 = icmp ne i32 %854, 0
  br i1 %855, label %856, label %869

856:                                              ; preds = %827
  %857 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %858 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %857, i32 0, i32 3
  %859 = load i32**, i32*** %858, align 8
  %860 = load i32, i32* %12, align 4
  %861 = sext i32 %860 to i64
  %862 = getelementptr inbounds i32*, i32** %859, i64 %861
  %863 = load i32*, i32** %862, align 8
  %864 = load i32, i32* %15, align 4
  %865 = sext i32 %864 to i64
  %866 = getelementptr inbounds i32, i32* %863, i64 %865
  %867 = load i32, i32* %866, align 4
  %868 = or i32 %867, 240
  store i32 %868, i32* %866, align 4
  br label %869

869:                                              ; preds = %856, %827
  br label %870

870:                                              ; preds = %869, %816
  %871 = load i32, i32* %13, align 4
  %872 = add nsw i32 %871, 1
  store i32 %872, i32* %13, align 4
  br label %1003

873:                                              ; preds = %734
  %874 = load i32*, i32** %10, align 8
  %875 = load i32, i32* %13, align 4
  %876 = sext i32 %875 to i64
  %877 = getelementptr inbounds i32, i32* %874, i64 %876
  %878 = load i32, i32* %877, align 4
  %879 = icmp eq i32 %878, 255
  br i1 %879, label %880, label %891

880:                                              ; preds = %873
  %881 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %882 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %881, i32 0, i32 1
  %883 = load i32**, i32*** %882, align 8
  %884 = load i32, i32* %12, align 4
  %885 = sext i32 %884 to i64
  %886 = getelementptr inbounds i32*, i32** %883, i64 %885
  %887 = load i32*, i32** %886, align 8
  %888 = load i32, i32* %15, align 4
  %889 = sext i32 %888 to i64
  %890 = getelementptr inbounds i32, i32* %887, i64 %889
  store i32 254, i32* %890, align 4
  br label %937

891:                                              ; preds = %873
  %892 = load i32*, i32** %10, align 8
  %893 = load i32, i32* %13, align 4
  %894 = sext i32 %893 to i64
  %895 = getelementptr inbounds i32, i32* %892, i64 %894
  %896 = load i32, i32* %895, align 4
  %897 = and i32 %896, 240
  %898 = ashr i32 %897, 4
  %899 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %900 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %899, i32 0, i32 1
  %901 = load i32**, i32*** %900, align 8
  %902 = load i32, i32* %12, align 4
  %903 = sext i32 %902 to i64
  %904 = getelementptr inbounds i32*, i32** %901, i64 %903
  %905 = load i32*, i32** %904, align 8
  %906 = load i32, i32* %15, align 4
  %907 = sext i32 %906 to i64
  %908 = getelementptr inbounds i32, i32* %905, i64 %907
  store i32 %898, i32* %908, align 4
  %909 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %910 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %909, i32 0, i32 1
  %911 = load i32**, i32*** %910, align 8
  %912 = load i32, i32* %12, align 4
  %913 = sext i32 %912 to i64
  %914 = getelementptr inbounds i32*, i32** %911, i64 %913
  %915 = load i32*, i32** %914, align 8
  %916 = load i32, i32* %15, align 4
  %917 = sext i32 %916 to i64
  %918 = getelementptr inbounds i32, i32* %915, i64 %917
  %919 = load i32, i32* %918, align 4
  %920 = call i32 @BIT(i32 3)
  %921 = and i32 %919, %920
  %922 = icmp ne i32 %921, 0
  br i1 %922, label %923, label %936

923:                                              ; preds = %891
  %924 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %925 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %924, i32 0, i32 1
  %926 = load i32**, i32*** %925, align 8
  %927 = load i32, i32* %12, align 4
  %928 = sext i32 %927 to i64
  %929 = getelementptr inbounds i32*, i32** %926, i64 %928
  %930 = load i32*, i32** %929, align 8
  %931 = load i32, i32* %15, align 4
  %932 = sext i32 %931 to i64
  %933 = getelementptr inbounds i32, i32* %930, i64 %932
  %934 = load i32, i32* %933, align 4
  %935 = or i32 %934, 240
  store i32 %935, i32* %933, align 4
  br label %936

936:                                              ; preds = %923, %891
  br label %937

937:                                              ; preds = %936, %880
  %938 = load i32*, i32** %10, align 8
  %939 = load i32, i32* %13, align 4
  %940 = sext i32 %939 to i64
  %941 = getelementptr inbounds i32, i32* %938, i64 %940
  %942 = load i32, i32* %941, align 4
  %943 = icmp eq i32 %942, 255
  br i1 %943, label %944, label %955

944:                                              ; preds = %937
  %945 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %946 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %945, i32 0, i32 2
  %947 = load i32**, i32*** %946, align 8
  %948 = load i32, i32* %12, align 4
  %949 = sext i32 %948 to i64
  %950 = getelementptr inbounds i32*, i32** %947, i64 %949
  %951 = load i32*, i32** %950, align 8
  %952 = load i32, i32* %15, align 4
  %953 = sext i32 %952 to i64
  %954 = getelementptr inbounds i32, i32* %951, i64 %953
  store i32 254, i32* %954, align 4
  br label %1000

955:                                              ; preds = %937
  %956 = load i32*, i32** %10, align 8
  %957 = load i32, i32* %13, align 4
  %958 = sext i32 %957 to i64
  %959 = getelementptr inbounds i32, i32* %956, i64 %958
  %960 = load i32, i32* %959, align 4
  %961 = and i32 %960, 15
  %962 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %963 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %962, i32 0, i32 2
  %964 = load i32**, i32*** %963, align 8
  %965 = load i32, i32* %12, align 4
  %966 = sext i32 %965 to i64
  %967 = getelementptr inbounds i32*, i32** %964, i64 %966
  %968 = load i32*, i32** %967, align 8
  %969 = load i32, i32* %15, align 4
  %970 = sext i32 %969 to i64
  %971 = getelementptr inbounds i32, i32* %968, i64 %970
  store i32 %961, i32* %971, align 4
  %972 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %973 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %972, i32 0, i32 2
  %974 = load i32**, i32*** %973, align 8
  %975 = load i32, i32* %12, align 4
  %976 = sext i32 %975 to i64
  %977 = getelementptr inbounds i32*, i32** %974, i64 %976
  %978 = load i32*, i32** %977, align 8
  %979 = load i32, i32* %15, align 4
  %980 = sext i32 %979 to i64
  %981 = getelementptr inbounds i32, i32* %978, i64 %980
  %982 = load i32, i32* %981, align 4
  %983 = call i32 @BIT(i32 3)
  %984 = and i32 %982, %983
  %985 = icmp ne i32 %984, 0
  br i1 %985, label %986, label %999

986:                                              ; preds = %955
  %987 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %988 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %987, i32 0, i32 2
  %989 = load i32**, i32*** %988, align 8
  %990 = load i32, i32* %12, align 4
  %991 = sext i32 %990 to i64
  %992 = getelementptr inbounds i32*, i32** %989, i64 %991
  %993 = load i32*, i32** %992, align 8
  %994 = load i32, i32* %15, align 4
  %995 = sext i32 %994 to i64
  %996 = getelementptr inbounds i32, i32* %993, i64 %995
  %997 = load i32, i32* %996, align 4
  %998 = or i32 %997, 240
  store i32 %998, i32* %996, align 4
  br label %999

999:                                              ; preds = %986, %955
  br label %1000

1000:                                             ; preds = %999, %944
  %1001 = load i32, i32* %13, align 4
  %1002 = add nsw i32 %1001, 1
  store i32 %1002, i32* %13, align 4
  br label %1003

1003:                                             ; preds = %1000, %870
  br label %1004

1004:                                             ; preds = %1003
  %1005 = load i32, i32* %15, align 4
  %1006 = add nsw i32 %1005, 1
  store i32 %1006, i32* %15, align 4
  br label %730

1007:                                             ; preds = %730
  %1008 = load i32*, i32** %10, align 8
  %1009 = load i32, i32* %13, align 4
  %1010 = sext i32 %1009 to i64
  %1011 = getelementptr inbounds i32, i32* %1008, i64 %1010
  %1012 = load i32, i32* %1011, align 4
  %1013 = icmp eq i32 %1012, 255
  br i1 %1013, label %1014, label %1031

1014:                                             ; preds = %1007
  %1015 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %1016 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %1015, i32 0, i32 3
  %1017 = load i32**, i32*** %1016, align 8
  %1018 = load i32, i32* %12, align 4
  %1019 = sext i32 %1018 to i64
  %1020 = getelementptr inbounds i32*, i32** %1017, i64 %1019
  %1021 = load i32*, i32** %1020, align 8
  %1022 = getelementptr inbounds i32, i32* %1021, i64 1
  store i32 254, i32* %1022, align 4
  %1023 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %1024 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %1023, i32 0, i32 3
  %1025 = load i32**, i32*** %1024, align 8
  %1026 = load i32, i32* %12, align 4
  %1027 = sext i32 %1026 to i64
  %1028 = getelementptr inbounds i32*, i32** %1025, i64 %1027
  %1029 = load i32*, i32** %1028, align 8
  %1030 = getelementptr inbounds i32, i32* %1029, i64 2
  store i32 254, i32* %1030, align 4
  br label %1061

1031:                                             ; preds = %1007
  %1032 = load i32*, i32** %10, align 8
  %1033 = load i32, i32* %13, align 4
  %1034 = sext i32 %1033 to i64
  %1035 = getelementptr inbounds i32, i32* %1032, i64 %1034
  %1036 = load i32, i32* %1035, align 4
  %1037 = and i32 %1036, 240
  %1038 = ashr i32 %1037, 4
  %1039 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %1040 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %1039, i32 0, i32 3
  %1041 = load i32**, i32*** %1040, align 8
  %1042 = load i32, i32* %12, align 4
  %1043 = sext i32 %1042 to i64
  %1044 = getelementptr inbounds i32*, i32** %1041, i64 %1043
  %1045 = load i32*, i32** %1044, align 8
  %1046 = getelementptr inbounds i32, i32* %1045, i64 1
  store i32 %1038, i32* %1046, align 4
  %1047 = load i32*, i32** %10, align 8
  %1048 = load i32, i32* %13, align 4
  %1049 = sext i32 %1048 to i64
  %1050 = getelementptr inbounds i32, i32* %1047, i64 %1049
  %1051 = load i32, i32* %1050, align 4
  %1052 = and i32 %1051, 15
  %1053 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %1054 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %1053, i32 0, i32 3
  %1055 = load i32**, i32*** %1054, align 8
  %1056 = load i32, i32* %12, align 4
  %1057 = sext i32 %1056 to i64
  %1058 = getelementptr inbounds i32*, i32** %1055, i64 %1057
  %1059 = load i32*, i32** %1058, align 8
  %1060 = getelementptr inbounds i32, i32* %1059, i64 2
  store i32 %1052, i32* %1060, align 4
  br label %1061

1061:                                             ; preds = %1031, %1014
  %1062 = load i32, i32* %13, align 4
  %1063 = add nsw i32 %1062, 1
  store i32 %1063, i32* %13, align 4
  %1064 = load i32*, i32** %10, align 8
  %1065 = load i32, i32* %13, align 4
  %1066 = sext i32 %1065 to i64
  %1067 = getelementptr inbounds i32, i32* %1064, i64 %1066
  %1068 = load i32, i32* %1067, align 4
  %1069 = icmp eq i32 %1068, 255
  br i1 %1069, label %1070, label %1079

1070:                                             ; preds = %1061
  %1071 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %1072 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %1071, i32 0, i32 3
  %1073 = load i32**, i32*** %1072, align 8
  %1074 = load i32, i32* %12, align 4
  %1075 = sext i32 %1074 to i64
  %1076 = getelementptr inbounds i32*, i32** %1073, i64 %1075
  %1077 = load i32*, i32** %1076, align 8
  %1078 = getelementptr inbounds i32, i32* %1077, i64 3
  store i32 254, i32* %1078, align 4
  br label %1094

1079:                                             ; preds = %1061
  %1080 = load i32*, i32** %10, align 8
  %1081 = load i32, i32* %13, align 4
  %1082 = sext i32 %1081 to i64
  %1083 = getelementptr inbounds i32, i32* %1080, i64 %1082
  %1084 = load i32, i32* %1083, align 4
  %1085 = and i32 %1084, 15
  %1086 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %1087 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %1086, i32 0, i32 3
  %1088 = load i32**, i32*** %1087, align 8
  %1089 = load i32, i32* %12, align 4
  %1090 = sext i32 %1089 to i64
  %1091 = getelementptr inbounds i32*, i32** %1088, i64 %1090
  %1092 = load i32*, i32** %1091, align 8
  %1093 = getelementptr inbounds i32, i32* %1092, i64 3
  store i32 %1085, i32* %1093, align 4
  br label %1094

1094:                                             ; preds = %1079, %1070
  %1095 = load i32, i32* %13, align 4
  %1096 = add nsw i32 %1095, 1
  store i32 %1096, i32* %13, align 4
  store i32 1, i32* %15, align 4
  br label %1097

1097:                                             ; preds = %1155, %1094
  %1098 = load i32, i32* %15, align 4
  %1099 = load i32, i32* @MAX_TX_COUNT, align 4
  %1100 = icmp slt i32 %1098, %1099
  br i1 %1100, label %1101, label %1158

1101:                                             ; preds = %1097
  %1102 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %1103 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %1102, i32 0, i32 3
  %1104 = load i32**, i32*** %1103, align 8
  %1105 = load i32, i32* %12, align 4
  %1106 = sext i32 %1105 to i64
  %1107 = getelementptr inbounds i32*, i32** %1104, i64 %1106
  %1108 = load i32*, i32** %1107, align 8
  %1109 = load i32, i32* %15, align 4
  %1110 = sext i32 %1109 to i64
  %1111 = getelementptr inbounds i32, i32* %1108, i64 %1110
  %1112 = load i32, i32* %1111, align 4
  %1113 = icmp eq i32 %1112, 255
  br i1 %1113, label %1114, label %1125

1114:                                             ; preds = %1101
  %1115 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %1116 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %1115, i32 0, i32 3
  %1117 = load i32**, i32*** %1116, align 8
  %1118 = load i32, i32* %12, align 4
  %1119 = sext i32 %1118 to i64
  %1120 = getelementptr inbounds i32*, i32** %1117, i64 %1119
  %1121 = load i32*, i32** %1120, align 8
  %1122 = load i32, i32* %15, align 4
  %1123 = sext i32 %1122 to i64
  %1124 = getelementptr inbounds i32, i32* %1121, i64 %1123
  store i32 254, i32* %1124, align 4
  br label %1154

1125:                                             ; preds = %1101
  %1126 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %1127 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %1126, i32 0, i32 3
  %1128 = load i32**, i32*** %1127, align 8
  %1129 = load i32, i32* %12, align 4
  %1130 = sext i32 %1129 to i64
  %1131 = getelementptr inbounds i32*, i32** %1128, i64 %1130
  %1132 = load i32*, i32** %1131, align 8
  %1133 = load i32, i32* %15, align 4
  %1134 = sext i32 %1133 to i64
  %1135 = getelementptr inbounds i32, i32* %1132, i64 %1134
  %1136 = load i32, i32* %1135, align 4
  %1137 = call i32 @BIT(i32 3)
  %1138 = and i32 %1136, %1137
  %1139 = icmp ne i32 %1138, 0
  br i1 %1139, label %1140, label %1153

1140:                                             ; preds = %1125
  %1141 = load %struct.txpower_info_5g*, %struct.txpower_info_5g** %8, align 8
  %1142 = getelementptr inbounds %struct.txpower_info_5g, %struct.txpower_info_5g* %1141, i32 0, i32 3
  %1143 = load i32**, i32*** %1142, align 8
  %1144 = load i32, i32* %12, align 4
  %1145 = sext i32 %1144 to i64
  %1146 = getelementptr inbounds i32*, i32** %1143, i64 %1145
  %1147 = load i32*, i32** %1146, align 8
  %1148 = load i32, i32* %15, align 4
  %1149 = sext i32 %1148 to i64
  %1150 = getelementptr inbounds i32, i32* %1147, i64 %1149
  %1151 = load i32, i32* %1150, align 4
  %1152 = or i32 %1151, 240
  store i32 %1152, i32* %1150, align 4
  br label %1153

1153:                                             ; preds = %1140, %1125
  br label %1154

1154:                                             ; preds = %1153, %1114
  br label %1155

1155:                                             ; preds = %1154
  %1156 = load i32, i32* %15, align 4
  %1157 = add nsw i32 %1156, 1
  store i32 %1157, i32* %15, align 4
  br label %1097

1158:                                             ; preds = %1097
  br label %1159

1159:                                             ; preds = %1158
  %1160 = load i32, i32* %12, align 4
  %1161 = add nsw i32 %1160, 1
  store i32 %1161, i32* %12, align 4
  br label %156

1162:                                             ; preds = %154, %156
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
