; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_phy.c_simularity_compare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_phy.c_simularity_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }

@__const.simularity_compare.final_candidate = private unnamed_addr constant [2 x i32] [i32 255, i32 255], align 4
@MAX_TOLERANCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, [8 x i32]*, i32, i32)* @simularity_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @simularity_compare(%struct.adapter* %0, [8 x i32]* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca [8 x i32]*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca [2 x i32], align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %6, align 8
  store [8 x i32]* %1, [8 x i32]** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %19 = bitcast [2 x i32]* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 bitcast ([2 x i32]* @__const.simularity_compare.final_candidate to i8*), i64 8, i1 false)
  store i32 1, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 4, i32* %14, align 4
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %197, %4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %14, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %200

24:                                               ; preds = %20
  %25 = load i32, i32* %10, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %36, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %10, align 4
  %29 = icmp eq i32 %28, 3
  br i1 %29, label %36, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %10, align 4
  %32 = icmp eq i32 %31, 5
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %10, align 4
  %35 = icmp eq i32 %34, 7
  br i1 %35, label %36, label %97

36:                                               ; preds = %33, %30, %27, %24
  %37 = load [8 x i32]*, [8 x i32]** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [8 x i32], [8 x i32]* %37, i64 %39
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [8 x i32], [8 x i32]* %40, i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 512
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %36
  %48 = load [8 x i32]*, [8 x i32]** %7, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [8 x i32], [8 x i32]* %48, i64 %50
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [8 x i32], [8 x i32]* %51, i64 0, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, -1024
  store i32 %56, i32* %17, align 4
  br label %66

57:                                               ; preds = %36
  %58 = load [8 x i32]*, [8 x i32]** %7, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [8 x i32], [8 x i32]* %58, i64 %60
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [8 x i32], [8 x i32]* %61, i64 0, i64 %63
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %17, align 4
  br label %66

66:                                               ; preds = %57, %47
  %67 = load [8 x i32]*, [8 x i32]** %7, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [8 x i32], [8 x i32]* %67, i64 %69
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [8 x i32], [8 x i32]* %70, i64 0, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, 512
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %66
  %78 = load [8 x i32]*, [8 x i32]** %7, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [8 x i32], [8 x i32]* %78, i64 %80
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [8 x i32], [8 x i32]* %81, i64 0, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, -1024
  store i32 %86, i32* %18, align 4
  br label %96

87:                                               ; preds = %66
  %88 = load [8 x i32]*, [8 x i32]** %7, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [8 x i32], [8 x i32]* %88, i64 %90
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [8 x i32], [8 x i32]* %91, i64 0, i64 %93
  %95 = load i32, i32* %94, align 4
  store i32 %95, i32* %18, align 4
  br label %96

96:                                               ; preds = %87, %77
  br label %114

97:                                               ; preds = %33
  %98 = load [8 x i32]*, [8 x i32]** %7, align 8
  %99 = load i32, i32* %8, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [8 x i32], [8 x i32]* %98, i64 %100
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [8 x i32], [8 x i32]* %101, i64 0, i64 %103
  %105 = load i32, i32* %104, align 4
  store i32 %105, i32* %17, align 4
  %106 = load [8 x i32]*, [8 x i32]** %7, align 8
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [8 x i32], [8 x i32]* %106, i64 %108
  %110 = load i32, i32* %10, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [8 x i32], [8 x i32]* %109, i64 0, i64 %111
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %18, align 4
  br label %114

114:                                              ; preds = %97, %96
  %115 = load i32, i32* %17, align 4
  %116 = load i32, i32* %18, align 4
  %117 = sub nsw i32 %115, %116
  %118 = call i32 @abs(i32 %117) #3
  store i32 %118, i32* %12, align 4
  %119 = load i32, i32* %12, align 4
  %120 = load i32, i32* @MAX_TOLERANCE, align 4
  %121 = icmp sgt i32 %119, %120
  br i1 %121, label %122, label %196

122:                                              ; preds = %114
  %123 = load i32, i32* %10, align 4
  %124 = icmp eq i32 %123, 2
  br i1 %124, label %128, label %125

125:                                              ; preds = %122
  %126 = load i32, i32* %10, align 4
  %127 = icmp eq i32 %126, 6
  br i1 %127, label %128, label %190

128:                                              ; preds = %125, %122
  %129 = load i32, i32* %13, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %190, label %131

131:                                              ; preds = %128
  %132 = load [8 x i32]*, [8 x i32]** %7, align 8
  %133 = load i32, i32* %8, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [8 x i32], [8 x i32]* %132, i64 %134
  %136 = load i32, i32* %10, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [8 x i32], [8 x i32]* %135, i64 0, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load [8 x i32]*, [8 x i32]** %7, align 8
  %141 = load i32, i32* %8, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [8 x i32], [8 x i32]* %140, i64 %142
  %144 = load i32, i32* %10, align 4
  %145 = add nsw i32 %144, 1
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [8 x i32], [8 x i32]* %143, i64 0, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = add nsw i32 %139, %148
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %131
  %152 = load i32, i32* %9, align 4
  %153 = load i32, i32* %10, align 4
  %154 = sdiv i32 %153, 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %155
  store i32 %152, i32* %156, align 4
  br label %189

157:                                              ; preds = %131
  %158 = load [8 x i32]*, [8 x i32]** %7, align 8
  %159 = load i32, i32* %9, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [8 x i32], [8 x i32]* %158, i64 %160
  %162 = load i32, i32* %10, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [8 x i32], [8 x i32]* %161, i64 0, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = load [8 x i32]*, [8 x i32]** %7, align 8
  %167 = load i32, i32* %9, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds [8 x i32], [8 x i32]* %166, i64 %168
  %170 = load i32, i32* %10, align 4
  %171 = add nsw i32 %170, 1
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [8 x i32], [8 x i32]* %169, i64 0, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %165, %174
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %157
  %178 = load i32, i32* %8, align 4
  %179 = load i32, i32* %10, align 4
  %180 = sdiv i32 %179, 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %181
  store i32 %178, i32* %182, align 4
  br label %188

183:                                              ; preds = %157
  %184 = load i32, i32* %13, align 4
  %185 = load i32, i32* %10, align 4
  %186 = shl i32 1, %185
  %187 = or i32 %184, %186
  store i32 %187, i32* %13, align 4
  br label %188

188:                                              ; preds = %183, %177
  br label %189

189:                                              ; preds = %188, %151
  br label %195

190:                                              ; preds = %128, %125
  %191 = load i32, i32* %13, align 4
  %192 = load i32, i32* %10, align 4
  %193 = shl i32 1, %192
  %194 = or i32 %191, %193
  store i32 %194, i32* %13, align 4
  br label %195

195:                                              ; preds = %190, %189
  br label %196

196:                                              ; preds = %195, %114
  br label %197

197:                                              ; preds = %196
  %198 = load i32, i32* %10, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %10, align 4
  br label %20

200:                                              ; preds = %20
  %201 = load i32, i32* %13, align 4
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %252

203:                                              ; preds = %200
  store i32 0, i32* %10, align 4
  br label %204

204:                                              ; preds = %247, %203
  %205 = load i32, i32* %10, align 4
  %206 = load i32, i32* %14, align 4
  %207 = sdiv i32 %206, 4
  %208 = icmp slt i32 %205, %207
  br i1 %208, label %209, label %250

209:                                              ; preds = %204
  %210 = load i32, i32* %10, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = icmp ne i32 %213, 255
  br i1 %214, label %215, label %246

215:                                              ; preds = %209
  %216 = load i32, i32* %10, align 4
  %217 = mul nsw i32 %216, 4
  store i32 %217, i32* %11, align 4
  br label %218

218:                                              ; preds = %242, %215
  %219 = load i32, i32* %11, align 4
  %220 = load i32, i32* %10, align 4
  %221 = add nsw i32 %220, 1
  %222 = mul nsw i32 %221, 4
  %223 = sub nsw i32 %222, 2
  %224 = icmp slt i32 %219, %223
  br i1 %224, label %225, label %245

225:                                              ; preds = %218
  %226 = load [8 x i32]*, [8 x i32]** %7, align 8
  %227 = load i32, i32* %10, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds [8 x i32], [8 x i32]* %226, i64 %231
  %233 = load i32, i32* %11, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds [8 x i32], [8 x i32]* %232, i64 0, i64 %234
  %236 = load i32, i32* %235, align 4
  %237 = load [8 x i32]*, [8 x i32]** %7, align 8
  %238 = getelementptr inbounds [8 x i32], [8 x i32]* %237, i64 3
  %239 = load i32, i32* %11, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds [8 x i32], [8 x i32]* %238, i64 0, i64 %240
  store i32 %236, i32* %241, align 4
  br label %242

242:                                              ; preds = %225
  %243 = load i32, i32* %11, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %11, align 4
  br label %218

245:                                              ; preds = %218
  store i32 0, i32* %16, align 4
  br label %246

246:                                              ; preds = %245, %209
  br label %247

247:                                              ; preds = %246
  %248 = load i32, i32* %10, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %10, align 4
  br label %204

250:                                              ; preds = %204
  %251 = load i32, i32* %16, align 4
  store i32 %251, i32* %5, align 4
  br label %357

252:                                              ; preds = %200
  %253 = load i32, i32* %13, align 4
  %254 = and i32 %253, 3
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %278, label %256

256:                                              ; preds = %252
  store i32 0, i32* %10, align 4
  br label %257

257:                                              ; preds = %274, %256
  %258 = load i32, i32* %10, align 4
  %259 = icmp slt i32 %258, 2
  br i1 %259, label %260, label %277

260:                                              ; preds = %257
  %261 = load [8 x i32]*, [8 x i32]** %7, align 8
  %262 = load i32, i32* %8, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds [8 x i32], [8 x i32]* %261, i64 %263
  %265 = load i32, i32* %10, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds [8 x i32], [8 x i32]* %264, i64 0, i64 %266
  %268 = load i32, i32* %267, align 4
  %269 = load [8 x i32]*, [8 x i32]** %7, align 8
  %270 = getelementptr inbounds [8 x i32], [8 x i32]* %269, i64 3
  %271 = load i32, i32* %10, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds [8 x i32], [8 x i32]* %270, i64 0, i64 %272
  store i32 %268, i32* %273, align 4
  br label %274

274:                                              ; preds = %260
  %275 = load i32, i32* %10, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %10, align 4
  br label %257

277:                                              ; preds = %257
  br label %278

278:                                              ; preds = %277, %252
  %279 = load i32, i32* %13, align 4
  %280 = and i32 %279, 12
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %304, label %282

282:                                              ; preds = %278
  store i32 2, i32* %10, align 4
  br label %283

283:                                              ; preds = %300, %282
  %284 = load i32, i32* %10, align 4
  %285 = icmp slt i32 %284, 4
  br i1 %285, label %286, label %303

286:                                              ; preds = %283
  %287 = load [8 x i32]*, [8 x i32]** %7, align 8
  %288 = load i32, i32* %8, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds [8 x i32], [8 x i32]* %287, i64 %289
  %291 = load i32, i32* %10, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds [8 x i32], [8 x i32]* %290, i64 0, i64 %292
  %294 = load i32, i32* %293, align 4
  %295 = load [8 x i32]*, [8 x i32]** %7, align 8
  %296 = getelementptr inbounds [8 x i32], [8 x i32]* %295, i64 3
  %297 = load i32, i32* %10, align 4
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds [8 x i32], [8 x i32]* %296, i64 0, i64 %298
  store i32 %294, i32* %299, align 4
  br label %300

300:                                              ; preds = %286
  %301 = load i32, i32* %10, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %10, align 4
  br label %283

303:                                              ; preds = %283
  br label %304

304:                                              ; preds = %303, %278
  %305 = load i32, i32* %13, align 4
  %306 = and i32 %305, 48
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %330, label %308

308:                                              ; preds = %304
  store i32 4, i32* %10, align 4
  br label %309

309:                                              ; preds = %326, %308
  %310 = load i32, i32* %10, align 4
  %311 = icmp slt i32 %310, 6
  br i1 %311, label %312, label %329

312:                                              ; preds = %309
  %313 = load [8 x i32]*, [8 x i32]** %7, align 8
  %314 = load i32, i32* %8, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds [8 x i32], [8 x i32]* %313, i64 %315
  %317 = load i32, i32* %10, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds [8 x i32], [8 x i32]* %316, i64 0, i64 %318
  %320 = load i32, i32* %319, align 4
  %321 = load [8 x i32]*, [8 x i32]** %7, align 8
  %322 = getelementptr inbounds [8 x i32], [8 x i32]* %321, i64 3
  %323 = load i32, i32* %10, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds [8 x i32], [8 x i32]* %322, i64 0, i64 %324
  store i32 %320, i32* %325, align 4
  br label %326

326:                                              ; preds = %312
  %327 = load i32, i32* %10, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %10, align 4
  br label %309

329:                                              ; preds = %309
  br label %330

330:                                              ; preds = %329, %304
  %331 = load i32, i32* %13, align 4
  %332 = and i32 %331, 192
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %356, label %334

334:                                              ; preds = %330
  store i32 6, i32* %10, align 4
  br label %335

335:                                              ; preds = %352, %334
  %336 = load i32, i32* %10, align 4
  %337 = icmp slt i32 %336, 8
  br i1 %337, label %338, label %355

338:                                              ; preds = %335
  %339 = load [8 x i32]*, [8 x i32]** %7, align 8
  %340 = load i32, i32* %8, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds [8 x i32], [8 x i32]* %339, i64 %341
  %343 = load i32, i32* %10, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds [8 x i32], [8 x i32]* %342, i64 0, i64 %344
  %346 = load i32, i32* %345, align 4
  %347 = load [8 x i32]*, [8 x i32]** %7, align 8
  %348 = getelementptr inbounds [8 x i32], [8 x i32]* %347, i64 3
  %349 = load i32, i32* %10, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds [8 x i32], [8 x i32]* %348, i64 0, i64 %350
  store i32 %346, i32* %351, align 4
  br label %352

352:                                              ; preds = %338
  %353 = load i32, i32* %10, align 4
  %354 = add nsw i32 %353, 1
  store i32 %354, i32* %10, align 4
  br label %335

355:                                              ; preds = %335
  br label %356

356:                                              ; preds = %355, %330
  store i32 0, i32* %5, align 4
  br label %357

357:                                              ; preds = %356, %250
  %358 = load i32, i32* %5, align 4
  ret i32 %358
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
