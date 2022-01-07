; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rf.c_get_rx_power_val_by_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rf.c_get_rx_power_val_by_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.hal_data_8188e* }
%struct.hal_data_8188e = type { i32, i32**, i32, i32, i32**, i32**, i32**, i32**, i32, %struct.dm_priv }
%struct.dm_priv = type { i64 }

@HT_CHANNEL_WIDTH_20 = common dso_local global i32 0, align 4
@HT_CHANNEL_WIDTH_40 = common dso_local global i32 0, align 4
@TxHighPwrLevel_Level1 = common dso_local global i64 0, align 8
@TxHighPwrLevel_Level2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, i32, i32, i32*, i32*, i32*)* @get_rx_power_val_by_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_rx_power_val_by_reg(%struct.adapter* %0, i32 %1, i32 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.hal_data_8188e*, align 8
  %14 = alloca %struct.dm_priv*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [4 x i32], align 16
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %25 = load %struct.adapter*, %struct.adapter** %7, align 8
  %26 = getelementptr inbounds %struct.adapter, %struct.adapter* %25, i32 0, i32 0
  %27 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %26, align 8
  store %struct.hal_data_8188e* %27, %struct.hal_data_8188e** %13, align 8
  %28 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %13, align 8
  %29 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %28, i32 0, i32 9
  store %struct.dm_priv* %29, %struct.dm_priv** %14, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %19, align 4
  %30 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %13, align 8
  %31 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %23, align 4
  store i32 0, i32* %22, align 4
  br label %33

33:                                               ; preds = %347, %6
  %34 = load i32, i32* %22, align 4
  %35 = icmp slt i32 %34, 2
  br i1 %35, label %36, label %350

36:                                               ; preds = %33
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %22, align 4
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 8, i32 0
  %42 = add nsw i32 %37, %41
  store i32 %42, i32* %24, align 4
  %43 = load i32, i32* %23, align 4
  switch i32 %43, label %297 [
    i32 0, label %44
    i32 1, label %78
    i32 2, label %129
    i32 3, label %146
  ]

44:                                               ; preds = %36
  store i32 0, i32* %16, align 4
  %45 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %13, align 8
  %46 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %45, i32 0, i32 1
  %47 = load i32**, i32*** %46, align 8
  %48 = load i32, i32* %16, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32*, i32** %47, i64 %49
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %22, align 4
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 8, i32 0
  %57 = add nsw i32 %52, %56
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %51, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp slt i32 %61, 2
  br i1 %62, label %63, label %69

63:                                               ; preds = %44
  %64 = load i32*, i32** %10, align 8
  %65 = load i32, i32* %22, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  br label %75

69:                                               ; preds = %44
  %70 = load i32*, i32** %11, align 8
  %71 = load i32, i32* %22, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  br label %75

75:                                               ; preds = %69, %63
  %76 = phi i32 [ %68, %63 ], [ %74, %69 ]
  %77 = add nsw i32 %60, %76
  store i32 %77, i32* %20, align 4
  br label %326

78:                                               ; preds = %36
  %79 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %13, align 8
  %80 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  store i32 0, i32* %16, align 4
  br label %84

84:                                               ; preds = %83, %78
  %85 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %13, align 8
  %86 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %13, align 8
  %89 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = icmp sge i32 %87, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %84
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @Hal_GetChnlGroup88E(i32 %93, i32* %16)
  br label %95

95:                                               ; preds = %92, %84
  %96 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %13, align 8
  %97 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %96, i32 0, i32 1
  %98 = load i32**, i32*** %97, align 8
  %99 = load i32, i32* %16, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32*, i32** %98, i64 %100
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %22, align 4
  %105 = icmp ne i32 %104, 0
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i32 8, i32 0
  %108 = add nsw i32 %103, %107
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %102, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %9, align 4
  %113 = icmp slt i32 %112, 2
  br i1 %113, label %114, label %120

114:                                              ; preds = %95
  %115 = load i32*, i32** %10, align 8
  %116 = load i32, i32* %22, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  br label %126

120:                                              ; preds = %95
  %121 = load i32*, i32** %11, align 8
  %122 = load i32, i32* %22, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  %125 = load i32, i32* %124, align 4
  br label %126

126:                                              ; preds = %120, %114
  %127 = phi i32 [ %119, %114 ], [ %125, %120 ]
  %128 = add nsw i32 %111, %127
  store i32 %128, i32* %20, align 4
  br label %326

129:                                              ; preds = %36
  %130 = load i32, i32* %9, align 4
  %131 = icmp slt i32 %130, 2
  br i1 %131, label %132, label %138

132:                                              ; preds = %129
  %133 = load i32*, i32** %10, align 8
  %134 = load i32, i32* %22, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  br label %144

138:                                              ; preds = %129
  %139 = load i32*, i32** %11, align 8
  %140 = load i32, i32* %22, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  %143 = load i32, i32* %142, align 4
  br label %144

144:                                              ; preds = %138, %132
  %145 = phi i32 [ %137, %132 ], [ %143, %138 ]
  store i32 %145, i32* %20, align 4
  br label %326

146:                                              ; preds = %36
  store i32 0, i32* %16, align 4
  %147 = load i32, i32* %9, align 4
  %148 = icmp slt i32 %147, 2
  br i1 %148, label %149, label %162

149:                                              ; preds = %146
  %150 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %13, align 8
  %151 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %150, i32 0, i32 4
  %152 = load i32**, i32*** %151, align 8
  %153 = load i32, i32* %22, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32*, i32** %152, i64 %154
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* %8, align 4
  %158 = sub nsw i32 %157, 1
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %156, i64 %159
  %161 = load i32, i32* %160, align 4
  store i32 %161, i32* %19, align 4
  br label %182

162:                                              ; preds = %146
  %163 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %13, align 8
  %164 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %163, i32 0, i32 8
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @HT_CHANNEL_WIDTH_20, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %181

168:                                              ; preds = %162
  %169 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %13, align 8
  %170 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %169, i32 0, i32 5
  %171 = load i32**, i32*** %170, align 8
  %172 = load i32, i32* %22, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32*, i32** %171, i64 %173
  %175 = load i32*, i32** %174, align 8
  %176 = load i32, i32* %8, align 4
  %177 = sub nsw i32 %176, 1
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %175, i64 %178
  %180 = load i32, i32* %179, align 4
  store i32 %180, i32* %19, align 4
  br label %181

181:                                              ; preds = %168, %162
  br label %182

182:                                              ; preds = %181, %149
  %183 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %13, align 8
  %184 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %183, i32 0, i32 8
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @HT_CHANNEL_WIDTH_40, align 4
  %187 = icmp eq i32 %185, %186
  br i1 %187, label %188, label %201

188:                                              ; preds = %182
  %189 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %13, align 8
  %190 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %189, i32 0, i32 6
  %191 = load i32**, i32*** %190, align 8
  %192 = load i32, i32* %22, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32*, i32** %191, i64 %193
  %195 = load i32*, i32** %194, align 8
  %196 = load i32, i32* %8, align 4
  %197 = sub nsw i32 %196, 1
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %195, i64 %198
  %200 = load i32, i32* %199, align 4
  store i32 %200, i32* %18, align 4
  br label %214

201:                                              ; preds = %182
  %202 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %13, align 8
  %203 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %202, i32 0, i32 7
  %204 = load i32**, i32*** %203, align 8
  %205 = load i32, i32* %22, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32*, i32** %204, i64 %206
  %208 = load i32*, i32** %207, align 8
  %209 = load i32, i32* %8, align 4
  %210 = sub nsw i32 %209, 1
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %208, i64 %211
  %213 = load i32, i32* %212, align 4
  store i32 %213, i32* %18, align 4
  br label %214

214:                                              ; preds = %201, %188
  %215 = load i32, i32* %19, align 4
  %216 = load i32, i32* %18, align 4
  %217 = icmp sge i32 %215, %216
  br i1 %217, label %218, label %219

218:                                              ; preds = %214
  store i32 0, i32* %19, align 4
  br label %223

219:                                              ; preds = %214
  %220 = load i32, i32* %18, align 4
  %221 = load i32, i32* %19, align 4
  %222 = sub nsw i32 %220, %221
  store i32 %222, i32* %19, align 4
  br label %223

223:                                              ; preds = %219, %218
  store i32 0, i32* %15, align 4
  br label %224

224:                                              ; preds = %261, %223
  %225 = load i32, i32* %15, align 4
  %226 = icmp slt i32 %225, 4
  br i1 %226, label %227, label %264

227:                                              ; preds = %224
  %228 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %13, align 8
  %229 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %228, i32 0, i32 1
  %230 = load i32**, i32*** %229, align 8
  %231 = load i32, i32* %16, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32*, i32** %230, i64 %232
  %234 = load i32*, i32** %233, align 8
  %235 = load i32, i32* %24, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %234, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* %15, align 4
  %240 = mul nsw i32 %239, 8
  %241 = shl i32 127, %240
  %242 = and i32 %238, %241
  %243 = load i32, i32* %15, align 4
  %244 = mul nsw i32 %243, 8
  %245 = ashr i32 %242, %244
  %246 = load i32, i32* %15, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 %247
  store i32 %245, i32* %248, align 4
  %249 = load i32, i32* %15, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* %19, align 4
  %254 = icmp sgt i32 %252, %253
  br i1 %254, label %255, label %260

255:                                              ; preds = %227
  %256 = load i32, i32* %19, align 4
  %257 = load i32, i32* %15, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 %258
  store i32 %256, i32* %259, align 4
  br label %260

260:                                              ; preds = %255, %227
  br label %261

261:                                              ; preds = %260
  %262 = load i32, i32* %15, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %15, align 4
  br label %224

264:                                              ; preds = %224
  %265 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 3
  %266 = load i32, i32* %265, align 4
  %267 = shl i32 %266, 24
  %268 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 2
  %269 = load i32, i32* %268, align 8
  %270 = shl i32 %269, 16
  %271 = or i32 %267, %270
  %272 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 1
  %273 = load i32, i32* %272, align 4
  %274 = shl i32 %273, 8
  %275 = or i32 %271, %274
  %276 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  %277 = load i32, i32* %276, align 16
  %278 = or i32 %275, %277
  store i32 %278, i32* %21, align 4
  %279 = load i32, i32* %21, align 4
  %280 = load i32, i32* %9, align 4
  %281 = icmp slt i32 %280, 2
  br i1 %281, label %282, label %288

282:                                              ; preds = %264
  %283 = load i32*, i32** %10, align 8
  %284 = load i32, i32* %22, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds i32, i32* %283, i64 %285
  %287 = load i32, i32* %286, align 4
  br label %294

288:                                              ; preds = %264
  %289 = load i32*, i32** %11, align 8
  %290 = load i32, i32* %22, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i32, i32* %289, i64 %291
  %293 = load i32, i32* %292, align 4
  br label %294

294:                                              ; preds = %288, %282
  %295 = phi i32 [ %287, %282 ], [ %293, %288 ]
  %296 = add nsw i32 %279, %295
  store i32 %296, i32* %20, align 4
  br label %326

297:                                              ; preds = %36
  store i32 0, i32* %16, align 4
  %298 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %13, align 8
  %299 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %298, i32 0, i32 1
  %300 = load i32**, i32*** %299, align 8
  %301 = load i32, i32* %16, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i32*, i32** %300, i64 %302
  %304 = load i32*, i32** %303, align 8
  %305 = load i32, i32* %24, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i32, i32* %304, i64 %306
  %308 = load i32, i32* %307, align 4
  %309 = load i32, i32* %9, align 4
  %310 = icmp slt i32 %309, 2
  br i1 %310, label %311, label %317

311:                                              ; preds = %297
  %312 = load i32*, i32** %10, align 8
  %313 = load i32, i32* %22, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i32, i32* %312, i64 %314
  %316 = load i32, i32* %315, align 4
  br label %323

317:                                              ; preds = %297
  %318 = load i32*, i32** %11, align 8
  %319 = load i32, i32* %22, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds i32, i32* %318, i64 %320
  %322 = load i32, i32* %321, align 4
  br label %323

323:                                              ; preds = %317, %311
  %324 = phi i32 [ %316, %311 ], [ %322, %317 ]
  %325 = add nsw i32 %308, %324
  store i32 %325, i32* %20, align 4
  br label %326

326:                                              ; preds = %323, %294, %144, %126, %75
  %327 = load %struct.dm_priv*, %struct.dm_priv** %14, align 8
  %328 = getelementptr inbounds %struct.dm_priv, %struct.dm_priv* %327, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = load i64, i64* @TxHighPwrLevel_Level1, align 8
  %331 = icmp eq i64 %329, %330
  br i1 %331, label %332, label %333

332:                                              ; preds = %326
  store i32 336860180, i32* %20, align 4
  br label %341

333:                                              ; preds = %326
  %334 = load %struct.dm_priv*, %struct.dm_priv** %14, align 8
  %335 = getelementptr inbounds %struct.dm_priv, %struct.dm_priv* %334, i32 0, i32 0
  %336 = load i64, i64* %335, align 8
  %337 = load i64, i64* @TxHighPwrLevel_Level2, align 8
  %338 = icmp eq i64 %336, %337
  br i1 %338, label %339, label %340

339:                                              ; preds = %333
  store i32 0, i32* %20, align 4
  br label %340

340:                                              ; preds = %339, %333
  br label %341

341:                                              ; preds = %340, %332
  %342 = load i32, i32* %20, align 4
  %343 = load i32*, i32** %12, align 8
  %344 = load i32, i32* %22, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i32, i32* %343, i64 %345
  store i32 %342, i32* %346, align 4
  br label %347

347:                                              ; preds = %341
  %348 = load i32, i32* %22, align 4
  %349 = add nsw i32 %348, 1
  store i32 %349, i32* %22, align 4
  br label %33

350:                                              ; preds = %33
  ret void
}

declare dso_local i32 @Hal_GetChnlGroup88E(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
