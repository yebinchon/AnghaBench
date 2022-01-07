; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-stm32-lp.c_stm32_pwm_lp_apply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-stm32-lp.c_stm32_pwm_lp_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.pwm_state = type { i64, i64, i32, i64 }
%struct.stm32_pwm_lp = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@STM32_LPTIM_CR = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"Can't reach %u ns\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@STM32_LPTIM_MAX_ARR = common dso_local global i64 0, align 8
@STM32_LPTIM_MAX_PRESCALER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"max prescaler exceeded\0A\00", align 1
@STM32_LPTIM_CFGR = common dso_local global i32 0, align 4
@STM32_LPTIM_PRESC = common dso_local global i32 0, align 4
@STM32_LPTIM_WAVPOL = common dso_local global i32 0, align 4
@STM32_LPTIM_ENABLE = common dso_local global i64 0, align 8
@STM32_LPTIM_ARR = common dso_local global i32 0, align 4
@STM32_LPTIM_CMP = common dso_local global i32 0, align 4
@STM32_LPTIM_ISR = common dso_local global i32 0, align 4
@STM32_LPTIM_CMPOK_ARROK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"ARR/CMP registers write issue\0A\00", align 1
@STM32_LPTIM_ICR = common dso_local global i32 0, align 4
@STM32_LPTIM_CMPOKCF_ARROKCF = common dso_local global i64 0, align 8
@STM32_LPTIM_CNTSTRT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*, %struct.pwm_state*)* @stm32_pwm_lp_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_pwm_lp_apply(%struct.pwm_chip* %0, %struct.pwm_device* %1, %struct.pwm_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pwm_chip*, align 8
  %6 = alloca %struct.pwm_device*, align 8
  %7 = alloca %struct.pwm_state*, align 8
  %8 = alloca %struct.stm32_pwm_lp*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.pwm_state, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %5, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %6, align 8
  store %struct.pwm_state* %2, %struct.pwm_state** %7, align 8
  %19 = load %struct.pwm_chip*, %struct.pwm_chip** %5, align 8
  %20 = call %struct.stm32_pwm_lp* @to_stm32_pwm_lp(%struct.pwm_chip* %19)
  store %struct.stm32_pwm_lp* %20, %struct.stm32_pwm_lp** %8, align 8
  store i32 0, i32* %16, align 4
  %21 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %22 = call i32 @pwm_get_state(%struct.pwm_device* %21, %struct.pwm_state* %12)
  %23 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %12, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %17, align 4
  %28 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %29 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %52, label %32

32:                                               ; preds = %3
  %33 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %12, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %32
  %37 = load %struct.stm32_pwm_lp*, %struct.stm32_pwm_lp** %8, align 8
  %38 = getelementptr inbounds %struct.stm32_pwm_lp, %struct.stm32_pwm_lp* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @STM32_LPTIM_CR, align 4
  %41 = call i32 @regmap_write(i32 %39, i32 %40, i64 0)
  store i32 %41, i32* %18, align 4
  %42 = load i32, i32* %18, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i32, i32* %18, align 4
  store i32 %45, i32* %4, align 4
  br label %283

46:                                               ; preds = %36
  %47 = load %struct.stm32_pwm_lp*, %struct.stm32_pwm_lp** %8, align 8
  %48 = getelementptr inbounds %struct.stm32_pwm_lp, %struct.stm32_pwm_lp* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @clk_disable(i32 %49)
  br label %51

51:                                               ; preds = %46, %32
  store i32 0, i32* %4, align 4
  br label %283

52:                                               ; preds = %3
  %53 = load %struct.stm32_pwm_lp*, %struct.stm32_pwm_lp** %8, align 8
  %54 = getelementptr inbounds %struct.stm32_pwm_lp, %struct.stm32_pwm_lp* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i64 @clk_get_rate(i32 %55)
  %57 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %58 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = mul i64 %56, %59
  store i64 %60, i64* %10, align 8
  %61 = load i64, i64* %10, align 8
  %62 = load i64, i64* @NSEC_PER_SEC, align 8
  %63 = call i32 @do_div(i64 %61, i64 %62)
  %64 = load i64, i64* %10, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %77, label %66

66:                                               ; preds = %52
  %67 = load %struct.stm32_pwm_lp*, %struct.stm32_pwm_lp** %8, align 8
  %68 = getelementptr inbounds %struct.stm32_pwm_lp, %struct.stm32_pwm_lp* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %72 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @dev_dbg(i32 %70, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %73)
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %4, align 4
  br label %283

77:                                               ; preds = %52
  %78 = load i64, i64* %10, align 8
  store i64 %78, i64* %9, align 8
  br label %79

79:                                               ; preds = %98, %77
  %80 = load i64, i64* %10, align 8
  %81 = load i64, i64* @STM32_LPTIM_MAX_ARR, align 8
  %82 = icmp ugt i64 %80, %81
  br i1 %82, label %83, label %103

83:                                               ; preds = %79
  %84 = load i32, i32* %16, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %16, align 4
  %86 = load i32, i32* %16, align 4
  %87 = shl i32 1, %86
  %88 = load i32, i32* @STM32_LPTIM_MAX_PRESCALER, align 4
  %89 = icmp sgt i32 %87, %88
  br i1 %89, label %90, label %98

90:                                               ; preds = %83
  %91 = load %struct.stm32_pwm_lp*, %struct.stm32_pwm_lp** %8, align 8
  %92 = getelementptr inbounds %struct.stm32_pwm_lp, %struct.stm32_pwm_lp* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @dev_err(i32 %94, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %4, align 4
  br label %283

98:                                               ; preds = %83
  %99 = load i64, i64* %9, align 8
  %100 = load i32, i32* %16, align 4
  %101 = zext i32 %100 to i64
  %102 = lshr i64 %99, %101
  store i64 %102, i64* %10, align 8
  br label %79

103:                                              ; preds = %79
  %104 = load i64, i64* %10, align 8
  store i64 %104, i64* %9, align 8
  %105 = load i64, i64* %9, align 8
  %106 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %107 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = mul i64 %105, %108
  store i64 %109, i64* %11, align 8
  %110 = load i64, i64* %11, align 8
  %111 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %112 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @do_div(i64 %110, i64 %113)
  %115 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %12, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %128, label %118

118:                                              ; preds = %103
  %119 = load %struct.stm32_pwm_lp*, %struct.stm32_pwm_lp** %8, align 8
  %120 = getelementptr inbounds %struct.stm32_pwm_lp, %struct.stm32_pwm_lp* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @clk_enable(i32 %121)
  store i32 %122, i32* %18, align 4
  %123 = load i32, i32* %18, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %118
  %126 = load i32, i32* %18, align 4
  store i32 %126, i32* %4, align 4
  br label %283

127:                                              ; preds = %118
  br label %128

128:                                              ; preds = %127, %103
  %129 = load %struct.stm32_pwm_lp*, %struct.stm32_pwm_lp** %8, align 8
  %130 = getelementptr inbounds %struct.stm32_pwm_lp, %struct.stm32_pwm_lp* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @STM32_LPTIM_CFGR, align 4
  %133 = call i32 @regmap_read(i32 %131, i32 %132, i32* %15)
  store i32 %133, i32* %18, align 4
  %134 = load i32, i32* %18, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %128
  br label %272

137:                                              ; preds = %128
  %138 = load i32, i32* @STM32_LPTIM_PRESC, align 4
  %139 = load i32, i32* %15, align 4
  %140 = call i32 @FIELD_GET(i32 %138, i32 %139)
  %141 = load i32, i32* %16, align 4
  %142 = icmp ne i32 %140, %141
  br i1 %142, label %151, label %143

143:                                              ; preds = %137
  %144 = load i32, i32* @STM32_LPTIM_WAVPOL, align 4
  %145 = load i32, i32* %15, align 4
  %146 = call i32 @FIELD_GET(i32 %144, i32 %145)
  %147 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %148 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = icmp ne i32 %146, %149
  br i1 %150, label %151, label %185

151:                                              ; preds = %143, %137
  %152 = load i32, i32* @STM32_LPTIM_PRESC, align 4
  %153 = load i32, i32* %16, align 4
  %154 = call i32 @FIELD_PREP(i32 %152, i32 %153)
  store i32 %154, i32* %13, align 4
  %155 = load i32, i32* @STM32_LPTIM_WAVPOL, align 4
  %156 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %157 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @FIELD_PREP(i32 %155, i32 %158)
  %160 = load i32, i32* %13, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %13, align 4
  %162 = load i32, i32* @STM32_LPTIM_PRESC, align 4
  %163 = load i32, i32* @STM32_LPTIM_WAVPOL, align 4
  %164 = or i32 %162, %163
  store i32 %164, i32* %14, align 4
  store i32 1, i32* %17, align 4
  %165 = load %struct.stm32_pwm_lp*, %struct.stm32_pwm_lp** %8, align 8
  %166 = getelementptr inbounds %struct.stm32_pwm_lp, %struct.stm32_pwm_lp* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @STM32_LPTIM_CR, align 4
  %169 = call i32 @regmap_write(i32 %167, i32 %168, i64 0)
  store i32 %169, i32* %18, align 4
  %170 = load i32, i32* %18, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %151
  br label %272

173:                                              ; preds = %151
  %174 = load %struct.stm32_pwm_lp*, %struct.stm32_pwm_lp** %8, align 8
  %175 = getelementptr inbounds %struct.stm32_pwm_lp, %struct.stm32_pwm_lp* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @STM32_LPTIM_CFGR, align 4
  %178 = load i32, i32* %14, align 4
  %179 = load i32, i32* %13, align 4
  %180 = call i32 @regmap_update_bits(i32 %176, i32 %177, i32 %178, i32 %179)
  store i32 %180, i32* %18, align 4
  %181 = load i32, i32* %18, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %173
  br label %272

184:                                              ; preds = %173
  br label %185

185:                                              ; preds = %184, %143
  %186 = load i32, i32* %17, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %199

188:                                              ; preds = %185
  %189 = load %struct.stm32_pwm_lp*, %struct.stm32_pwm_lp** %8, align 8
  %190 = getelementptr inbounds %struct.stm32_pwm_lp, %struct.stm32_pwm_lp* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* @STM32_LPTIM_CR, align 4
  %193 = load i64, i64* @STM32_LPTIM_ENABLE, align 8
  %194 = call i32 @regmap_write(i32 %191, i32 %192, i64 %193)
  store i32 %194, i32* %18, align 4
  %195 = load i32, i32* %18, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %188
  br label %272

198:                                              ; preds = %188
  br label %199

199:                                              ; preds = %198, %185
  %200 = load %struct.stm32_pwm_lp*, %struct.stm32_pwm_lp** %8, align 8
  %201 = getelementptr inbounds %struct.stm32_pwm_lp, %struct.stm32_pwm_lp* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* @STM32_LPTIM_ARR, align 4
  %204 = load i64, i64* %9, align 8
  %205 = sub i64 %204, 1
  %206 = call i32 @regmap_write(i32 %202, i32 %203, i64 %205)
  store i32 %206, i32* %18, align 4
  %207 = load i32, i32* %18, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %199
  br label %272

210:                                              ; preds = %199
  %211 = load %struct.stm32_pwm_lp*, %struct.stm32_pwm_lp** %8, align 8
  %212 = getelementptr inbounds %struct.stm32_pwm_lp, %struct.stm32_pwm_lp* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @STM32_LPTIM_CMP, align 4
  %215 = load i64, i64* %9, align 8
  %216 = load i64, i64* %11, align 8
  %217 = add i64 1, %216
  %218 = sub i64 %215, %217
  %219 = call i32 @regmap_write(i32 %213, i32 %214, i64 %218)
  store i32 %219, i32* %18, align 4
  %220 = load i32, i32* %18, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %223

222:                                              ; preds = %210
  br label %272

223:                                              ; preds = %210
  %224 = load %struct.stm32_pwm_lp*, %struct.stm32_pwm_lp** %8, align 8
  %225 = getelementptr inbounds %struct.stm32_pwm_lp, %struct.stm32_pwm_lp* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* @STM32_LPTIM_ISR, align 4
  %228 = load i32, i32* %13, align 4
  %229 = load i32, i32* %13, align 4
  %230 = load i32, i32* @STM32_LPTIM_CMPOK_ARROK, align 4
  %231 = and i32 %229, %230
  %232 = call i32 @regmap_read_poll_timeout(i32 %226, i32 %227, i32 %228, i32 %231, i32 100, i32 1000)
  store i32 %232, i32* %18, align 4
  %233 = load i32, i32* %18, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %241

235:                                              ; preds = %223
  %236 = load %struct.stm32_pwm_lp*, %struct.stm32_pwm_lp** %8, align 8
  %237 = getelementptr inbounds %struct.stm32_pwm_lp, %struct.stm32_pwm_lp* %236, i32 0, i32 2
  %238 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @dev_err(i32 %239, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %272

241:                                              ; preds = %223
  %242 = load %struct.stm32_pwm_lp*, %struct.stm32_pwm_lp** %8, align 8
  %243 = getelementptr inbounds %struct.stm32_pwm_lp, %struct.stm32_pwm_lp* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* @STM32_LPTIM_ICR, align 4
  %246 = load i64, i64* @STM32_LPTIM_CMPOKCF_ARROKCF, align 8
  %247 = call i32 @regmap_write(i32 %244, i32 %245, i64 %246)
  store i32 %247, i32* %18, align 4
  %248 = load i32, i32* %18, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %241
  br label %272

251:                                              ; preds = %241
  %252 = load i32, i32* %17, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %271

254:                                              ; preds = %251
  %255 = load %struct.stm32_pwm_lp*, %struct.stm32_pwm_lp** %8, align 8
  %256 = getelementptr inbounds %struct.stm32_pwm_lp, %struct.stm32_pwm_lp* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = load i32, i32* @STM32_LPTIM_CR, align 4
  %259 = load i32, i32* @STM32_LPTIM_CNTSTRT, align 4
  %260 = load i32, i32* @STM32_LPTIM_CNTSTRT, align 4
  %261 = call i32 @regmap_update_bits(i32 %257, i32 %258, i32 %259, i32 %260)
  store i32 %261, i32* %18, align 4
  %262 = load i32, i32* %18, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %270

264:                                              ; preds = %254
  %265 = load %struct.stm32_pwm_lp*, %struct.stm32_pwm_lp** %8, align 8
  %266 = getelementptr inbounds %struct.stm32_pwm_lp, %struct.stm32_pwm_lp* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* @STM32_LPTIM_CR, align 4
  %269 = call i32 @regmap_write(i32 %267, i32 %268, i64 0)
  br label %272

270:                                              ; preds = %254
  br label %271

271:                                              ; preds = %270, %251
  store i32 0, i32* %4, align 4
  br label %283

272:                                              ; preds = %264, %250, %235, %222, %209, %197, %183, %172, %136
  %273 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %12, i32 0, i32 3
  %274 = load i64, i64* %273, align 8
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %281, label %276

276:                                              ; preds = %272
  %277 = load %struct.stm32_pwm_lp*, %struct.stm32_pwm_lp** %8, align 8
  %278 = getelementptr inbounds %struct.stm32_pwm_lp, %struct.stm32_pwm_lp* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = call i32 @clk_disable(i32 %279)
  br label %281

281:                                              ; preds = %276, %272
  %282 = load i32, i32* %18, align 4
  store i32 %282, i32* %4, align 4
  br label %283

283:                                              ; preds = %281, %271, %125, %90, %66, %51, %44
  %284 = load i32, i32* %4, align 4
  ret i32 %284
}

declare dso_local %struct.stm32_pwm_lp* @to_stm32_pwm_lp(%struct.pwm_chip*) #1

declare dso_local i32 @pwm_get_state(%struct.pwm_device*, %struct.pwm_state*) #1

declare dso_local i32 @regmap_write(i32, i32, i64) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @do_div(i64, i64) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @FIELD_GET(i32, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_read_poll_timeout(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
