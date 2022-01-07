; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_hw.c__rtl92de_readpowervalue_fromprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_hw.c__rtl92de_readpowervalue_fromprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.txpower_info = type { i32**, i32**, i32**, i32**, i32**, i32**, i32**, i32*, i32* }

@CHANNEL_GROUP_MAX = common dso_local global i64 0, align 8
@RF6052_MAX_PATH = common dso_local global i64 0, align 8
@CHANNEL_GROUP_MAX_2G = common dso_local global i64 0, align 8
@EEPROM_DEFAULT_TXPOWERLEVEL_2G = common dso_local global i32 0, align 4
@EEPROM_DEFAULT_TXPOWERLEVEL_5G = common dso_local global i32 0, align 4
@EEPROM_DEFAULT_HT40_2SDIFF = common dso_local global i8* null, align 8
@EEPROM_DEFAULT_HT20_DIFF = common dso_local global i8* null, align 8
@EEPROM_DEFAULT_LEGACYHTTXPOWERDIFF = common dso_local global i8* null, align 8
@EEPROM_DEFAULT_HT40_PWRMAXOFFSET = common dso_local global i8* null, align 8
@EEPROM_DEFAULT_HT20_PWRMAXOFFSET = common dso_local global i8* null, align 8
@EEPROM_DEFAULT_TSSI = common dso_local global i8* null, align 8
@EEPROM_CCK_TX_PWR_INX_2G = common dso_local global i64 0, align 8
@EEPROM_HT40_1S_TX_PWR_INX_2G = common dso_local global i64 0, align 8
@EEPROM_HT40_2S_TX_PWR_INX_DIFF_2G = common dso_local global i32 0, align 4
@EEPROM_HT20_TX_PWR_INX_DIFF_2G = common dso_local global i64 0, align 8
@EEPROM_OFDM_TX_PWR_INX_DIFF_2G = common dso_local global i64 0, align 8
@EEPROM_HT40_MAX_PWR_OFFSET_2G = common dso_local global i64 0, align 8
@EEPROM_HT20_MAX_PWR_OFFSET_2G = common dso_local global i64 0, align 8
@EEPROM_TSSI_A_5G = common dso_local global i64 0, align 8
@EEPROM_TSSI_B_5G = common dso_local global i64 0, align 8
@EEPROM_TSSI_AB_5G = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.txpower_info*, i32*, i32)* @_rtl92de_readpowervalue_fromprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92de_readpowervalue_fromprom(%struct.txpower_info* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.txpower_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.txpower_info* %0, %struct.txpower_info** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.txpower_info*, %struct.txpower_info** %4, align 8
  %15 = call i32 @memset(%struct.txpower_info* %14, i32 0, i32 72)
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %144

18:                                               ; preds = %3
  store i64 0, i64* %9, align 8
  br label %19

19:                                               ; preds = %116, %18
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* @CHANNEL_GROUP_MAX, align 8
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %23, label %119

23:                                               ; preds = %19
  store i64 0, i64* %7, align 8
  br label %24

24:                                               ; preds = %112, %23
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @RF6052_MAX_PATH, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %115

28:                                               ; preds = %24
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* @CHANNEL_GROUP_MAX_2G, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %51

32:                                               ; preds = %28
  %33 = load i32, i32* @EEPROM_DEFAULT_TXPOWERLEVEL_2G, align 4
  %34 = load %struct.txpower_info*, %struct.txpower_info** %4, align 8
  %35 = getelementptr inbounds %struct.txpower_info, %struct.txpower_info* %34, i32 0, i32 0
  %36 = load i32**, i32*** %35, align 8
  %37 = load i64, i64* %7, align 8
  %38 = getelementptr inbounds i32*, i32** %36, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %9, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  store i32 %33, i32* %41, align 4
  %42 = load i32, i32* @EEPROM_DEFAULT_TXPOWERLEVEL_2G, align 4
  %43 = load %struct.txpower_info*, %struct.txpower_info** %4, align 8
  %44 = getelementptr inbounds %struct.txpower_info, %struct.txpower_info* %43, i32 0, i32 1
  %45 = load i32**, i32*** %44, align 8
  %46 = load i64, i64* %7, align 8
  %47 = getelementptr inbounds i32*, i32** %45, i64 %46
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* %9, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  store i32 %42, i32* %50, align 4
  br label %61

51:                                               ; preds = %28
  %52 = load i32, i32* @EEPROM_DEFAULT_TXPOWERLEVEL_5G, align 4
  %53 = load %struct.txpower_info*, %struct.txpower_info** %4, align 8
  %54 = getelementptr inbounds %struct.txpower_info, %struct.txpower_info* %53, i32 0, i32 1
  %55 = load i32**, i32*** %54, align 8
  %56 = load i64, i64* %7, align 8
  %57 = getelementptr inbounds i32*, i32** %55, i64 %56
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* %9, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  store i32 %52, i32* %60, align 4
  br label %61

61:                                               ; preds = %51, %32
  %62 = load i8*, i8** @EEPROM_DEFAULT_HT40_2SDIFF, align 8
  %63 = ptrtoint i8* %62 to i32
  %64 = load %struct.txpower_info*, %struct.txpower_info** %4, align 8
  %65 = getelementptr inbounds %struct.txpower_info, %struct.txpower_info* %64, i32 0, i32 2
  %66 = load i32**, i32*** %65, align 8
  %67 = load i64, i64* %7, align 8
  %68 = getelementptr inbounds i32*, i32** %66, i64 %67
  %69 = load i32*, i32** %68, align 8
  %70 = load i64, i64* %9, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  store i32 %63, i32* %71, align 4
  %72 = load i8*, i8** @EEPROM_DEFAULT_HT20_DIFF, align 8
  %73 = ptrtoint i8* %72 to i32
  %74 = load %struct.txpower_info*, %struct.txpower_info** %4, align 8
  %75 = getelementptr inbounds %struct.txpower_info, %struct.txpower_info* %74, i32 0, i32 3
  %76 = load i32**, i32*** %75, align 8
  %77 = load i64, i64* %7, align 8
  %78 = getelementptr inbounds i32*, i32** %76, i64 %77
  %79 = load i32*, i32** %78, align 8
  %80 = load i64, i64* %9, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  store i32 %73, i32* %81, align 4
  %82 = load i8*, i8** @EEPROM_DEFAULT_LEGACYHTTXPOWERDIFF, align 8
  %83 = ptrtoint i8* %82 to i32
  %84 = load %struct.txpower_info*, %struct.txpower_info** %4, align 8
  %85 = getelementptr inbounds %struct.txpower_info, %struct.txpower_info* %84, i32 0, i32 4
  %86 = load i32**, i32*** %85, align 8
  %87 = load i64, i64* %7, align 8
  %88 = getelementptr inbounds i32*, i32** %86, i64 %87
  %89 = load i32*, i32** %88, align 8
  %90 = load i64, i64* %9, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  store i32 %83, i32* %91, align 4
  %92 = load i8*, i8** @EEPROM_DEFAULT_HT40_PWRMAXOFFSET, align 8
  %93 = ptrtoint i8* %92 to i32
  %94 = load %struct.txpower_info*, %struct.txpower_info** %4, align 8
  %95 = getelementptr inbounds %struct.txpower_info, %struct.txpower_info* %94, i32 0, i32 5
  %96 = load i32**, i32*** %95, align 8
  %97 = load i64, i64* %7, align 8
  %98 = getelementptr inbounds i32*, i32** %96, i64 %97
  %99 = load i32*, i32** %98, align 8
  %100 = load i64, i64* %9, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  store i32 %93, i32* %101, align 4
  %102 = load i8*, i8** @EEPROM_DEFAULT_HT20_PWRMAXOFFSET, align 8
  %103 = ptrtoint i8* %102 to i32
  %104 = load %struct.txpower_info*, %struct.txpower_info** %4, align 8
  %105 = getelementptr inbounds %struct.txpower_info, %struct.txpower_info* %104, i32 0, i32 6
  %106 = load i32**, i32*** %105, align 8
  %107 = load i64, i64* %7, align 8
  %108 = getelementptr inbounds i32*, i32** %106, i64 %107
  %109 = load i32*, i32** %108, align 8
  %110 = load i64, i64* %9, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  store i32 %103, i32* %111, align 4
  br label %112

112:                                              ; preds = %61
  %113 = load i64, i64* %7, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %7, align 8
  br label %24

115:                                              ; preds = %24
  br label %116

116:                                              ; preds = %115
  %117 = load i64, i64* %9, align 8
  %118 = add i64 %117, 1
  store i64 %118, i64* %9, align 8
  br label %19

119:                                              ; preds = %19
  store i32 0, i32* %12, align 4
  br label %120

120:                                              ; preds = %140, %119
  %121 = load i32, i32* %12, align 4
  %122 = icmp slt i32 %121, 3
  br i1 %122, label %123, label %143

123:                                              ; preds = %120
  %124 = load i8*, i8** @EEPROM_DEFAULT_TSSI, align 8
  %125 = ptrtoint i8* %124 to i32
  %126 = load %struct.txpower_info*, %struct.txpower_info** %4, align 8
  %127 = getelementptr inbounds %struct.txpower_info, %struct.txpower_info* %126, i32 0, i32 7
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %12, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  store i32 %125, i32* %131, align 4
  %132 = load i8*, i8** @EEPROM_DEFAULT_TSSI, align 8
  %133 = ptrtoint i8* %132 to i32
  %134 = load %struct.txpower_info*, %struct.txpower_info** %4, align 8
  %135 = getelementptr inbounds %struct.txpower_info, %struct.txpower_info* %134, i32 0, i32 8
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %12, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  store i32 %133, i32* %139, align 4
  br label %140

140:                                              ; preds = %123
  %141 = load i32, i32* %12, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %12, align 4
  br label %120

143:                                              ; preds = %120
  br label %614

144:                                              ; preds = %3
  store i64 0, i64* %7, align 8
  br label %145

145:                                              ; preds = %194, %144
  %146 = load i64, i64* %7, align 8
  %147 = load i64, i64* @RF6052_MAX_PATH, align 8
  %148 = icmp ult i64 %146, %147
  br i1 %148, label %149, label %197

149:                                              ; preds = %145
  store i64 0, i64* %9, align 8
  br label %150

150:                                              ; preds = %190, %149
  %151 = load i64, i64* %9, align 8
  %152 = load i64, i64* @CHANNEL_GROUP_MAX_2G, align 8
  %153 = icmp ult i64 %151, %152
  br i1 %153, label %154, label %193

154:                                              ; preds = %150
  %155 = load i64, i64* @EEPROM_CCK_TX_PWR_INX_2G, align 8
  %156 = load i64, i64* %7, align 8
  %157 = mul i64 %156, 3
  %158 = add i64 %155, %157
  %159 = load i64, i64* %9, align 8
  %160 = add i64 %158, %159
  store i64 %160, i64* %8, align 8
  %161 = load i32*, i32** %5, align 8
  %162 = load i64, i64* %8, align 8
  %163 = getelementptr inbounds i32, i32* %161, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = icmp eq i32 %164, 255
  br i1 %165, label %166, label %175

166:                                              ; preds = %154
  %167 = load i64, i64* %8, align 8
  %168 = icmp ugt i64 %167, 123
  br i1 %168, label %169, label %171

169:                                              ; preds = %166
  %170 = load i32, i32* @EEPROM_DEFAULT_TXPOWERLEVEL_5G, align 4
  br label %173

171:                                              ; preds = %166
  %172 = load i32, i32* @EEPROM_DEFAULT_TXPOWERLEVEL_2G, align 4
  br label %173

173:                                              ; preds = %171, %169
  %174 = phi i32 [ %170, %169 ], [ %172, %171 ]
  br label %180

175:                                              ; preds = %154
  %176 = load i32*, i32** %5, align 8
  %177 = load i64, i64* %8, align 8
  %178 = getelementptr inbounds i32, i32* %176, i64 %177
  %179 = load i32, i32* %178, align 4
  br label %180

180:                                              ; preds = %175, %173
  %181 = phi i32 [ %174, %173 ], [ %179, %175 ]
  %182 = load %struct.txpower_info*, %struct.txpower_info** %4, align 8
  %183 = getelementptr inbounds %struct.txpower_info, %struct.txpower_info* %182, i32 0, i32 0
  %184 = load i32**, i32*** %183, align 8
  %185 = load i64, i64* %7, align 8
  %186 = getelementptr inbounds i32*, i32** %184, i64 %185
  %187 = load i32*, i32** %186, align 8
  %188 = load i64, i64* %9, align 8
  %189 = getelementptr inbounds i32, i32* %187, i64 %188
  store i32 %181, i32* %189, align 4
  br label %190

190:                                              ; preds = %180
  %191 = load i64, i64* %9, align 8
  %192 = add i64 %191, 1
  store i64 %192, i64* %9, align 8
  br label %150

193:                                              ; preds = %150
  br label %194

194:                                              ; preds = %193
  %195 = load i64, i64* %7, align 8
  %196 = add i64 %195, 1
  store i64 %196, i64* %7, align 8
  br label %145

197:                                              ; preds = %145
  store i64 0, i64* %7, align 8
  br label %198

198:                                              ; preds = %254, %197
  %199 = load i64, i64* %7, align 8
  %200 = load i64, i64* @RF6052_MAX_PATH, align 8
  %201 = icmp ult i64 %199, %200
  br i1 %201, label %202, label %257

202:                                              ; preds = %198
  store i64 0, i64* %9, align 8
  br label %203

203:                                              ; preds = %250, %202
  %204 = load i64, i64* %9, align 8
  %205 = load i64, i64* @CHANNEL_GROUP_MAX, align 8
  %206 = icmp ult i64 %204, %205
  br i1 %206, label %207, label %253

207:                                              ; preds = %203
  %208 = load i64, i64* %9, align 8
  %209 = udiv i64 %208, 3
  store i64 %209, i64* %10, align 8
  %210 = load i64, i64* %9, align 8
  %211 = urem i64 %210, 3
  store i64 %211, i64* %11, align 8
  %212 = load i64, i64* @EEPROM_HT40_1S_TX_PWR_INX_2G, align 8
  %213 = load i64, i64* %7, align 8
  %214 = mul i64 %213, 3
  %215 = add i64 %212, %214
  %216 = load i64, i64* %11, align 8
  %217 = add i64 %215, %216
  %218 = load i64, i64* %10, align 8
  %219 = mul i64 %218, 21
  %220 = add i64 %217, %219
  store i64 %220, i64* %8, align 8
  %221 = load i32*, i32** %5, align 8
  %222 = load i64, i64* %8, align 8
  %223 = getelementptr inbounds i32, i32* %221, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = icmp eq i32 %224, 255
  br i1 %225, label %226, label %235

226:                                              ; preds = %207
  %227 = load i64, i64* %8, align 8
  %228 = icmp ugt i64 %227, 123
  br i1 %228, label %229, label %231

229:                                              ; preds = %226
  %230 = load i32, i32* @EEPROM_DEFAULT_TXPOWERLEVEL_5G, align 4
  br label %233

231:                                              ; preds = %226
  %232 = load i32, i32* @EEPROM_DEFAULT_TXPOWERLEVEL_2G, align 4
  br label %233

233:                                              ; preds = %231, %229
  %234 = phi i32 [ %230, %229 ], [ %232, %231 ]
  br label %240

235:                                              ; preds = %207
  %236 = load i32*, i32** %5, align 8
  %237 = load i64, i64* %8, align 8
  %238 = getelementptr inbounds i32, i32* %236, i64 %237
  %239 = load i32, i32* %238, align 4
  br label %240

240:                                              ; preds = %235, %233
  %241 = phi i32 [ %234, %233 ], [ %239, %235 ]
  %242 = load %struct.txpower_info*, %struct.txpower_info** %4, align 8
  %243 = getelementptr inbounds %struct.txpower_info, %struct.txpower_info* %242, i32 0, i32 1
  %244 = load i32**, i32*** %243, align 8
  %245 = load i64, i64* %7, align 8
  %246 = getelementptr inbounds i32*, i32** %244, i64 %245
  %247 = load i32*, i32** %246, align 8
  %248 = load i64, i64* %9, align 8
  %249 = getelementptr inbounds i32, i32* %247, i64 %248
  store i32 %241, i32* %249, align 4
  br label %250

250:                                              ; preds = %240
  %251 = load i64, i64* %9, align 8
  %252 = add i64 %251, 1
  store i64 %252, i64* %9, align 8
  br label %203

253:                                              ; preds = %203
  br label %254

254:                                              ; preds = %253
  %255 = load i64, i64* %7, align 8
  %256 = add i64 %255, 1
  store i64 %256, i64* %7, align 8
  br label %198

257:                                              ; preds = %198
  store i64 0, i64* %9, align 8
  br label %258

258:                                              ; preds = %504, %257
  %259 = load i64, i64* %9, align 8
  %260 = load i64, i64* @CHANNEL_GROUP_MAX, align 8
  %261 = icmp ult i64 %259, %260
  br i1 %261, label %262, label %507

262:                                              ; preds = %258
  store i64 0, i64* %7, align 8
  br label %263

263:                                              ; preds = %500, %262
  %264 = load i64, i64* %7, align 8
  %265 = load i64, i64* @RF6052_MAX_PATH, align 8
  %266 = icmp ult i64 %264, %265
  br i1 %266, label %267, label %503

267:                                              ; preds = %263
  %268 = load i32, i32* @EEPROM_HT40_2S_TX_PWR_INX_DIFF_2G, align 4
  store i32 %268, i32* %13, align 4
  %269 = load i64, i64* %9, align 8
  %270 = udiv i64 %269, 3
  store i64 %270, i64* %10, align 8
  %271 = load i64, i64* %9, align 8
  %272 = urem i64 %271, 3
  store i64 %272, i64* %11, align 8
  %273 = load i32*, i32** %5, align 8
  %274 = load i32, i32* %13, align 4
  %275 = sext i32 %274 to i64
  %276 = load i64, i64* %11, align 8
  %277 = add i64 %275, %276
  %278 = load i64, i64* %10, align 8
  %279 = mul i64 %278, 21
  %280 = add i64 %277, %279
  %281 = getelementptr inbounds i32, i32* %273, i64 %280
  %282 = load i32, i32* %281, align 4
  %283 = icmp ne i32 %282, 255
  br i1 %283, label %284, label %308

284:                                              ; preds = %267
  %285 = load i32*, i32** %5, align 8
  %286 = load i32, i32* %13, align 4
  %287 = sext i32 %286 to i64
  %288 = load i64, i64* %11, align 8
  %289 = add i64 %287, %288
  %290 = load i64, i64* %10, align 8
  %291 = mul i64 %290, 21
  %292 = add i64 %289, %291
  %293 = getelementptr inbounds i32, i32* %285, i64 %292
  %294 = load i32, i32* %293, align 4
  %295 = load i64, i64* %7, align 8
  %296 = mul i64 %295, 4
  %297 = trunc i64 %296 to i32
  %298 = ashr i32 %294, %297
  %299 = and i32 %298, 15
  %300 = load %struct.txpower_info*, %struct.txpower_info** %4, align 8
  %301 = getelementptr inbounds %struct.txpower_info, %struct.txpower_info* %300, i32 0, i32 2
  %302 = load i32**, i32*** %301, align 8
  %303 = load i64, i64* %7, align 8
  %304 = getelementptr inbounds i32*, i32** %302, i64 %303
  %305 = load i32*, i32** %304, align 8
  %306 = load i64, i64* %9, align 8
  %307 = getelementptr inbounds i32, i32* %305, i64 %306
  store i32 %299, i32* %307, align 4
  br label %319

308:                                              ; preds = %267
  %309 = load i8*, i8** @EEPROM_DEFAULT_HT40_2SDIFF, align 8
  %310 = ptrtoint i8* %309 to i32
  %311 = load %struct.txpower_info*, %struct.txpower_info** %4, align 8
  %312 = getelementptr inbounds %struct.txpower_info, %struct.txpower_info* %311, i32 0, i32 2
  %313 = load i32**, i32*** %312, align 8
  %314 = load i64, i64* %7, align 8
  %315 = getelementptr inbounds i32*, i32** %313, i64 %314
  %316 = load i32*, i32** %315, align 8
  %317 = load i64, i64* %9, align 8
  %318 = getelementptr inbounds i32, i32* %316, i64 %317
  store i32 %310, i32* %318, align 4
  br label %319

319:                                              ; preds = %308, %284
  %320 = load i32*, i32** %5, align 8
  %321 = load i64, i64* @EEPROM_HT20_TX_PWR_INX_DIFF_2G, align 8
  %322 = load i64, i64* %11, align 8
  %323 = add i64 %321, %322
  %324 = load i64, i64* %10, align 8
  %325 = mul i64 %324, 21
  %326 = add i64 %323, %325
  %327 = getelementptr inbounds i32, i32* %320, i64 %326
  %328 = load i32, i32* %327, align 4
  %329 = icmp ne i32 %328, 255
  br i1 %329, label %330, label %353

330:                                              ; preds = %319
  %331 = load i32*, i32** %5, align 8
  %332 = load i64, i64* @EEPROM_HT20_TX_PWR_INX_DIFF_2G, align 8
  %333 = load i64, i64* %11, align 8
  %334 = add i64 %332, %333
  %335 = load i64, i64* %10, align 8
  %336 = mul i64 %335, 21
  %337 = add i64 %334, %336
  %338 = getelementptr inbounds i32, i32* %331, i64 %337
  %339 = load i32, i32* %338, align 4
  %340 = load i64, i64* %7, align 8
  %341 = mul i64 %340, 4
  %342 = trunc i64 %341 to i32
  %343 = ashr i32 %339, %342
  %344 = and i32 %343, 15
  %345 = load %struct.txpower_info*, %struct.txpower_info** %4, align 8
  %346 = getelementptr inbounds %struct.txpower_info, %struct.txpower_info* %345, i32 0, i32 3
  %347 = load i32**, i32*** %346, align 8
  %348 = load i64, i64* %7, align 8
  %349 = getelementptr inbounds i32*, i32** %347, i64 %348
  %350 = load i32*, i32** %349, align 8
  %351 = load i64, i64* %9, align 8
  %352 = getelementptr inbounds i32, i32* %350, i64 %351
  store i32 %344, i32* %352, align 4
  br label %364

353:                                              ; preds = %319
  %354 = load i8*, i8** @EEPROM_DEFAULT_HT20_DIFF, align 8
  %355 = ptrtoint i8* %354 to i32
  %356 = load %struct.txpower_info*, %struct.txpower_info** %4, align 8
  %357 = getelementptr inbounds %struct.txpower_info, %struct.txpower_info* %356, i32 0, i32 3
  %358 = load i32**, i32*** %357, align 8
  %359 = load i64, i64* %7, align 8
  %360 = getelementptr inbounds i32*, i32** %358, i64 %359
  %361 = load i32*, i32** %360, align 8
  %362 = load i64, i64* %9, align 8
  %363 = getelementptr inbounds i32, i32* %361, i64 %362
  store i32 %355, i32* %363, align 4
  br label %364

364:                                              ; preds = %353, %330
  %365 = load i32*, i32** %5, align 8
  %366 = load i64, i64* @EEPROM_OFDM_TX_PWR_INX_DIFF_2G, align 8
  %367 = load i64, i64* %11, align 8
  %368 = add i64 %366, %367
  %369 = load i64, i64* %10, align 8
  %370 = mul i64 %369, 21
  %371 = add i64 %368, %370
  %372 = getelementptr inbounds i32, i32* %365, i64 %371
  %373 = load i32, i32* %372, align 4
  %374 = icmp ne i32 %373, 255
  br i1 %374, label %375, label %398

375:                                              ; preds = %364
  %376 = load i32*, i32** %5, align 8
  %377 = load i64, i64* @EEPROM_OFDM_TX_PWR_INX_DIFF_2G, align 8
  %378 = load i64, i64* %11, align 8
  %379 = add i64 %377, %378
  %380 = load i64, i64* %10, align 8
  %381 = mul i64 %380, 21
  %382 = add i64 %379, %381
  %383 = getelementptr inbounds i32, i32* %376, i64 %382
  %384 = load i32, i32* %383, align 4
  %385 = load i64, i64* %7, align 8
  %386 = mul i64 %385, 4
  %387 = trunc i64 %386 to i32
  %388 = ashr i32 %384, %387
  %389 = and i32 %388, 15
  %390 = load %struct.txpower_info*, %struct.txpower_info** %4, align 8
  %391 = getelementptr inbounds %struct.txpower_info, %struct.txpower_info* %390, i32 0, i32 4
  %392 = load i32**, i32*** %391, align 8
  %393 = load i64, i64* %7, align 8
  %394 = getelementptr inbounds i32*, i32** %392, i64 %393
  %395 = load i32*, i32** %394, align 8
  %396 = load i64, i64* %9, align 8
  %397 = getelementptr inbounds i32, i32* %395, i64 %396
  store i32 %389, i32* %397, align 4
  br label %409

398:                                              ; preds = %364
  %399 = load i8*, i8** @EEPROM_DEFAULT_LEGACYHTTXPOWERDIFF, align 8
  %400 = ptrtoint i8* %399 to i32
  %401 = load %struct.txpower_info*, %struct.txpower_info** %4, align 8
  %402 = getelementptr inbounds %struct.txpower_info, %struct.txpower_info* %401, i32 0, i32 4
  %403 = load i32**, i32*** %402, align 8
  %404 = load i64, i64* %7, align 8
  %405 = getelementptr inbounds i32*, i32** %403, i64 %404
  %406 = load i32*, i32** %405, align 8
  %407 = load i64, i64* %9, align 8
  %408 = getelementptr inbounds i32, i32* %406, i64 %407
  store i32 %400, i32* %408, align 4
  br label %409

409:                                              ; preds = %398, %375
  %410 = load i32*, i32** %5, align 8
  %411 = load i64, i64* @EEPROM_HT40_MAX_PWR_OFFSET_2G, align 8
  %412 = load i64, i64* %11, align 8
  %413 = add i64 %411, %412
  %414 = load i64, i64* %10, align 8
  %415 = mul i64 %414, 21
  %416 = add i64 %413, %415
  %417 = getelementptr inbounds i32, i32* %410, i64 %416
  %418 = load i32, i32* %417, align 4
  %419 = icmp ne i32 %418, 255
  br i1 %419, label %420, label %443

420:                                              ; preds = %409
  %421 = load i32*, i32** %5, align 8
  %422 = load i64, i64* @EEPROM_HT40_MAX_PWR_OFFSET_2G, align 8
  %423 = load i64, i64* %11, align 8
  %424 = add i64 %422, %423
  %425 = load i64, i64* %10, align 8
  %426 = mul i64 %425, 21
  %427 = add i64 %424, %426
  %428 = getelementptr inbounds i32, i32* %421, i64 %427
  %429 = load i32, i32* %428, align 4
  %430 = load i64, i64* %7, align 8
  %431 = mul i64 %430, 4
  %432 = trunc i64 %431 to i32
  %433 = ashr i32 %429, %432
  %434 = and i32 %433, 15
  %435 = load %struct.txpower_info*, %struct.txpower_info** %4, align 8
  %436 = getelementptr inbounds %struct.txpower_info, %struct.txpower_info* %435, i32 0, i32 5
  %437 = load i32**, i32*** %436, align 8
  %438 = load i64, i64* %7, align 8
  %439 = getelementptr inbounds i32*, i32** %437, i64 %438
  %440 = load i32*, i32** %439, align 8
  %441 = load i64, i64* %9, align 8
  %442 = getelementptr inbounds i32, i32* %440, i64 %441
  store i32 %434, i32* %442, align 4
  br label %454

443:                                              ; preds = %409
  %444 = load i8*, i8** @EEPROM_DEFAULT_HT40_PWRMAXOFFSET, align 8
  %445 = ptrtoint i8* %444 to i32
  %446 = load %struct.txpower_info*, %struct.txpower_info** %4, align 8
  %447 = getelementptr inbounds %struct.txpower_info, %struct.txpower_info* %446, i32 0, i32 5
  %448 = load i32**, i32*** %447, align 8
  %449 = load i64, i64* %7, align 8
  %450 = getelementptr inbounds i32*, i32** %448, i64 %449
  %451 = load i32*, i32** %450, align 8
  %452 = load i64, i64* %9, align 8
  %453 = getelementptr inbounds i32, i32* %451, i64 %452
  store i32 %445, i32* %453, align 4
  br label %454

454:                                              ; preds = %443, %420
  %455 = load i32*, i32** %5, align 8
  %456 = load i64, i64* @EEPROM_HT20_MAX_PWR_OFFSET_2G, align 8
  %457 = load i64, i64* %11, align 8
  %458 = add i64 %456, %457
  %459 = load i64, i64* %10, align 8
  %460 = mul i64 %459, 21
  %461 = add i64 %458, %460
  %462 = getelementptr inbounds i32, i32* %455, i64 %461
  %463 = load i32, i32* %462, align 4
  %464 = icmp ne i32 %463, 255
  br i1 %464, label %465, label %488

465:                                              ; preds = %454
  %466 = load i32*, i32** %5, align 8
  %467 = load i64, i64* @EEPROM_HT20_MAX_PWR_OFFSET_2G, align 8
  %468 = load i64, i64* %11, align 8
  %469 = add i64 %467, %468
  %470 = load i64, i64* %10, align 8
  %471 = mul i64 %470, 21
  %472 = add i64 %469, %471
  %473 = getelementptr inbounds i32, i32* %466, i64 %472
  %474 = load i32, i32* %473, align 4
  %475 = load i64, i64* %7, align 8
  %476 = mul i64 %475, 4
  %477 = trunc i64 %476 to i32
  %478 = ashr i32 %474, %477
  %479 = and i32 %478, 15
  %480 = load %struct.txpower_info*, %struct.txpower_info** %4, align 8
  %481 = getelementptr inbounds %struct.txpower_info, %struct.txpower_info* %480, i32 0, i32 6
  %482 = load i32**, i32*** %481, align 8
  %483 = load i64, i64* %7, align 8
  %484 = getelementptr inbounds i32*, i32** %482, i64 %483
  %485 = load i32*, i32** %484, align 8
  %486 = load i64, i64* %9, align 8
  %487 = getelementptr inbounds i32, i32* %485, i64 %486
  store i32 %479, i32* %487, align 4
  br label %499

488:                                              ; preds = %454
  %489 = load i8*, i8** @EEPROM_DEFAULT_HT20_PWRMAXOFFSET, align 8
  %490 = ptrtoint i8* %489 to i32
  %491 = load %struct.txpower_info*, %struct.txpower_info** %4, align 8
  %492 = getelementptr inbounds %struct.txpower_info, %struct.txpower_info* %491, i32 0, i32 6
  %493 = load i32**, i32*** %492, align 8
  %494 = load i64, i64* %7, align 8
  %495 = getelementptr inbounds i32*, i32** %493, i64 %494
  %496 = load i32*, i32** %495, align 8
  %497 = load i64, i64* %9, align 8
  %498 = getelementptr inbounds i32, i32* %496, i64 %497
  store i32 %490, i32* %498, align 4
  br label %499

499:                                              ; preds = %488, %465
  br label %500

500:                                              ; preds = %499
  %501 = load i64, i64* %7, align 8
  %502 = add i64 %501, 1
  store i64 %502, i64* %7, align 8
  br label %263

503:                                              ; preds = %263
  br label %504

504:                                              ; preds = %503
  %505 = load i64, i64* %9, align 8
  %506 = add i64 %505, 1
  store i64 %506, i64* %9, align 8
  br label %258

507:                                              ; preds = %258
  %508 = load i32*, i32** %5, align 8
  %509 = load i64, i64* @EEPROM_TSSI_A_5G, align 8
  %510 = getelementptr inbounds i32, i32* %508, i64 %509
  %511 = load i32, i32* %510, align 4
  %512 = icmp ne i32 %511, 255
  br i1 %512, label %513, label %589

513:                                              ; preds = %507
  %514 = load i32*, i32** %5, align 8
  %515 = load i64, i64* @EEPROM_TSSI_A_5G, align 8
  %516 = getelementptr inbounds i32, i32* %514, i64 %515
  %517 = load i32, i32* %516, align 4
  %518 = and i32 %517, 63
  %519 = load %struct.txpower_info*, %struct.txpower_info** %4, align 8
  %520 = getelementptr inbounds %struct.txpower_info, %struct.txpower_info* %519, i32 0, i32 7
  %521 = load i32*, i32** %520, align 8
  %522 = getelementptr inbounds i32, i32* %521, i64 0
  store i32 %518, i32* %522, align 4
  %523 = load i32*, i32** %5, align 8
  %524 = load i64, i64* @EEPROM_TSSI_B_5G, align 8
  %525 = getelementptr inbounds i32, i32* %523, i64 %524
  %526 = load i32, i32* %525, align 4
  %527 = and i32 %526, 63
  %528 = load %struct.txpower_info*, %struct.txpower_info** %4, align 8
  %529 = getelementptr inbounds %struct.txpower_info, %struct.txpower_info* %528, i32 0, i32 8
  %530 = load i32*, i32** %529, align 8
  %531 = getelementptr inbounds i32, i32* %530, i64 0
  store i32 %527, i32* %531, align 4
  %532 = load i32*, i32** %5, align 8
  %533 = load i64, i64* @EEPROM_TSSI_AB_5G, align 8
  %534 = getelementptr inbounds i32, i32* %532, i64 %533
  %535 = load i32, i32* %534, align 4
  %536 = and i32 %535, 63
  %537 = load %struct.txpower_info*, %struct.txpower_info** %4, align 8
  %538 = getelementptr inbounds %struct.txpower_info, %struct.txpower_info* %537, i32 0, i32 7
  %539 = load i32*, i32** %538, align 8
  %540 = getelementptr inbounds i32, i32* %539, i64 1
  store i32 %536, i32* %540, align 4
  %541 = load i32*, i32** %5, align 8
  %542 = load i64, i64* @EEPROM_TSSI_AB_5G, align 8
  %543 = getelementptr inbounds i32, i32* %541, i64 %542
  %544 = load i32, i32* %543, align 4
  %545 = and i32 %544, 192
  %546 = ashr i32 %545, 6
  %547 = load i32*, i32** %5, align 8
  %548 = load i64, i64* @EEPROM_TSSI_AB_5G, align 8
  %549 = add i64 %548, 1
  %550 = getelementptr inbounds i32, i32* %547, i64 %549
  %551 = load i32, i32* %550, align 4
  %552 = and i32 %551, 15
  %553 = shl i32 %552, 2
  %554 = or i32 %546, %553
  %555 = load %struct.txpower_info*, %struct.txpower_info** %4, align 8
  %556 = getelementptr inbounds %struct.txpower_info, %struct.txpower_info* %555, i32 0, i32 8
  %557 = load i32*, i32** %556, align 8
  %558 = getelementptr inbounds i32, i32* %557, i64 1
  store i32 %554, i32* %558, align 4
  %559 = load i32*, i32** %5, align 8
  %560 = load i64, i64* @EEPROM_TSSI_AB_5G, align 8
  %561 = add i64 %560, 1
  %562 = getelementptr inbounds i32, i32* %559, i64 %561
  %563 = load i32, i32* %562, align 4
  %564 = and i32 %563, 240
  %565 = ashr i32 %564, 4
  %566 = load i32*, i32** %5, align 8
  %567 = load i64, i64* @EEPROM_TSSI_AB_5G, align 8
  %568 = add i64 %567, 2
  %569 = getelementptr inbounds i32, i32* %566, i64 %568
  %570 = load i32, i32* %569, align 4
  %571 = and i32 %570, 3
  %572 = shl i32 %571, 4
  %573 = or i32 %565, %572
  %574 = load %struct.txpower_info*, %struct.txpower_info** %4, align 8
  %575 = getelementptr inbounds %struct.txpower_info, %struct.txpower_info* %574, i32 0, i32 7
  %576 = load i32*, i32** %575, align 8
  %577 = getelementptr inbounds i32, i32* %576, i64 2
  store i32 %573, i32* %577, align 4
  %578 = load i32*, i32** %5, align 8
  %579 = load i64, i64* @EEPROM_TSSI_AB_5G, align 8
  %580 = add i64 %579, 2
  %581 = getelementptr inbounds i32, i32* %578, i64 %580
  %582 = load i32, i32* %581, align 4
  %583 = and i32 %582, 252
  %584 = ashr i32 %583, 2
  %585 = load %struct.txpower_info*, %struct.txpower_info** %4, align 8
  %586 = getelementptr inbounds %struct.txpower_info, %struct.txpower_info* %585, i32 0, i32 8
  %587 = load i32*, i32** %586, align 8
  %588 = getelementptr inbounds i32, i32* %587, i64 2
  store i32 %584, i32* %588, align 4
  br label %614

589:                                              ; preds = %507
  store i32 0, i32* %12, align 4
  br label %590

590:                                              ; preds = %610, %589
  %591 = load i32, i32* %12, align 4
  %592 = icmp slt i32 %591, 3
  br i1 %592, label %593, label %613

593:                                              ; preds = %590
  %594 = load i8*, i8** @EEPROM_DEFAULT_TSSI, align 8
  %595 = ptrtoint i8* %594 to i32
  %596 = load %struct.txpower_info*, %struct.txpower_info** %4, align 8
  %597 = getelementptr inbounds %struct.txpower_info, %struct.txpower_info* %596, i32 0, i32 7
  %598 = load i32*, i32** %597, align 8
  %599 = load i32, i32* %12, align 4
  %600 = sext i32 %599 to i64
  %601 = getelementptr inbounds i32, i32* %598, i64 %600
  store i32 %595, i32* %601, align 4
  %602 = load i8*, i8** @EEPROM_DEFAULT_TSSI, align 8
  %603 = ptrtoint i8* %602 to i32
  %604 = load %struct.txpower_info*, %struct.txpower_info** %4, align 8
  %605 = getelementptr inbounds %struct.txpower_info, %struct.txpower_info* %604, i32 0, i32 8
  %606 = load i32*, i32** %605, align 8
  %607 = load i32, i32* %12, align 4
  %608 = sext i32 %607 to i64
  %609 = getelementptr inbounds i32, i32* %606, i64 %608
  store i32 %603, i32* %609, align 4
  br label %610

610:                                              ; preds = %593
  %611 = load i32, i32* %12, align 4
  %612 = add nsw i32 %611, 1
  store i32 %612, i32* %12, align 4
  br label %590

613:                                              ; preds = %590
  br label %614

614:                                              ; preds = %143, %613, %513
  ret void
}

declare dso_local i32 @memset(%struct.txpower_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
