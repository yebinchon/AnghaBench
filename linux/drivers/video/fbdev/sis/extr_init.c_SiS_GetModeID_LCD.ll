; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init.c_SiS_GetModeID_LCD.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_init.c_SiS_GetModeID_LCD.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VB2_LVDS = common dso_local global i32 0, align 4
@VB2_30xBDH = common dso_local global i32 0, align 4
@CUT_PANEL848 = common dso_local global i16 0, align 2
@CUT_PANEL856 = common dso_local global i16 0, align 2
@ModeIndex_320x200 = common dso_local global i16* null, align 8
@ModeIndex_320x240 = common dso_local global i16* null, align 8
@SIS_315_VGA = common dso_local global i32 0, align 4
@ModeIndex_320x240_FSTN = common dso_local global i16* null, align 8
@SIS_300_VGA = common dso_local global i32 0, align 4
@VB2_TRUMPION = common dso_local global i32 0, align 4
@ModeIndex_400x300 = common dso_local global i16* null, align 8
@ModeIndex_512x384 = common dso_local global i16* null, align 8
@ModeIndex_640x480 = common dso_local global i16* null, align 8
@ModeIndex_640x400 = common dso_local global i16* null, align 8
@ModeIndex_800x600 = common dso_local global i16* null, align 8
@ModeIndex_848x480 = common dso_local global i16* null, align 8
@ModeIndex_856x480 = common dso_local global i16* null, align 8
@ModeIndex_1024x768 = common dso_local global i16* null, align 8
@ModeIndex_1024x600 = common dso_local global i16* null, align 8
@ModeIndex_1152x768 = common dso_local global i16* null, align 8
@ModeIndex_1280x1024 = common dso_local global i16* null, align 8
@ModeIndex_310_1280x768 = common dso_local global i16* null, align 8
@CUT_BARCO1366 = common dso_local global i16 0, align 2
@ModeIndex_300_1360x1024 = common dso_local global i16* null, align 8
@ModeIndex_1360x768 = common dso_local global i16* null, align 8
@ModeIndex_1400x1050 = common dso_local global i16* null, align 8
@ModeIndex_1600x1200 = common dso_local global i16* null, align 8
@VB2_SISBRIDGE = common dso_local global i32 0, align 4
@ModeIndex_720x480 = common dso_local global i16* null, align 8
@ModeIndex_720x576 = common dso_local global i16* null, align 8
@ModeIndex_768x576 = common dso_local global i16* null, align 8
@ModeIndex_800x480 = common dso_local global i16* null, align 8
@ModeIndex_960x540 = common dso_local global i16* null, align 8
@ModeIndex_960x600 = common dso_local global i16* null, align 8
@ModeIndex_1024x576 = common dso_local global i16* null, align 8
@ModeIndex_1152x864 = common dso_local global i16* null, align 8
@ModeIndex_1280x720 = common dso_local global i16* null, align 8
@ModeIndex_300_1280x768 = common dso_local global i16* null, align 8
@ModeIndex_1280x800 = common dso_local global i16* null, align 8
@ModeIndex_1280x854 = common dso_local global i16* null, align 8
@ModeIndex_1280x960 = common dso_local global i16* null, align 8
@VB2_LCDOVER1280BRIDGE = common dso_local global i32 0, align 4
@ModeIndex_1680x1050 = common dso_local global i16* null, align 8
@VB2_LCDOVER1600BRIDGE = common dso_local global i32 0, align 4
@ModeIndex_1920x1440 = common dso_local global i16* null, align 8
@ModeIndex_310_2048x1536 = common dso_local global i16* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i16 @SiS_GetModeID_LCD(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i16 zeroext %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i16, align 2
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i16, align 2
  store i32 %0, i32* %11, align 4
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i16 %6, i16* %17, align 2
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  store i16 0, i16* %21, align 2
  %22 = load i32, i32* %20, align 4
  %23 = load i32, i32* @VB2_LVDS, align 4
  %24 = load i32, i32* @VB2_30xBDH, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %22, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %378

28:                                               ; preds = %10
  %29 = load i32, i32* %13, align 4
  switch i32 %29, label %377 [
    i32 320, label %30
    i32 400, label %82
    i32 512, label %115
    i32 640, label %158
    i32 800, label %191
    i32 848, label %201
    i32 856, label %218
    i32 1024, label %235
    i32 1152, label %263
    i32 1280, label %281
    i32 1360, label %309
    i32 1400, label %347
    i32 1600, label %362
  ]

30:                                               ; preds = %28
  %31 = load i16, i16* %17, align 2
  %32 = zext i16 %31 to i32
  %33 = load i16, i16* @CUT_PANEL848, align 2
  %34 = zext i16 %33 to i32
  %35 = icmp ne i32 %32, %34
  br i1 %35, label %36, label %81

36:                                               ; preds = %30
  %37 = load i16, i16* %17, align 2
  %38 = zext i16 %37 to i32
  %39 = load i16, i16* @CUT_PANEL856, align 2
  %40 = zext i16 %39 to i32
  %41 = icmp ne i32 %38, %40
  br i1 %41, label %42, label %81

42:                                               ; preds = %36
  %43 = load i32, i32* %14, align 4
  %44 = icmp eq i32 %43, 200
  br i1 %44, label %45, label %55

45:                                               ; preds = %42
  %46 = load i32, i32* %16, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %45
  %49 = load i16*, i16** @ModeIndex_320x200, align 8
  %50 = load i32, i32* %15, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i16, i16* %49, i64 %51
  %53 = load i16, i16* %52, align 2
  store i16 %53, i16* %21, align 2
  br label %54

54:                                               ; preds = %48, %45
  br label %80

55:                                               ; preds = %42
  %56 = load i32, i32* %14, align 4
  %57 = icmp eq i32 %56, 240
  br i1 %57, label %58, label %79

58:                                               ; preds = %55
  %59 = load i32, i32* %16, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %58
  %62 = load i16*, i16** @ModeIndex_320x240, align 8
  %63 = load i32, i32* %15, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i16, i16* %62, i64 %64
  %66 = load i16, i16* %65, align 2
  store i16 %66, i16* %21, align 2
  br label %78

67:                                               ; preds = %58
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* @SIS_315_VGA, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %67
  %72 = load i16*, i16** @ModeIndex_320x240_FSTN, align 8
  %73 = load i32, i32* %15, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i16, i16* %72, i64 %74
  %76 = load i16, i16* %75, align 2
  store i16 %76, i16* %21, align 2
  br label %77

77:                                               ; preds = %71, %67
  br label %78

78:                                               ; preds = %77, %61
  br label %79

79:                                               ; preds = %78, %55
  br label %80

80:                                               ; preds = %79, %54
  br label %81

81:                                               ; preds = %80, %36, %30
  br label %377

82:                                               ; preds = %28
  %83 = load i16, i16* %17, align 2
  %84 = zext i16 %83 to i32
  %85 = load i16, i16* @CUT_PANEL848, align 2
  %86 = zext i16 %85 to i32
  %87 = icmp ne i32 %84, %86
  br i1 %87, label %88, label %114

88:                                               ; preds = %82
  %89 = load i16, i16* %17, align 2
  %90 = zext i16 %89 to i32
  %91 = load i16, i16* @CUT_PANEL856, align 2
  %92 = zext i16 %91 to i32
  %93 = icmp ne i32 %90, %92
  br i1 %93, label %94, label %114

94:                                               ; preds = %88
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* @SIS_300_VGA, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %94
  %99 = load i32, i32* %20, align 4
  %100 = load i32, i32* @VB2_TRUMPION, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %113, label %103

103:                                              ; preds = %98, %94
  %104 = load i32, i32* %14, align 4
  %105 = icmp eq i32 %104, 300
  br i1 %105, label %106, label %112

106:                                              ; preds = %103
  %107 = load i16*, i16** @ModeIndex_400x300, align 8
  %108 = load i32, i32* %15, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i16, i16* %107, i64 %109
  %111 = load i16, i16* %110, align 2
  store i16 %111, i16* %21, align 2
  br label %112

112:                                              ; preds = %106, %103
  br label %113

113:                                              ; preds = %112, %98
  br label %114

114:                                              ; preds = %113, %88, %82
  br label %377

115:                                              ; preds = %28
  %116 = load i16, i16* %17, align 2
  %117 = zext i16 %116 to i32
  %118 = load i16, i16* @CUT_PANEL848, align 2
  %119 = zext i16 %118 to i32
  %120 = icmp ne i32 %117, %119
  br i1 %120, label %121, label %157

121:                                              ; preds = %115
  %122 = load i16, i16* %17, align 2
  %123 = zext i16 %122 to i32
  %124 = load i16, i16* @CUT_PANEL856, align 2
  %125 = zext i16 %124 to i32
  %126 = icmp ne i32 %123, %125
  br i1 %126, label %127, label %157

127:                                              ; preds = %121
  %128 = load i32, i32* %11, align 4
  %129 = load i32, i32* @SIS_300_VGA, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %136

131:                                              ; preds = %127
  %132 = load i32, i32* %20, align 4
  %133 = load i32, i32* @VB2_TRUMPION, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %156, label %136

136:                                              ; preds = %131, %127
  %137 = load i32, i32* %18, align 4
  %138 = icmp sge i32 %137, 1024
  br i1 %138, label %139, label %155

139:                                              ; preds = %136
  %140 = load i32, i32* %18, align 4
  %141 = icmp ne i32 %140, 1152
  br i1 %141, label %142, label %155

142:                                              ; preds = %139
  %143 = load i32, i32* %19, align 4
  %144 = icmp sge i32 %143, 768
  br i1 %144, label %145, label %155

145:                                              ; preds = %142
  %146 = load i32, i32* %14, align 4
  %147 = icmp eq i32 %146, 384
  br i1 %147, label %148, label %154

148:                                              ; preds = %145
  %149 = load i16*, i16** @ModeIndex_512x384, align 8
  %150 = load i32, i32* %15, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i16, i16* %149, i64 %151
  %153 = load i16, i16* %152, align 2
  store i16 %153, i16* %21, align 2
  br label %154

154:                                              ; preds = %148, %145
  br label %155

155:                                              ; preds = %154, %142, %139, %136
  br label %156

156:                                              ; preds = %155, %131
  br label %157

157:                                              ; preds = %156, %121, %115
  br label %377

158:                                              ; preds = %28
  %159 = load i32, i32* %14, align 4
  %160 = icmp eq i32 %159, 480
  br i1 %160, label %161, label %167

161:                                              ; preds = %158
  %162 = load i16*, i16** @ModeIndex_640x480, align 8
  %163 = load i32, i32* %15, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i16, i16* %162, i64 %164
  %166 = load i16, i16* %165, align 2
  store i16 %166, i16* %21, align 2
  br label %190

167:                                              ; preds = %158
  %168 = load i32, i32* %14, align 4
  %169 = icmp eq i32 %168, 400
  br i1 %169, label %170, label %189

170:                                              ; preds = %167
  %171 = load i16, i16* %17, align 2
  %172 = zext i16 %171 to i32
  %173 = load i16, i16* @CUT_PANEL848, align 2
  %174 = zext i16 %173 to i32
  %175 = icmp ne i32 %172, %174
  br i1 %175, label %176, label %188

176:                                              ; preds = %170
  %177 = load i16, i16* %17, align 2
  %178 = zext i16 %177 to i32
  %179 = load i16, i16* @CUT_PANEL856, align 2
  %180 = zext i16 %179 to i32
  %181 = icmp ne i32 %178, %180
  br i1 %181, label %182, label %188

182:                                              ; preds = %176
  %183 = load i16*, i16** @ModeIndex_640x400, align 8
  %184 = load i32, i32* %15, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i16, i16* %183, i64 %185
  %187 = load i16, i16* %186, align 2
  store i16 %187, i16* %21, align 2
  br label %188

188:                                              ; preds = %182, %176, %170
  br label %189

189:                                              ; preds = %188, %167
  br label %190

190:                                              ; preds = %189, %161
  br label %377

191:                                              ; preds = %28
  %192 = load i32, i32* %14, align 4
  %193 = icmp eq i32 %192, 600
  br i1 %193, label %194, label %200

194:                                              ; preds = %191
  %195 = load i16*, i16** @ModeIndex_800x600, align 8
  %196 = load i32, i32* %15, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i16, i16* %195, i64 %197
  %199 = load i16, i16* %198, align 2
  store i16 %199, i16* %21, align 2
  br label %200

200:                                              ; preds = %194, %191
  br label %377

201:                                              ; preds = %28
  %202 = load i16, i16* %17, align 2
  %203 = zext i16 %202 to i32
  %204 = load i16, i16* @CUT_PANEL848, align 2
  %205 = zext i16 %204 to i32
  %206 = icmp eq i32 %203, %205
  br i1 %206, label %207, label %217

207:                                              ; preds = %201
  %208 = load i32, i32* %14, align 4
  %209 = icmp eq i32 %208, 480
  br i1 %209, label %210, label %216

210:                                              ; preds = %207
  %211 = load i16*, i16** @ModeIndex_848x480, align 8
  %212 = load i32, i32* %15, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i16, i16* %211, i64 %213
  %215 = load i16, i16* %214, align 2
  store i16 %215, i16* %21, align 2
  br label %216

216:                                              ; preds = %210, %207
  br label %217

217:                                              ; preds = %216, %201
  br label %377

218:                                              ; preds = %28
  %219 = load i16, i16* %17, align 2
  %220 = zext i16 %219 to i32
  %221 = load i16, i16* @CUT_PANEL856, align 2
  %222 = zext i16 %221 to i32
  %223 = icmp eq i32 %220, %222
  br i1 %223, label %224, label %234

224:                                              ; preds = %218
  %225 = load i32, i32* %14, align 4
  %226 = icmp eq i32 %225, 480
  br i1 %226, label %227, label %233

227:                                              ; preds = %224
  %228 = load i16*, i16** @ModeIndex_856x480, align 8
  %229 = load i32, i32* %15, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i16, i16* %228, i64 %230
  %232 = load i16, i16* %231, align 2
  store i16 %232, i16* %21, align 2
  br label %233

233:                                              ; preds = %227, %224
  br label %234

234:                                              ; preds = %233, %218
  br label %377

235:                                              ; preds = %28
  %236 = load i32, i32* %14, align 4
  %237 = icmp eq i32 %236, 768
  br i1 %237, label %238, label %244

238:                                              ; preds = %235
  %239 = load i16*, i16** @ModeIndex_1024x768, align 8
  %240 = load i32, i32* %15, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i16, i16* %239, i64 %241
  %243 = load i16, i16* %242, align 2
  store i16 %243, i16* %21, align 2
  br label %262

244:                                              ; preds = %235
  %245 = load i32, i32* %11, align 4
  %246 = load i32, i32* @SIS_300_VGA, align 4
  %247 = icmp eq i32 %245, %246
  br i1 %247, label %248, label %261

248:                                              ; preds = %244
  %249 = load i32, i32* %14, align 4
  %250 = icmp eq i32 %249, 600
  br i1 %250, label %251, label %260

251:                                              ; preds = %248
  %252 = load i32, i32* %19, align 4
  %253 = icmp eq i32 %252, 600
  br i1 %253, label %254, label %260

254:                                              ; preds = %251
  %255 = load i16*, i16** @ModeIndex_1024x600, align 8
  %256 = load i32, i32* %15, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i16, i16* %255, i64 %257
  %259 = load i16, i16* %258, align 2
  store i16 %259, i16* %21, align 2
  br label %260

260:                                              ; preds = %254, %251, %248
  br label %261

261:                                              ; preds = %260, %244
  br label %262

262:                                              ; preds = %261, %238
  br label %377

263:                                              ; preds = %28
  %264 = load i32, i32* %11, align 4
  %265 = load i32, i32* @SIS_300_VGA, align 4
  %266 = icmp eq i32 %264, %265
  br i1 %266, label %267, label %280

267:                                              ; preds = %263
  %268 = load i32, i32* %14, align 4
  %269 = icmp eq i32 %268, 768
  br i1 %269, label %270, label %279

270:                                              ; preds = %267
  %271 = load i32, i32* %19, align 4
  %272 = icmp eq i32 %271, 768
  br i1 %272, label %273, label %279

273:                                              ; preds = %270
  %274 = load i16*, i16** @ModeIndex_1152x768, align 8
  %275 = load i32, i32* %15, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i16, i16* %274, i64 %276
  %278 = load i16, i16* %277, align 2
  store i16 %278, i16* %21, align 2
  br label %279

279:                                              ; preds = %273, %270, %267
  br label %280

280:                                              ; preds = %279, %263
  br label %377

281:                                              ; preds = %28
  %282 = load i32, i32* %14, align 4
  %283 = icmp eq i32 %282, 1024
  br i1 %283, label %284, label %290

284:                                              ; preds = %281
  %285 = load i16*, i16** @ModeIndex_1280x1024, align 8
  %286 = load i32, i32* %15, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i16, i16* %285, i64 %287
  %289 = load i16, i16* %288, align 2
  store i16 %289, i16* %21, align 2
  br label %308

290:                                              ; preds = %281
  %291 = load i32, i32* %11, align 4
  %292 = load i32, i32* @SIS_315_VGA, align 4
  %293 = icmp eq i32 %291, %292
  br i1 %293, label %294, label %307

294:                                              ; preds = %290
  %295 = load i32, i32* %14, align 4
  %296 = icmp eq i32 %295, 768
  br i1 %296, label %297, label %306

297:                                              ; preds = %294
  %298 = load i32, i32* %19, align 4
  %299 = icmp eq i32 %298, 768
  br i1 %299, label %300, label %306

300:                                              ; preds = %297
  %301 = load i16*, i16** @ModeIndex_310_1280x768, align 8
  %302 = load i32, i32* %15, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i16, i16* %301, i64 %303
  %305 = load i16, i16* %304, align 2
  store i16 %305, i16* %21, align 2
  br label %306

306:                                              ; preds = %300, %297, %294
  br label %307

307:                                              ; preds = %306, %290
  br label %308

308:                                              ; preds = %307, %284
  br label %377

309:                                              ; preds = %28
  %310 = load i32, i32* %11, align 4
  %311 = load i32, i32* @SIS_300_VGA, align 4
  %312 = icmp eq i32 %310, %311
  br i1 %312, label %313, label %330

313:                                              ; preds = %309
  %314 = load i16, i16* %17, align 2
  %315 = zext i16 %314 to i32
  %316 = load i16, i16* @CUT_BARCO1366, align 2
  %317 = zext i16 %316 to i32
  %318 = icmp eq i32 %315, %317
  br i1 %318, label %319, label %329

319:                                              ; preds = %313
  %320 = load i32, i32* %14, align 4
  %321 = icmp eq i32 %320, 1024
  br i1 %321, label %322, label %328

322:                                              ; preds = %319
  %323 = load i16*, i16** @ModeIndex_300_1360x1024, align 8
  %324 = load i32, i32* %15, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds i16, i16* %323, i64 %325
  %327 = load i16, i16* %326, align 2
  store i16 %327, i16* %21, align 2
  br label %328

328:                                              ; preds = %322, %319
  br label %329

329:                                              ; preds = %328, %313
  br label %330

330:                                              ; preds = %329, %309
  %331 = load i16, i16* %17, align 2
  %332 = zext i16 %331 to i32
  %333 = load i16, i16* @CUT_PANEL848, align 2
  %334 = zext i16 %333 to i32
  %335 = icmp eq i32 %332, %334
  br i1 %335, label %336, label %346

336:                                              ; preds = %330
  %337 = load i32, i32* %14, align 4
  %338 = icmp eq i32 %337, 768
  br i1 %338, label %339, label %345

339:                                              ; preds = %336
  %340 = load i16*, i16** @ModeIndex_1360x768, align 8
  %341 = load i32, i32* %15, align 4
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i16, i16* %340, i64 %342
  %344 = load i16, i16* %343, align 2
  store i16 %344, i16* %21, align 2
  br label %345

345:                                              ; preds = %339, %336
  br label %346

346:                                              ; preds = %345, %330
  br label %377

347:                                              ; preds = %28
  %348 = load i32, i32* %11, align 4
  %349 = load i32, i32* @SIS_315_VGA, align 4
  %350 = icmp eq i32 %348, %349
  br i1 %350, label %351, label %361

351:                                              ; preds = %347
  %352 = load i32, i32* %14, align 4
  %353 = icmp eq i32 %352, 1050
  br i1 %353, label %354, label %360

354:                                              ; preds = %351
  %355 = load i16*, i16** @ModeIndex_1400x1050, align 8
  %356 = load i32, i32* %15, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i16, i16* %355, i64 %357
  %359 = load i16, i16* %358, align 2
  store i16 %359, i16* %21, align 2
  br label %360

360:                                              ; preds = %354, %351
  br label %361

361:                                              ; preds = %360, %347
  br label %377

362:                                              ; preds = %28
  %363 = load i32, i32* %11, align 4
  %364 = load i32, i32* @SIS_315_VGA, align 4
  %365 = icmp eq i32 %363, %364
  br i1 %365, label %366, label %376

366:                                              ; preds = %362
  %367 = load i32, i32* %14, align 4
  %368 = icmp eq i32 %367, 1200
  br i1 %368, label %369, label %375

369:                                              ; preds = %366
  %370 = load i16*, i16** @ModeIndex_1600x1200, align 8
  %371 = load i32, i32* %15, align 4
  %372 = sext i32 %371 to i64
  %373 = getelementptr inbounds i16, i16* %370, i64 %372
  %374 = load i16, i16* %373, align 2
  store i16 %374, i16* %21, align 2
  br label %375

375:                                              ; preds = %369, %366
  br label %376

376:                                              ; preds = %375, %362
  br label %377

377:                                              ; preds = %28, %376, %361, %346, %308, %280, %262, %234, %217, %200, %190, %157, %114, %81
  br label %802

378:                                              ; preds = %10
  %379 = load i32, i32* %20, align 4
  %380 = load i32, i32* @VB2_SISBRIDGE, align 4
  %381 = and i32 %379, %380
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %801

383:                                              ; preds = %378
  %384 = load i32, i32* %13, align 4
  switch i32 %384, label %800 [
    i32 320, label %385
    i32 400, label %405
    i32 512, label %422
    i32 640, label %442
    i32 720, label %462
    i32 768, label %487
    i32 800, label %502
    i32 848, label %526
    i32 856, label %541
    i32 960, label %556
    i32 1024, label %581
    i32 1152, label %605
    i32 1280, label %620
    i32 1360, label %680
    i32 1400, label %695
    i32 1600, label %716
    i32 1680, label %737
    i32 1920, label %758
    i32 2048, label %779
  ]

385:                                              ; preds = %383
  %386 = load i32, i32* %14, align 4
  %387 = icmp eq i32 %386, 200
  br i1 %387, label %388, label %394

388:                                              ; preds = %385
  %389 = load i16*, i16** @ModeIndex_320x200, align 8
  %390 = load i32, i32* %15, align 4
  %391 = sext i32 %390 to i64
  %392 = getelementptr inbounds i16, i16* %389, i64 %391
  %393 = load i16, i16* %392, align 2
  store i16 %393, i16* %21, align 2
  br label %404

394:                                              ; preds = %385
  %395 = load i32, i32* %14, align 4
  %396 = icmp eq i32 %395, 240
  br i1 %396, label %397, label %403

397:                                              ; preds = %394
  %398 = load i16*, i16** @ModeIndex_320x240, align 8
  %399 = load i32, i32* %15, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds i16, i16* %398, i64 %400
  %402 = load i16, i16* %401, align 2
  store i16 %402, i16* %21, align 2
  br label %403

403:                                              ; preds = %397, %394
  br label %404

404:                                              ; preds = %403, %388
  br label %800

405:                                              ; preds = %383
  %406 = load i32, i32* %18, align 4
  %407 = icmp sge i32 %406, 800
  br i1 %407, label %408, label %421

408:                                              ; preds = %405
  %409 = load i32, i32* %19, align 4
  %410 = icmp sge i32 %409, 600
  br i1 %410, label %411, label %421

411:                                              ; preds = %408
  %412 = load i32, i32* %14, align 4
  %413 = icmp eq i32 %412, 300
  br i1 %413, label %414, label %420

414:                                              ; preds = %411
  %415 = load i16*, i16** @ModeIndex_400x300, align 8
  %416 = load i32, i32* %15, align 4
  %417 = sext i32 %416 to i64
  %418 = getelementptr inbounds i16, i16* %415, i64 %417
  %419 = load i16, i16* %418, align 2
  store i16 %419, i16* %21, align 2
  br label %420

420:                                              ; preds = %414, %411
  br label %421

421:                                              ; preds = %420, %408, %405
  br label %800

422:                                              ; preds = %383
  %423 = load i32, i32* %18, align 4
  %424 = icmp sge i32 %423, 1024
  br i1 %424, label %425, label %441

425:                                              ; preds = %422
  %426 = load i32, i32* %19, align 4
  %427 = icmp sge i32 %426, 768
  br i1 %427, label %428, label %441

428:                                              ; preds = %425
  %429 = load i32, i32* %18, align 4
  %430 = icmp ne i32 %429, 1152
  br i1 %430, label %431, label %441

431:                                              ; preds = %428
  %432 = load i32, i32* %14, align 4
  %433 = icmp eq i32 %432, 384
  br i1 %433, label %434, label %440

434:                                              ; preds = %431
  %435 = load i16*, i16** @ModeIndex_512x384, align 8
  %436 = load i32, i32* %15, align 4
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds i16, i16* %435, i64 %437
  %439 = load i16, i16* %438, align 2
  store i16 %439, i16* %21, align 2
  br label %440

440:                                              ; preds = %434, %431
  br label %441

441:                                              ; preds = %440, %428, %425, %422
  br label %800

442:                                              ; preds = %383
  %443 = load i32, i32* %14, align 4
  %444 = icmp eq i32 %443, 480
  br i1 %444, label %445, label %451

445:                                              ; preds = %442
  %446 = load i16*, i16** @ModeIndex_640x480, align 8
  %447 = load i32, i32* %15, align 4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds i16, i16* %446, i64 %448
  %450 = load i16, i16* %449, align 2
  store i16 %450, i16* %21, align 2
  br label %461

451:                                              ; preds = %442
  %452 = load i32, i32* %14, align 4
  %453 = icmp eq i32 %452, 400
  br i1 %453, label %454, label %460

454:                                              ; preds = %451
  %455 = load i16*, i16** @ModeIndex_640x400, align 8
  %456 = load i32, i32* %15, align 4
  %457 = sext i32 %456 to i64
  %458 = getelementptr inbounds i16, i16* %455, i64 %457
  %459 = load i16, i16* %458, align 2
  store i16 %459, i16* %21, align 2
  br label %460

460:                                              ; preds = %454, %451
  br label %461

461:                                              ; preds = %460, %445
  br label %800

462:                                              ; preds = %383
  %463 = load i32, i32* %11, align 4
  %464 = load i32, i32* @SIS_315_VGA, align 4
  %465 = icmp eq i32 %463, %464
  br i1 %465, label %466, label %486

466:                                              ; preds = %462
  %467 = load i32, i32* %14, align 4
  %468 = icmp eq i32 %467, 480
  br i1 %468, label %469, label %475

469:                                              ; preds = %466
  %470 = load i16*, i16** @ModeIndex_720x480, align 8
  %471 = load i32, i32* %15, align 4
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds i16, i16* %470, i64 %472
  %474 = load i16, i16* %473, align 2
  store i16 %474, i16* %21, align 2
  br label %485

475:                                              ; preds = %466
  %476 = load i32, i32* %14, align 4
  %477 = icmp eq i32 %476, 576
  br i1 %477, label %478, label %484

478:                                              ; preds = %475
  %479 = load i16*, i16** @ModeIndex_720x576, align 8
  %480 = load i32, i32* %15, align 4
  %481 = sext i32 %480 to i64
  %482 = getelementptr inbounds i16, i16* %479, i64 %481
  %483 = load i16, i16* %482, align 2
  store i16 %483, i16* %21, align 2
  br label %484

484:                                              ; preds = %478, %475
  br label %485

485:                                              ; preds = %484, %469
  br label %486

486:                                              ; preds = %485, %462
  br label %800

487:                                              ; preds = %383
  %488 = load i32, i32* %11, align 4
  %489 = load i32, i32* @SIS_315_VGA, align 4
  %490 = icmp eq i32 %488, %489
  br i1 %490, label %491, label %501

491:                                              ; preds = %487
  %492 = load i32, i32* %14, align 4
  %493 = icmp eq i32 %492, 576
  br i1 %493, label %494, label %500

494:                                              ; preds = %491
  %495 = load i16*, i16** @ModeIndex_768x576, align 8
  %496 = load i32, i32* %15, align 4
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds i16, i16* %495, i64 %497
  %499 = load i16, i16* %498, align 2
  store i16 %499, i16* %21, align 2
  br label %500

500:                                              ; preds = %494, %491
  br label %501

501:                                              ; preds = %500, %487
  br label %800

502:                                              ; preds = %383
  %503 = load i32, i32* %14, align 4
  %504 = icmp eq i32 %503, 600
  br i1 %504, label %505, label %511

505:                                              ; preds = %502
  %506 = load i16*, i16** @ModeIndex_800x600, align 8
  %507 = load i32, i32* %15, align 4
  %508 = sext i32 %507 to i64
  %509 = getelementptr inbounds i16, i16* %506, i64 %508
  %510 = load i16, i16* %509, align 2
  store i16 %510, i16* %21, align 2
  br label %511

511:                                              ; preds = %505, %502
  %512 = load i32, i32* %11, align 4
  %513 = load i32, i32* @SIS_315_VGA, align 4
  %514 = icmp eq i32 %512, %513
  br i1 %514, label %515, label %525

515:                                              ; preds = %511
  %516 = load i32, i32* %14, align 4
  %517 = icmp eq i32 %516, 480
  br i1 %517, label %518, label %524

518:                                              ; preds = %515
  %519 = load i16*, i16** @ModeIndex_800x480, align 8
  %520 = load i32, i32* %15, align 4
  %521 = sext i32 %520 to i64
  %522 = getelementptr inbounds i16, i16* %519, i64 %521
  %523 = load i16, i16* %522, align 2
  store i16 %523, i16* %21, align 2
  br label %524

524:                                              ; preds = %518, %515
  br label %525

525:                                              ; preds = %524, %511
  br label %800

526:                                              ; preds = %383
  %527 = load i32, i32* %11, align 4
  %528 = load i32, i32* @SIS_315_VGA, align 4
  %529 = icmp eq i32 %527, %528
  br i1 %529, label %530, label %540

530:                                              ; preds = %526
  %531 = load i32, i32* %14, align 4
  %532 = icmp eq i32 %531, 480
  br i1 %532, label %533, label %539

533:                                              ; preds = %530
  %534 = load i16*, i16** @ModeIndex_848x480, align 8
  %535 = load i32, i32* %15, align 4
  %536 = sext i32 %535 to i64
  %537 = getelementptr inbounds i16, i16* %534, i64 %536
  %538 = load i16, i16* %537, align 2
  store i16 %538, i16* %21, align 2
  br label %539

539:                                              ; preds = %533, %530
  br label %540

540:                                              ; preds = %539, %526
  br label %800

541:                                              ; preds = %383
  %542 = load i32, i32* %11, align 4
  %543 = load i32, i32* @SIS_315_VGA, align 4
  %544 = icmp eq i32 %542, %543
  br i1 %544, label %545, label %555

545:                                              ; preds = %541
  %546 = load i32, i32* %14, align 4
  %547 = icmp eq i32 %546, 480
  br i1 %547, label %548, label %554

548:                                              ; preds = %545
  %549 = load i16*, i16** @ModeIndex_856x480, align 8
  %550 = load i32, i32* %15, align 4
  %551 = sext i32 %550 to i64
  %552 = getelementptr inbounds i16, i16* %549, i64 %551
  %553 = load i16, i16* %552, align 2
  store i16 %553, i16* %21, align 2
  br label %554

554:                                              ; preds = %548, %545
  br label %555

555:                                              ; preds = %554, %541
  br label %800

556:                                              ; preds = %383
  %557 = load i32, i32* %11, align 4
  %558 = load i32, i32* @SIS_315_VGA, align 4
  %559 = icmp eq i32 %557, %558
  br i1 %559, label %560, label %580

560:                                              ; preds = %556
  %561 = load i32, i32* %14, align 4
  %562 = icmp eq i32 %561, 540
  br i1 %562, label %563, label %569

563:                                              ; preds = %560
  %564 = load i16*, i16** @ModeIndex_960x540, align 8
  %565 = load i32, i32* %15, align 4
  %566 = sext i32 %565 to i64
  %567 = getelementptr inbounds i16, i16* %564, i64 %566
  %568 = load i16, i16* %567, align 2
  store i16 %568, i16* %21, align 2
  br label %579

569:                                              ; preds = %560
  %570 = load i32, i32* %14, align 4
  %571 = icmp eq i32 %570, 600
  br i1 %571, label %572, label %578

572:                                              ; preds = %569
  %573 = load i16*, i16** @ModeIndex_960x600, align 8
  %574 = load i32, i32* %15, align 4
  %575 = sext i32 %574 to i64
  %576 = getelementptr inbounds i16, i16* %573, i64 %575
  %577 = load i16, i16* %576, align 2
  store i16 %577, i16* %21, align 2
  br label %578

578:                                              ; preds = %572, %569
  br label %579

579:                                              ; preds = %578, %563
  br label %580

580:                                              ; preds = %579, %556
  br label %800

581:                                              ; preds = %383
  %582 = load i32, i32* %14, align 4
  %583 = icmp eq i32 %582, 768
  br i1 %583, label %584, label %590

584:                                              ; preds = %581
  %585 = load i16*, i16** @ModeIndex_1024x768, align 8
  %586 = load i32, i32* %15, align 4
  %587 = sext i32 %586 to i64
  %588 = getelementptr inbounds i16, i16* %585, i64 %587
  %589 = load i16, i16* %588, align 2
  store i16 %589, i16* %21, align 2
  br label %590

590:                                              ; preds = %584, %581
  %591 = load i32, i32* %11, align 4
  %592 = load i32, i32* @SIS_315_VGA, align 4
  %593 = icmp eq i32 %591, %592
  br i1 %593, label %594, label %604

594:                                              ; preds = %590
  %595 = load i32, i32* %14, align 4
  %596 = icmp eq i32 %595, 576
  br i1 %596, label %597, label %603

597:                                              ; preds = %594
  %598 = load i16*, i16** @ModeIndex_1024x576, align 8
  %599 = load i32, i32* %15, align 4
  %600 = sext i32 %599 to i64
  %601 = getelementptr inbounds i16, i16* %598, i64 %600
  %602 = load i16, i16* %601, align 2
  store i16 %602, i16* %21, align 2
  br label %603

603:                                              ; preds = %597, %594
  br label %604

604:                                              ; preds = %603, %590
  br label %800

605:                                              ; preds = %383
  %606 = load i32, i32* %11, align 4
  %607 = load i32, i32* @SIS_315_VGA, align 4
  %608 = icmp eq i32 %606, %607
  br i1 %608, label %609, label %619

609:                                              ; preds = %605
  %610 = load i32, i32* %14, align 4
  %611 = icmp eq i32 %610, 864
  br i1 %611, label %612, label %618

612:                                              ; preds = %609
  %613 = load i16*, i16** @ModeIndex_1152x864, align 8
  %614 = load i32, i32* %15, align 4
  %615 = sext i32 %614 to i64
  %616 = getelementptr inbounds i16, i16* %613, i64 %615
  %617 = load i16, i16* %616, align 2
  store i16 %617, i16* %21, align 2
  br label %618

618:                                              ; preds = %612, %609
  br label %619

619:                                              ; preds = %618, %605
  br label %800

620:                                              ; preds = %383
  %621 = load i32, i32* %14, align 4
  switch i32 %621, label %679 [
    i32 720, label %622
    i32 768, label %628
    i32 800, label %645
    i32 854, label %656
    i32 960, label %667
    i32 1024, label %673
  ]

622:                                              ; preds = %620
  %623 = load i16*, i16** @ModeIndex_1280x720, align 8
  %624 = load i32, i32* %15, align 4
  %625 = sext i32 %624 to i64
  %626 = getelementptr inbounds i16, i16* %623, i64 %625
  %627 = load i16, i16* %626, align 2
  store i16 %627, i16* %21, align 2
  br label %679

628:                                              ; preds = %620
  %629 = load i32, i32* %11, align 4
  %630 = load i32, i32* @SIS_300_VGA, align 4
  %631 = icmp eq i32 %629, %630
  br i1 %631, label %632, label %638

632:                                              ; preds = %628
  %633 = load i16*, i16** @ModeIndex_300_1280x768, align 8
  %634 = load i32, i32* %15, align 4
  %635 = sext i32 %634 to i64
  %636 = getelementptr inbounds i16, i16* %633, i64 %635
  %637 = load i16, i16* %636, align 2
  store i16 %637, i16* %21, align 2
  br label %644

638:                                              ; preds = %628
  %639 = load i16*, i16** @ModeIndex_310_1280x768, align 8
  %640 = load i32, i32* %15, align 4
  %641 = sext i32 %640 to i64
  %642 = getelementptr inbounds i16, i16* %639, i64 %641
  %643 = load i16, i16* %642, align 2
  store i16 %643, i16* %21, align 2
  br label %644

644:                                              ; preds = %638, %632
  br label %679

645:                                              ; preds = %620
  %646 = load i32, i32* %11, align 4
  %647 = load i32, i32* @SIS_315_VGA, align 4
  %648 = icmp eq i32 %646, %647
  br i1 %648, label %649, label %655

649:                                              ; preds = %645
  %650 = load i16*, i16** @ModeIndex_1280x800, align 8
  %651 = load i32, i32* %15, align 4
  %652 = sext i32 %651 to i64
  %653 = getelementptr inbounds i16, i16* %650, i64 %652
  %654 = load i16, i16* %653, align 2
  store i16 %654, i16* %21, align 2
  br label %655

655:                                              ; preds = %649, %645
  br label %679

656:                                              ; preds = %620
  %657 = load i32, i32* %11, align 4
  %658 = load i32, i32* @SIS_315_VGA, align 4
  %659 = icmp eq i32 %657, %658
  br i1 %659, label %660, label %666

660:                                              ; preds = %656
  %661 = load i16*, i16** @ModeIndex_1280x854, align 8
  %662 = load i32, i32* %15, align 4
  %663 = sext i32 %662 to i64
  %664 = getelementptr inbounds i16, i16* %661, i64 %663
  %665 = load i16, i16* %664, align 2
  store i16 %665, i16* %21, align 2
  br label %666

666:                                              ; preds = %660, %656
  br label %679

667:                                              ; preds = %620
  %668 = load i16*, i16** @ModeIndex_1280x960, align 8
  %669 = load i32, i32* %15, align 4
  %670 = sext i32 %669 to i64
  %671 = getelementptr inbounds i16, i16* %668, i64 %670
  %672 = load i16, i16* %671, align 2
  store i16 %672, i16* %21, align 2
  br label %679

673:                                              ; preds = %620
  %674 = load i16*, i16** @ModeIndex_1280x1024, align 8
  %675 = load i32, i32* %15, align 4
  %676 = sext i32 %675 to i64
  %677 = getelementptr inbounds i16, i16* %674, i64 %676
  %678 = load i16, i16* %677, align 2
  store i16 %678, i16* %21, align 2
  br label %679

679:                                              ; preds = %620, %673, %667, %666, %655, %644, %622
  br label %800

680:                                              ; preds = %383
  %681 = load i32, i32* %11, align 4
  %682 = load i32, i32* @SIS_315_VGA, align 4
  %683 = icmp eq i32 %681, %682
  br i1 %683, label %684, label %694

684:                                              ; preds = %680
  %685 = load i32, i32* %14, align 4
  %686 = icmp eq i32 %685, 768
  br i1 %686, label %687, label %693

687:                                              ; preds = %684
  %688 = load i16*, i16** @ModeIndex_1360x768, align 8
  %689 = load i32, i32* %15, align 4
  %690 = sext i32 %689 to i64
  %691 = getelementptr inbounds i16, i16* %688, i64 %690
  %692 = load i16, i16* %691, align 2
  store i16 %692, i16* %21, align 2
  br label %693

693:                                              ; preds = %687, %684
  br label %694

694:                                              ; preds = %693, %680
  br label %800

695:                                              ; preds = %383
  %696 = load i32, i32* %11, align 4
  %697 = load i32, i32* @SIS_315_VGA, align 4
  %698 = icmp eq i32 %696, %697
  br i1 %698, label %699, label %715

699:                                              ; preds = %695
  %700 = load i32, i32* %20, align 4
  %701 = load i32, i32* @VB2_LCDOVER1280BRIDGE, align 4
  %702 = and i32 %700, %701
  %703 = icmp ne i32 %702, 0
  br i1 %703, label %704, label %714

704:                                              ; preds = %699
  %705 = load i32, i32* %14, align 4
  %706 = icmp eq i32 %705, 1050
  br i1 %706, label %707, label %713

707:                                              ; preds = %704
  %708 = load i16*, i16** @ModeIndex_1400x1050, align 8
  %709 = load i32, i32* %15, align 4
  %710 = sext i32 %709 to i64
  %711 = getelementptr inbounds i16, i16* %708, i64 %710
  %712 = load i16, i16* %711, align 2
  store i16 %712, i16* %21, align 2
  br label %713

713:                                              ; preds = %707, %704
  br label %714

714:                                              ; preds = %713, %699
  br label %715

715:                                              ; preds = %714, %695
  br label %800

716:                                              ; preds = %383
  %717 = load i32, i32* %11, align 4
  %718 = load i32, i32* @SIS_315_VGA, align 4
  %719 = icmp eq i32 %717, %718
  br i1 %719, label %720, label %736

720:                                              ; preds = %716
  %721 = load i32, i32* %20, align 4
  %722 = load i32, i32* @VB2_LCDOVER1280BRIDGE, align 4
  %723 = and i32 %721, %722
  %724 = icmp ne i32 %723, 0
  br i1 %724, label %725, label %735

725:                                              ; preds = %720
  %726 = load i32, i32* %14, align 4
  %727 = icmp eq i32 %726, 1200
  br i1 %727, label %728, label %734

728:                                              ; preds = %725
  %729 = load i16*, i16** @ModeIndex_1600x1200, align 8
  %730 = load i32, i32* %15, align 4
  %731 = sext i32 %730 to i64
  %732 = getelementptr inbounds i16, i16* %729, i64 %731
  %733 = load i16, i16* %732, align 2
  store i16 %733, i16* %21, align 2
  br label %734

734:                                              ; preds = %728, %725
  br label %735

735:                                              ; preds = %734, %720
  br label %736

736:                                              ; preds = %735, %716
  br label %800

737:                                              ; preds = %383
  %738 = load i32, i32* %11, align 4
  %739 = load i32, i32* @SIS_315_VGA, align 4
  %740 = icmp eq i32 %738, %739
  br i1 %740, label %741, label %757

741:                                              ; preds = %737
  %742 = load i32, i32* %20, align 4
  %743 = load i32, i32* @VB2_LCDOVER1280BRIDGE, align 4
  %744 = and i32 %742, %743
  %745 = icmp ne i32 %744, 0
  br i1 %745, label %746, label %756

746:                                              ; preds = %741
  %747 = load i32, i32* %14, align 4
  %748 = icmp eq i32 %747, 1050
  br i1 %748, label %749, label %755

749:                                              ; preds = %746
  %750 = load i16*, i16** @ModeIndex_1680x1050, align 8
  %751 = load i32, i32* %15, align 4
  %752 = sext i32 %751 to i64
  %753 = getelementptr inbounds i16, i16* %750, i64 %752
  %754 = load i16, i16* %753, align 2
  store i16 %754, i16* %21, align 2
  br label %755

755:                                              ; preds = %749, %746
  br label %756

756:                                              ; preds = %755, %741
  br label %757

757:                                              ; preds = %756, %737
  br label %800

758:                                              ; preds = %383
  %759 = load i32, i32* %11, align 4
  %760 = load i32, i32* @SIS_315_VGA, align 4
  %761 = icmp eq i32 %759, %760
  br i1 %761, label %762, label %778

762:                                              ; preds = %758
  %763 = load i32, i32* %20, align 4
  %764 = load i32, i32* @VB2_LCDOVER1600BRIDGE, align 4
  %765 = and i32 %763, %764
  %766 = icmp ne i32 %765, 0
  br i1 %766, label %767, label %777

767:                                              ; preds = %762
  %768 = load i32, i32* %14, align 4
  %769 = icmp eq i32 %768, 1440
  br i1 %769, label %770, label %776

770:                                              ; preds = %767
  %771 = load i16*, i16** @ModeIndex_1920x1440, align 8
  %772 = load i32, i32* %15, align 4
  %773 = sext i32 %772 to i64
  %774 = getelementptr inbounds i16, i16* %771, i64 %773
  %775 = load i16, i16* %774, align 2
  store i16 %775, i16* %21, align 2
  br label %776

776:                                              ; preds = %770, %767
  br label %777

777:                                              ; preds = %776, %762
  br label %778

778:                                              ; preds = %777, %758
  br label %800

779:                                              ; preds = %383
  %780 = load i32, i32* %11, align 4
  %781 = load i32, i32* @SIS_315_VGA, align 4
  %782 = icmp eq i32 %780, %781
  br i1 %782, label %783, label %799

783:                                              ; preds = %779
  %784 = load i32, i32* %20, align 4
  %785 = load i32, i32* @VB2_LCDOVER1600BRIDGE, align 4
  %786 = and i32 %784, %785
  %787 = icmp ne i32 %786, 0
  br i1 %787, label %788, label %798

788:                                              ; preds = %783
  %789 = load i32, i32* %14, align 4
  %790 = icmp eq i32 %789, 1536
  br i1 %790, label %791, label %797

791:                                              ; preds = %788
  %792 = load i16*, i16** @ModeIndex_310_2048x1536, align 8
  %793 = load i32, i32* %15, align 4
  %794 = sext i32 %793 to i64
  %795 = getelementptr inbounds i16, i16* %792, i64 %794
  %796 = load i16, i16* %795, align 2
  store i16 %796, i16* %21, align 2
  br label %797

797:                                              ; preds = %791, %788
  br label %798

798:                                              ; preds = %797, %783
  br label %799

799:                                              ; preds = %798, %779
  br label %800

800:                                              ; preds = %383, %799, %778, %757, %736, %715, %694, %679, %619, %604, %580, %555, %540, %525, %501, %486, %461, %441, %421, %404
  br label %801

801:                                              ; preds = %800, %378
  br label %802

802:                                              ; preds = %801, %377
  %803 = load i16, i16* %21, align 2
  ret i16 %803
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
