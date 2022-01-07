; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_uc1611.c_write_vmem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_uc1611.c_write_vmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fbtft_par = type { %struct.TYPE_16__*, %struct.TYPE_15__*, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_16__ = type { i32, %struct.TYPE_11__, %struct.TYPE_9__, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_12__ = type { i32 (%struct.fbtft_par.0*, i32*, i64)* }
%struct.fbtft_par.0 = type opaque
%struct.TYPE_10__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"unsupported buswidth %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"write failed and returned: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fbtft_par*, i64, i64)* @write_vmem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_vmem(%struct.fbtft_par* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.fbtft_par*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.fbtft_par* %0, %struct.fbtft_par** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %17 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %18 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %17, i32 0, i32 0
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i32*
  store i32* %22, i32** %7, align 8
  %23 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %24 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %8, align 8
  %27 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %28 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %9, align 8
  %31 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %32 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %31, i32 0, i32 0
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %10, align 4
  %37 = load i64, i64* %5, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = udiv i64 %37, %39
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %11, align 4
  %42 = load i64, i64* %5, align 8
  %43 = load i64, i64* %6, align 8
  %44 = add i64 %42, %43
  %45 = sub i64 %44, 1
  %46 = load i32, i32* %10, align 4
  %47 = sext i32 %46 to i64
  %48 = udiv i64 %45, %47
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %12, align 4
  store i32 0, i32* %16, align 4
  %50 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %51 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %50, i32 0, i32 1
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  switch i32 %55, label %296 [
    i32 8, label %56
    i32 9, label %176
  ]

56:                                               ; preds = %3
  %57 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %58 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %57, i32 0, i32 0
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  switch i32 %62, label %107 [
    i32 90, label %63
    i32 270, label %63
  ]

63:                                               ; preds = %56, %56
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %10, align 4
  %66 = mul nsw i32 %64, %65
  store i32 %66, i32* %15, align 4
  %67 = load i32, i32* %11, align 4
  store i32 %67, i32* %14, align 4
  br label %68

68:                                               ; preds = %103, %63
  %69 = load i32, i32* %14, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp sle i32 %69, %70
  br i1 %71, label %72, label %106

72:                                               ; preds = %68
  store i32 0, i32* %13, align 4
  br label %73

73:                                               ; preds = %99, %72
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %102

77:                                               ; preds = %73
  %78 = load i32*, i32** %7, align 8
  %79 = load i32, i32* %15, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = ashr i32 %82, 4
  %84 = load i32*, i32** %8, align 8
  store i32 %83, i32* %84, align 4
  %85 = load i32*, i32** %7, align 8
  %86 = load i32, i32* %15, align 4
  %87 = add nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %85, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, 240
  %92 = load i32*, i32** %8, align 8
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %91
  store i32 %94, i32* %92, align 4
  %95 = load i32*, i32** %8, align 8
  %96 = getelementptr inbounds i32, i32* %95, i32 1
  store i32* %96, i32** %8, align 8
  %97 = load i32, i32* %15, align 4
  %98 = add nsw i32 %97, 2
  store i32 %98, i32* %15, align 4
  br label %99

99:                                               ; preds = %77
  %100 = load i32, i32* %13, align 4
  %101 = add nsw i32 %100, 2
  store i32 %101, i32* %13, align 4
  br label %73

102:                                              ; preds = %73
  br label %103

103:                                              ; preds = %102
  %104 = load i32, i32* %14, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %14, align 4
  br label %68

106:                                              ; preds = %68
  br label %157

107:                                              ; preds = %56
  %108 = load i32, i32* %11, align 4
  %109 = and i32 %108, 254
  store i32 %109, i32* %11, align 4
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* %10, align 4
  %112 = mul nsw i32 %110, %111
  store i32 %112, i32* %15, align 4
  %113 = load i32, i32* %11, align 4
  store i32 %113, i32* %14, align 4
  br label %114

114:                                              ; preds = %153, %107
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* %12, align 4
  %117 = icmp sle i32 %115, %116
  br i1 %117, label %118, label %156

118:                                              ; preds = %114
  store i32 0, i32* %13, align 4
  br label %119

119:                                              ; preds = %146, %118
  %120 = load i32, i32* %13, align 4
  %121 = load i32, i32* %10, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %149

123:                                              ; preds = %119
  %124 = load i32*, i32** %7, align 8
  %125 = load i32, i32* %15, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = ashr i32 %128, 4
  %130 = load i32*, i32** %8, align 8
  store i32 %129, i32* %130, align 4
  %131 = load i32*, i32** %7, align 8
  %132 = load i32, i32* %15, align 4
  %133 = load i32, i32* %10, align 4
  %134 = add nsw i32 %132, %133
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %131, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = and i32 %137, 240
  %139 = load i32*, i32** %8, align 8
  %140 = load i32, i32* %139, align 4
  %141 = or i32 %140, %138
  store i32 %141, i32* %139, align 4
  %142 = load i32*, i32** %8, align 8
  %143 = getelementptr inbounds i32, i32* %142, i32 1
  store i32* %143, i32** %8, align 8
  %144 = load i32, i32* %15, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %15, align 4
  br label %146

146:                                              ; preds = %123
  %147 = load i32, i32* %13, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %13, align 4
  br label %119

149:                                              ; preds = %119
  %150 = load i32, i32* %10, align 4
  %151 = load i32, i32* %15, align 4
  %152 = add nsw i32 %151, %150
  store i32 %152, i32* %15, align 4
  br label %153

153:                                              ; preds = %149
  %154 = load i32, i32* %14, align 4
  %155 = add nsw i32 %154, 2
  store i32 %155, i32* %14, align 4
  br label %114

156:                                              ; preds = %114
  br label %157

157:                                              ; preds = %156, %106
  %158 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %159 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %158, i32 0, i32 4
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call i32 @gpiod_set_value(i32 %161, i32 1)
  %163 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %164 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %163, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 0
  %166 = load i32 (%struct.fbtft_par.0*, i32*, i64)*, i32 (%struct.fbtft_par.0*, i32*, i64)** %165, align 8
  %167 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %168 = bitcast %struct.fbtft_par* %167 to %struct.fbtft_par.0*
  %169 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %170 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %169, i32 0, i32 2
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = load i64, i64* %6, align 8
  %174 = udiv i64 %173, 2
  %175 = call i32 %166(%struct.fbtft_par.0* %168, i32* %172, i64 %174)
  store i32 %175, i32* %16, align 4
  br label %309

176:                                              ; preds = %3
  %177 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %178 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %177, i32 0, i32 0
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  switch i32 %182, label %230 [
    i32 90, label %183
    i32 270, label %183
  ]

183:                                              ; preds = %176, %176
  %184 = load i32, i32* %11, align 4
  %185 = load i32, i32* %10, align 4
  %186 = mul nsw i32 %184, %185
  store i32 %186, i32* %15, align 4
  %187 = load i32, i32* %11, align 4
  store i32 %187, i32* %14, align 4
  br label %188

188:                                              ; preds = %226, %183
  %189 = load i32, i32* %14, align 4
  %190 = load i32, i32* %12, align 4
  %191 = icmp sle i32 %189, %190
  br i1 %191, label %192, label %229

192:                                              ; preds = %188
  store i32 0, i32* %13, align 4
  br label %193

193:                                              ; preds = %222, %192
  %194 = load i32, i32* %13, align 4
  %195 = load i32, i32* %10, align 4
  %196 = icmp slt i32 %194, %195
  br i1 %196, label %197, label %225

197:                                              ; preds = %193
  %198 = load i32*, i32** %9, align 8
  store i32 256, i32* %198, align 4
  %199 = load i32*, i32** %7, align 8
  %200 = load i32, i32* %15, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = ashr i32 %203, 4
  %205 = load i32*, i32** %9, align 8
  %206 = load i32, i32* %205, align 4
  %207 = or i32 %206, %204
  store i32 %207, i32* %205, align 4
  %208 = load i32*, i32** %7, align 8
  %209 = load i32, i32* %15, align 4
  %210 = add nsw i32 %209, 1
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %208, i64 %211
  %213 = load i32, i32* %212, align 4
  %214 = and i32 %213, 240
  %215 = load i32*, i32** %9, align 8
  %216 = load i32, i32* %215, align 4
  %217 = or i32 %216, %214
  store i32 %217, i32* %215, align 4
  %218 = load i32*, i32** %9, align 8
  %219 = getelementptr inbounds i32, i32* %218, i32 1
  store i32* %219, i32** %9, align 8
  %220 = load i32, i32* %15, align 4
  %221 = add nsw i32 %220, 2
  store i32 %221, i32* %15, align 4
  br label %222

222:                                              ; preds = %197
  %223 = load i32, i32* %13, align 4
  %224 = add nsw i32 %223, 2
  store i32 %224, i32* %13, align 4
  br label %193

225:                                              ; preds = %193
  br label %226

226:                                              ; preds = %225
  %227 = load i32, i32* %14, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %14, align 4
  br label %188

229:                                              ; preds = %188
  br label %283

230:                                              ; preds = %176
  %231 = load i32, i32* %11, align 4
  %232 = and i32 %231, 254
  store i32 %232, i32* %11, align 4
  %233 = load i32, i32* %11, align 4
  %234 = load i32, i32* %10, align 4
  %235 = mul nsw i32 %233, %234
  store i32 %235, i32* %15, align 4
  %236 = load i32, i32* %11, align 4
  store i32 %236, i32* %14, align 4
  br label %237

237:                                              ; preds = %279, %230
  %238 = load i32, i32* %14, align 4
  %239 = load i32, i32* %12, align 4
  %240 = icmp sle i32 %238, %239
  br i1 %240, label %241, label %282

241:                                              ; preds = %237
  store i32 0, i32* %13, align 4
  br label %242

242:                                              ; preds = %272, %241
  %243 = load i32, i32* %13, align 4
  %244 = load i32, i32* %10, align 4
  %245 = icmp slt i32 %243, %244
  br i1 %245, label %246, label %275

246:                                              ; preds = %242
  %247 = load i32*, i32** %9, align 8
  store i32 256, i32* %247, align 4
  %248 = load i32*, i32** %7, align 8
  %249 = load i32, i32* %15, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %248, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = ashr i32 %252, 4
  %254 = load i32*, i32** %9, align 8
  %255 = load i32, i32* %254, align 4
  %256 = or i32 %255, %253
  store i32 %256, i32* %254, align 4
  %257 = load i32*, i32** %7, align 8
  %258 = load i32, i32* %15, align 4
  %259 = load i32, i32* %10, align 4
  %260 = add nsw i32 %258, %259
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %257, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = and i32 %263, 240
  %265 = load i32*, i32** %9, align 8
  %266 = load i32, i32* %265, align 4
  %267 = or i32 %266, %264
  store i32 %267, i32* %265, align 4
  %268 = load i32*, i32** %9, align 8
  %269 = getelementptr inbounds i32, i32* %268, i32 1
  store i32* %269, i32** %9, align 8
  %270 = load i32, i32* %15, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %15, align 4
  br label %272

272:                                              ; preds = %246
  %273 = load i32, i32* %13, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %13, align 4
  br label %242

275:                                              ; preds = %242
  %276 = load i32, i32* %10, align 4
  %277 = load i32, i32* %15, align 4
  %278 = add nsw i32 %277, %276
  store i32 %278, i32* %15, align 4
  br label %279

279:                                              ; preds = %275
  %280 = load i32, i32* %14, align 4
  %281 = add nsw i32 %280, 2
  store i32 %281, i32* %14, align 4
  br label %237

282:                                              ; preds = %237
  br label %283

283:                                              ; preds = %282, %229
  %284 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %285 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %284, i32 0, i32 3
  %286 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %285, i32 0, i32 0
  %287 = load i32 (%struct.fbtft_par.0*, i32*, i64)*, i32 (%struct.fbtft_par.0*, i32*, i64)** %286, align 8
  %288 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %289 = bitcast %struct.fbtft_par* %288 to %struct.fbtft_par.0*
  %290 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %291 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %290, i32 0, i32 2
  %292 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %291, i32 0, i32 0
  %293 = load i32*, i32** %292, align 8
  %294 = load i64, i64* %6, align 8
  %295 = call i32 %287(%struct.fbtft_par.0* %289, i32* %293, i64 %294)
  store i32 %295, i32* %16, align 4
  br label %309

296:                                              ; preds = %3
  %297 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %298 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %297, i32 0, i32 0
  %299 = load %struct.TYPE_16__*, %struct.TYPE_16__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %303 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %302, i32 0, i32 1
  %304 = load %struct.TYPE_15__*, %struct.TYPE_15__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %305, i32 0, i32 0
  %307 = load i32, i32* %306, align 4
  %308 = call i32 @dev_err(i32 %301, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %307)
  br label %309

309:                                              ; preds = %296, %283, %157
  %310 = load i32, i32* %16, align 4
  %311 = icmp slt i32 %310, 0
  br i1 %311, label %312, label %320

312:                                              ; preds = %309
  %313 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %314 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %313, i32 0, i32 0
  %315 = load %struct.TYPE_16__*, %struct.TYPE_16__** %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = load i32, i32* %16, align 4
  %319 = call i32 @dev_err(i32 %317, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %318)
  br label %320

320:                                              ; preds = %312, %309
  %321 = load i32, i32* %16, align 4
  ret i32 %321
}

declare dso_local i32 @gpiod_set_value(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
