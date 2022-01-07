; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_restore_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_restore_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"dispc_restore_context\0A\00", align 1
@dispc = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@CONFIG = common dso_local global i32 0, align 4
@LINE_NUMBER = common dso_local global i32 0, align 4
@FEAT_ALPHA_FIXED_ZORDER = common dso_local global i32 0, align 4
@FEAT_ALPHA_FREE_ZORDER = common dso_local global i32 0, align 4
@GLOBAL_ALPHA = common dso_local global i32 0, align 4
@FEAT_MGR_LCD2 = common dso_local global i32 0, align 4
@CONFIG2 = common dso_local global i32 0, align 4
@FEAT_MGR_LCD3 = common dso_local global i32 0, align 4
@CONFIG3 = common dso_local global i32 0, align 4
@OMAP_DSS_CHANNEL_DIGIT = common dso_local global i32 0, align 4
@FEAT_CPR = common dso_local global i32 0, align 4
@FEAT_PRELOAD = common dso_local global i32 0, align 4
@OMAP_DSS_GFX = common dso_local global i32 0, align 4
@FEAT_FIR_COEF_V = common dso_local global i32 0, align 4
@FEAT_HANDLE_UV_SEPARATE = common dso_local global i32 0, align 4
@FEAT_ATTR2 = common dso_local global i32 0, align 4
@FEAT_CORE_CLK_DIV = common dso_local global i32 0, align 4
@DIVISOR = common dso_local global i32 0, align 4
@CONTROL = common dso_local global i32 0, align 4
@CONTROL2 = common dso_local global i32 0, align 4
@CONTROL3 = common dso_local global i32 0, align 4
@DISPC_IRQ_SYNC_LOST_DIGIT = common dso_local global i32 0, align 4
@IRQENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"context restored\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dispc_restore_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispc_restore_context() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @DSSDBG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dispc, i32 0, i32 0), align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  br label %304

7:                                                ; preds = %0
  %8 = load i32, i32* @CONFIG, align 4
  %9 = call i32 @RR(i32 %8)
  %10 = load i32, i32* @LINE_NUMBER, align 4
  %11 = call i32 @RR(i32 %10)
  %12 = load i32, i32* @FEAT_ALPHA_FIXED_ZORDER, align 4
  %13 = call i64 @dss_has_feature(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %7
  %16 = load i32, i32* @FEAT_ALPHA_FREE_ZORDER, align 4
  %17 = call i64 @dss_has_feature(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15, %7
  %20 = load i32, i32* @GLOBAL_ALPHA, align 4
  %21 = call i32 @RR(i32 %20)
  br label %22

22:                                               ; preds = %19, %15
  %23 = load i32, i32* @FEAT_MGR_LCD2, align 4
  %24 = call i64 @dss_has_feature(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* @CONFIG2, align 4
  %28 = call i32 @RR(i32 %27)
  br label %29

29:                                               ; preds = %26, %22
  %30 = load i32, i32* @FEAT_MGR_LCD3, align 4
  %31 = call i64 @dss_has_feature(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32, i32* @CONFIG3, align 4
  %35 = call i32 @RR(i32 %34)
  br label %36

36:                                               ; preds = %33, %29
  store i32 0, i32* %1, align 4
  br label %37

37:                                               ; preds = %91, %36
  %38 = load i32, i32* %1, align 4
  %39 = call i32 (...) @dss_feat_get_num_mgrs()
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %94

41:                                               ; preds = %37
  %42 = load i32, i32* %1, align 4
  %43 = call i32 @DEFAULT_COLOR(i32 %42)
  %44 = call i32 @RR(i32 %43)
  %45 = load i32, i32* %1, align 4
  %46 = call i32 @TRANS_COLOR(i32 %45)
  %47 = call i32 @RR(i32 %46)
  %48 = load i32, i32* %1, align 4
  %49 = call i32 @SIZE_MGR(i32 %48)
  %50 = call i32 @RR(i32 %49)
  %51 = load i32, i32* %1, align 4
  %52 = load i32, i32* @OMAP_DSS_CHANNEL_DIGIT, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %41
  br label %91

55:                                               ; preds = %41
  %56 = load i32, i32* %1, align 4
  %57 = call i32 @TIMING_H(i32 %56)
  %58 = call i32 @RR(i32 %57)
  %59 = load i32, i32* %1, align 4
  %60 = call i32 @TIMING_V(i32 %59)
  %61 = call i32 @RR(i32 %60)
  %62 = load i32, i32* %1, align 4
  %63 = call i32 @POL_FREQ(i32 %62)
  %64 = call i32 @RR(i32 %63)
  %65 = load i32, i32* %1, align 4
  %66 = call i32 @DIVISORo(i32 %65)
  %67 = call i32 @RR(i32 %66)
  %68 = load i32, i32* %1, align 4
  %69 = call i32 @DATA_CYCLE1(i32 %68)
  %70 = call i32 @RR(i32 %69)
  %71 = load i32, i32* %1, align 4
  %72 = call i32 @DATA_CYCLE2(i32 %71)
  %73 = call i32 @RR(i32 %72)
  %74 = load i32, i32* %1, align 4
  %75 = call i32 @DATA_CYCLE3(i32 %74)
  %76 = call i32 @RR(i32 %75)
  %77 = load i32, i32* @FEAT_CPR, align 4
  %78 = call i64 @dss_has_feature(i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %90

80:                                               ; preds = %55
  %81 = load i32, i32* %1, align 4
  %82 = call i32 @CPR_COEF_R(i32 %81)
  %83 = call i32 @RR(i32 %82)
  %84 = load i32, i32* %1, align 4
  %85 = call i32 @CPR_COEF_G(i32 %84)
  %86 = call i32 @RR(i32 %85)
  %87 = load i32, i32* %1, align 4
  %88 = call i32 @CPR_COEF_B(i32 %87)
  %89 = call i32 @RR(i32 %88)
  br label %90

90:                                               ; preds = %80, %55
  br label %91

91:                                               ; preds = %90, %54
  %92 = load i32, i32* %1, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %1, align 4
  br label %37

94:                                               ; preds = %37
  store i32 0, i32* %1, align 4
  br label %95

95:                                               ; preds = %272, %94
  %96 = load i32, i32* %1, align 4
  %97 = call i32 (...) @dss_feat_get_num_ovls()
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %275

99:                                               ; preds = %95
  %100 = load i32, i32* %1, align 4
  %101 = call i32 @OVL_BA0(i32 %100)
  %102 = call i32 @RR(i32 %101)
  %103 = load i32, i32* %1, align 4
  %104 = call i32 @OVL_BA1(i32 %103)
  %105 = call i32 @RR(i32 %104)
  %106 = load i32, i32* %1, align 4
  %107 = call i32 @OVL_POSITION(i32 %106)
  %108 = call i32 @RR(i32 %107)
  %109 = load i32, i32* %1, align 4
  %110 = call i32 @OVL_SIZE(i32 %109)
  %111 = call i32 @RR(i32 %110)
  %112 = load i32, i32* %1, align 4
  %113 = call i32 @OVL_ATTRIBUTES(i32 %112)
  %114 = call i32 @RR(i32 %113)
  %115 = load i32, i32* %1, align 4
  %116 = call i32 @OVL_FIFO_THRESHOLD(i32 %115)
  %117 = call i32 @RR(i32 %116)
  %118 = load i32, i32* %1, align 4
  %119 = call i32 @OVL_ROW_INC(i32 %118)
  %120 = call i32 @RR(i32 %119)
  %121 = load i32, i32* %1, align 4
  %122 = call i32 @OVL_PIXEL_INC(i32 %121)
  %123 = call i32 @RR(i32 %122)
  %124 = load i32, i32* @FEAT_PRELOAD, align 4
  %125 = call i64 @dss_has_feature(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %99
  %128 = load i32, i32* %1, align 4
  %129 = call i32 @OVL_PRELOAD(i32 %128)
  %130 = call i32 @RR(i32 %129)
  br label %131

131:                                              ; preds = %127, %99
  %132 = load i32, i32* %1, align 4
  %133 = load i32, i32* @OMAP_DSS_GFX, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %142

135:                                              ; preds = %131
  %136 = load i32, i32* %1, align 4
  %137 = call i32 @OVL_WINDOW_SKIP(i32 %136)
  %138 = call i32 @RR(i32 %137)
  %139 = load i32, i32* %1, align 4
  %140 = call i32 @OVL_TABLE_BA(i32 %139)
  %141 = call i32 @RR(i32 %140)
  br label %272

142:                                              ; preds = %131
  %143 = load i32, i32* %1, align 4
  %144 = call i32 @OVL_FIR(i32 %143)
  %145 = call i32 @RR(i32 %144)
  %146 = load i32, i32* %1, align 4
  %147 = call i32 @OVL_PICTURE_SIZE(i32 %146)
  %148 = call i32 @RR(i32 %147)
  %149 = load i32, i32* %1, align 4
  %150 = call i32 @OVL_ACCU0(i32 %149)
  %151 = call i32 @RR(i32 %150)
  %152 = load i32, i32* %1, align 4
  %153 = call i32 @OVL_ACCU1(i32 %152)
  %154 = call i32 @RR(i32 %153)
  store i32 0, i32* %2, align 4
  br label %155

155:                                              ; preds = %163, %142
  %156 = load i32, i32* %2, align 4
  %157 = icmp slt i32 %156, 8
  br i1 %157, label %158, label %166

158:                                              ; preds = %155
  %159 = load i32, i32* %1, align 4
  %160 = load i32, i32* %2, align 4
  %161 = call i32 @OVL_FIR_COEF_H(i32 %159, i32 %160)
  %162 = call i32 @RR(i32 %161)
  br label %163

163:                                              ; preds = %158
  %164 = load i32, i32* %2, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %2, align 4
  br label %155

166:                                              ; preds = %155
  store i32 0, i32* %2, align 4
  br label %167

167:                                              ; preds = %175, %166
  %168 = load i32, i32* %2, align 4
  %169 = icmp slt i32 %168, 8
  br i1 %169, label %170, label %178

170:                                              ; preds = %167
  %171 = load i32, i32* %1, align 4
  %172 = load i32, i32* %2, align 4
  %173 = call i32 @OVL_FIR_COEF_HV(i32 %171, i32 %172)
  %174 = call i32 @RR(i32 %173)
  br label %175

175:                                              ; preds = %170
  %176 = load i32, i32* %2, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %2, align 4
  br label %167

178:                                              ; preds = %167
  store i32 0, i32* %2, align 4
  br label %179

179:                                              ; preds = %187, %178
  %180 = load i32, i32* %2, align 4
  %181 = icmp slt i32 %180, 5
  br i1 %181, label %182, label %190

182:                                              ; preds = %179
  %183 = load i32, i32* %1, align 4
  %184 = load i32, i32* %2, align 4
  %185 = call i32 @OVL_CONV_COEF(i32 %183, i32 %184)
  %186 = call i32 @RR(i32 %185)
  br label %187

187:                                              ; preds = %182
  %188 = load i32, i32* %2, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %2, align 4
  br label %179

190:                                              ; preds = %179
  %191 = load i32, i32* @FEAT_FIR_COEF_V, align 4
  %192 = call i64 @dss_has_feature(i32 %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %207

194:                                              ; preds = %190
  store i32 0, i32* %2, align 4
  br label %195

195:                                              ; preds = %203, %194
  %196 = load i32, i32* %2, align 4
  %197 = icmp slt i32 %196, 8
  br i1 %197, label %198, label %206

198:                                              ; preds = %195
  %199 = load i32, i32* %1, align 4
  %200 = load i32, i32* %2, align 4
  %201 = call i32 @OVL_FIR_COEF_V(i32 %199, i32 %200)
  %202 = call i32 @RR(i32 %201)
  br label %203

203:                                              ; preds = %198
  %204 = load i32, i32* %2, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %2, align 4
  br label %195

206:                                              ; preds = %195
  br label %207

207:                                              ; preds = %206, %190
  %208 = load i32, i32* @FEAT_HANDLE_UV_SEPARATE, align 4
  %209 = call i64 @dss_has_feature(i32 %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %263

211:                                              ; preds = %207
  %212 = load i32, i32* %1, align 4
  %213 = call i32 @OVL_BA0_UV(i32 %212)
  %214 = call i32 @RR(i32 %213)
  %215 = load i32, i32* %1, align 4
  %216 = call i32 @OVL_BA1_UV(i32 %215)
  %217 = call i32 @RR(i32 %216)
  %218 = load i32, i32* %1, align 4
  %219 = call i32 @OVL_FIR2(i32 %218)
  %220 = call i32 @RR(i32 %219)
  %221 = load i32, i32* %1, align 4
  %222 = call i32 @OVL_ACCU2_0(i32 %221)
  %223 = call i32 @RR(i32 %222)
  %224 = load i32, i32* %1, align 4
  %225 = call i32 @OVL_ACCU2_1(i32 %224)
  %226 = call i32 @RR(i32 %225)
  store i32 0, i32* %2, align 4
  br label %227

227:                                              ; preds = %235, %211
  %228 = load i32, i32* %2, align 4
  %229 = icmp slt i32 %228, 8
  br i1 %229, label %230, label %238

230:                                              ; preds = %227
  %231 = load i32, i32* %1, align 4
  %232 = load i32, i32* %2, align 4
  %233 = call i32 @OVL_FIR_COEF_H2(i32 %231, i32 %232)
  %234 = call i32 @RR(i32 %233)
  br label %235

235:                                              ; preds = %230
  %236 = load i32, i32* %2, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %2, align 4
  br label %227

238:                                              ; preds = %227
  store i32 0, i32* %2, align 4
  br label %239

239:                                              ; preds = %247, %238
  %240 = load i32, i32* %2, align 4
  %241 = icmp slt i32 %240, 8
  br i1 %241, label %242, label %250

242:                                              ; preds = %239
  %243 = load i32, i32* %1, align 4
  %244 = load i32, i32* %2, align 4
  %245 = call i32 @OVL_FIR_COEF_HV2(i32 %243, i32 %244)
  %246 = call i32 @RR(i32 %245)
  br label %247

247:                                              ; preds = %242
  %248 = load i32, i32* %2, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %2, align 4
  br label %239

250:                                              ; preds = %239
  store i32 0, i32* %2, align 4
  br label %251

251:                                              ; preds = %259, %250
  %252 = load i32, i32* %2, align 4
  %253 = icmp slt i32 %252, 8
  br i1 %253, label %254, label %262

254:                                              ; preds = %251
  %255 = load i32, i32* %1, align 4
  %256 = load i32, i32* %2, align 4
  %257 = call i32 @OVL_FIR_COEF_V2(i32 %255, i32 %256)
  %258 = call i32 @RR(i32 %257)
  br label %259

259:                                              ; preds = %254
  %260 = load i32, i32* %2, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %2, align 4
  br label %251

262:                                              ; preds = %251
  br label %263

263:                                              ; preds = %262, %207
  %264 = load i32, i32* @FEAT_ATTR2, align 4
  %265 = call i64 @dss_has_feature(i32 %264)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %271

267:                                              ; preds = %263
  %268 = load i32, i32* %1, align 4
  %269 = call i32 @OVL_ATTRIBUTES2(i32 %268)
  %270 = call i32 @RR(i32 %269)
  br label %271

271:                                              ; preds = %267, %263
  br label %272

272:                                              ; preds = %271, %135
  %273 = load i32, i32* %1, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %1, align 4
  br label %95

275:                                              ; preds = %95
  %276 = load i32, i32* @FEAT_CORE_CLK_DIV, align 4
  %277 = call i64 @dss_has_feature(i32 %276)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %282

279:                                              ; preds = %275
  %280 = load i32, i32* @DIVISOR, align 4
  %281 = call i32 @RR(i32 %280)
  br label %282

282:                                              ; preds = %279, %275
  %283 = load i32, i32* @CONTROL, align 4
  %284 = call i32 @RR(i32 %283)
  %285 = load i32, i32* @FEAT_MGR_LCD2, align 4
  %286 = call i64 @dss_has_feature(i32 %285)
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %291

288:                                              ; preds = %282
  %289 = load i32, i32* @CONTROL2, align 4
  %290 = call i32 @RR(i32 %289)
  br label %291

291:                                              ; preds = %288, %282
  %292 = load i32, i32* @FEAT_MGR_LCD3, align 4
  %293 = call i64 @dss_has_feature(i32 %292)
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %298

295:                                              ; preds = %291
  %296 = load i32, i32* @CONTROL3, align 4
  %297 = call i32 @RR(i32 %296)
  br label %298

298:                                              ; preds = %295, %291
  %299 = load i32, i32* @DISPC_IRQ_SYNC_LOST_DIGIT, align 4
  %300 = call i32 @dispc_clear_irqstatus(i32 %299)
  %301 = load i32, i32* @IRQENABLE, align 4
  %302 = call i32 @RR(i32 %301)
  %303 = call i32 @DSSDBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %304

304:                                              ; preds = %298, %6
  ret void
}

declare dso_local i32 @DSSDBG(i8*) #1

declare dso_local i32 @RR(i32) #1

declare dso_local i64 @dss_has_feature(i32) #1

declare dso_local i32 @dss_feat_get_num_mgrs(...) #1

declare dso_local i32 @DEFAULT_COLOR(i32) #1

declare dso_local i32 @TRANS_COLOR(i32) #1

declare dso_local i32 @SIZE_MGR(i32) #1

declare dso_local i32 @TIMING_H(i32) #1

declare dso_local i32 @TIMING_V(i32) #1

declare dso_local i32 @POL_FREQ(i32) #1

declare dso_local i32 @DIVISORo(i32) #1

declare dso_local i32 @DATA_CYCLE1(i32) #1

declare dso_local i32 @DATA_CYCLE2(i32) #1

declare dso_local i32 @DATA_CYCLE3(i32) #1

declare dso_local i32 @CPR_COEF_R(i32) #1

declare dso_local i32 @CPR_COEF_G(i32) #1

declare dso_local i32 @CPR_COEF_B(i32) #1

declare dso_local i32 @dss_feat_get_num_ovls(...) #1

declare dso_local i32 @OVL_BA0(i32) #1

declare dso_local i32 @OVL_BA1(i32) #1

declare dso_local i32 @OVL_POSITION(i32) #1

declare dso_local i32 @OVL_SIZE(i32) #1

declare dso_local i32 @OVL_ATTRIBUTES(i32) #1

declare dso_local i32 @OVL_FIFO_THRESHOLD(i32) #1

declare dso_local i32 @OVL_ROW_INC(i32) #1

declare dso_local i32 @OVL_PIXEL_INC(i32) #1

declare dso_local i32 @OVL_PRELOAD(i32) #1

declare dso_local i32 @OVL_WINDOW_SKIP(i32) #1

declare dso_local i32 @OVL_TABLE_BA(i32) #1

declare dso_local i32 @OVL_FIR(i32) #1

declare dso_local i32 @OVL_PICTURE_SIZE(i32) #1

declare dso_local i32 @OVL_ACCU0(i32) #1

declare dso_local i32 @OVL_ACCU1(i32) #1

declare dso_local i32 @OVL_FIR_COEF_H(i32, i32) #1

declare dso_local i32 @OVL_FIR_COEF_HV(i32, i32) #1

declare dso_local i32 @OVL_CONV_COEF(i32, i32) #1

declare dso_local i32 @OVL_FIR_COEF_V(i32, i32) #1

declare dso_local i32 @OVL_BA0_UV(i32) #1

declare dso_local i32 @OVL_BA1_UV(i32) #1

declare dso_local i32 @OVL_FIR2(i32) #1

declare dso_local i32 @OVL_ACCU2_0(i32) #1

declare dso_local i32 @OVL_ACCU2_1(i32) #1

declare dso_local i32 @OVL_FIR_COEF_H2(i32, i32) #1

declare dso_local i32 @OVL_FIR_COEF_HV2(i32, i32) #1

declare dso_local i32 @OVL_FIR_COEF_V2(i32, i32) #1

declare dso_local i32 @OVL_ATTRIBUTES2(i32) #1

declare dso_local i32 @dispc_clear_irqstatus(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
