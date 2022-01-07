; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_save_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_save_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"dispc_save_context\0A\00", align 1
@IRQENABLE = common dso_local global i32 0, align 4
@CONTROL = common dso_local global i32 0, align 4
@CONFIG = common dso_local global i32 0, align 4
@LINE_NUMBER = common dso_local global i32 0, align 4
@FEAT_ALPHA_FIXED_ZORDER = common dso_local global i32 0, align 4
@FEAT_ALPHA_FREE_ZORDER = common dso_local global i32 0, align 4
@GLOBAL_ALPHA = common dso_local global i32 0, align 4
@FEAT_MGR_LCD2 = common dso_local global i32 0, align 4
@CONTROL2 = common dso_local global i32 0, align 4
@CONFIG2 = common dso_local global i32 0, align 4
@FEAT_MGR_LCD3 = common dso_local global i32 0, align 4
@CONTROL3 = common dso_local global i32 0, align 4
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
@dispc = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"context saved\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @dispc_save_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispc_save_context() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @DSSDBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %4 = load i32, i32* @IRQENABLE, align 4
  %5 = call i32 @SR(i32 %4)
  %6 = load i32, i32* @CONTROL, align 4
  %7 = call i32 @SR(i32 %6)
  %8 = load i32, i32* @CONFIG, align 4
  %9 = call i32 @SR(i32 %8)
  %10 = load i32, i32* @LINE_NUMBER, align 4
  %11 = call i32 @SR(i32 %10)
  %12 = load i32, i32* @FEAT_ALPHA_FIXED_ZORDER, align 4
  %13 = call i64 @dss_has_feature(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %0
  %16 = load i32, i32* @FEAT_ALPHA_FREE_ZORDER, align 4
  %17 = call i64 @dss_has_feature(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15, %0
  %20 = load i32, i32* @GLOBAL_ALPHA, align 4
  %21 = call i32 @SR(i32 %20)
  br label %22

22:                                               ; preds = %19, %15
  %23 = load i32, i32* @FEAT_MGR_LCD2, align 4
  %24 = call i64 @dss_has_feature(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load i32, i32* @CONTROL2, align 4
  %28 = call i32 @SR(i32 %27)
  %29 = load i32, i32* @CONFIG2, align 4
  %30 = call i32 @SR(i32 %29)
  br label %31

31:                                               ; preds = %26, %22
  %32 = load i32, i32* @FEAT_MGR_LCD3, align 4
  %33 = call i64 @dss_has_feature(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %31
  %36 = load i32, i32* @CONTROL3, align 4
  %37 = call i32 @SR(i32 %36)
  %38 = load i32, i32* @CONFIG3, align 4
  %39 = call i32 @SR(i32 %38)
  br label %40

40:                                               ; preds = %35, %31
  store i32 0, i32* %1, align 4
  br label %41

41:                                               ; preds = %95, %40
  %42 = load i32, i32* %1, align 4
  %43 = call i32 (...) @dss_feat_get_num_mgrs()
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %98

45:                                               ; preds = %41
  %46 = load i32, i32* %1, align 4
  %47 = call i32 @DEFAULT_COLOR(i32 %46)
  %48 = call i32 @SR(i32 %47)
  %49 = load i32, i32* %1, align 4
  %50 = call i32 @TRANS_COLOR(i32 %49)
  %51 = call i32 @SR(i32 %50)
  %52 = load i32, i32* %1, align 4
  %53 = call i32 @SIZE_MGR(i32 %52)
  %54 = call i32 @SR(i32 %53)
  %55 = load i32, i32* %1, align 4
  %56 = load i32, i32* @OMAP_DSS_CHANNEL_DIGIT, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %45
  br label %95

59:                                               ; preds = %45
  %60 = load i32, i32* %1, align 4
  %61 = call i32 @TIMING_H(i32 %60)
  %62 = call i32 @SR(i32 %61)
  %63 = load i32, i32* %1, align 4
  %64 = call i32 @TIMING_V(i32 %63)
  %65 = call i32 @SR(i32 %64)
  %66 = load i32, i32* %1, align 4
  %67 = call i32 @POL_FREQ(i32 %66)
  %68 = call i32 @SR(i32 %67)
  %69 = load i32, i32* %1, align 4
  %70 = call i32 @DIVISORo(i32 %69)
  %71 = call i32 @SR(i32 %70)
  %72 = load i32, i32* %1, align 4
  %73 = call i32 @DATA_CYCLE1(i32 %72)
  %74 = call i32 @SR(i32 %73)
  %75 = load i32, i32* %1, align 4
  %76 = call i32 @DATA_CYCLE2(i32 %75)
  %77 = call i32 @SR(i32 %76)
  %78 = load i32, i32* %1, align 4
  %79 = call i32 @DATA_CYCLE3(i32 %78)
  %80 = call i32 @SR(i32 %79)
  %81 = load i32, i32* @FEAT_CPR, align 4
  %82 = call i64 @dss_has_feature(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %59
  %85 = load i32, i32* %1, align 4
  %86 = call i32 @CPR_COEF_R(i32 %85)
  %87 = call i32 @SR(i32 %86)
  %88 = load i32, i32* %1, align 4
  %89 = call i32 @CPR_COEF_G(i32 %88)
  %90 = call i32 @SR(i32 %89)
  %91 = load i32, i32* %1, align 4
  %92 = call i32 @CPR_COEF_B(i32 %91)
  %93 = call i32 @SR(i32 %92)
  br label %94

94:                                               ; preds = %84, %59
  br label %95

95:                                               ; preds = %94, %58
  %96 = load i32, i32* %1, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %1, align 4
  br label %41

98:                                               ; preds = %41
  store i32 0, i32* %1, align 4
  br label %99

99:                                               ; preds = %276, %98
  %100 = load i32, i32* %1, align 4
  %101 = call i32 (...) @dss_feat_get_num_ovls()
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %279

103:                                              ; preds = %99
  %104 = load i32, i32* %1, align 4
  %105 = call i32 @OVL_BA0(i32 %104)
  %106 = call i32 @SR(i32 %105)
  %107 = load i32, i32* %1, align 4
  %108 = call i32 @OVL_BA1(i32 %107)
  %109 = call i32 @SR(i32 %108)
  %110 = load i32, i32* %1, align 4
  %111 = call i32 @OVL_POSITION(i32 %110)
  %112 = call i32 @SR(i32 %111)
  %113 = load i32, i32* %1, align 4
  %114 = call i32 @OVL_SIZE(i32 %113)
  %115 = call i32 @SR(i32 %114)
  %116 = load i32, i32* %1, align 4
  %117 = call i32 @OVL_ATTRIBUTES(i32 %116)
  %118 = call i32 @SR(i32 %117)
  %119 = load i32, i32* %1, align 4
  %120 = call i32 @OVL_FIFO_THRESHOLD(i32 %119)
  %121 = call i32 @SR(i32 %120)
  %122 = load i32, i32* %1, align 4
  %123 = call i32 @OVL_ROW_INC(i32 %122)
  %124 = call i32 @SR(i32 %123)
  %125 = load i32, i32* %1, align 4
  %126 = call i32 @OVL_PIXEL_INC(i32 %125)
  %127 = call i32 @SR(i32 %126)
  %128 = load i32, i32* @FEAT_PRELOAD, align 4
  %129 = call i64 @dss_has_feature(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %103
  %132 = load i32, i32* %1, align 4
  %133 = call i32 @OVL_PRELOAD(i32 %132)
  %134 = call i32 @SR(i32 %133)
  br label %135

135:                                              ; preds = %131, %103
  %136 = load i32, i32* %1, align 4
  %137 = load i32, i32* @OMAP_DSS_GFX, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %146

139:                                              ; preds = %135
  %140 = load i32, i32* %1, align 4
  %141 = call i32 @OVL_WINDOW_SKIP(i32 %140)
  %142 = call i32 @SR(i32 %141)
  %143 = load i32, i32* %1, align 4
  %144 = call i32 @OVL_TABLE_BA(i32 %143)
  %145 = call i32 @SR(i32 %144)
  br label %276

146:                                              ; preds = %135
  %147 = load i32, i32* %1, align 4
  %148 = call i32 @OVL_FIR(i32 %147)
  %149 = call i32 @SR(i32 %148)
  %150 = load i32, i32* %1, align 4
  %151 = call i32 @OVL_PICTURE_SIZE(i32 %150)
  %152 = call i32 @SR(i32 %151)
  %153 = load i32, i32* %1, align 4
  %154 = call i32 @OVL_ACCU0(i32 %153)
  %155 = call i32 @SR(i32 %154)
  %156 = load i32, i32* %1, align 4
  %157 = call i32 @OVL_ACCU1(i32 %156)
  %158 = call i32 @SR(i32 %157)
  store i32 0, i32* %2, align 4
  br label %159

159:                                              ; preds = %167, %146
  %160 = load i32, i32* %2, align 4
  %161 = icmp slt i32 %160, 8
  br i1 %161, label %162, label %170

162:                                              ; preds = %159
  %163 = load i32, i32* %1, align 4
  %164 = load i32, i32* %2, align 4
  %165 = call i32 @OVL_FIR_COEF_H(i32 %163, i32 %164)
  %166 = call i32 @SR(i32 %165)
  br label %167

167:                                              ; preds = %162
  %168 = load i32, i32* %2, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %2, align 4
  br label %159

170:                                              ; preds = %159
  store i32 0, i32* %2, align 4
  br label %171

171:                                              ; preds = %179, %170
  %172 = load i32, i32* %2, align 4
  %173 = icmp slt i32 %172, 8
  br i1 %173, label %174, label %182

174:                                              ; preds = %171
  %175 = load i32, i32* %1, align 4
  %176 = load i32, i32* %2, align 4
  %177 = call i32 @OVL_FIR_COEF_HV(i32 %175, i32 %176)
  %178 = call i32 @SR(i32 %177)
  br label %179

179:                                              ; preds = %174
  %180 = load i32, i32* %2, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %2, align 4
  br label %171

182:                                              ; preds = %171
  store i32 0, i32* %2, align 4
  br label %183

183:                                              ; preds = %191, %182
  %184 = load i32, i32* %2, align 4
  %185 = icmp slt i32 %184, 5
  br i1 %185, label %186, label %194

186:                                              ; preds = %183
  %187 = load i32, i32* %1, align 4
  %188 = load i32, i32* %2, align 4
  %189 = call i32 @OVL_CONV_COEF(i32 %187, i32 %188)
  %190 = call i32 @SR(i32 %189)
  br label %191

191:                                              ; preds = %186
  %192 = load i32, i32* %2, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %2, align 4
  br label %183

194:                                              ; preds = %183
  %195 = load i32, i32* @FEAT_FIR_COEF_V, align 4
  %196 = call i64 @dss_has_feature(i32 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %211

198:                                              ; preds = %194
  store i32 0, i32* %2, align 4
  br label %199

199:                                              ; preds = %207, %198
  %200 = load i32, i32* %2, align 4
  %201 = icmp slt i32 %200, 8
  br i1 %201, label %202, label %210

202:                                              ; preds = %199
  %203 = load i32, i32* %1, align 4
  %204 = load i32, i32* %2, align 4
  %205 = call i32 @OVL_FIR_COEF_V(i32 %203, i32 %204)
  %206 = call i32 @SR(i32 %205)
  br label %207

207:                                              ; preds = %202
  %208 = load i32, i32* %2, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %2, align 4
  br label %199

210:                                              ; preds = %199
  br label %211

211:                                              ; preds = %210, %194
  %212 = load i32, i32* @FEAT_HANDLE_UV_SEPARATE, align 4
  %213 = call i64 @dss_has_feature(i32 %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %267

215:                                              ; preds = %211
  %216 = load i32, i32* %1, align 4
  %217 = call i32 @OVL_BA0_UV(i32 %216)
  %218 = call i32 @SR(i32 %217)
  %219 = load i32, i32* %1, align 4
  %220 = call i32 @OVL_BA1_UV(i32 %219)
  %221 = call i32 @SR(i32 %220)
  %222 = load i32, i32* %1, align 4
  %223 = call i32 @OVL_FIR2(i32 %222)
  %224 = call i32 @SR(i32 %223)
  %225 = load i32, i32* %1, align 4
  %226 = call i32 @OVL_ACCU2_0(i32 %225)
  %227 = call i32 @SR(i32 %226)
  %228 = load i32, i32* %1, align 4
  %229 = call i32 @OVL_ACCU2_1(i32 %228)
  %230 = call i32 @SR(i32 %229)
  store i32 0, i32* %2, align 4
  br label %231

231:                                              ; preds = %239, %215
  %232 = load i32, i32* %2, align 4
  %233 = icmp slt i32 %232, 8
  br i1 %233, label %234, label %242

234:                                              ; preds = %231
  %235 = load i32, i32* %1, align 4
  %236 = load i32, i32* %2, align 4
  %237 = call i32 @OVL_FIR_COEF_H2(i32 %235, i32 %236)
  %238 = call i32 @SR(i32 %237)
  br label %239

239:                                              ; preds = %234
  %240 = load i32, i32* %2, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %2, align 4
  br label %231

242:                                              ; preds = %231
  store i32 0, i32* %2, align 4
  br label %243

243:                                              ; preds = %251, %242
  %244 = load i32, i32* %2, align 4
  %245 = icmp slt i32 %244, 8
  br i1 %245, label %246, label %254

246:                                              ; preds = %243
  %247 = load i32, i32* %1, align 4
  %248 = load i32, i32* %2, align 4
  %249 = call i32 @OVL_FIR_COEF_HV2(i32 %247, i32 %248)
  %250 = call i32 @SR(i32 %249)
  br label %251

251:                                              ; preds = %246
  %252 = load i32, i32* %2, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %2, align 4
  br label %243

254:                                              ; preds = %243
  store i32 0, i32* %2, align 4
  br label %255

255:                                              ; preds = %263, %254
  %256 = load i32, i32* %2, align 4
  %257 = icmp slt i32 %256, 8
  br i1 %257, label %258, label %266

258:                                              ; preds = %255
  %259 = load i32, i32* %1, align 4
  %260 = load i32, i32* %2, align 4
  %261 = call i32 @OVL_FIR_COEF_V2(i32 %259, i32 %260)
  %262 = call i32 @SR(i32 %261)
  br label %263

263:                                              ; preds = %258
  %264 = load i32, i32* %2, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %2, align 4
  br label %255

266:                                              ; preds = %255
  br label %267

267:                                              ; preds = %266, %211
  %268 = load i32, i32* @FEAT_ATTR2, align 4
  %269 = call i64 @dss_has_feature(i32 %268)
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %275

271:                                              ; preds = %267
  %272 = load i32, i32* %1, align 4
  %273 = call i32 @OVL_ATTRIBUTES2(i32 %272)
  %274 = call i32 @SR(i32 %273)
  br label %275

275:                                              ; preds = %271, %267
  br label %276

276:                                              ; preds = %275, %139
  %277 = load i32, i32* %1, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %1, align 4
  br label %99

279:                                              ; preds = %99
  %280 = load i32, i32* @FEAT_CORE_CLK_DIV, align 4
  %281 = call i64 @dss_has_feature(i32 %280)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %286

283:                                              ; preds = %279
  %284 = load i32, i32* @DIVISOR, align 4
  %285 = call i32 @SR(i32 %284)
  br label %286

286:                                              ; preds = %283, %279
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dispc, i32 0, i32 0), align 4
  %287 = call i32 @DSSDBG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @DSSDBG(i8*) #1

declare dso_local i32 @SR(i32) #1

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

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
