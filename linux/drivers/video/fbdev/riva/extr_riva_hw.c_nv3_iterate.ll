; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/riva/extr_riva_hw.c_nv3_iterate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/riva/extr_riva_hw.c_nv3_iterate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i64, i64, i64, i64, i32, i64, i64, i32, i32, i32, i32, i64, i32, i64 }

@GFIFO_SIZE_128 = common dso_local global i32 0, align 4
@GFIFO_SIZE = common dso_local global i32 0, align 4
@MPORT = common dso_local global i32 0, align 4
@VFIFO_SIZE = common dso_local global i32 0, align 4
@MFIFO_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*, %struct.TYPE_6__*)* @nv3_iterate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv3_iterate(i32* %0, %struct.TYPE_5__* %1, %struct.TYPE_6__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
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
  %25 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 32, i32* %13, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %23, align 4
  store i32 2, i32* %14, align 4
  store i32 2, i32* %15, align 4
  store i32 2, i32* %16, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 128
  br i1 %32, label %33, label %35

33:                                               ; preds = %3
  %34 = load i32, i32* @GFIFO_SIZE_128, align 4
  store i32 %34, i32* %24, align 4
  br label %37

35:                                               ; preds = %3
  %36 = load i32, i32* @GFIFO_SIZE, align 4
  store i32 %36, i32* %24, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = load i32, i32* @GFIFO_SIZE, align 4
  store i32 %38, i32* %24, align 4
  br label %39

39:                                               ; preds = %37, %812
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 21
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %99

44:                                               ; preds = %39
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = icmp sgt i32 %47, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %44
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 8
  br label %58

58:                                               ; preds = %52, %44
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %18, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load i32, i32* %18, align 4
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 4
  store i32 %65, i32* %67, align 8
  br label %68

68:                                               ; preds = %64, %58
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = mul nsw i32 1000000, %71
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sdiv i32 %75, 8
  %77 = sdiv i32 %72, %76
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = sdiv i32 %77, %80
  %82 = sext i32 %81 to i64
  store i64 %82, i64* %25, align 8
  %83 = load i64, i64* %25, align 8
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 6
  %86 = load i64, i64* %85, align 8
  %87 = mul nsw i64 %83, %86
  %88 = sdiv i64 %87, 1000000
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %10, align 4
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = sub nsw i32 %92, %95
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %96, %97
  store i32 %98, i32* %10, align 4
  br label %99

99:                                               ; preds = %68, %39
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 5
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %119

104:                                              ; preds = %99
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 7
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 8
  %110 = load i64, i64* %109, align 8
  %111 = icmp sgt i64 %107, %110
  br i1 %111, label %112, label %118

112:                                              ; preds = %104
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 8
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 7
  store i64 %115, i64* %117, align 8
  br label %118

118:                                              ; preds = %112, %104
  br label %119

119:                                              ; preds = %118, %99
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 23
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %179

124:                                              ; preds = %119
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 9
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %19, align 4
  %129 = icmp sgt i32 %127, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %124
  %131 = load i32, i32* %19, align 4
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 9
  store i32 %131, i32* %133, align 8
  br label %134

134:                                              ; preds = %130, %124
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 10
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 11
  %140 = load i64, i64* %139, align 8
  %141 = icmp sgt i64 %137, %140
  br i1 %141, label %142, label %148

142:                                              ; preds = %134
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 11
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 10
  store i64 %145, i64* %147, align 8
  br label %148

148:                                              ; preds = %142, %134
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = sdiv i32 %154, 8
  %156 = sdiv i32 %151, %155
  %157 = mul nsw i32 1000000, %156
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = sdiv i32 %157, %160
  %162 = sext i32 %161 to i64
  store i64 %162, i64* %25, align 8
  %163 = load i64, i64* %25, align 8
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 12
  %166 = load i64, i64* %165, align 8
  %167 = mul nsw i64 %163, %166
  %168 = sdiv i64 %167, 1000000
  %169 = trunc i64 %168 to i32
  store i32 %169, i32* %12, align 4
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 9
  %172 = load i32, i32* %171, align 8
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = sub nsw i32 %172, %175
  %177 = load i32, i32* %12, align 4
  %178 = add nsw i32 %176, %177
  store i32 %178, i32* %12, align 4
  br label %179

179:                                              ; preds = %148, %119
  store i32 0, i32* %11, align 4
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 8
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %225, label %184

184:                                              ; preds = %179
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 21
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %225

189:                                              ; preds = %184
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 21
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %205

194:                                              ; preds = %189
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 4
  %198 = icmp slt i32 %197, 0
  br i1 %198, label %199, label %205

199:                                              ; preds = %194
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 20
  %202 = load i32, i32* %201, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %205, label %204

204:                                              ; preds = %199
  store i32 128, i32* %22, align 4
  br label %224

205:                                              ; preds = %199, %194, %189
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 8
  %208 = load i64, i64* %207, align 8
  %209 = icmp slt i64 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %205
  %211 = load i32, i32* @MPORT, align 4
  store i32 %211, i32* %22, align 4
  br label %223

212:                                              ; preds = %205
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 11
  %215 = load i64, i64* %214, align 8
  %216 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 13
  %218 = load i64, i64* %217, align 8
  %219 = icmp slt i64 %215, %218
  br i1 %219, label %220, label %221

220:                                              ; preds = %212
  store i32 129, i32* %22, align 4
  br label %222

221:                                              ; preds = %212
  store i32 0, i32* %4, align 4
  br label %813

222:                                              ; preds = %220
  br label %223

223:                                              ; preds = %222, %210
  br label %224

224:                                              ; preds = %223, %204
  br label %359

225:                                              ; preds = %184, %179
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 14
  %228 = load i32, i32* %227, align 8
  switch i32 %228, label %315 [
    i32 128, label %229
    i32 129, label %272
  ]

229:                                              ; preds = %225
  %230 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %230, i32 0, i32 21
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %245

234:                                              ; preds = %229
  %235 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 4
  %238 = icmp slt i32 %237, 0
  br i1 %238, label %239, label %245

239:                                              ; preds = %234
  %240 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 20
  %242 = load i32, i32* %241, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %245, label %244

244:                                              ; preds = %239
  store i32 128, i32* %22, align 4
  br label %271

245:                                              ; preds = %239, %234, %229
  %246 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %247 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %246, i32 0, i32 23
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %261

250:                                              ; preds = %245
  %251 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 11
  %253 = load i64, i64* %252, align 8
  %254 = icmp slt i64 %253, 0
  br i1 %254, label %255, label %261

255:                                              ; preds = %250
  %256 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 22
  %258 = load i32, i32* %257, align 8
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %261, label %260

260:                                              ; preds = %255
  store i32 129, i32* %22, align 4
  br label %270

261:                                              ; preds = %255, %250, %245
  %262 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %263 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %262, i32 0, i32 8
  %264 = load i64, i64* %263, align 8
  %265 = icmp slt i64 %264, 0
  br i1 %265, label %266, label %268

266:                                              ; preds = %261
  %267 = load i32, i32* @MPORT, align 4
  store i32 %267, i32* %22, align 4
  br label %269

268:                                              ; preds = %261
  store i32 0, i32* %4, align 4
  br label %813

269:                                              ; preds = %266
  br label %270

270:                                              ; preds = %269, %260
  br label %271

271:                                              ; preds = %270, %244
  br label %358

272:                                              ; preds = %225
  %273 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %274 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %273, i32 0, i32 23
  %275 = load i64, i64* %274, align 8
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %288

277:                                              ; preds = %272
  %278 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %279 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %278, i32 0, i32 11
  %280 = load i64, i64* %279, align 8
  %281 = icmp slt i64 %280, 0
  br i1 %281, label %282, label %288

282:                                              ; preds = %277
  %283 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %284 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %283, i32 0, i32 22
  %285 = load i32, i32* %284, align 8
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %288, label %287

287:                                              ; preds = %282
  store i32 129, i32* %22, align 4
  br label %314

288:                                              ; preds = %282, %277, %272
  %289 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %290 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %289, i32 0, i32 21
  %291 = load i64, i64* %290, align 8
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %304

293:                                              ; preds = %288
  %294 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %295 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %294, i32 0, i32 3
  %296 = load i32, i32* %295, align 4
  %297 = icmp slt i32 %296, 0
  br i1 %297, label %298, label %304

298:                                              ; preds = %293
  %299 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %300 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %299, i32 0, i32 20
  %301 = load i32, i32* %300, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %304, label %303

303:                                              ; preds = %298
  store i32 128, i32* %22, align 4
  br label %313

304:                                              ; preds = %298, %293, %288
  %305 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %306 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %305, i32 0, i32 8
  %307 = load i64, i64* %306, align 8
  %308 = icmp slt i64 %307, 0
  br i1 %308, label %309, label %311

309:                                              ; preds = %304
  %310 = load i32, i32* @MPORT, align 4
  store i32 %310, i32* %22, align 4
  br label %312

311:                                              ; preds = %304
  store i32 0, i32* %4, align 4
  br label %813

312:                                              ; preds = %309
  br label %313

313:                                              ; preds = %312, %303
  br label %314

314:                                              ; preds = %313, %287
  br label %358

315:                                              ; preds = %225
  %316 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %317 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %316, i32 0, i32 8
  %318 = load i64, i64* %317, align 8
  %319 = icmp slt i64 %318, 0
  br i1 %319, label %320, label %322

320:                                              ; preds = %315
  %321 = load i32, i32* @MPORT, align 4
  store i32 %321, i32* %22, align 4
  br label %357

322:                                              ; preds = %315
  %323 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %324 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %323, i32 0, i32 23
  %325 = load i64, i64* %324, align 8
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %338

327:                                              ; preds = %322
  %328 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %329 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %328, i32 0, i32 11
  %330 = load i64, i64* %329, align 8
  %331 = icmp slt i64 %330, 0
  br i1 %331, label %332, label %338

332:                                              ; preds = %327
  %333 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %334 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %333, i32 0, i32 22
  %335 = load i32, i32* %334, align 8
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %338, label %337

337:                                              ; preds = %332
  store i32 129, i32* %22, align 4
  br label %356

338:                                              ; preds = %332, %327, %322
  %339 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %340 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %339, i32 0, i32 21
  %341 = load i64, i64* %340, align 8
  %342 = icmp ne i64 %341, 0
  br i1 %342, label %343, label %354

343:                                              ; preds = %338
  %344 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %345 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %344, i32 0, i32 3
  %346 = load i32, i32* %345, align 4
  %347 = icmp slt i32 %346, 0
  br i1 %347, label %348, label %354

348:                                              ; preds = %343
  %349 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %350 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %349, i32 0, i32 20
  %351 = load i32, i32* %350, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %354, label %353

353:                                              ; preds = %348
  store i32 128, i32* %22, align 4
  br label %355

354:                                              ; preds = %348, %343, %338
  store i32 0, i32* %4, align 4
  br label %813

355:                                              ; preds = %353
  br label %356

356:                                              ; preds = %355, %337
  br label %357

357:                                              ; preds = %356, %320
  br label %358

358:                                              ; preds = %357, %314, %271
  br label %359

359:                                              ; preds = %358, %224
  %360 = load i32, i32* %23, align 4
  store i32 %360, i32* %21, align 4
  %361 = load i32, i32* %22, align 4
  store i32 %361, i32* %23, align 4
  %362 = load i32, i32* %8, align 4
  %363 = add nsw i32 %362, 1
  store i32 %363, i32* %8, align 4
  %364 = load i32, i32* %23, align 4
  switch i32 %364, label %592 [
    i32 128, label %365
    i32 129, label %476
  ]

365:                                              ; preds = %359
  %366 = load i32, i32* %21, align 4
  %367 = load i32, i32* %23, align 4
  %368 = icmp eq i32 %366, %367
  br i1 %368, label %369, label %370

369:                                              ; preds = %365
  store i32 0, i32* %17, align 4
  br label %379

370:                                              ; preds = %365
  %371 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %372 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %371, i32 0, i32 19
  %373 = load i32, i32* %372, align 8
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %377

375:                                              ; preds = %370
  %376 = load i32, i32* %16, align 4
  store i32 %376, i32* %17, align 4
  br label %378

377:                                              ; preds = %370
  store i32 1, i32* %17, align 4
  br label %378

378:                                              ; preds = %377, %375
  br label %379

379:                                              ; preds = %378, %369
  %380 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %381 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %380, i32 0, i32 19
  store i32 0, i32* %381, align 8
  %382 = load i32, i32* %21, align 4
  %383 = load i32, i32* %23, align 4
  %384 = icmp ne i32 %382, %383
  br i1 %384, label %385, label %413

385:                                              ; preds = %379
  %386 = load i32, i32* %16, align 4
  %387 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %388 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %387, i32 0, i32 2
  %389 = load i32, i32* %388, align 8
  %390 = mul nsw i32 %386, %389
  %391 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %392 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %391, i32 0, i32 3
  %393 = load i32, i32* %392, align 4
  %394 = add nsw i32 %390, %393
  %395 = mul nsw i32 1000000, %394
  %396 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %397 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %396, i32 0, i32 1
  %398 = load i32, i32* %397, align 4
  %399 = sdiv i32 %395, %398
  %400 = sext i32 %399 to i64
  store i64 %400, i64* %25, align 8
  %401 = load i64, i64* %25, align 8
  %402 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %403 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %402, i32 0, i32 6
  %404 = load i64, i64* %403, align 8
  %405 = mul nsw i64 %401, %404
  %406 = sdiv i64 %405, 1000000
  %407 = trunc i64 %406 to i32
  store i32 %407, i32* %18, align 4
  %408 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %409 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %408, i32 0, i32 3
  %410 = load i32, i32* %409, align 4
  %411 = load i32, i32* %18, align 4
  %412 = sub nsw i32 %410, %411
  store i32 %412, i32* %18, align 4
  br label %413

413:                                              ; preds = %385, %379
  %414 = load i32, i32* %17, align 4
  %415 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %416 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %415, i32 0, i32 2
  %417 = load i32, i32* %416, align 8
  %418 = mul nsw i32 %414, %417
  %419 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %420 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %419, i32 0, i32 5
  %421 = load i32, i32* %420, align 4
  %422 = add nsw i32 %418, %421
  %423 = mul nsw i32 1000000, %422
  %424 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %425 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 8
  %427 = sdiv i32 %426, 8
  %428 = sdiv i32 %423, %427
  %429 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %430 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %429, i32 0, i32 1
  %431 = load i32, i32* %430, align 4
  %432 = sdiv i32 %428, %431
  %433 = sext i32 %432 to i64
  store i64 %433, i64* %25, align 8
  %434 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %435 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %434, i32 0, i32 3
  %436 = load i32, i32* %435, align 4
  %437 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %438 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %437, i32 0, i32 5
  %439 = load i32, i32* %438, align 4
  %440 = add nsw i32 %436, %439
  %441 = sext i32 %440 to i64
  %442 = load i64, i64* %25, align 8
  %443 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %444 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %443, i32 0, i32 6
  %445 = load i64, i64* %444, align 8
  %446 = mul nsw i64 %442, %445
  %447 = sdiv i64 %446, 1000000
  %448 = sub nsw i64 %441, %447
  %449 = trunc i64 %448 to i32
  %450 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %451 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %450, i32 0, i32 3
  store i32 %449, i32* %451, align 4
  %452 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %453 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %452, i32 0, i32 11
  %454 = load i64, i64* %453, align 8
  %455 = load i64, i64* %25, align 8
  %456 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %457 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %456, i32 0, i32 12
  %458 = load i64, i64* %457, align 8
  %459 = mul nsw i64 %455, %458
  %460 = sdiv i64 %459, 1000000
  %461 = sub nsw i64 %454, %460
  %462 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %463 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %462, i32 0, i32 11
  store i64 %461, i64* %463, align 8
  %464 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %465 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %464, i32 0, i32 8
  %466 = load i64, i64* %465, align 8
  %467 = load i64, i64* %25, align 8
  %468 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %469 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %468, i32 0, i32 15
  %470 = load i64, i64* %469, align 8
  %471 = mul nsw i64 %467, %470
  %472 = sdiv i64 %471, 1000000
  %473 = sub nsw i64 %466, %472
  %474 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %475 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %474, i32 0, i32 8
  store i64 %473, i64* %475, align 8
  br label %670

476:                                              ; preds = %359
  %477 = load i32, i32* %21, align 4
  %478 = load i32, i32* %23, align 4
  %479 = icmp eq i32 %477, %478
  br i1 %479, label %480, label %481

480:                                              ; preds = %476
  store i32 0, i32* %17, align 4
  br label %490

481:                                              ; preds = %476
  %482 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %483 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %482, i32 0, i32 18
  %484 = load i32, i32* %483, align 4
  %485 = icmp ne i32 %484, 0
  br i1 %485, label %486, label %488

486:                                              ; preds = %481
  %487 = load i32, i32* %15, align 4
  store i32 %487, i32* %17, align 4
  br label %489

488:                                              ; preds = %481
  store i32 1, i32* %17, align 4
  br label %489

489:                                              ; preds = %488, %486
  br label %490

490:                                              ; preds = %489, %480
  %491 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %492 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %491, i32 0, i32 18
  store i32 0, i32* %492, align 4
  %493 = load i32, i32* %21, align 4
  %494 = load i32, i32* %23, align 4
  %495 = icmp ne i32 %493, %494
  br i1 %495, label %496, label %526

496:                                              ; preds = %490
  %497 = load i32, i32* %15, align 4
  %498 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %499 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %498, i32 0, i32 2
  %500 = load i32, i32* %499, align 8
  %501 = mul nsw i32 %497, %500
  %502 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %503 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %502, i32 0, i32 3
  %504 = load i32, i32* %503, align 4
  %505 = add nsw i32 %501, %504
  %506 = mul nsw i32 1000000, %505
  %507 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %508 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %507, i32 0, i32 1
  %509 = load i32, i32* %508, align 4
  %510 = sdiv i32 %506, %509
  %511 = sext i32 %510 to i64
  store i64 %511, i64* %25, align 8
  %512 = load i64, i64* %25, align 8
  %513 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %514 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %513, i32 0, i32 12
  %515 = load i64, i64* %514, align 8
  %516 = mul nsw i64 %512, %515
  %517 = sdiv i64 %516, 1000000
  %518 = trunc i64 %517 to i32
  store i32 %518, i32* %19, align 4
  %519 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %520 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %519, i32 0, i32 11
  %521 = load i64, i64* %520, align 8
  %522 = load i32, i32* %19, align 4
  %523 = sext i32 %522 to i64
  %524 = sub nsw i64 %521, %523
  %525 = trunc i64 %524 to i32
  store i32 %525, i32* %19, align 4
  br label %526

526:                                              ; preds = %496, %490
  %527 = load i32, i32* %17, align 4
  %528 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %529 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %528, i32 0, i32 2
  %530 = load i32, i32* %529, align 8
  %531 = mul nsw i32 %527, %530
  %532 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %533 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %532, i32 0, i32 1
  %534 = load i32, i32* %533, align 4
  %535 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %536 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %535, i32 0, i32 0
  %537 = load i32, i32* %536, align 8
  %538 = sdiv i32 %537, 8
  %539 = sdiv i32 %534, %538
  %540 = add nsw i32 %531, %539
  %541 = mul nsw i32 1000000, %540
  %542 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %543 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %542, i32 0, i32 1
  %544 = load i32, i32* %543, align 4
  %545 = sdiv i32 %541, %544
  %546 = sext i32 %545 to i64
  store i64 %546, i64* %25, align 8
  %547 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %548 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %547, i32 0, i32 3
  %549 = load i32, i32* %548, align 4
  %550 = add nsw i32 %549, 0
  %551 = sext i32 %550 to i64
  %552 = load i64, i64* %25, align 8
  %553 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %554 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %553, i32 0, i32 6
  %555 = load i64, i64* %554, align 8
  %556 = mul nsw i64 %552, %555
  %557 = sdiv i64 %556, 1000000
  %558 = sub nsw i64 %551, %557
  %559 = trunc i64 %558 to i32
  %560 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %561 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %560, i32 0, i32 3
  store i32 %559, i32* %561, align 4
  %562 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %563 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %562, i32 0, i32 11
  %564 = load i64, i64* %563, align 8
  %565 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %566 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %565, i32 0, i32 1
  %567 = load i32, i32* %566, align 4
  %568 = sext i32 %567 to i64
  %569 = add nsw i64 %564, %568
  %570 = load i64, i64* %25, align 8
  %571 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %572 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %571, i32 0, i32 12
  %573 = load i64, i64* %572, align 8
  %574 = mul nsw i64 %570, %573
  %575 = sdiv i64 %574, 1000000
  %576 = sub nsw i64 %569, %575
  %577 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %578 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %577, i32 0, i32 11
  store i64 %576, i64* %578, align 8
  %579 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %580 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %579, i32 0, i32 8
  %581 = load i64, i64* %580, align 8
  %582 = add nsw i64 %581, 0
  %583 = load i64, i64* %25, align 8
  %584 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %585 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %584, i32 0, i32 15
  %586 = load i64, i64* %585, align 8
  %587 = mul nsw i64 %583, %586
  %588 = sdiv i64 %587, 1000000
  %589 = sub nsw i64 %582, %588
  %590 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %591 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %590, i32 0, i32 8
  store i64 %589, i64* %591, align 8
  br label %670

592:                                              ; preds = %359
  %593 = load i32, i32* %21, align 4
  %594 = load i32, i32* %23, align 4
  %595 = icmp eq i32 %593, %594
  br i1 %595, label %596, label %597

596:                                              ; preds = %592
  store i32 0, i32* %17, align 4
  br label %606

597:                                              ; preds = %592
  %598 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %599 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %598, i32 0, i32 17
  %600 = load i32, i32* %599, align 8
  %601 = icmp ne i32 %600, 0
  br i1 %601, label %602, label %604

602:                                              ; preds = %597
  %603 = load i32, i32* %14, align 4
  store i32 %603, i32* %17, align 4
  br label %605

604:                                              ; preds = %597
  store i32 1, i32* %17, align 4
  br label %605

605:                                              ; preds = %604, %602
  br label %606

606:                                              ; preds = %605, %596
  %607 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %608 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %607, i32 0, i32 17
  store i32 0, i32* %608, align 8
  %609 = load i32, i32* %17, align 4
  %610 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %611 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %610, i32 0, i32 2
  %612 = load i32, i32* %611, align 8
  %613 = mul nsw i32 %609, %612
  %614 = load i32, i32* %13, align 4
  %615 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %616 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %615, i32 0, i32 0
  %617 = load i32, i32* %616, align 8
  %618 = sdiv i32 %617, 8
  %619 = sdiv i32 %614, %618
  %620 = add nsw i32 %613, %619
  %621 = mul nsw i32 1000000, %620
  %622 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %623 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %622, i32 0, i32 1
  %624 = load i32, i32* %623, align 4
  %625 = sdiv i32 %621, %624
  %626 = sext i32 %625 to i64
  store i64 %626, i64* %25, align 8
  %627 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %628 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %627, i32 0, i32 3
  %629 = load i32, i32* %628, align 4
  %630 = add nsw i32 %629, 0
  %631 = sext i32 %630 to i64
  %632 = load i64, i64* %25, align 8
  %633 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %634 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %633, i32 0, i32 6
  %635 = load i64, i64* %634, align 8
  %636 = mul nsw i64 %632, %635
  %637 = sdiv i64 %636, 1000000
  %638 = sub nsw i64 %631, %637
  %639 = trunc i64 %638 to i32
  %640 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %641 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %640, i32 0, i32 3
  store i32 %639, i32* %641, align 4
  %642 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %643 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %642, i32 0, i32 11
  %644 = load i64, i64* %643, align 8
  %645 = add nsw i64 %644, 0
  %646 = load i64, i64* %25, align 8
  %647 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %648 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %647, i32 0, i32 12
  %649 = load i64, i64* %648, align 8
  %650 = mul nsw i64 %646, %649
  %651 = sdiv i64 %650, 1000000
  %652 = sub nsw i64 %645, %651
  %653 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %654 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %653, i32 0, i32 11
  store i64 %652, i64* %654, align 8
  %655 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %656 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %655, i32 0, i32 8
  %657 = load i64, i64* %656, align 8
  %658 = load i32, i32* %13, align 4
  %659 = sext i32 %658 to i64
  %660 = add nsw i64 %657, %659
  %661 = load i64, i64* %25, align 8
  %662 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %663 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %662, i32 0, i32 15
  %664 = load i64, i64* %663, align 8
  %665 = mul nsw i64 %661, %664
  %666 = sdiv i64 %665, 1000000
  %667 = sub nsw i64 %660, %666
  %668 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %669 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %668, i32 0, i32 8
  store i64 %667, i64* %669, align 8
  br label %670

670:                                              ; preds = %606, %526, %413
  %671 = load i32, i32* %8, align 4
  %672 = icmp sgt i32 %671, 100
  br i1 %672, label %673, label %676

673:                                              ; preds = %670
  %674 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %675 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %674, i32 0, i32 16
  store i64 0, i64* %675, align 8
  store i32 1, i32* %4, align 4
  br label %813

676:                                              ; preds = %670
  %677 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %678 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %677, i32 0, i32 1
  %679 = load i32, i32* %678, align 4
  %680 = mul nsw i32 1000000, %679
  %681 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %682 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %681, i32 0, i32 0
  %683 = load i32, i32* %682, align 8
  %684 = sdiv i32 %683, 8
  %685 = sdiv i32 %680, %684
  %686 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %687 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %686, i32 0, i32 1
  %688 = load i32, i32* %687, align 4
  %689 = sdiv i32 %685, %688
  %690 = sext i32 %689 to i64
  store i64 %690, i64* %25, align 8
  %691 = load i64, i64* %25, align 8
  %692 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %693 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %692, i32 0, i32 12
  %694 = load i64, i64* %693, align 8
  %695 = mul nsw i64 %691, %694
  %696 = sdiv i64 %695, 1000000
  %697 = trunc i64 %696 to i32
  store i32 %697, i32* %9, align 4
  %698 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %699 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %698, i32 0, i32 1
  %700 = load i32, i32* %699, align 4
  %701 = call i32 @abs(i32 %700) #2
  %702 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %703 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %702, i32 0, i32 9
  %704 = load i32, i32* %703, align 8
  %705 = call i32 @abs(i32 %704) #2
  %706 = add nsw i32 %705, 16
  %707 = and i32 %706, -8
  %708 = add nsw i32 %701, %707
  %709 = load i32, i32* %9, align 4
  %710 = sub nsw i32 %708, %709
  %711 = load i32, i32* %24, align 4
  %712 = icmp sgt i32 %710, %711
  br i1 %712, label %713, label %716

713:                                              ; preds = %676
  %714 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %715 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %714, i32 0, i32 16
  store i64 0, i64* %715, align 8
  store i32 1, i32* %4, align 4
  br label %813

716:                                              ; preds = %676
  %717 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %718 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %717, i32 0, i32 5
  %719 = load i32, i32* %718, align 4
  %720 = mul nsw i32 1000000, %719
  %721 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %722 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %721, i32 0, i32 0
  %723 = load i32, i32* %722, align 8
  %724 = sdiv i32 %723, 8
  %725 = sdiv i32 %720, %724
  %726 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %727 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %726, i32 0, i32 1
  %728 = load i32, i32* %727, align 4
  %729 = sdiv i32 %725, %728
  %730 = sext i32 %729 to i64
  store i64 %730, i64* %25, align 8
  %731 = load i64, i64* %25, align 8
  %732 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %733 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %732, i32 0, i32 6
  %734 = load i64, i64* %733, align 8
  %735 = mul nsw i64 %731, %734
  %736 = sdiv i64 %735, 1000000
  %737 = trunc i64 %736 to i32
  store i32 %737, i32* %9, align 4
  %738 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %739 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %738, i32 0, i32 5
  %740 = load i32, i32* %739, align 4
  %741 = call i32 @abs(i32 %740) #2
  %742 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %743 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %742, i32 0, i32 4
  %744 = load i32, i32* %743, align 8
  %745 = add nsw i32 %744, 32
  %746 = call i32 @abs(i32 %745) #2
  %747 = and i32 %746, -16
  %748 = add nsw i32 %741, %747
  %749 = load i32, i32* %9, align 4
  %750 = sub nsw i32 %748, %749
  %751 = load i32, i32* @VFIFO_SIZE, align 4
  %752 = icmp sgt i32 %750, %751
  br i1 %752, label %753, label %756

753:                                              ; preds = %716
  %754 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %755 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %754, i32 0, i32 16
  store i64 0, i64* %755, align 8
  store i32 1, i32* %4, align 4
  br label %813

756:                                              ; preds = %716
  %757 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %758 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %757, i32 0, i32 11
  %759 = load i64, i64* %758, align 8
  %760 = trunc i64 %759 to i32
  %761 = call i32 @abs(i32 %760) #2
  %762 = load i32, i32* %24, align 4
  %763 = icmp sgt i32 %761, %762
  br i1 %763, label %764, label %767

764:                                              ; preds = %756
  %765 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %766 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %765, i32 0, i32 16
  store i64 0, i64* %766, align 8
  store i32 1, i32* %4, align 4
  br label %813

767:                                              ; preds = %756
  %768 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %769 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %768, i32 0, i32 3
  %770 = load i32, i32* %769, align 4
  %771 = call i32 @abs(i32 %770) #2
  %772 = load i32, i32* @VFIFO_SIZE, align 4
  %773 = icmp sgt i32 %771, %772
  br i1 %773, label %774, label %777

774:                                              ; preds = %767
  %775 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %776 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %775, i32 0, i32 16
  store i64 0, i64* %776, align 8
  store i32 1, i32* %4, align 4
  br label %813

777:                                              ; preds = %767
  %778 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %779 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %778, i32 0, i32 8
  %780 = load i64, i64* %779, align 8
  %781 = trunc i64 %780 to i32
  %782 = call i32 @abs(i32 %781) #2
  %783 = load i32, i32* @MFIFO_SIZE, align 4
  %784 = icmp sgt i32 %782, %783
  br i1 %784, label %785, label %788

785:                                              ; preds = %777
  %786 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %787 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %786, i32 0, i32 16
  store i64 0, i64* %787, align 8
  store i32 1, i32* %4, align 4
  br label %813

788:                                              ; preds = %777
  %789 = load i32, i32* %10, align 4
  %790 = call i32 @abs(i32 %789) #2
  %791 = load i32, i32* @VFIFO_SIZE, align 4
  %792 = icmp sgt i32 %790, %791
  br i1 %792, label %793, label %796

793:                                              ; preds = %788
  %794 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %795 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %794, i32 0, i32 16
  store i64 0, i64* %795, align 8
  store i32 1, i32* %4, align 4
  br label %813

796:                                              ; preds = %788
  %797 = load i32, i32* %12, align 4
  %798 = call i32 @abs(i32 %797) #2
  %799 = load i32, i32* %24, align 4
  %800 = icmp sgt i32 %798, %799
  br i1 %800, label %801, label %804

801:                                              ; preds = %796
  %802 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %803 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %802, i32 0, i32 16
  store i64 0, i64* %803, align 8
  store i32 1, i32* %4, align 4
  br label %813

804:                                              ; preds = %796
  %805 = load i32, i32* %11, align 4
  %806 = call i32 @abs(i32 %805) #2
  %807 = load i32, i32* @MFIFO_SIZE, align 4
  %808 = icmp sgt i32 %806, %807
  br i1 %808, label %809, label %812

809:                                              ; preds = %804
  %810 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %811 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %810, i32 0, i32 16
  store i64 0, i64* %811, align 8
  store i32 1, i32* %4, align 4
  br label %813

812:                                              ; preds = %804
  br label %39

813:                                              ; preds = %809, %801, %793, %785, %774, %764, %753, %713, %673, %354, %311, %268, %221
  %814 = load i32, i32* %4, align 4
  ret i32 %814
}

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
