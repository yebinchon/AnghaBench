; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rtl8188e_hal_init.c_Hal_ReadPowerValueFromPROM_8188E.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rtl8188e_hal_init.c_Hal_ReadPowerValueFromPROM_8188E.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.txpowerinfo24g = type { i32**, i32**, i32**, i32**, i32**, i32** }

@EEPROM_TX_PWR_INX_88E = common dso_local global i64 0, align 8
@MAX_RF_PATH = common dso_local global i64 0, align 8
@MAX_CHNL_GROUP_24G = common dso_local global i64 0, align 8
@EEPROM_DEFAULT_24G_INDEX = common dso_local global i8* null, align 8
@MAX_TX_COUNT = common dso_local global i64 0, align 8
@EEPROM_DEFAULT_24G_HT20_DIFF = common dso_local global i8* null, align 8
@EEPROM_DEFAULT_24G_OFDM_DIFF = common dso_local global i8* null, align 8
@EEPROM_DEFAULT_DIFF = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.txpowerinfo24g*, i32*, i32)* @Hal_ReadPowerValueFromPROM_8188E to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Hal_ReadPowerValueFromPROM_8188E(%struct.txpowerinfo24g* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.txpowerinfo24g*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.txpowerinfo24g* %0, %struct.txpowerinfo24g** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i64, i64* @EEPROM_TX_PWR_INX_88E, align 8
  store i64 %11, i64* %8, align 8
  store i64 0, i64* %10, align 8
  %12 = load %struct.txpowerinfo24g*, %struct.txpowerinfo24g** %4, align 8
  %13 = call i32 @memset(%struct.txpowerinfo24g* %12, i32 0, i32 48)
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %127

16:                                               ; preds = %3
  store i64 0, i64* %7, align 8
  br label %17

17:                                               ; preds = %123, %16
  %18 = load i64, i64* %7, align 8
  %19 = load i64, i64* @MAX_RF_PATH, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %126

21:                                               ; preds = %17
  store i64 0, i64* %9, align 8
  br label %22

22:                                               ; preds = %47, %21
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* @MAX_CHNL_GROUP_24G, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %50

26:                                               ; preds = %22
  %27 = load i8*, i8** @EEPROM_DEFAULT_24G_INDEX, align 8
  %28 = ptrtoint i8* %27 to i32
  %29 = load %struct.txpowerinfo24g*, %struct.txpowerinfo24g** %4, align 8
  %30 = getelementptr inbounds %struct.txpowerinfo24g, %struct.txpowerinfo24g* %29, i32 0, i32 0
  %31 = load i32**, i32*** %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds i32*, i32** %31, i64 %32
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* %9, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  store i32 %28, i32* %36, align 4
  %37 = load i8*, i8** @EEPROM_DEFAULT_24G_INDEX, align 8
  %38 = ptrtoint i8* %37 to i32
  %39 = load %struct.txpowerinfo24g*, %struct.txpowerinfo24g** %4, align 8
  %40 = getelementptr inbounds %struct.txpowerinfo24g, %struct.txpowerinfo24g* %39, i32 0, i32 1
  %41 = load i32**, i32*** %40, align 8
  %42 = load i64, i64* %7, align 8
  %43 = getelementptr inbounds i32*, i32** %41, i64 %42
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* %9, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  store i32 %38, i32* %46, align 4
  br label %47

47:                                               ; preds = %26
  %48 = load i64, i64* %9, align 8
  %49 = add i64 %48, 1
  store i64 %49, i64* %9, align 8
  br label %22

50:                                               ; preds = %22
  store i64 0, i64* %10, align 8
  br label %51

51:                                               ; preds = %119, %50
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* @MAX_TX_COUNT, align 8
  %54 = icmp ult i64 %52, %53
  br i1 %54, label %55, label %122

55:                                               ; preds = %51
  %56 = load i64, i64* %10, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %77

58:                                               ; preds = %55
  %59 = load i8*, i8** @EEPROM_DEFAULT_24G_HT20_DIFF, align 8
  %60 = ptrtoint i8* %59 to i32
  %61 = load %struct.txpowerinfo24g*, %struct.txpowerinfo24g** %4, align 8
  %62 = getelementptr inbounds %struct.txpowerinfo24g, %struct.txpowerinfo24g* %61, i32 0, i32 2
  %63 = load i32**, i32*** %62, align 8
  %64 = load i64, i64* %7, align 8
  %65 = getelementptr inbounds i32*, i32** %63, i64 %64
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  store i32 %60, i32* %67, align 4
  %68 = load i8*, i8** @EEPROM_DEFAULT_24G_OFDM_DIFF, align 8
  %69 = ptrtoint i8* %68 to i32
  %70 = load %struct.txpowerinfo24g*, %struct.txpowerinfo24g** %4, align 8
  %71 = getelementptr inbounds %struct.txpowerinfo24g, %struct.txpowerinfo24g* %70, i32 0, i32 3
  %72 = load i32**, i32*** %71, align 8
  %73 = load i64, i64* %7, align 8
  %74 = getelementptr inbounds i32*, i32** %72, i64 %73
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 0
  store i32 %69, i32* %76, align 4
  br label %118

77:                                               ; preds = %55
  %78 = load i8*, i8** @EEPROM_DEFAULT_DIFF, align 8
  %79 = ptrtoint i8* %78 to i32
  %80 = load %struct.txpowerinfo24g*, %struct.txpowerinfo24g** %4, align 8
  %81 = getelementptr inbounds %struct.txpowerinfo24g, %struct.txpowerinfo24g* %80, i32 0, i32 2
  %82 = load i32**, i32*** %81, align 8
  %83 = load i64, i64* %7, align 8
  %84 = getelementptr inbounds i32*, i32** %82, i64 %83
  %85 = load i32*, i32** %84, align 8
  %86 = load i64, i64* %10, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  store i32 %79, i32* %87, align 4
  %88 = load i8*, i8** @EEPROM_DEFAULT_DIFF, align 8
  %89 = ptrtoint i8* %88 to i32
  %90 = load %struct.txpowerinfo24g*, %struct.txpowerinfo24g** %4, align 8
  %91 = getelementptr inbounds %struct.txpowerinfo24g, %struct.txpowerinfo24g* %90, i32 0, i32 4
  %92 = load i32**, i32*** %91, align 8
  %93 = load i64, i64* %7, align 8
  %94 = getelementptr inbounds i32*, i32** %92, i64 %93
  %95 = load i32*, i32** %94, align 8
  %96 = load i64, i64* %10, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  store i32 %89, i32* %97, align 4
  %98 = load i8*, i8** @EEPROM_DEFAULT_DIFF, align 8
  %99 = ptrtoint i8* %98 to i32
  %100 = load %struct.txpowerinfo24g*, %struct.txpowerinfo24g** %4, align 8
  %101 = getelementptr inbounds %struct.txpowerinfo24g, %struct.txpowerinfo24g* %100, i32 0, i32 5
  %102 = load i32**, i32*** %101, align 8
  %103 = load i64, i64* %7, align 8
  %104 = getelementptr inbounds i32*, i32** %102, i64 %103
  %105 = load i32*, i32** %104, align 8
  %106 = load i64, i64* %10, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  store i32 %99, i32* %107, align 4
  %108 = load i8*, i8** @EEPROM_DEFAULT_DIFF, align 8
  %109 = ptrtoint i8* %108 to i32
  %110 = load %struct.txpowerinfo24g*, %struct.txpowerinfo24g** %4, align 8
  %111 = getelementptr inbounds %struct.txpowerinfo24g, %struct.txpowerinfo24g* %110, i32 0, i32 3
  %112 = load i32**, i32*** %111, align 8
  %113 = load i64, i64* %7, align 8
  %114 = getelementptr inbounds i32*, i32** %112, i64 %113
  %115 = load i32*, i32** %114, align 8
  %116 = load i64, i64* %10, align 8
  %117 = getelementptr inbounds i32, i32* %115, i64 %116
  store i32 %109, i32* %117, align 4
  br label %118

118:                                              ; preds = %77, %58
  br label %119

119:                                              ; preds = %118
  %120 = load i64, i64* %10, align 8
  %121 = add i64 %120, 1
  store i64 %121, i64* %10, align 8
  br label %51

122:                                              ; preds = %51
  br label %123

123:                                              ; preds = %122
  %124 = load i64, i64* %7, align 8
  %125 = add i64 %124, 1
  store i64 %125, i64* %7, align 8
  br label %17

126:                                              ; preds = %17
  br label %594

127:                                              ; preds = %3
  store i64 0, i64* %7, align 8
  br label %128

128:                                              ; preds = %591, %127
  %129 = load i64, i64* %7, align 8
  %130 = load i64, i64* @MAX_RF_PATH, align 8
  %131 = icmp ult i64 %129, %130
  br i1 %131, label %132, label %594

132:                                              ; preds = %128
  store i64 0, i64* %9, align 8
  br label %133

133:                                              ; preds = %173, %132
  %134 = load i64, i64* %9, align 8
  %135 = load i64, i64* @MAX_CHNL_GROUP_24G, align 8
  %136 = icmp ult i64 %134, %135
  br i1 %136, label %137, label %176

137:                                              ; preds = %133
  %138 = load i32*, i32** %5, align 8
  %139 = load i64, i64* %8, align 8
  %140 = add i64 %139, 1
  store i64 %140, i64* %8, align 8
  %141 = getelementptr inbounds i32, i32* %138, i64 %139
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.txpowerinfo24g*, %struct.txpowerinfo24g** %4, align 8
  %144 = getelementptr inbounds %struct.txpowerinfo24g, %struct.txpowerinfo24g* %143, i32 0, i32 0
  %145 = load i32**, i32*** %144, align 8
  %146 = load i64, i64* %7, align 8
  %147 = getelementptr inbounds i32*, i32** %145, i64 %146
  %148 = load i32*, i32** %147, align 8
  %149 = load i64, i64* %9, align 8
  %150 = getelementptr inbounds i32, i32* %148, i64 %149
  store i32 %142, i32* %150, align 4
  %151 = load %struct.txpowerinfo24g*, %struct.txpowerinfo24g** %4, align 8
  %152 = getelementptr inbounds %struct.txpowerinfo24g, %struct.txpowerinfo24g* %151, i32 0, i32 0
  %153 = load i32**, i32*** %152, align 8
  %154 = load i64, i64* %7, align 8
  %155 = getelementptr inbounds i32*, i32** %153, i64 %154
  %156 = load i32*, i32** %155, align 8
  %157 = load i64, i64* %9, align 8
  %158 = getelementptr inbounds i32, i32* %156, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = icmp eq i32 %159, 255
  br i1 %160, label %161, label %172

161:                                              ; preds = %137
  %162 = load i8*, i8** @EEPROM_DEFAULT_24G_INDEX, align 8
  %163 = ptrtoint i8* %162 to i32
  %164 = load %struct.txpowerinfo24g*, %struct.txpowerinfo24g** %4, align 8
  %165 = getelementptr inbounds %struct.txpowerinfo24g, %struct.txpowerinfo24g* %164, i32 0, i32 0
  %166 = load i32**, i32*** %165, align 8
  %167 = load i64, i64* %7, align 8
  %168 = getelementptr inbounds i32*, i32** %166, i64 %167
  %169 = load i32*, i32** %168, align 8
  %170 = load i64, i64* %9, align 8
  %171 = getelementptr inbounds i32, i32* %169, i64 %170
  store i32 %163, i32* %171, align 4
  br label %172

172:                                              ; preds = %161, %137
  br label %173

173:                                              ; preds = %172
  %174 = load i64, i64* %9, align 8
  %175 = add i64 %174, 1
  store i64 %175, i64* %9, align 8
  br label %133

176:                                              ; preds = %133
  store i64 0, i64* %9, align 8
  br label %177

177:                                              ; preds = %218, %176
  %178 = load i64, i64* %9, align 8
  %179 = load i64, i64* @MAX_CHNL_GROUP_24G, align 8
  %180 = sub i64 %179, 1
  %181 = icmp ult i64 %178, %180
  br i1 %181, label %182, label %221

182:                                              ; preds = %177
  %183 = load i32*, i32** %5, align 8
  %184 = load i64, i64* %8, align 8
  %185 = add i64 %184, 1
  store i64 %185, i64* %8, align 8
  %186 = getelementptr inbounds i32, i32* %183, i64 %184
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.txpowerinfo24g*, %struct.txpowerinfo24g** %4, align 8
  %189 = getelementptr inbounds %struct.txpowerinfo24g, %struct.txpowerinfo24g* %188, i32 0, i32 1
  %190 = load i32**, i32*** %189, align 8
  %191 = load i64, i64* %7, align 8
  %192 = getelementptr inbounds i32*, i32** %190, i64 %191
  %193 = load i32*, i32** %192, align 8
  %194 = load i64, i64* %9, align 8
  %195 = getelementptr inbounds i32, i32* %193, i64 %194
  store i32 %187, i32* %195, align 4
  %196 = load %struct.txpowerinfo24g*, %struct.txpowerinfo24g** %4, align 8
  %197 = getelementptr inbounds %struct.txpowerinfo24g, %struct.txpowerinfo24g* %196, i32 0, i32 1
  %198 = load i32**, i32*** %197, align 8
  %199 = load i64, i64* %7, align 8
  %200 = getelementptr inbounds i32*, i32** %198, i64 %199
  %201 = load i32*, i32** %200, align 8
  %202 = load i64, i64* %9, align 8
  %203 = getelementptr inbounds i32, i32* %201, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = icmp eq i32 %204, 255
  br i1 %205, label %206, label %217

206:                                              ; preds = %182
  %207 = load i8*, i8** @EEPROM_DEFAULT_24G_INDEX, align 8
  %208 = ptrtoint i8* %207 to i32
  %209 = load %struct.txpowerinfo24g*, %struct.txpowerinfo24g** %4, align 8
  %210 = getelementptr inbounds %struct.txpowerinfo24g, %struct.txpowerinfo24g* %209, i32 0, i32 1
  %211 = load i32**, i32*** %210, align 8
  %212 = load i64, i64* %7, align 8
  %213 = getelementptr inbounds i32*, i32** %211, i64 %212
  %214 = load i32*, i32** %213, align 8
  %215 = load i64, i64* %9, align 8
  %216 = getelementptr inbounds i32, i32* %214, i64 %215
  store i32 %208, i32* %216, align 4
  br label %217

217:                                              ; preds = %206, %182
  br label %218

218:                                              ; preds = %217
  %219 = load i64, i64* %9, align 8
  %220 = add i64 %219, 1
  store i64 %220, i64* %9, align 8
  br label %177

221:                                              ; preds = %177
  store i64 0, i64* %10, align 8
  br label %222

222:                                              ; preds = %587, %221
  %223 = load i64, i64* %10, align 8
  %224 = load i64, i64* @MAX_TX_COUNT, align 8
  %225 = icmp ult i64 %223, %224
  br i1 %225, label %226, label %590

226:                                              ; preds = %222
  %227 = load i64, i64* %10, align 8
  %228 = icmp eq i64 %227, 0
  br i1 %228, label %229, label %359

229:                                              ; preds = %226
  %230 = load %struct.txpowerinfo24g*, %struct.txpowerinfo24g** %4, align 8
  %231 = getelementptr inbounds %struct.txpowerinfo24g, %struct.txpowerinfo24g* %230, i32 0, i32 4
  %232 = load i32**, i32*** %231, align 8
  %233 = load i64, i64* %7, align 8
  %234 = getelementptr inbounds i32*, i32** %232, i64 %233
  %235 = load i32*, i32** %234, align 8
  %236 = load i64, i64* %10, align 8
  %237 = getelementptr inbounds i32, i32* %235, i64 %236
  store i32 0, i32* %237, align 4
  %238 = load i32*, i32** %5, align 8
  %239 = load i64, i64* %8, align 8
  %240 = getelementptr inbounds i32, i32* %238, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = icmp eq i32 %241, 255
  br i1 %242, label %243, label %254

243:                                              ; preds = %229
  %244 = load i8*, i8** @EEPROM_DEFAULT_24G_HT20_DIFF, align 8
  %245 = ptrtoint i8* %244 to i32
  %246 = load %struct.txpowerinfo24g*, %struct.txpowerinfo24g** %4, align 8
  %247 = getelementptr inbounds %struct.txpowerinfo24g, %struct.txpowerinfo24g* %246, i32 0, i32 2
  %248 = load i32**, i32*** %247, align 8
  %249 = load i64, i64* %7, align 8
  %250 = getelementptr inbounds i32*, i32** %248, i64 %249
  %251 = load i32*, i32** %250, align 8
  %252 = load i64, i64* %10, align 8
  %253 = getelementptr inbounds i32, i32* %251, i64 %252
  store i32 %245, i32* %253, align 4
  br label %293

254:                                              ; preds = %229
  %255 = load i32*, i32** %5, align 8
  %256 = load i64, i64* %8, align 8
  %257 = getelementptr inbounds i32, i32* %255, i64 %256
  %258 = load i32, i32* %257, align 4
  %259 = and i32 %258, 240
  %260 = ashr i32 %259, 4
  %261 = load %struct.txpowerinfo24g*, %struct.txpowerinfo24g** %4, align 8
  %262 = getelementptr inbounds %struct.txpowerinfo24g, %struct.txpowerinfo24g* %261, i32 0, i32 2
  %263 = load i32**, i32*** %262, align 8
  %264 = load i64, i64* %7, align 8
  %265 = getelementptr inbounds i32*, i32** %263, i64 %264
  %266 = load i32*, i32** %265, align 8
  %267 = load i64, i64* %10, align 8
  %268 = getelementptr inbounds i32, i32* %266, i64 %267
  store i32 %260, i32* %268, align 4
  %269 = load %struct.txpowerinfo24g*, %struct.txpowerinfo24g** %4, align 8
  %270 = getelementptr inbounds %struct.txpowerinfo24g, %struct.txpowerinfo24g* %269, i32 0, i32 2
  %271 = load i32**, i32*** %270, align 8
  %272 = load i64, i64* %7, align 8
  %273 = getelementptr inbounds i32*, i32** %271, i64 %272
  %274 = load i32*, i32** %273, align 8
  %275 = load i64, i64* %10, align 8
  %276 = getelementptr inbounds i32, i32* %274, i64 %275
  %277 = load i32, i32* %276, align 4
  %278 = call i32 @BIT(i32 3)
  %279 = and i32 %277, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %292

281:                                              ; preds = %254
  %282 = load %struct.txpowerinfo24g*, %struct.txpowerinfo24g** %4, align 8
  %283 = getelementptr inbounds %struct.txpowerinfo24g, %struct.txpowerinfo24g* %282, i32 0, i32 2
  %284 = load i32**, i32*** %283, align 8
  %285 = load i64, i64* %7, align 8
  %286 = getelementptr inbounds i32*, i32** %284, i64 %285
  %287 = load i32*, i32** %286, align 8
  %288 = load i64, i64* %10, align 8
  %289 = getelementptr inbounds i32, i32* %287, i64 %288
  %290 = load i32, i32* %289, align 4
  %291 = or i32 %290, 240
  store i32 %291, i32* %289, align 4
  br label %292

292:                                              ; preds = %281, %254
  br label %293

293:                                              ; preds = %292, %243
  %294 = load i32*, i32** %5, align 8
  %295 = load i64, i64* %8, align 8
  %296 = getelementptr inbounds i32, i32* %294, i64 %295
  %297 = load i32, i32* %296, align 4
  %298 = icmp eq i32 %297, 255
  br i1 %298, label %299, label %310

299:                                              ; preds = %293
  %300 = load i8*, i8** @EEPROM_DEFAULT_24G_OFDM_DIFF, align 8
  %301 = ptrtoint i8* %300 to i32
  %302 = load %struct.txpowerinfo24g*, %struct.txpowerinfo24g** %4, align 8
  %303 = getelementptr inbounds %struct.txpowerinfo24g, %struct.txpowerinfo24g* %302, i32 0, i32 3
  %304 = load i32**, i32*** %303, align 8
  %305 = load i64, i64* %7, align 8
  %306 = getelementptr inbounds i32*, i32** %304, i64 %305
  %307 = load i32*, i32** %306, align 8
  %308 = load i64, i64* %10, align 8
  %309 = getelementptr inbounds i32, i32* %307, i64 %308
  store i32 %301, i32* %309, align 4
  br label %348

310:                                              ; preds = %293
  %311 = load i32*, i32** %5, align 8
  %312 = load i64, i64* %8, align 8
  %313 = getelementptr inbounds i32, i32* %311, i64 %312
  %314 = load i32, i32* %313, align 4
  %315 = and i32 %314, 15
  %316 = load %struct.txpowerinfo24g*, %struct.txpowerinfo24g** %4, align 8
  %317 = getelementptr inbounds %struct.txpowerinfo24g, %struct.txpowerinfo24g* %316, i32 0, i32 3
  %318 = load i32**, i32*** %317, align 8
  %319 = load i64, i64* %7, align 8
  %320 = getelementptr inbounds i32*, i32** %318, i64 %319
  %321 = load i32*, i32** %320, align 8
  %322 = load i64, i64* %10, align 8
  %323 = getelementptr inbounds i32, i32* %321, i64 %322
  store i32 %315, i32* %323, align 4
  %324 = load %struct.txpowerinfo24g*, %struct.txpowerinfo24g** %4, align 8
  %325 = getelementptr inbounds %struct.txpowerinfo24g, %struct.txpowerinfo24g* %324, i32 0, i32 3
  %326 = load i32**, i32*** %325, align 8
  %327 = load i64, i64* %7, align 8
  %328 = getelementptr inbounds i32*, i32** %326, i64 %327
  %329 = load i32*, i32** %328, align 8
  %330 = load i64, i64* %10, align 8
  %331 = getelementptr inbounds i32, i32* %329, i64 %330
  %332 = load i32, i32* %331, align 4
  %333 = call i32 @BIT(i32 3)
  %334 = and i32 %332, %333
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %347

336:                                              ; preds = %310
  %337 = load %struct.txpowerinfo24g*, %struct.txpowerinfo24g** %4, align 8
  %338 = getelementptr inbounds %struct.txpowerinfo24g, %struct.txpowerinfo24g* %337, i32 0, i32 3
  %339 = load i32**, i32*** %338, align 8
  %340 = load i64, i64* %7, align 8
  %341 = getelementptr inbounds i32*, i32** %339, i64 %340
  %342 = load i32*, i32** %341, align 8
  %343 = load i64, i64* %10, align 8
  %344 = getelementptr inbounds i32, i32* %342, i64 %343
  %345 = load i32, i32* %344, align 4
  %346 = or i32 %345, 240
  store i32 %346, i32* %344, align 4
  br label %347

347:                                              ; preds = %336, %310
  br label %348

348:                                              ; preds = %347, %299
  %349 = load %struct.txpowerinfo24g*, %struct.txpowerinfo24g** %4, align 8
  %350 = getelementptr inbounds %struct.txpowerinfo24g, %struct.txpowerinfo24g* %349, i32 0, i32 5
  %351 = load i32**, i32*** %350, align 8
  %352 = load i64, i64* %7, align 8
  %353 = getelementptr inbounds i32*, i32** %351, i64 %352
  %354 = load i32*, i32** %353, align 8
  %355 = load i64, i64* %10, align 8
  %356 = getelementptr inbounds i32, i32* %354, i64 %355
  store i32 0, i32* %356, align 4
  %357 = load i64, i64* %8, align 8
  %358 = add i64 %357, 1
  store i64 %358, i64* %8, align 8
  br label %586

359:                                              ; preds = %226
  %360 = load i32*, i32** %5, align 8
  %361 = load i64, i64* %8, align 8
  %362 = getelementptr inbounds i32, i32* %360, i64 %361
  %363 = load i32, i32* %362, align 4
  %364 = icmp eq i32 %363, 255
  br i1 %364, label %365, label %376

365:                                              ; preds = %359
  %366 = load i8*, i8** @EEPROM_DEFAULT_DIFF, align 8
  %367 = ptrtoint i8* %366 to i32
  %368 = load %struct.txpowerinfo24g*, %struct.txpowerinfo24g** %4, align 8
  %369 = getelementptr inbounds %struct.txpowerinfo24g, %struct.txpowerinfo24g* %368, i32 0, i32 4
  %370 = load i32**, i32*** %369, align 8
  %371 = load i64, i64* %7, align 8
  %372 = getelementptr inbounds i32*, i32** %370, i64 %371
  %373 = load i32*, i32** %372, align 8
  %374 = load i64, i64* %10, align 8
  %375 = getelementptr inbounds i32, i32* %373, i64 %374
  store i32 %367, i32* %375, align 4
  br label %415

376:                                              ; preds = %359
  %377 = load i32*, i32** %5, align 8
  %378 = load i64, i64* %8, align 8
  %379 = getelementptr inbounds i32, i32* %377, i64 %378
  %380 = load i32, i32* %379, align 4
  %381 = and i32 %380, 240
  %382 = ashr i32 %381, 4
  %383 = load %struct.txpowerinfo24g*, %struct.txpowerinfo24g** %4, align 8
  %384 = getelementptr inbounds %struct.txpowerinfo24g, %struct.txpowerinfo24g* %383, i32 0, i32 4
  %385 = load i32**, i32*** %384, align 8
  %386 = load i64, i64* %7, align 8
  %387 = getelementptr inbounds i32*, i32** %385, i64 %386
  %388 = load i32*, i32** %387, align 8
  %389 = load i64, i64* %10, align 8
  %390 = getelementptr inbounds i32, i32* %388, i64 %389
  store i32 %382, i32* %390, align 4
  %391 = load %struct.txpowerinfo24g*, %struct.txpowerinfo24g** %4, align 8
  %392 = getelementptr inbounds %struct.txpowerinfo24g, %struct.txpowerinfo24g* %391, i32 0, i32 4
  %393 = load i32**, i32*** %392, align 8
  %394 = load i64, i64* %7, align 8
  %395 = getelementptr inbounds i32*, i32** %393, i64 %394
  %396 = load i32*, i32** %395, align 8
  %397 = load i64, i64* %10, align 8
  %398 = getelementptr inbounds i32, i32* %396, i64 %397
  %399 = load i32, i32* %398, align 4
  %400 = call i32 @BIT(i32 3)
  %401 = and i32 %399, %400
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %403, label %414

403:                                              ; preds = %376
  %404 = load %struct.txpowerinfo24g*, %struct.txpowerinfo24g** %4, align 8
  %405 = getelementptr inbounds %struct.txpowerinfo24g, %struct.txpowerinfo24g* %404, i32 0, i32 4
  %406 = load i32**, i32*** %405, align 8
  %407 = load i64, i64* %7, align 8
  %408 = getelementptr inbounds i32*, i32** %406, i64 %407
  %409 = load i32*, i32** %408, align 8
  %410 = load i64, i64* %10, align 8
  %411 = getelementptr inbounds i32, i32* %409, i64 %410
  %412 = load i32, i32* %411, align 4
  %413 = or i32 %412, 240
  store i32 %413, i32* %411, align 4
  br label %414

414:                                              ; preds = %403, %376
  br label %415

415:                                              ; preds = %414, %365
  %416 = load i32*, i32** %5, align 8
  %417 = load i64, i64* %8, align 8
  %418 = getelementptr inbounds i32, i32* %416, i64 %417
  %419 = load i32, i32* %418, align 4
  %420 = icmp eq i32 %419, 255
  br i1 %420, label %421, label %432

421:                                              ; preds = %415
  %422 = load i8*, i8** @EEPROM_DEFAULT_DIFF, align 8
  %423 = ptrtoint i8* %422 to i32
  %424 = load %struct.txpowerinfo24g*, %struct.txpowerinfo24g** %4, align 8
  %425 = getelementptr inbounds %struct.txpowerinfo24g, %struct.txpowerinfo24g* %424, i32 0, i32 2
  %426 = load i32**, i32*** %425, align 8
  %427 = load i64, i64* %7, align 8
  %428 = getelementptr inbounds i32*, i32** %426, i64 %427
  %429 = load i32*, i32** %428, align 8
  %430 = load i64, i64* %10, align 8
  %431 = getelementptr inbounds i32, i32* %429, i64 %430
  store i32 %423, i32* %431, align 4
  br label %470

432:                                              ; preds = %415
  %433 = load i32*, i32** %5, align 8
  %434 = load i64, i64* %8, align 8
  %435 = getelementptr inbounds i32, i32* %433, i64 %434
  %436 = load i32, i32* %435, align 4
  %437 = and i32 %436, 15
  %438 = load %struct.txpowerinfo24g*, %struct.txpowerinfo24g** %4, align 8
  %439 = getelementptr inbounds %struct.txpowerinfo24g, %struct.txpowerinfo24g* %438, i32 0, i32 2
  %440 = load i32**, i32*** %439, align 8
  %441 = load i64, i64* %7, align 8
  %442 = getelementptr inbounds i32*, i32** %440, i64 %441
  %443 = load i32*, i32** %442, align 8
  %444 = load i64, i64* %10, align 8
  %445 = getelementptr inbounds i32, i32* %443, i64 %444
  store i32 %437, i32* %445, align 4
  %446 = load %struct.txpowerinfo24g*, %struct.txpowerinfo24g** %4, align 8
  %447 = getelementptr inbounds %struct.txpowerinfo24g, %struct.txpowerinfo24g* %446, i32 0, i32 2
  %448 = load i32**, i32*** %447, align 8
  %449 = load i64, i64* %7, align 8
  %450 = getelementptr inbounds i32*, i32** %448, i64 %449
  %451 = load i32*, i32** %450, align 8
  %452 = load i64, i64* %10, align 8
  %453 = getelementptr inbounds i32, i32* %451, i64 %452
  %454 = load i32, i32* %453, align 4
  %455 = call i32 @BIT(i32 3)
  %456 = and i32 %454, %455
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %458, label %469

458:                                              ; preds = %432
  %459 = load %struct.txpowerinfo24g*, %struct.txpowerinfo24g** %4, align 8
  %460 = getelementptr inbounds %struct.txpowerinfo24g, %struct.txpowerinfo24g* %459, i32 0, i32 2
  %461 = load i32**, i32*** %460, align 8
  %462 = load i64, i64* %7, align 8
  %463 = getelementptr inbounds i32*, i32** %461, i64 %462
  %464 = load i32*, i32** %463, align 8
  %465 = load i64, i64* %10, align 8
  %466 = getelementptr inbounds i32, i32* %464, i64 %465
  %467 = load i32, i32* %466, align 4
  %468 = or i32 %467, 240
  store i32 %468, i32* %466, align 4
  br label %469

469:                                              ; preds = %458, %432
  br label %470

470:                                              ; preds = %469, %421
  %471 = load i64, i64* %8, align 8
  %472 = add i64 %471, 1
  store i64 %472, i64* %8, align 8
  %473 = load i32*, i32** %5, align 8
  %474 = load i64, i64* %8, align 8
  %475 = getelementptr inbounds i32, i32* %473, i64 %474
  %476 = load i32, i32* %475, align 4
  %477 = icmp eq i32 %476, 255
  br i1 %477, label %478, label %489

478:                                              ; preds = %470
  %479 = load i8*, i8** @EEPROM_DEFAULT_DIFF, align 8
  %480 = ptrtoint i8* %479 to i32
  %481 = load %struct.txpowerinfo24g*, %struct.txpowerinfo24g** %4, align 8
  %482 = getelementptr inbounds %struct.txpowerinfo24g, %struct.txpowerinfo24g* %481, i32 0, i32 3
  %483 = load i32**, i32*** %482, align 8
  %484 = load i64, i64* %7, align 8
  %485 = getelementptr inbounds i32*, i32** %483, i64 %484
  %486 = load i32*, i32** %485, align 8
  %487 = load i64, i64* %10, align 8
  %488 = getelementptr inbounds i32, i32* %486, i64 %487
  store i32 %480, i32* %488, align 4
  br label %528

489:                                              ; preds = %470
  %490 = load i32*, i32** %5, align 8
  %491 = load i64, i64* %8, align 8
  %492 = getelementptr inbounds i32, i32* %490, i64 %491
  %493 = load i32, i32* %492, align 4
  %494 = and i32 %493, 240
  %495 = ashr i32 %494, 4
  %496 = load %struct.txpowerinfo24g*, %struct.txpowerinfo24g** %4, align 8
  %497 = getelementptr inbounds %struct.txpowerinfo24g, %struct.txpowerinfo24g* %496, i32 0, i32 3
  %498 = load i32**, i32*** %497, align 8
  %499 = load i64, i64* %7, align 8
  %500 = getelementptr inbounds i32*, i32** %498, i64 %499
  %501 = load i32*, i32** %500, align 8
  %502 = load i64, i64* %10, align 8
  %503 = getelementptr inbounds i32, i32* %501, i64 %502
  store i32 %495, i32* %503, align 4
  %504 = load %struct.txpowerinfo24g*, %struct.txpowerinfo24g** %4, align 8
  %505 = getelementptr inbounds %struct.txpowerinfo24g, %struct.txpowerinfo24g* %504, i32 0, i32 3
  %506 = load i32**, i32*** %505, align 8
  %507 = load i64, i64* %7, align 8
  %508 = getelementptr inbounds i32*, i32** %506, i64 %507
  %509 = load i32*, i32** %508, align 8
  %510 = load i64, i64* %10, align 8
  %511 = getelementptr inbounds i32, i32* %509, i64 %510
  %512 = load i32, i32* %511, align 4
  %513 = call i32 @BIT(i32 3)
  %514 = and i32 %512, %513
  %515 = icmp ne i32 %514, 0
  br i1 %515, label %516, label %527

516:                                              ; preds = %489
  %517 = load %struct.txpowerinfo24g*, %struct.txpowerinfo24g** %4, align 8
  %518 = getelementptr inbounds %struct.txpowerinfo24g, %struct.txpowerinfo24g* %517, i32 0, i32 3
  %519 = load i32**, i32*** %518, align 8
  %520 = load i64, i64* %7, align 8
  %521 = getelementptr inbounds i32*, i32** %519, i64 %520
  %522 = load i32*, i32** %521, align 8
  %523 = load i64, i64* %10, align 8
  %524 = getelementptr inbounds i32, i32* %522, i64 %523
  %525 = load i32, i32* %524, align 4
  %526 = or i32 %525, 240
  store i32 %526, i32* %524, align 4
  br label %527

527:                                              ; preds = %516, %489
  br label %528

528:                                              ; preds = %527, %478
  %529 = load i32*, i32** %5, align 8
  %530 = load i64, i64* %8, align 8
  %531 = getelementptr inbounds i32, i32* %529, i64 %530
  %532 = load i32, i32* %531, align 4
  %533 = icmp eq i32 %532, 255
  br i1 %533, label %534, label %545

534:                                              ; preds = %528
  %535 = load i8*, i8** @EEPROM_DEFAULT_DIFF, align 8
  %536 = ptrtoint i8* %535 to i32
  %537 = load %struct.txpowerinfo24g*, %struct.txpowerinfo24g** %4, align 8
  %538 = getelementptr inbounds %struct.txpowerinfo24g, %struct.txpowerinfo24g* %537, i32 0, i32 5
  %539 = load i32**, i32*** %538, align 8
  %540 = load i64, i64* %7, align 8
  %541 = getelementptr inbounds i32*, i32** %539, i64 %540
  %542 = load i32*, i32** %541, align 8
  %543 = load i64, i64* %10, align 8
  %544 = getelementptr inbounds i32, i32* %542, i64 %543
  store i32 %536, i32* %544, align 4
  br label %583

545:                                              ; preds = %528
  %546 = load i32*, i32** %5, align 8
  %547 = load i64, i64* %8, align 8
  %548 = getelementptr inbounds i32, i32* %546, i64 %547
  %549 = load i32, i32* %548, align 4
  %550 = and i32 %549, 15
  %551 = load %struct.txpowerinfo24g*, %struct.txpowerinfo24g** %4, align 8
  %552 = getelementptr inbounds %struct.txpowerinfo24g, %struct.txpowerinfo24g* %551, i32 0, i32 5
  %553 = load i32**, i32*** %552, align 8
  %554 = load i64, i64* %7, align 8
  %555 = getelementptr inbounds i32*, i32** %553, i64 %554
  %556 = load i32*, i32** %555, align 8
  %557 = load i64, i64* %10, align 8
  %558 = getelementptr inbounds i32, i32* %556, i64 %557
  store i32 %550, i32* %558, align 4
  %559 = load %struct.txpowerinfo24g*, %struct.txpowerinfo24g** %4, align 8
  %560 = getelementptr inbounds %struct.txpowerinfo24g, %struct.txpowerinfo24g* %559, i32 0, i32 5
  %561 = load i32**, i32*** %560, align 8
  %562 = load i64, i64* %7, align 8
  %563 = getelementptr inbounds i32*, i32** %561, i64 %562
  %564 = load i32*, i32** %563, align 8
  %565 = load i64, i64* %10, align 8
  %566 = getelementptr inbounds i32, i32* %564, i64 %565
  %567 = load i32, i32* %566, align 4
  %568 = call i32 @BIT(i32 3)
  %569 = and i32 %567, %568
  %570 = icmp ne i32 %569, 0
  br i1 %570, label %571, label %582

571:                                              ; preds = %545
  %572 = load %struct.txpowerinfo24g*, %struct.txpowerinfo24g** %4, align 8
  %573 = getelementptr inbounds %struct.txpowerinfo24g, %struct.txpowerinfo24g* %572, i32 0, i32 5
  %574 = load i32**, i32*** %573, align 8
  %575 = load i64, i64* %7, align 8
  %576 = getelementptr inbounds i32*, i32** %574, i64 %575
  %577 = load i32*, i32** %576, align 8
  %578 = load i64, i64* %10, align 8
  %579 = getelementptr inbounds i32, i32* %577, i64 %578
  %580 = load i32, i32* %579, align 4
  %581 = or i32 %580, 240
  store i32 %581, i32* %579, align 4
  br label %582

582:                                              ; preds = %571, %545
  br label %583

583:                                              ; preds = %582, %534
  %584 = load i64, i64* %8, align 8
  %585 = add i64 %584, 1
  store i64 %585, i64* %8, align 8
  br label %586

586:                                              ; preds = %583, %348
  br label %587

587:                                              ; preds = %586
  %588 = load i64, i64* %10, align 8
  %589 = add i64 %588, 1
  store i64 %589, i64* %10, align 8
  br label %222

590:                                              ; preds = %222
  br label %591

591:                                              ; preds = %590
  %592 = load i64, i64* %7, align 8
  %593 = add i64 %592, 1
  store i64 %593, i64* %7, align 8
  br label %128

594:                                              ; preds = %126, %128
  ret void
}

declare dso_local i32 @memset(%struct.txpowerinfo24g*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
