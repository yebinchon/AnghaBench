; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-stm32.c_stm32_pwm_capture.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-stm32.c_stm32_pwm_capture.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.pwm_capture = type { i8*, i8* }
%struct.stm32_pwm = type { i64, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to enable counter clock\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MSEC_PER_SEC = common dso_local global i64 0, align 8
@MAX_TIM_PSC = common dso_local global i32 0, align 4
@TIM_ARR = common dso_local global i32 0, align 4
@TIM_PSC = common dso_local global i32 0, align 4
@TIM_CCMR1 = common dso_local global i32 0, align 4
@TIM_CCMR2 = common dso_local global i32 0, align 4
@TIM_CCMR_CC1S = common dso_local global i32 0, align 4
@TIM_CCMR_CC2S = common dso_local global i32 0, align 4
@TIM_CCMR_CC1S_TI2 = common dso_local global i32 0, align 4
@TIM_CCMR_CC2S_TI2 = common dso_local global i32 0, align 4
@TIM_CCMR_CC1S_TI1 = common dso_local global i32 0, align 4
@TIM_CCMR_CC2S_TI1 = common dso_local global i32 0, align 4
@TIM_CCER = common dso_local global i32 0, align 4
@TIM_CCER_CC12P = common dso_local global i32 0, align 4
@TIM_CCER_CC34P = common dso_local global i32 0, align 4
@TIM_CCER_CC2P = common dso_local global i32 0, align 4
@TIM_CCER_CC4P = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i64 0, align 8
@MAX_TIM_ICPSC = common dso_local global i32 0, align 4
@NSEC_PER_MSEC = common dso_local global i64 0, align 8
@TIM_CCMR_IC1PSC = common dso_local global i32 0, align 4
@TIM_CCMR_IC2PSC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*, %struct.pwm_capture*, i64)* @stm32_pwm_capture to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_pwm_capture(%struct.pwm_chip* %0, %struct.pwm_device* %1, %struct.pwm_capture* %2, i64 %3) #0 {
  %5 = alloca %struct.pwm_chip*, align 8
  %6 = alloca %struct.pwm_device*, align 8
  %7 = alloca %struct.pwm_capture*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.stm32_pwm*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %5, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %6, align 8
  store %struct.pwm_capture* %2, %struct.pwm_capture** %7, align 8
  store i64 %3, i64* %8, align 8
  %21 = load %struct.pwm_chip*, %struct.pwm_chip** %5, align 8
  %22 = call %struct.stm32_pwm* @to_stm32_pwm_dev(%struct.pwm_chip* %21)
  store %struct.stm32_pwm* %22, %struct.stm32_pwm** %9, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %23 = load %struct.stm32_pwm*, %struct.stm32_pwm** %9, align 8
  %24 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %23, i32 0, i32 1
  %25 = call i32 @mutex_lock(i32* %24)
  %26 = load %struct.stm32_pwm*, %struct.stm32_pwm** %9, align 8
  %27 = call i64 @active_channels(%struct.stm32_pwm* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %4
  %30 = load i32, i32* @EBUSY, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %19, align 4
  br label %362

32:                                               ; preds = %4
  %33 = load %struct.stm32_pwm*, %struct.stm32_pwm** %9, align 8
  %34 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @clk_enable(i32 %35)
  store i32 %36, i32* %19, align 4
  %37 = load i32, i32* %19, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %32
  %40 = load %struct.stm32_pwm*, %struct.stm32_pwm** %9, align 8
  %41 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %40, i32 0, i32 4
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %362

45:                                               ; preds = %32
  %46 = load %struct.stm32_pwm*, %struct.stm32_pwm** %9, align 8
  %47 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @clk_get_rate(i32 %48)
  store i64 %49, i64* %13, align 8
  %50 = load i64, i64* %13, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %45
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %19, align 4
  br label %357

55:                                               ; preds = %45
  %56 = load i64, i64* %13, align 8
  %57 = load i64, i64* %8, align 8
  %58 = mul i64 %56, %57
  store i64 %58, i64* %11, align 8
  %59 = load i64, i64* %11, align 8
  %60 = load i64, i64* @MSEC_PER_SEC, align 8
  %61 = call i32 @do_div(i64 %59, i64 %60)
  %62 = load i64, i64* %11, align 8
  store i64 %62, i64* %10, align 8
  br label %63

63:                                               ; preds = %75, %55
  %64 = load i64, i64* %11, align 8
  %65 = load %struct.stm32_pwm*, %struct.stm32_pwm** %9, align 8
  %66 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ugt i64 %64, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* @MAX_TIM_PSC, align 4
  %72 = icmp ult i32 %70, %71
  br label %73

73:                                               ; preds = %69, %63
  %74 = phi i1 [ false, %63 ], [ %72, %69 ]
  br i1 %74, label %75, label %84

75:                                               ; preds = %73
  %76 = load i32, i32* %14, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %14, align 4
  %78 = load i64, i64* %10, align 8
  store i64 %78, i64* %11, align 8
  %79 = load i64, i64* %11, align 8
  %80 = load i32, i32* %14, align 4
  %81 = add i32 %80, 1
  %82 = zext i32 %81 to i64
  %83 = call i32 @do_div(i64 %79, i64 %82)
  br label %63

84:                                               ; preds = %73
  %85 = load %struct.stm32_pwm*, %struct.stm32_pwm** %9, align 8
  %86 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @TIM_ARR, align 4
  %89 = load %struct.stm32_pwm*, %struct.stm32_pwm** %9, align 8
  %90 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = trunc i64 %91 to i32
  %93 = call i32 @regmap_write(i32 %87, i32 %88, i32 %92)
  %94 = load %struct.stm32_pwm*, %struct.stm32_pwm** %9, align 8
  %95 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @TIM_PSC, align 4
  %98 = load i32, i32* %14, align 4
  %99 = call i32 @regmap_write(i32 %96, i32 %97, i32 %98)
  %100 = load %struct.stm32_pwm*, %struct.stm32_pwm** %9, align 8
  %101 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %104 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp slt i32 %105, 2
  br i1 %106, label %107, label %109

107:                                              ; preds = %84
  %108 = load i32, i32* @TIM_CCMR1, align 4
  br label %111

109:                                              ; preds = %84
  %110 = load i32, i32* @TIM_CCMR2, align 4
  br label %111

111:                                              ; preds = %109, %107
  %112 = phi i32 [ %108, %107 ], [ %110, %109 ]
  %113 = load i32, i32* @TIM_CCMR_CC1S, align 4
  %114 = load i32, i32* @TIM_CCMR_CC2S, align 4
  %115 = or i32 %113, %114
  %116 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %117 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = and i32 %118, 1
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %111
  %122 = load i32, i32* @TIM_CCMR_CC1S_TI2, align 4
  %123 = load i32, i32* @TIM_CCMR_CC2S_TI2, align 4
  %124 = or i32 %122, %123
  br label %129

125:                                              ; preds = %111
  %126 = load i32, i32* @TIM_CCMR_CC1S_TI1, align 4
  %127 = load i32, i32* @TIM_CCMR_CC2S_TI1, align 4
  %128 = or i32 %126, %127
  br label %129

129:                                              ; preds = %125, %121
  %130 = phi i32 [ %124, %121 ], [ %128, %125 ]
  %131 = call i32 @regmap_update_bits(i32 %102, i32 %112, i32 %115, i32 %130)
  %132 = load %struct.stm32_pwm*, %struct.stm32_pwm** %9, align 8
  %133 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @TIM_CCER, align 4
  %136 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %137 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = icmp slt i32 %138, 2
  br i1 %139, label %140, label %142

140:                                              ; preds = %129
  %141 = load i32, i32* @TIM_CCER_CC12P, align 4
  br label %144

142:                                              ; preds = %129
  %143 = load i32, i32* @TIM_CCER_CC34P, align 4
  br label %144

144:                                              ; preds = %142, %140
  %145 = phi i32 [ %141, %140 ], [ %143, %142 ]
  %146 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %147 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = icmp slt i32 %148, 2
  br i1 %149, label %150, label %152

150:                                              ; preds = %144
  %151 = load i32, i32* @TIM_CCER_CC2P, align 4
  br label %154

152:                                              ; preds = %144
  %153 = load i32, i32* @TIM_CCER_CC4P, align 4
  br label %154

154:                                              ; preds = %152, %150
  %155 = phi i32 [ %151, %150 ], [ %153, %152 ]
  %156 = call i32 @regmap_update_bits(i32 %134, i32 %135, i32 %145, i32 %155)
  %157 = load %struct.stm32_pwm*, %struct.stm32_pwm** %9, align 8
  %158 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %159 = load i64, i64* %8, align 8
  %160 = call i32 @stm32_pwm_raw_capture(%struct.stm32_pwm* %157, %struct.pwm_device* %158, i64 %159, i32* %17, i32* %18)
  store i32 %160, i32* %19, align 4
  %161 = load i32, i32* %19, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %154
  br label %332

164:                                              ; preds = %154
  %165 = load i32, i32* %17, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %178

167:                                              ; preds = %164
  %168 = load %struct.stm32_pwm*, %struct.stm32_pwm** %9, align 8
  %169 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = sub i64 %170, 4096
  %172 = trunc i64 %171 to i32
  store i32 %172, i32* %20, align 4
  %173 = load i32, i32* %20, align 4
  %174 = load i32, i32* %20, align 4
  %175 = load i32, i32* %17, align 4
  %176 = call i32 @min(i32 %174, i32 %175)
  %177 = sdiv i32 %173, %176
  store i32 %177, i32* %16, align 4
  br label %183

178:                                              ; preds = %164
  %179 = load %struct.stm32_pwm*, %struct.stm32_pwm** %9, align 8
  %180 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = trunc i64 %181 to i32
  store i32 %182, i32* %16, align 4
  br label %183

183:                                              ; preds = %178, %167
  %184 = load i32, i32* %14, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %207

186:                                              ; preds = %183
  %187 = load i32, i32* %16, align 4
  %188 = icmp ugt i32 %187, 1
  br i1 %188, label %189, label %207

189:                                              ; preds = %186
  %190 = load i32, i32* %16, align 4
  %191 = load i32, i32* %14, align 4
  %192 = udiv i32 %191, %190
  store i32 %192, i32* %14, align 4
  %193 = load %struct.stm32_pwm*, %struct.stm32_pwm** %9, align 8
  %194 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @TIM_PSC, align 4
  %197 = load i32, i32* %14, align 4
  %198 = call i32 @regmap_write(i32 %195, i32 %196, i32 %197)
  %199 = load %struct.stm32_pwm*, %struct.stm32_pwm** %9, align 8
  %200 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %201 = load i64, i64* %8, align 8
  %202 = call i32 @stm32_pwm_raw_capture(%struct.stm32_pwm* %199, %struct.pwm_device* %200, i64 %201, i32* %17, i32* %18)
  store i32 %202, i32* %19, align 4
  %203 = load i32, i32* %19, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %206

205:                                              ; preds = %189
  br label %332

206:                                              ; preds = %189
  br label %207

207:                                              ; preds = %206, %186, %183
  %208 = load i32, i32* %17, align 4
  %209 = sext i32 %208 to i64
  %210 = load i32, i32* %14, align 4
  %211 = add i32 %210, 1
  %212 = zext i32 %211 to i64
  %213 = mul i64 %209, %212
  %214 = load i64, i64* @NSEC_PER_SEC, align 8
  %215 = mul i64 %213, %214
  store i64 %215, i64* %10, align 8
  %216 = load i64, i64* %10, align 8
  %217 = load i64, i64* %13, align 8
  %218 = call i32 @do_div(i64 %216, i64 %217)
  store i32 0, i32* %15, align 4
  br label %219

219:                                              ; preds = %248, %207
  %220 = load i32, i32* %15, align 4
  %221 = load i32, i32* @MAX_TIM_ICPSC, align 4
  %222 = icmp ult i32 %220, %221
  br i1 %222, label %223, label %251

223:                                              ; preds = %219
  %224 = load i32, i32* %17, align 4
  %225 = sext i32 %224 to i64
  %226 = load %struct.stm32_pwm*, %struct.stm32_pwm** %9, align 8
  %227 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = sub i64 %228, 4096
  %230 = load i32, i32* %15, align 4
  %231 = add i32 %230, 1
  %232 = zext i32 %231 to i64
  %233 = lshr i64 %229, %232
  %234 = icmp uge i64 %225, %233
  br i1 %234, label %235, label %236

235:                                              ; preds = %223
  br label %251

236:                                              ; preds = %223
  %237 = load i64, i64* %10, align 8
  %238 = load i64, i64* %8, align 8
  %239 = load i64, i64* @NSEC_PER_MSEC, align 8
  %240 = mul i64 %238, %239
  %241 = load i32, i32* %15, align 4
  %242 = add i32 %241, 2
  %243 = zext i32 %242 to i64
  %244 = lshr i64 %240, %243
  %245 = icmp uge i64 %237, %244
  br i1 %245, label %246, label %247

246:                                              ; preds = %236
  br label %251

247:                                              ; preds = %236
  br label %248

248:                                              ; preds = %247
  %249 = load i32, i32* %15, align 4
  %250 = add i32 %249, 1
  store i32 %250, i32* %15, align 4
  br label %219

251:                                              ; preds = %246, %235, %219
  %252 = load i32, i32* %15, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %255, label %254

254:                                              ; preds = %251
  br label %302

255:                                              ; preds = %251
  %256 = load %struct.stm32_pwm*, %struct.stm32_pwm** %9, align 8
  %257 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %256, i32 0, i32 3
  %258 = load i32, i32* %257, align 8
  %259 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %260 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = icmp slt i32 %261, 2
  br i1 %262, label %263, label %265

263:                                              ; preds = %255
  %264 = load i32, i32* @TIM_CCMR1, align 4
  br label %267

265:                                              ; preds = %255
  %266 = load i32, i32* @TIM_CCMR2, align 4
  br label %267

267:                                              ; preds = %265, %263
  %268 = phi i32 [ %264, %263 ], [ %266, %265 ]
  %269 = load i32, i32* @TIM_CCMR_IC1PSC, align 4
  %270 = load i32, i32* @TIM_CCMR_IC2PSC, align 4
  %271 = or i32 %269, %270
  %272 = load i32, i32* @TIM_CCMR_IC1PSC, align 4
  %273 = load i32, i32* %15, align 4
  %274 = call i32 @FIELD_PREP(i32 %272, i32 %273)
  %275 = load i32, i32* @TIM_CCMR_IC2PSC, align 4
  %276 = load i32, i32* %15, align 4
  %277 = call i32 @FIELD_PREP(i32 %275, i32 %276)
  %278 = or i32 %274, %277
  %279 = call i32 @regmap_update_bits(i32 %258, i32 %268, i32 %271, i32 %278)
  %280 = load %struct.stm32_pwm*, %struct.stm32_pwm** %9, align 8
  %281 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %282 = load i64, i64* %8, align 8
  %283 = call i32 @stm32_pwm_raw_capture(%struct.stm32_pwm* %280, %struct.pwm_device* %281, i64 %282, i32* %17, i32* %18)
  store i32 %283, i32* %19, align 4
  %284 = load i32, i32* %19, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %287

286:                                              ; preds = %267
  br label %332

287:                                              ; preds = %267
  %288 = load i32, i32* %18, align 4
  %289 = load i32, i32* %17, align 4
  %290 = load i32, i32* %15, align 4
  %291 = ashr i32 %289, %290
  %292 = icmp sge i32 %288, %291
  br i1 %292, label %293, label %301

293:                                              ; preds = %287
  %294 = load i32, i32* %17, align 4
  %295 = load i32, i32* %15, align 4
  %296 = ashr i32 %294, %295
  %297 = load i32, i32* %17, align 4
  %298 = load i32, i32* %18, align 4
  %299 = sub nsw i32 %297, %298
  %300 = sub nsw i32 %296, %299
  store i32 %300, i32* %18, align 4
  br label %301

301:                                              ; preds = %293, %287
  br label %302

302:                                              ; preds = %301, %254
  %303 = load i32, i32* %17, align 4
  %304 = sext i32 %303 to i64
  %305 = load i32, i32* %14, align 4
  %306 = add i32 %305, 1
  %307 = zext i32 %306 to i64
  %308 = mul i64 %304, %307
  %309 = load i64, i64* @NSEC_PER_SEC, align 8
  %310 = mul i64 %308, %309
  store i64 %310, i64* %10, align 8
  %311 = load i64, i64* %10, align 8
  %312 = load i64, i64* %13, align 8
  %313 = load i32, i32* %15, align 4
  %314 = zext i32 %313 to i64
  %315 = shl i64 %312, %314
  %316 = call i8* @DIV_ROUND_UP_ULL(i64 %311, i64 %315)
  %317 = load %struct.pwm_capture*, %struct.pwm_capture** %7, align 8
  %318 = getelementptr inbounds %struct.pwm_capture, %struct.pwm_capture* %317, i32 0, i32 1
  store i8* %316, i8** %318, align 8
  %319 = load i32, i32* %18, align 4
  %320 = sext i32 %319 to i64
  %321 = load i32, i32* %14, align 4
  %322 = add i32 %321, 1
  %323 = zext i32 %322 to i64
  %324 = mul i64 %320, %323
  %325 = load i64, i64* @NSEC_PER_SEC, align 8
  %326 = mul i64 %324, %325
  store i64 %326, i64* %12, align 8
  %327 = load i64, i64* %12, align 8
  %328 = load i64, i64* %13, align 8
  %329 = call i8* @DIV_ROUND_UP_ULL(i64 %327, i64 %328)
  %330 = load %struct.pwm_capture*, %struct.pwm_capture** %7, align 8
  %331 = getelementptr inbounds %struct.pwm_capture, %struct.pwm_capture* %330, i32 0, i32 0
  store i8* %329, i8** %331, align 8
  br label %332

332:                                              ; preds = %302, %286, %205, %163
  %333 = load %struct.stm32_pwm*, %struct.stm32_pwm** %9, align 8
  %334 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %333, i32 0, i32 3
  %335 = load i32, i32* %334, align 8
  %336 = load i32, i32* @TIM_CCER, align 4
  %337 = call i32 @regmap_write(i32 %335, i32 %336, i32 0)
  %338 = load %struct.stm32_pwm*, %struct.stm32_pwm** %9, align 8
  %339 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %338, i32 0, i32 3
  %340 = load i32, i32* %339, align 8
  %341 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %342 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 4
  %344 = icmp slt i32 %343, 2
  br i1 %344, label %345, label %347

345:                                              ; preds = %332
  %346 = load i32, i32* @TIM_CCMR1, align 4
  br label %349

347:                                              ; preds = %332
  %348 = load i32, i32* @TIM_CCMR2, align 4
  br label %349

349:                                              ; preds = %347, %345
  %350 = phi i32 [ %346, %345 ], [ %348, %347 ]
  %351 = call i32 @regmap_write(i32 %340, i32 %350, i32 0)
  %352 = load %struct.stm32_pwm*, %struct.stm32_pwm** %9, align 8
  %353 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %352, i32 0, i32 3
  %354 = load i32, i32* %353, align 8
  %355 = load i32, i32* @TIM_PSC, align 4
  %356 = call i32 @regmap_write(i32 %354, i32 %355, i32 0)
  br label %357

357:                                              ; preds = %349, %52
  %358 = load %struct.stm32_pwm*, %struct.stm32_pwm** %9, align 8
  %359 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %358, i32 0, i32 2
  %360 = load i32, i32* %359, align 4
  %361 = call i32 @clk_disable(i32 %360)
  br label %362

362:                                              ; preds = %357, %39, %29
  %363 = load %struct.stm32_pwm*, %struct.stm32_pwm** %9, align 8
  %364 = getelementptr inbounds %struct.stm32_pwm, %struct.stm32_pwm* %363, i32 0, i32 1
  %365 = call i32 @mutex_unlock(i32* %364)
  %366 = load i32, i32* %19, align 4
  ret i32 %366
}

declare dso_local %struct.stm32_pwm* @to_stm32_pwm_dev(%struct.pwm_chip*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @active_channels(%struct.stm32_pwm*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @do_div(i64, i64) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @stm32_pwm_raw_capture(%struct.stm32_pwm*, %struct.pwm_device*, i64, i32*, i32*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i8* @DIV_ROUND_UP_ULL(i64, i64) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
