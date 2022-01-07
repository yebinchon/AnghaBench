; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_com_phycfg.c_phy_get_tx_pwr_lmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_hal_com_phycfg.c_phy_get_tx_pwr_lmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.hal_com_data = type { i32, i32, i32, i32*****, i32***** }

@MAX_POWER_INDEX = common dso_local global i32 0, align 4
@TXPWR_LMT_ETSI = common dso_local global i32 0, align 4
@TXPWR_LMT_MKK = common dso_local global i32 0, align 4
@TXPWR_LMT_FCC = common dso_local global i32 0, align 4
@TXPWR_LMT_WW = common dso_local global i32 0, align 4
@BAND_ON_2_4G = common dso_local global i32 0, align 4
@BAND_ON_5G = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Wrong rate 0x%x: No CCK in 5G Band\0A\00", align 1
@DataRate = common dso_local global i32 0, align 4
@MAX_REGULATION_NUM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"No power limit table of the specified band\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phy_get_tx_pwr_lmt(%struct.adapter* %0, i32 %1, i32 %2, i32 %3, i64 %4, i64 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.adapter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.hal_com_data*, align 8
  %23 = alloca [10 x i32], align 16
  %24 = alloca i64, align 8
  %25 = alloca [10 x i32], align 16
  %26 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  store i32 -1, i32* %16, align 4
  store i32 -1, i32* %17, align 4
  store i32 -1, i32* %18, align 4
  store i32 -1, i32* %19, align 4
  store i32 -1, i32* %20, align 4
  %27 = load i32, i32* @MAX_POWER_INDEX, align 4
  store i32 %27, i32* %21, align 4
  %28 = load %struct.adapter*, %struct.adapter** %9, align 8
  %29 = call %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter* %28)
  store %struct.hal_com_data* %29, %struct.hal_com_data** %22, align 8
  %30 = load %struct.adapter*, %struct.adapter** %9, align 8
  %31 = getelementptr inbounds %struct.adapter, %struct.adapter* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %35, label %40

35:                                               ; preds = %7
  %36 = load %struct.hal_com_data*, %struct.hal_com_data** %22, align 8
  %37 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 1
  br i1 %39, label %46, label %40

40:                                               ; preds = %35, %7
  %41 = load %struct.adapter*, %struct.adapter** %9, align 8
  %42 = getelementptr inbounds %struct.adapter, %struct.adapter* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40, %35
  %47 = load i32, i32* @MAX_POWER_INDEX, align 4
  store i32 %47, i32* %8, align 4
  br label %294

48:                                               ; preds = %40
  %49 = load %struct.adapter*, %struct.adapter** %9, align 8
  %50 = getelementptr inbounds %struct.adapter, %struct.adapter* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  switch i32 %52, label %61 [
    i32 1, label %53
    i32 2, label %55
    i32 3, label %57
    i32 4, label %59
  ]

53:                                               ; preds = %48
  %54 = load i32, i32* @TXPWR_LMT_ETSI, align 4
  store i32 %54, i32* %17, align 4
  br label %75

55:                                               ; preds = %48
  %56 = load i32, i32* @TXPWR_LMT_MKK, align 4
  store i32 %56, i32* %17, align 4
  br label %75

57:                                               ; preds = %48
  %58 = load i32, i32* @TXPWR_LMT_FCC, align 4
  store i32 %58, i32* %17, align 4
  br label %75

59:                                               ; preds = %48
  %60 = load i32, i32* @TXPWR_LMT_WW, align 4
  store i32 %60, i32* %17, align 4
  br label %75

61:                                               ; preds = %48
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @BAND_ON_2_4G, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load %struct.hal_com_data*, %struct.hal_com_data** %22, align 8
  %67 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  br label %73

69:                                               ; preds = %61
  %70 = load %struct.hal_com_data*, %struct.hal_com_data** %22, align 8
  %71 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  br label %73

73:                                               ; preds = %69, %65
  %74 = phi i32 [ %68, %65 ], [ %72, %69 ]
  store i32 %74, i32* %17, align 4
  br label %75

75:                                               ; preds = %73, %59, %57, %55, %53
  %76 = load i32, i32* %11, align 4
  %77 = load i32, i32* @BAND_ON_2_4G, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  store i32 0, i32* %16, align 4
  br label %86

80:                                               ; preds = %75
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* @BAND_ON_5G, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  store i32 1, i32* %16, align 4
  br label %85

85:                                               ; preds = %84, %80
  br label %86

86:                                               ; preds = %85, %79
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @get_bandwidth_idx(i32 %87)
  store i32 %88, i32* %18, align 4
  %89 = load i64, i64* %14, align 8
  %90 = call i32 @get_rate_sctn_idx(i64 %89)
  store i32 %90, i32* %19, align 4
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* @BAND_ON_5G, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %86
  %95 = load i32, i32* %19, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %94
  %98 = load i32, i32* @DataRate, align 4
  %99 = call i32 (i8*, ...) @DBG_871X(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %98)
  br label %100

100:                                              ; preds = %97, %94, %86
  %101 = load i32, i32* %19, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %100
  %104 = load i32, i32* %19, align 4
  %105 = icmp eq i32 %104, 1
  br i1 %105, label %106, label %107

106:                                              ; preds = %103, %100
  store i32 0, i32* %18, align 4
  br label %122

107:                                              ; preds = %103
  %108 = load i32, i32* %19, align 4
  %109 = icmp eq i32 %108, 2
  br i1 %109, label %113, label %110

110:                                              ; preds = %107
  %111 = load i32, i32* %19, align 4
  %112 = icmp eq i32 %111, 3
  br i1 %112, label %113, label %121

113:                                              ; preds = %110, %107
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* @BAND_ON_5G, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %113
  %118 = load i32, i32* %18, align 4
  %119 = icmp eq i32 %118, 2
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  store i32 1, i32* %18, align 4
  br label %121

121:                                              ; preds = %120, %117, %113, %110
  br label %122

122:                                              ; preds = %121, %106
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* @BAND_ON_2_4G, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %130, label %126

126:                                              ; preds = %122
  %127 = load i32, i32* %11, align 4
  %128 = load i32, i32* @BAND_ON_5G, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %126, %122
  %131 = load i32, i32* %11, align 4
  %132 = load i64, i64* %15, align 8
  %133 = call i64 @phy_GetChannelIndexOfTxPowerLimit(i32 %131, i64 %132)
  store i64 %133, i64* %15, align 8
  br label %134

134:                                              ; preds = %130, %126
  %135 = load i32, i32* %16, align 4
  %136 = icmp eq i32 %135, -1
  br i1 %136, label %149, label %137

137:                                              ; preds = %134
  %138 = load i32, i32* %17, align 4
  %139 = icmp eq i32 %138, -1
  br i1 %139, label %149, label %140

140:                                              ; preds = %137
  %141 = load i32, i32* %18, align 4
  %142 = icmp eq i32 %141, -1
  br i1 %142, label %149, label %143

143:                                              ; preds = %140
  %144 = load i32, i32* %19, align 4
  %145 = icmp eq i32 %144, -1
  br i1 %145, label %149, label %146

146:                                              ; preds = %143
  %147 = load i32, i32* %20, align 4
  %148 = icmp eq i32 %147, -1
  br i1 %148, label %149, label %151

149:                                              ; preds = %146, %143, %140, %137, %134
  %150 = load i32, i32* @MAX_POWER_INDEX, align 4
  store i32 %150, i32* %8, align 4
  br label %294

151:                                              ; preds = %146
  %152 = load i32, i32* %11, align 4
  %153 = load i32, i32* @BAND_ON_2_4G, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %220

155:                                              ; preds = %151
  %156 = bitcast [10 x i32]* %23 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %156, i8 0, i64 40, i1 false)
  store i64 0, i64* %24, align 8
  store i64 0, i64* %24, align 8
  br label %157

157:                                              ; preds = %185, %155
  %158 = load i64, i64* %24, align 8
  %159 = load i64, i64* @MAX_REGULATION_NUM, align 8
  %160 = icmp ult i64 %158, %159
  br i1 %160, label %161, label %188

161:                                              ; preds = %157
  %162 = load %struct.hal_com_data*, %struct.hal_com_data** %22, align 8
  %163 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %162, i32 0, i32 4
  %164 = load i32*****, i32****** %163, align 8
  %165 = load i64, i64* %24, align 8
  %166 = getelementptr inbounds i32****, i32***** %164, i64 %165
  %167 = load i32****, i32***** %166, align 8
  %168 = load i32, i32* %18, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i32***, i32**** %167, i64 %169
  %171 = load i32***, i32**** %170, align 8
  %172 = load i32, i32* %19, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32**, i32*** %171, i64 %173
  %175 = load i32**, i32*** %174, align 8
  %176 = load i32, i32* %20, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32*, i32** %175, i64 %177
  %179 = load i32*, i32** %178, align 8
  %180 = load i64, i64* %13, align 8
  %181 = getelementptr inbounds i32, i32* %179, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = load i64, i64* %24, align 8
  %184 = getelementptr inbounds [10 x i32], [10 x i32]* %23, i64 0, i64 %183
  store i32 %182, i32* %184, align 4
  br label %185

185:                                              ; preds = %161
  %186 = load i64, i64* %24, align 8
  %187 = add i64 %186, 1
  store i64 %187, i64* %24, align 8
  br label %157

188:                                              ; preds = %157
  %189 = load i32, i32* %17, align 4
  %190 = load i32, i32* @TXPWR_LMT_WW, align 4
  %191 = icmp eq i32 %189, %190
  br i1 %191, label %192, label %195

192:                                              ; preds = %188
  %193 = getelementptr inbounds [10 x i32], [10 x i32]* %23, i64 0, i64 0
  %194 = call i32 @phy_GetWorldWideLimit(i32* %193)
  br label %218

195:                                              ; preds = %188
  %196 = load %struct.hal_com_data*, %struct.hal_com_data** %22, align 8
  %197 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %196, i32 0, i32 4
  %198 = load i32*****, i32****** %197, align 8
  %199 = load i32, i32* %17, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i32****, i32***** %198, i64 %200
  %202 = load i32****, i32***** %201, align 8
  %203 = load i32, i32* %18, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32***, i32**** %202, i64 %204
  %206 = load i32***, i32**** %205, align 8
  %207 = load i32, i32* %19, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32**, i32*** %206, i64 %208
  %210 = load i32**, i32*** %209, align 8
  %211 = load i32, i32* %20, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32*, i32** %210, i64 %212
  %214 = load i32*, i32** %213, align 8
  %215 = load i64, i64* %13, align 8
  %216 = getelementptr inbounds i32, i32* %214, i64 %215
  %217 = load i32, i32* %216, align 4
  br label %218

218:                                              ; preds = %195, %192
  %219 = phi i32 [ %194, %192 ], [ %217, %195 ]
  store i32 %219, i32* %21, align 4
  br label %292

220:                                              ; preds = %151
  %221 = load i32, i32* %11, align 4
  %222 = load i32, i32* @BAND_ON_5G, align 4
  %223 = icmp eq i32 %221, %222
  br i1 %223, label %224, label %289

224:                                              ; preds = %220
  %225 = bitcast [10 x i32]* %25 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %225, i8 0, i64 40, i1 false)
  store i64 0, i64* %26, align 8
  store i64 0, i64* %26, align 8
  br label %226

226:                                              ; preds = %254, %224
  %227 = load i64, i64* %26, align 8
  %228 = load i64, i64* @MAX_REGULATION_NUM, align 8
  %229 = icmp ult i64 %227, %228
  br i1 %229, label %230, label %257

230:                                              ; preds = %226
  %231 = load %struct.hal_com_data*, %struct.hal_com_data** %22, align 8
  %232 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %231, i32 0, i32 3
  %233 = load i32*****, i32****** %232, align 8
  %234 = load i64, i64* %26, align 8
  %235 = getelementptr inbounds i32****, i32***** %233, i64 %234
  %236 = load i32****, i32***** %235, align 8
  %237 = load i32, i32* %18, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32***, i32**** %236, i64 %238
  %240 = load i32***, i32**** %239, align 8
  %241 = load i32, i32* %19, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32**, i32*** %240, i64 %242
  %244 = load i32**, i32*** %243, align 8
  %245 = load i32, i32* %20, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32*, i32** %244, i64 %246
  %248 = load i32*, i32** %247, align 8
  %249 = load i64, i64* %13, align 8
  %250 = getelementptr inbounds i32, i32* %248, i64 %249
  %251 = load i32, i32* %250, align 4
  %252 = load i64, i64* %26, align 8
  %253 = getelementptr inbounds [10 x i32], [10 x i32]* %25, i64 0, i64 %252
  store i32 %251, i32* %253, align 4
  br label %254

254:                                              ; preds = %230
  %255 = load i64, i64* %26, align 8
  %256 = add i64 %255, 1
  store i64 %256, i64* %26, align 8
  br label %226

257:                                              ; preds = %226
  %258 = load i32, i32* %17, align 4
  %259 = load i32, i32* @TXPWR_LMT_WW, align 4
  %260 = icmp eq i32 %258, %259
  br i1 %260, label %261, label %264

261:                                              ; preds = %257
  %262 = getelementptr inbounds [10 x i32], [10 x i32]* %25, i64 0, i64 0
  %263 = call i32 @phy_GetWorldWideLimit(i32* %262)
  br label %287

264:                                              ; preds = %257
  %265 = load %struct.hal_com_data*, %struct.hal_com_data** %22, align 8
  %266 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %265, i32 0, i32 3
  %267 = load i32*****, i32****** %266, align 8
  %268 = load i32, i32* %17, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i32****, i32***** %267, i64 %269
  %271 = load i32****, i32***** %270, align 8
  %272 = load i32, i32* %18, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32***, i32**** %271, i64 %273
  %275 = load i32***, i32**** %274, align 8
  %276 = load i32, i32* %19, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i32**, i32*** %275, i64 %277
  %279 = load i32**, i32*** %278, align 8
  %280 = load i32, i32* %20, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32*, i32** %279, i64 %281
  %283 = load i32*, i32** %282, align 8
  %284 = load i64, i64* %13, align 8
  %285 = getelementptr inbounds i32, i32* %283, i64 %284
  %286 = load i32, i32* %285, align 4
  br label %287

287:                                              ; preds = %264, %261
  %288 = phi i32 [ %263, %261 ], [ %286, %264 ]
  store i32 %288, i32* %21, align 4
  br label %291

289:                                              ; preds = %220
  %290 = call i32 (i8*, ...) @DBG_871X(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %291

291:                                              ; preds = %289, %287
  br label %292

292:                                              ; preds = %291, %218
  %293 = load i32, i32* %21, align 4
  store i32 %293, i32* %8, align 4
  br label %294

294:                                              ; preds = %292, %149, %46
  %295 = load i32, i32* %8, align 4
  ret i32 %295
}

declare dso_local %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter*) #1

declare dso_local i32 @get_bandwidth_idx(i32) #1

declare dso_local i32 @get_rate_sctn_idx(i64) #1

declare dso_local i32 @DBG_871X(i8*, ...) #1

declare dso_local i64 @phy_GetChannelIndexOfTxPowerLimit(i32, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @phy_GetWorldWideLimit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
