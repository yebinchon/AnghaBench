; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init301.c_SiS_GetCRT2ResInfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init301.c_SiS_GetCRT2ResInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SiS_Private = type { i16, i32, i16, i16, i16, i16, i16, i64, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__*, i64 }
%struct.TYPE_6__ = type { i16 }
%struct.TYPE_5__ = type { i16, i16 }
%struct.TYPE_4__ = type { i16, i16 }

@HalfDCLK = common dso_local global i32 0, align 4
@SIS_315H = common dso_local global i64 0, align 8
@SetDOSMode = common dso_local global i32 0, align 4
@DoubleScanMode = common dso_local global i16 0, align 2
@VB_SISVB = common dso_local global i32 0, align 4
@VB_NoLCD = common dso_local global i32 0, align 4
@SetCRT2ToLCD = common dso_local global i32 0, align 4
@LCDVESATiming = common dso_local global i32 0, align 4
@DontExpandLCD = common dso_local global i32 0, align 4
@SetCRT2ToHiVision = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SiS_Private*, i16, i16)* @SiS_GetCRT2ResInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SiS_GetCRT2ResInfo(%struct.SiS_Private* %0, i16 zeroext %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.SiS_Private*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i16, align 2
  store %struct.SiS_Private* %0, %struct.SiS_Private** %4, align 8
  store i16 %1, i16* %5, align 2
  store i16 %2, i16* %6, align 2
  store i16 0, i16* %9, align 2
  %11 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %12 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %11, i32 0, i32 21
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %43

15:                                               ; preds = %3
  %16 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %17 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %16, i32 0, i32 0
  %18 = load i16, i16* %17, align 8
  store i16 %18, i16* %7, align 2
  %19 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %20 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @HalfDCLK, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %15
  %26 = load i16, i16* %7, align 2
  %27 = zext i16 %26 to i32
  %28 = shl i32 %27, 1
  %29 = trunc i32 %28 to i16
  store i16 %29, i16* %7, align 2
  br label %30

30:                                               ; preds = %25, %15
  %31 = load i16, i16* %7, align 2
  %32 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %33 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %32, i32 0, i32 3
  store i16 %31, i16* %33, align 2
  %34 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %35 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %34, i32 0, i32 2
  store i16 %31, i16* %35, align 8
  %36 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %37 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %36, i32 0, i32 6
  %38 = load i16, i16* %37, align 8
  %39 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %40 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %39, i32 0, i32 5
  store i16 %38, i16* %40, align 2
  %41 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %42 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %41, i32 0, i32 4
  store i16 %38, i16* %42, align 4
  br label %358

43:                                               ; preds = %3
  %44 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %45 = load i16, i16* %5, align 2
  %46 = load i16, i16* %6, align 2
  %47 = call zeroext i16 @SiS_GetResInfo(%struct.SiS_Private* %44, i16 zeroext %45, i16 zeroext %46)
  store i16 %47, i16* %10, align 2
  %48 = load i16, i16* %5, align 2
  %49 = zext i16 %48 to i32
  %50 = icmp sle i32 %49, 19
  br i1 %50, label %51, label %68

51:                                               ; preds = %43
  %52 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %53 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %52, i32 0, i32 20
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = load i16, i16* %10, align 2
  %56 = zext i16 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i16, i16* %58, align 2
  store i16 %59, i16* %7, align 2
  %60 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %61 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %60, i32 0, i32 20
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load i16, i16* %10, align 2
  %64 = zext i16 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i16, i16* %66, align 2
  store i16 %67, i16* %8, align 2
  br label %93

68:                                               ; preds = %43
  %69 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %70 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %69, i32 0, i32 19
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = load i16, i16* %10, align 2
  %73 = zext i16 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i16, i16* %75, align 2
  store i16 %76, i16* %7, align 2
  %77 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %78 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %77, i32 0, i32 19
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = load i16, i16* %10, align 2
  %81 = zext i16 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load i16, i16* %83, align 2
  store i16 %84, i16* %8, align 2
  %85 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %86 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %85, i32 0, i32 18
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = load i16, i16* %6, align 2
  %89 = zext i16 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i16, i16* %91, align 2
  store i16 %92, i16* %9, align 2
  br label %93

93:                                               ; preds = %68, %51
  %94 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %95 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %94, i32 0, i32 15
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %169, label %98

98:                                               ; preds = %93
  %99 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %100 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %99, i32 0, i32 14
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %169, label %103

103:                                              ; preds = %98
  %104 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %105 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %104, i32 0, i32 7
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @SIS_315H, align 8
  %108 = icmp sge i64 %106, %107
  br i1 %108, label %109, label %145

109:                                              ; preds = %103
  %110 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %111 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %110, i32 0, i32 8
  %112 = load i32, i32* %111, align 8
  %113 = icmp eq i32 %112, 1
  br i1 %113, label %114, label %145

114:                                              ; preds = %109
  %115 = load i16, i16* %5, align 2
  %116 = zext i16 %115 to i32
  %117 = icmp ne i32 %116, 3
  br i1 %117, label %118, label %131

118:                                              ; preds = %114
  %119 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %120 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %119, i32 0, i32 9
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @SetDOSMode, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %118
  %126 = load i16, i16* %8, align 2
  %127 = zext i16 %126 to i32
  %128 = icmp eq i32 %127, 350
  br i1 %128, label %129, label %130

129:                                              ; preds = %125
  store i16 400, i16* %8, align 2
  br label %130

130:                                              ; preds = %129, %125
  br label %131

131:                                              ; preds = %130, %118, %114
  %132 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %133 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %132, i32 0, i32 17
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @SiS_GetReg(i32 %134, i32 58)
  %136 = and i32 %135, 1
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %131
  %139 = load i16, i16* %5, align 2
  %140 = zext i16 %139 to i32
  %141 = icmp eq i32 %140, 18
  br i1 %141, label %142, label %143

142:                                              ; preds = %138
  store i16 400, i16* %8, align 2
  br label %143

143:                                              ; preds = %142, %138
  br label %144

144:                                              ; preds = %143, %131
  br label %145

145:                                              ; preds = %144, %109, %103
  %146 = load i16, i16* %9, align 2
  %147 = zext i16 %146 to i32
  %148 = load i32, i32* @HalfDCLK, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %145
  %152 = load i16, i16* %7, align 2
  %153 = zext i16 %152 to i32
  %154 = shl i32 %153, 1
  %155 = trunc i32 %154 to i16
  store i16 %155, i16* %7, align 2
  br label %156

156:                                              ; preds = %151, %145
  %157 = load i16, i16* %9, align 2
  %158 = zext i16 %157 to i32
  %159 = load i16, i16* @DoubleScanMode, align 2
  %160 = zext i16 %159 to i32
  %161 = and i32 %158, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %156
  %164 = load i16, i16* %8, align 2
  %165 = zext i16 %164 to i32
  %166 = shl i32 %165, 1
  %167 = trunc i32 %166 to i16
  store i16 %167, i16* %8, align 2
  br label %168

168:                                              ; preds = %163, %156
  br label %169

169:                                              ; preds = %168, %98, %93
  %170 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %171 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %170, i32 0, i32 10
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @VB_SISVB, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %274

176:                                              ; preds = %169
  %177 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %178 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %177, i32 0, i32 10
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @VB_NoLCD, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %274, label %183

183:                                              ; preds = %176
  %184 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %185 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %184, i32 0, i32 11
  %186 = load i32, i32* %185, align 4
  %187 = load i32, i32* @SetCRT2ToLCD, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %273

190:                                              ; preds = %183
  %191 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %192 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %191, i32 0, i32 12
  %193 = load i32, i32* %192, align 8
  switch i32 %193, label %272 [
    i32 130, label %194
    i32 129, label %226
    i32 128, label %258
  ]

194:                                              ; preds = %190
  %195 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %196 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %195, i32 0, i32 9
  %197 = load i32, i32* %196, align 4
  %198 = load i32, i32* @LCDVESATiming, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %225, label %201

201:                                              ; preds = %194
  %202 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %203 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %202, i32 0, i32 13
  %204 = load i32, i32* %203, align 4
  %205 = load i32, i32* @DontExpandLCD, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %224, label %208

208:                                              ; preds = %201
  %209 = load i16, i16* %8, align 2
  %210 = zext i16 %209 to i32
  %211 = icmp eq i32 %210, 350
  br i1 %211, label %212, label %213

212:                                              ; preds = %208
  store i16 357, i16* %8, align 2
  br label %213

213:                                              ; preds = %212, %208
  %214 = load i16, i16* %8, align 2
  %215 = zext i16 %214 to i32
  %216 = icmp eq i32 %215, 400
  br i1 %216, label %217, label %218

217:                                              ; preds = %213
  store i16 420, i16* %8, align 2
  br label %218

218:                                              ; preds = %217, %213
  %219 = load i16, i16* %8, align 2
  %220 = zext i16 %219 to i32
  %221 = icmp eq i32 %220, 480
  br i1 %221, label %222, label %223

222:                                              ; preds = %218
  store i16 525, i16* %8, align 2
  br label %223

223:                                              ; preds = %222, %218
  br label %224

224:                                              ; preds = %223, %201
  br label %225

225:                                              ; preds = %224, %194
  br label %272

226:                                              ; preds = %190
  %227 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %228 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %227, i32 0, i32 13
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* @DontExpandLCD, align 4
  %231 = and i32 %229, %230
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %239, label %233

233:                                              ; preds = %226
  %234 = load i16, i16* %8, align 2
  %235 = zext i16 %234 to i32
  %236 = icmp eq i32 %235, 400
  br i1 %236, label %237, label %238

237:                                              ; preds = %233
  store i16 405, i16* %8, align 2
  br label %238

238:                                              ; preds = %237, %233
  br label %239

239:                                              ; preds = %238, %226
  %240 = load i16, i16* %8, align 2
  %241 = zext i16 %240 to i32
  %242 = icmp eq i32 %241, 350
  br i1 %242, label %243, label %244

243:                                              ; preds = %239
  store i16 360, i16* %8, align 2
  br label %244

244:                                              ; preds = %243, %239
  %245 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %246 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %245, i32 0, i32 9
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* @LCDVESATiming, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %257

251:                                              ; preds = %244
  %252 = load i16, i16* %8, align 2
  %253 = zext i16 %252 to i32
  %254 = icmp eq i32 %253, 360
  br i1 %254, label %255, label %256

255:                                              ; preds = %251
  store i16 375, i16* %8, align 2
  br label %256

256:                                              ; preds = %255, %251
  br label %257

257:                                              ; preds = %256, %244
  br label %272

258:                                              ; preds = %190
  %259 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %260 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %259, i32 0, i32 9
  %261 = load i32, i32* %260, align 4
  %262 = load i32, i32* @LCDVESATiming, align 4
  %263 = and i32 %261, %262
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %271, label %265

265:                                              ; preds = %258
  %266 = load i16, i16* %8, align 2
  %267 = zext i16 %266 to i32
  %268 = icmp eq i32 %267, 1024
  br i1 %268, label %269, label %270

269:                                              ; preds = %265
  store i16 1056, i16* %8, align 2
  br label %270

270:                                              ; preds = %269, %265
  br label %271

271:                                              ; preds = %270, %258
  br label %272

272:                                              ; preds = %190, %271, %257, %225
  br label %273

273:                                              ; preds = %272, %183
  br label %347

274:                                              ; preds = %176, %169
  %275 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %276 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %275, i32 0, i32 10
  %277 = load i32, i32* %276, align 8
  %278 = load i32, i32* @VB_SISVB, align 4
  %279 = and i32 %277, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %297

281:                                              ; preds = %274
  %282 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %283 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %282, i32 0, i32 11
  %284 = load i32, i32* %283, align 4
  %285 = load i32, i32* @SetCRT2ToLCD, align 4
  %286 = load i32, i32* @SetCRT2ToHiVision, align 4
  %287 = or i32 %285, %286
  %288 = and i32 %284, %287
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %296

290:                                              ; preds = %281
  %291 = load i16, i16* %7, align 2
  %292 = zext i16 %291 to i32
  %293 = icmp eq i32 %292, 720
  br i1 %293, label %294, label %295

294:                                              ; preds = %290
  store i16 640, i16* %7, align 2
  br label %295

295:                                              ; preds = %294, %290
  br label %296

296:                                              ; preds = %295, %281
  br label %303

297:                                              ; preds = %274
  %298 = load i16, i16* %7, align 2
  %299 = zext i16 %298 to i32
  %300 = icmp eq i32 %299, 720
  br i1 %300, label %301, label %302

301:                                              ; preds = %297
  store i16 640, i16* %7, align 2
  br label %302

302:                                              ; preds = %301, %297
  br label %303

303:                                              ; preds = %302, %296
  %304 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %305 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %304, i32 0, i32 9
  %306 = load i32, i32* %305, align 4
  %307 = load i32, i32* @SetDOSMode, align 4
  %308 = and i32 %306, %307
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %346

310:                                              ; preds = %303
  store i16 400, i16* %8, align 2
  %311 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %312 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %311, i32 0, i32 7
  %313 = load i64, i64* %312, align 8
  %314 = load i64, i64* @SIS_315H, align 8
  %315 = icmp sge i64 %313, %314
  br i1 %315, label %316, label %325

316:                                              ; preds = %310
  %317 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %318 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %317, i32 0, i32 16
  %319 = load i32, i32* %318, align 8
  %320 = call i32 @SiS_GetReg(i32 %319, i32 23)
  %321 = and i32 %320, 128
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %324

323:                                              ; preds = %316
  store i16 480, i16* %8, align 2
  br label %324

324:                                              ; preds = %323, %316
  br label %334

325:                                              ; preds = %310
  %326 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %327 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %326, i32 0, i32 16
  %328 = load i32, i32* %327, align 8
  %329 = call i32 @SiS_GetReg(i32 %328, i32 19)
  %330 = and i32 %329, 128
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %333

332:                                              ; preds = %325
  store i16 480, i16* %8, align 2
  br label %333

333:                                              ; preds = %332, %325
  br label %334

334:                                              ; preds = %333, %324
  %335 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %336 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %335, i32 0, i32 15
  %337 = load i64, i64* %336, align 8
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %344, label %339

339:                                              ; preds = %334
  %340 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %341 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %340, i32 0, i32 14
  %342 = load i64, i64* %341, align 8
  %343 = icmp ne i64 %342, 0
  br i1 %343, label %344, label %345

344:                                              ; preds = %339, %334
  store i16 480, i16* %8, align 2
  br label %345

345:                                              ; preds = %344, %339
  br label %346

346:                                              ; preds = %345, %303
  br label %347

347:                                              ; preds = %346, %273
  %348 = load i16, i16* %7, align 2
  %349 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %350 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %349, i32 0, i32 3
  store i16 %348, i16* %350, align 2
  %351 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %352 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %351, i32 0, i32 2
  store i16 %348, i16* %352, align 8
  %353 = load i16, i16* %8, align 2
  %354 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %355 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %354, i32 0, i32 5
  store i16 %353, i16* %355, align 2
  %356 = load %struct.SiS_Private*, %struct.SiS_Private** %4, align 8
  %357 = getelementptr inbounds %struct.SiS_Private, %struct.SiS_Private* %356, i32 0, i32 4
  store i16 %353, i16* %357, align 4
  br label %358

358:                                              ; preds = %347, %30
  ret void
}

declare dso_local zeroext i16 @SiS_GetResInfo(%struct.SiS_Private*, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @SiS_GetReg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
