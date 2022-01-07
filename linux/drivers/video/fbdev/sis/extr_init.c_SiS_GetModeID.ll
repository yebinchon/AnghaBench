; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init.c_SiS_GetModeID.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init.c_SiS_GetModeID.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ModeIndex_320x200 = common dso_local global i16* null, align 8
@CRT2_LCD = common dso_local global i32 0, align 4
@ModeIndex_320x240_FSTN = common dso_local global i16* null, align 8
@ModeIndex_320x240 = common dso_local global i16* null, align 8
@CRT1_LCDA = common dso_local global i32 0, align 4
@ModeIndex_400x300 = common dso_local global i16* null, align 8
@ModeIndex_512x384 = common dso_local global i16* null, align 8
@ModeIndex_640x480 = common dso_local global i16* null, align 8
@ModeIndex_640x400 = common dso_local global i16* null, align 8
@ModeIndex_720x480 = common dso_local global i16* null, align 8
@ModeIndex_720x576 = common dso_local global i16* null, align 8
@ModeIndex_768x576 = common dso_local global i16* null, align 8
@ModeIndex_800x600 = common dso_local global i16* null, align 8
@ModeIndex_800x480 = common dso_local global i16* null, align 8
@ModeIndex_848x480 = common dso_local global i16* null, align 8
@ModeIndex_856x480 = common dso_local global i16* null, align 8
@SIS_315_VGA = common dso_local global i32 0, align 4
@ModeIndex_960x540 = common dso_local global i16* null, align 8
@ModeIndex_960x600 = common dso_local global i16* null, align 8
@ModeIndex_1024x576 = common dso_local global i16* null, align 8
@ModeIndex_1024x768 = common dso_local global i16* null, align 8
@SIS_300_VGA = common dso_local global i32 0, align 4
@ModeIndex_1024x600 = common dso_local global i16* null, align 8
@ModeIndex_1152x864 = common dso_local global i16* null, align 8
@ModeIndex_1152x768 = common dso_local global i16* null, align 8
@ModeIndex_1280x720 = common dso_local global i16* null, align 8
@ModeIndex_300_1280x768 = common dso_local global i16* null, align 8
@ModeIndex_310_1280x768 = common dso_local global i16* null, align 8
@ModeIndex_1280x800 = common dso_local global i16* null, align 8
@ModeIndex_1280x854 = common dso_local global i16* null, align 8
@ModeIndex_1280x960 = common dso_local global i16* null, align 8
@ModeIndex_1280x1024 = common dso_local global i16* null, align 8
@ModeIndex_1360x768 = common dso_local global i16* null, align 8
@ModeIndex_300_1360x1024 = common dso_local global i16* null, align 8
@ModeIndex_1400x1050 = common dso_local global i16* null, align 8
@ModeIndex_1600x1200 = common dso_local global i16* null, align 8
@ModeIndex_1680x1050 = common dso_local global i16* null, align 8
@ModeIndex_1920x1440 = common dso_local global i16* null, align 8
@ModeIndex_1920x1080 = common dso_local global i16* null, align 8
@ModeIndex_300_2048x1536 = common dso_local global i16* null, align 8
@ModeIndex_310_2048x1536 = common dso_local global i16* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (i32, i32, i32, i32, i32, i32, i32, i32)* @SiS_GetModeID to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @SiS_GetModeID(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i16, align 2
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  store i16 0, i16* %17, align 2
  %18 = load i32, i32* %11, align 4
  switch i32 %18, label %442 [
    i32 320, label %19
    i32 400, label %54
    i32 512, label %76
    i32 640, label %98
    i32 720, label %118
    i32 768, label %138
    i32 800, label %148
    i32 848, label %168
    i32 856, label %178
    i32 960, label %188
    i32 1024, label %213
    i32 1152, label %248
    i32 1280, label %272
    i32 1360, label %332
    i32 1400, label %356
    i32 1600, label %371
    i32 1680, label %381
    i32 1920, label %396
    i32 2048, label %421
  ]

19:                                               ; preds = %8
  %20 = load i32, i32* %12, align 4
  %21 = icmp eq i32 %20, 200
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load i16*, i16** @ModeIndex_320x200, align 8
  %24 = load i32, i32* %13, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i16, i16* %23, i64 %25
  %27 = load i16, i16* %26, align 2
  store i16 %27, i16* %17, align 2
  br label %53

28:                                               ; preds = %19
  %29 = load i32, i32* %12, align 4
  %30 = icmp eq i32 %29, 240
  br i1 %30, label %31, label %52

31:                                               ; preds = %28
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @CRT2_LCD, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = load i32, i32* %14, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load i16*, i16** @ModeIndex_320x240_FSTN, align 8
  %41 = load i32, i32* %13, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i16, i16* %40, i64 %42
  %44 = load i16, i16* %43, align 2
  store i16 %44, i16* %17, align 2
  br label %51

45:                                               ; preds = %36, %31
  %46 = load i16*, i16** @ModeIndex_320x240, align 8
  %47 = load i32, i32* %13, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i16, i16* %46, i64 %48
  %50 = load i16, i16* %49, align 2
  store i16 %50, i16* %17, align 2
  br label %51

51:                                               ; preds = %45, %39
  br label %52

52:                                               ; preds = %51, %28
  br label %53

53:                                               ; preds = %52, %22
  br label %442

54:                                               ; preds = %8
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @CRT1_LCDA, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load i32, i32* %15, align 4
  %61 = icmp sge i32 %60, 800
  br i1 %61, label %62, label %75

62:                                               ; preds = %59
  %63 = load i32, i32* %15, align 4
  %64 = icmp sge i32 %63, 600
  br i1 %64, label %65, label %75

65:                                               ; preds = %62, %54
  %66 = load i32, i32* %12, align 4
  %67 = icmp eq i32 %66, 300
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load i16*, i16** @ModeIndex_400x300, align 8
  %70 = load i32, i32* %13, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i16, i16* %69, i64 %71
  %73 = load i16, i16* %72, align 2
  store i16 %73, i16* %17, align 2
  br label %74

74:                                               ; preds = %68, %65
  br label %75

75:                                               ; preds = %74, %62, %59
  br label %442

76:                                               ; preds = %8
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* @CRT1_LCDA, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %76
  %82 = load i32, i32* %15, align 4
  %83 = icmp sge i32 %82, 1024
  br i1 %83, label %84, label %97

84:                                               ; preds = %81
  %85 = load i32, i32* %15, align 4
  %86 = icmp sge i32 %85, 768
  br i1 %86, label %87, label %97

87:                                               ; preds = %84, %76
  %88 = load i32, i32* %12, align 4
  %89 = icmp eq i32 %88, 384
  br i1 %89, label %90, label %96

90:                                               ; preds = %87
  %91 = load i16*, i16** @ModeIndex_512x384, align 8
  %92 = load i32, i32* %13, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i16, i16* %91, i64 %93
  %95 = load i16, i16* %94, align 2
  store i16 %95, i16* %17, align 2
  br label %96

96:                                               ; preds = %90, %87
  br label %97

97:                                               ; preds = %96, %84, %81
  br label %442

98:                                               ; preds = %8
  %99 = load i32, i32* %12, align 4
  %100 = icmp eq i32 %99, 480
  br i1 %100, label %101, label %107

101:                                              ; preds = %98
  %102 = load i16*, i16** @ModeIndex_640x480, align 8
  %103 = load i32, i32* %13, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i16, i16* %102, i64 %104
  %106 = load i16, i16* %105, align 2
  store i16 %106, i16* %17, align 2
  br label %117

107:                                              ; preds = %98
  %108 = load i32, i32* %12, align 4
  %109 = icmp eq i32 %108, 400
  br i1 %109, label %110, label %116

110:                                              ; preds = %107
  %111 = load i16*, i16** @ModeIndex_640x400, align 8
  %112 = load i32, i32* %13, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i16, i16* %111, i64 %113
  %115 = load i16, i16* %114, align 2
  store i16 %115, i16* %17, align 2
  br label %116

116:                                              ; preds = %110, %107
  br label %117

117:                                              ; preds = %116, %101
  br label %442

118:                                              ; preds = %8
  %119 = load i32, i32* %12, align 4
  %120 = icmp eq i32 %119, 480
  br i1 %120, label %121, label %127

121:                                              ; preds = %118
  %122 = load i16*, i16** @ModeIndex_720x480, align 8
  %123 = load i32, i32* %13, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i16, i16* %122, i64 %124
  %126 = load i16, i16* %125, align 2
  store i16 %126, i16* %17, align 2
  br label %137

127:                                              ; preds = %118
  %128 = load i32, i32* %12, align 4
  %129 = icmp eq i32 %128, 576
  br i1 %129, label %130, label %136

130:                                              ; preds = %127
  %131 = load i16*, i16** @ModeIndex_720x576, align 8
  %132 = load i32, i32* %13, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i16, i16* %131, i64 %133
  %135 = load i16, i16* %134, align 2
  store i16 %135, i16* %17, align 2
  br label %136

136:                                              ; preds = %130, %127
  br label %137

137:                                              ; preds = %136, %121
  br label %442

138:                                              ; preds = %8
  %139 = load i32, i32* %12, align 4
  %140 = icmp eq i32 %139, 576
  br i1 %140, label %141, label %147

141:                                              ; preds = %138
  %142 = load i16*, i16** @ModeIndex_768x576, align 8
  %143 = load i32, i32* %13, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i16, i16* %142, i64 %144
  %146 = load i16, i16* %145, align 2
  store i16 %146, i16* %17, align 2
  br label %147

147:                                              ; preds = %141, %138
  br label %442

148:                                              ; preds = %8
  %149 = load i32, i32* %12, align 4
  %150 = icmp eq i32 %149, 600
  br i1 %150, label %151, label %157

151:                                              ; preds = %148
  %152 = load i16*, i16** @ModeIndex_800x600, align 8
  %153 = load i32, i32* %13, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i16, i16* %152, i64 %154
  %156 = load i16, i16* %155, align 2
  store i16 %156, i16* %17, align 2
  br label %167

157:                                              ; preds = %148
  %158 = load i32, i32* %12, align 4
  %159 = icmp eq i32 %158, 480
  br i1 %159, label %160, label %166

160:                                              ; preds = %157
  %161 = load i16*, i16** @ModeIndex_800x480, align 8
  %162 = load i32, i32* %13, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i16, i16* %161, i64 %163
  %165 = load i16, i16* %164, align 2
  store i16 %165, i16* %17, align 2
  br label %166

166:                                              ; preds = %160, %157
  br label %167

167:                                              ; preds = %166, %151
  br label %442

168:                                              ; preds = %8
  %169 = load i32, i32* %12, align 4
  %170 = icmp eq i32 %169, 480
  br i1 %170, label %171, label %177

171:                                              ; preds = %168
  %172 = load i16*, i16** @ModeIndex_848x480, align 8
  %173 = load i32, i32* %13, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i16, i16* %172, i64 %174
  %176 = load i16, i16* %175, align 2
  store i16 %176, i16* %17, align 2
  br label %177

177:                                              ; preds = %171, %168
  br label %442

178:                                              ; preds = %8
  %179 = load i32, i32* %12, align 4
  %180 = icmp eq i32 %179, 480
  br i1 %180, label %181, label %187

181:                                              ; preds = %178
  %182 = load i16*, i16** @ModeIndex_856x480, align 8
  %183 = load i32, i32* %13, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i16, i16* %182, i64 %184
  %186 = load i16, i16* %185, align 2
  store i16 %186, i16* %17, align 2
  br label %187

187:                                              ; preds = %181, %178
  br label %442

188:                                              ; preds = %8
  %189 = load i32, i32* %9, align 4
  %190 = load i32, i32* @SIS_315_VGA, align 4
  %191 = icmp eq i32 %189, %190
  br i1 %191, label %192, label %212

192:                                              ; preds = %188
  %193 = load i32, i32* %12, align 4
  %194 = icmp eq i32 %193, 540
  br i1 %194, label %195, label %201

195:                                              ; preds = %192
  %196 = load i16*, i16** @ModeIndex_960x540, align 8
  %197 = load i32, i32* %13, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i16, i16* %196, i64 %198
  %200 = load i16, i16* %199, align 2
  store i16 %200, i16* %17, align 2
  br label %211

201:                                              ; preds = %192
  %202 = load i32, i32* %12, align 4
  %203 = icmp eq i32 %202, 600
  br i1 %203, label %204, label %210

204:                                              ; preds = %201
  %205 = load i16*, i16** @ModeIndex_960x600, align 8
  %206 = load i32, i32* %13, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i16, i16* %205, i64 %207
  %209 = load i16, i16* %208, align 2
  store i16 %209, i16* %17, align 2
  br label %210

210:                                              ; preds = %204, %201
  br label %211

211:                                              ; preds = %210, %195
  br label %212

212:                                              ; preds = %211, %188
  br label %442

213:                                              ; preds = %8
  %214 = load i32, i32* %12, align 4
  %215 = icmp eq i32 %214, 576
  br i1 %215, label %216, label %222

216:                                              ; preds = %213
  %217 = load i16*, i16** @ModeIndex_1024x576, align 8
  %218 = load i32, i32* %13, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i16, i16* %217, i64 %219
  %221 = load i16, i16* %220, align 2
  store i16 %221, i16* %17, align 2
  br label %247

222:                                              ; preds = %213
  %223 = load i32, i32* %12, align 4
  %224 = icmp eq i32 %223, 768
  br i1 %224, label %225, label %231

225:                                              ; preds = %222
  %226 = load i16*, i16** @ModeIndex_1024x768, align 8
  %227 = load i32, i32* %13, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i16, i16* %226, i64 %228
  %230 = load i16, i16* %229, align 2
  store i16 %230, i16* %17, align 2
  br label %246

231:                                              ; preds = %222
  %232 = load i32, i32* %9, align 4
  %233 = load i32, i32* @SIS_300_VGA, align 4
  %234 = icmp eq i32 %232, %233
  br i1 %234, label %235, label %245

235:                                              ; preds = %231
  %236 = load i32, i32* %12, align 4
  %237 = icmp eq i32 %236, 600
  br i1 %237, label %238, label %244

238:                                              ; preds = %235
  %239 = load i16*, i16** @ModeIndex_1024x600, align 8
  %240 = load i32, i32* %13, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i16, i16* %239, i64 %241
  %243 = load i16, i16* %242, align 2
  store i16 %243, i16* %17, align 2
  br label %244

244:                                              ; preds = %238, %235
  br label %245

245:                                              ; preds = %244, %231
  br label %246

246:                                              ; preds = %245, %225
  br label %247

247:                                              ; preds = %246, %216
  br label %442

248:                                              ; preds = %8
  %249 = load i32, i32* %12, align 4
  %250 = icmp eq i32 %249, 864
  br i1 %250, label %251, label %257

251:                                              ; preds = %248
  %252 = load i16*, i16** @ModeIndex_1152x864, align 8
  %253 = load i32, i32* %13, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i16, i16* %252, i64 %254
  %256 = load i16, i16* %255, align 2
  store i16 %256, i16* %17, align 2
  br label %257

257:                                              ; preds = %251, %248
  %258 = load i32, i32* %9, align 4
  %259 = load i32, i32* @SIS_300_VGA, align 4
  %260 = icmp eq i32 %258, %259
  br i1 %260, label %261, label %271

261:                                              ; preds = %257
  %262 = load i32, i32* %12, align 4
  %263 = icmp eq i32 %262, 768
  br i1 %263, label %264, label %270

264:                                              ; preds = %261
  %265 = load i16*, i16** @ModeIndex_1152x768, align 8
  %266 = load i32, i32* %13, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i16, i16* %265, i64 %267
  %269 = load i16, i16* %268, align 2
  store i16 %269, i16* %17, align 2
  br label %270

270:                                              ; preds = %264, %261
  br label %271

271:                                              ; preds = %270, %257
  br label %442

272:                                              ; preds = %8
  %273 = load i32, i32* %12, align 4
  switch i32 %273, label %331 [
    i32 720, label %274
    i32 768, label %280
    i32 800, label %297
    i32 854, label %308
    i32 960, label %319
    i32 1024, label %325
  ]

274:                                              ; preds = %272
  %275 = load i16*, i16** @ModeIndex_1280x720, align 8
  %276 = load i32, i32* %13, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds i16, i16* %275, i64 %277
  %279 = load i16, i16* %278, align 2
  store i16 %279, i16* %17, align 2
  br label %331

280:                                              ; preds = %272
  %281 = load i32, i32* %9, align 4
  %282 = load i32, i32* @SIS_300_VGA, align 4
  %283 = icmp eq i32 %281, %282
  br i1 %283, label %284, label %290

284:                                              ; preds = %280
  %285 = load i16*, i16** @ModeIndex_300_1280x768, align 8
  %286 = load i32, i32* %13, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i16, i16* %285, i64 %287
  %289 = load i16, i16* %288, align 2
  store i16 %289, i16* %17, align 2
  br label %296

290:                                              ; preds = %280
  %291 = load i16*, i16** @ModeIndex_310_1280x768, align 8
  %292 = load i32, i32* %13, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i16, i16* %291, i64 %293
  %295 = load i16, i16* %294, align 2
  store i16 %295, i16* %17, align 2
  br label %296

296:                                              ; preds = %290, %284
  br label %331

297:                                              ; preds = %272
  %298 = load i32, i32* %9, align 4
  %299 = load i32, i32* @SIS_315_VGA, align 4
  %300 = icmp eq i32 %298, %299
  br i1 %300, label %301, label %307

301:                                              ; preds = %297
  %302 = load i16*, i16** @ModeIndex_1280x800, align 8
  %303 = load i32, i32* %13, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i16, i16* %302, i64 %304
  %306 = load i16, i16* %305, align 2
  store i16 %306, i16* %17, align 2
  br label %307

307:                                              ; preds = %301, %297
  br label %331

308:                                              ; preds = %272
  %309 = load i32, i32* %9, align 4
  %310 = load i32, i32* @SIS_315_VGA, align 4
  %311 = icmp eq i32 %309, %310
  br i1 %311, label %312, label %318

312:                                              ; preds = %308
  %313 = load i16*, i16** @ModeIndex_1280x854, align 8
  %314 = load i32, i32* %13, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i16, i16* %313, i64 %315
  %317 = load i16, i16* %316, align 2
  store i16 %317, i16* %17, align 2
  br label %318

318:                                              ; preds = %312, %308
  br label %331

319:                                              ; preds = %272
  %320 = load i16*, i16** @ModeIndex_1280x960, align 8
  %321 = load i32, i32* %13, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i16, i16* %320, i64 %322
  %324 = load i16, i16* %323, align 2
  store i16 %324, i16* %17, align 2
  br label %331

325:                                              ; preds = %272
  %326 = load i16*, i16** @ModeIndex_1280x1024, align 8
  %327 = load i32, i32* %13, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds i16, i16* %326, i64 %328
  %330 = load i16, i16* %329, align 2
  store i16 %330, i16* %17, align 2
  br label %331

331:                                              ; preds = %272, %325, %319, %318, %307, %296, %274
  br label %442

332:                                              ; preds = %8
  %333 = load i32, i32* %12, align 4
  %334 = icmp eq i32 %333, 768
  br i1 %334, label %335, label %341

335:                                              ; preds = %332
  %336 = load i16*, i16** @ModeIndex_1360x768, align 8
  %337 = load i32, i32* %13, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i16, i16* %336, i64 %338
  %340 = load i16, i16* %339, align 2
  store i16 %340, i16* %17, align 2
  br label %341

341:                                              ; preds = %335, %332
  %342 = load i32, i32* %9, align 4
  %343 = load i32, i32* @SIS_300_VGA, align 4
  %344 = icmp eq i32 %342, %343
  br i1 %344, label %345, label %355

345:                                              ; preds = %341
  %346 = load i32, i32* %12, align 4
  %347 = icmp eq i32 %346, 1024
  br i1 %347, label %348, label %354

348:                                              ; preds = %345
  %349 = load i16*, i16** @ModeIndex_300_1360x1024, align 8
  %350 = load i32, i32* %13, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i16, i16* %349, i64 %351
  %353 = load i16, i16* %352, align 2
  store i16 %353, i16* %17, align 2
  br label %354

354:                                              ; preds = %348, %345
  br label %355

355:                                              ; preds = %354, %341
  br label %442

356:                                              ; preds = %8
  %357 = load i32, i32* %9, align 4
  %358 = load i32, i32* @SIS_315_VGA, align 4
  %359 = icmp eq i32 %357, %358
  br i1 %359, label %360, label %370

360:                                              ; preds = %356
  %361 = load i32, i32* %12, align 4
  %362 = icmp eq i32 %361, 1050
  br i1 %362, label %363, label %369

363:                                              ; preds = %360
  %364 = load i16*, i16** @ModeIndex_1400x1050, align 8
  %365 = load i32, i32* %13, align 4
  %366 = sext i32 %365 to i64
  %367 = getelementptr inbounds i16, i16* %364, i64 %366
  %368 = load i16, i16* %367, align 2
  store i16 %368, i16* %17, align 2
  br label %369

369:                                              ; preds = %363, %360
  br label %370

370:                                              ; preds = %369, %356
  br label %442

371:                                              ; preds = %8
  %372 = load i32, i32* %12, align 4
  %373 = icmp eq i32 %372, 1200
  br i1 %373, label %374, label %380

374:                                              ; preds = %371
  %375 = load i16*, i16** @ModeIndex_1600x1200, align 8
  %376 = load i32, i32* %13, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds i16, i16* %375, i64 %377
  %379 = load i16, i16* %378, align 2
  store i16 %379, i16* %17, align 2
  br label %380

380:                                              ; preds = %374, %371
  br label %442

381:                                              ; preds = %8
  %382 = load i32, i32* %9, align 4
  %383 = load i32, i32* @SIS_315_VGA, align 4
  %384 = icmp eq i32 %382, %383
  br i1 %384, label %385, label %395

385:                                              ; preds = %381
  %386 = load i32, i32* %12, align 4
  %387 = icmp eq i32 %386, 1050
  br i1 %387, label %388, label %394

388:                                              ; preds = %385
  %389 = load i16*, i16** @ModeIndex_1680x1050, align 8
  %390 = load i32, i32* %13, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds i16, i16* %389, i64 %391
  %393 = load i16, i16* %392, align 2
  store i16 %393, i16* %17, align 2
  br label %394

394:                                              ; preds = %388, %385
  br label %395

395:                                              ; preds = %394, %381
  br label %442

396:                                              ; preds = %8
  %397 = load i32, i32* %12, align 4
  %398 = icmp eq i32 %397, 1440
  br i1 %398, label %399, label %405

399:                                              ; preds = %396
  %400 = load i16*, i16** @ModeIndex_1920x1440, align 8
  %401 = load i32, i32* %13, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds i16, i16* %400, i64 %402
  %404 = load i16, i16* %403, align 2
  store i16 %404, i16* %17, align 2
  br label %420

405:                                              ; preds = %396
  %406 = load i32, i32* %9, align 4
  %407 = load i32, i32* @SIS_315_VGA, align 4
  %408 = icmp eq i32 %406, %407
  br i1 %408, label %409, label %419

409:                                              ; preds = %405
  %410 = load i32, i32* %12, align 4
  %411 = icmp eq i32 %410, 1080
  br i1 %411, label %412, label %418

412:                                              ; preds = %409
  %413 = load i16*, i16** @ModeIndex_1920x1080, align 8
  %414 = load i32, i32* %13, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds i16, i16* %413, i64 %415
  %417 = load i16, i16* %416, align 2
  store i16 %417, i16* %17, align 2
  br label %418

418:                                              ; preds = %412, %409
  br label %419

419:                                              ; preds = %418, %405
  br label %420

420:                                              ; preds = %419, %399
  br label %442

421:                                              ; preds = %8
  %422 = load i32, i32* %12, align 4
  %423 = icmp eq i32 %422, 1536
  br i1 %423, label %424, label %441

424:                                              ; preds = %421
  %425 = load i32, i32* %9, align 4
  %426 = load i32, i32* @SIS_300_VGA, align 4
  %427 = icmp eq i32 %425, %426
  br i1 %427, label %428, label %434

428:                                              ; preds = %424
  %429 = load i16*, i16** @ModeIndex_300_2048x1536, align 8
  %430 = load i32, i32* %13, align 4
  %431 = sext i32 %430 to i64
  %432 = getelementptr inbounds i16, i16* %429, i64 %431
  %433 = load i16, i16* %432, align 2
  store i16 %433, i16* %17, align 2
  br label %440

434:                                              ; preds = %424
  %435 = load i16*, i16** @ModeIndex_310_2048x1536, align 8
  %436 = load i32, i32* %13, align 4
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds i16, i16* %435, i64 %437
  %439 = load i16, i16* %438, align 2
  store i16 %439, i16* %17, align 2
  br label %440

440:                                              ; preds = %434, %428
  br label %441

441:                                              ; preds = %440, %421
  br label %442

442:                                              ; preds = %8, %441, %420, %395, %380, %370, %355, %331, %271, %247, %212, %187, %177, %167, %147, %137, %117, %97, %75, %53
  %443 = load i16, i16* %17, align 2
  ret i16 %443
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
