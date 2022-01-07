; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-atmel-hlcdc.c_atmel_hlcdc_pwm_apply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-atmel-hlcdc.c_atmel_hlcdc_pwm_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.pwm_state = type { i32, i32, i64, i64 }
%struct.atmel_hlcdc_pwm = type { %struct.clk*, %struct.TYPE_2__*, %struct.atmel_hlcdc* }
%struct.clk = type { i32 }
%struct.TYPE_2__ = type { i64, i64 }
%struct.atmel_hlcdc = type { i32, %struct.clk*, %struct.clk* }

@EINVAL = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i64 0, align 8
@ATMEL_HLCDC_PWMPS_MAX = common dso_local global i32 0, align 4
@ATMEL_HLCDC_CLKPWMSEL = common dso_local global i32 0, align 4
@PWM_POLARITY_NORMAL = common dso_local global i64 0, align 8
@ATMEL_HLCDC_PWMPOL = common dso_local global i32 0, align 4
@ATMEL_HLCDC_PWMCVAL_MASK = common dso_local global i32 0, align 4
@ATMEL_HLCDC_PWMPS_MASK = common dso_local global i32 0, align 4
@ATMEL_HLCDC_EN = common dso_local global i32 0, align 4
@ATMEL_HLCDC_PWM = common dso_local global i32 0, align 4
@ATMEL_HLCDC_SR = common dso_local global i32 0, align 4
@ATMEL_HLCDC_DIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*, %struct.pwm_state*)* @atmel_hlcdc_pwm_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_hlcdc_pwm_apply(%struct.pwm_chip* %0, %struct.pwm_device* %1, %struct.pwm_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pwm_chip*, align 8
  %6 = alloca %struct.pwm_device*, align 8
  %7 = alloca %struct.pwm_state*, align 8
  %8 = alloca %struct.atmel_hlcdc_pwm*, align 8
  %9 = alloca %struct.atmel_hlcdc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.clk*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %5, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %6, align 8
  store %struct.pwm_state* %2, %struct.pwm_state** %7, align 8
  %20 = load %struct.pwm_chip*, %struct.pwm_chip** %5, align 8
  %21 = call %struct.atmel_hlcdc_pwm* @to_atmel_hlcdc_pwm(%struct.pwm_chip* %20)
  store %struct.atmel_hlcdc_pwm* %21, %struct.atmel_hlcdc_pwm** %8, align 8
  %22 = load %struct.atmel_hlcdc_pwm*, %struct.atmel_hlcdc_pwm** %8, align 8
  %23 = getelementptr inbounds %struct.atmel_hlcdc_pwm, %struct.atmel_hlcdc_pwm* %22, i32 0, i32 2
  %24 = load %struct.atmel_hlcdc*, %struct.atmel_hlcdc** %23, align 8
  store %struct.atmel_hlcdc* %24, %struct.atmel_hlcdc** %9, align 8
  %25 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %26 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %249

29:                                               ; preds = %3
  %30 = load %struct.atmel_hlcdc*, %struct.atmel_hlcdc** %9, align 8
  %31 = getelementptr inbounds %struct.atmel_hlcdc, %struct.atmel_hlcdc* %30, i32 0, i32 2
  %32 = load %struct.clk*, %struct.clk** %31, align 8
  store %struct.clk* %32, %struct.clk** %12, align 8
  %33 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %34 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = mul nsw i32 %35, 256
  store i32 %36, i32* %13, align 4
  %37 = load %struct.atmel_hlcdc_pwm*, %struct.atmel_hlcdc_pwm** %8, align 8
  %38 = getelementptr inbounds %struct.atmel_hlcdc_pwm, %struct.atmel_hlcdc_pwm* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = icmp ne %struct.TYPE_2__* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %29
  %42 = load %struct.atmel_hlcdc_pwm*, %struct.atmel_hlcdc_pwm** %8, align 8
  %43 = getelementptr inbounds %struct.atmel_hlcdc_pwm, %struct.atmel_hlcdc_pwm* %42, i32 0, i32 1
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %63, label %48

48:                                               ; preds = %41, %29
  %49 = load %struct.clk*, %struct.clk** %12, align 8
  %50 = call i64 @clk_get_rate(%struct.clk* %49)
  store i64 %50, i64* %14, align 8
  %51 = load i64, i64* %14, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %48
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %285

56:                                               ; preds = %48
  %57 = load i64, i64* @NSEC_PER_SEC, align 8
  %58 = trunc i64 %57 to i32
  %59 = mul nsw i32 %58, 256
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %15, align 4
  %61 = load i64, i64* %14, align 8
  %62 = call i32 @do_div(i32 %60, i64 %61)
  br label %63

63:                                               ; preds = %56, %41
  %64 = load %struct.atmel_hlcdc_pwm*, %struct.atmel_hlcdc_pwm** %8, align 8
  %65 = getelementptr inbounds %struct.atmel_hlcdc_pwm, %struct.atmel_hlcdc_pwm* %64, i32 0, i32 1
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = icmp ne %struct.TYPE_2__* %66, null
  br i1 %67, label %68, label %75

68:                                               ; preds = %63
  %69 = load %struct.atmel_hlcdc_pwm*, %struct.atmel_hlcdc_pwm** %8, align 8
  %70 = getelementptr inbounds %struct.atmel_hlcdc_pwm, %struct.atmel_hlcdc_pwm* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %68, %63
  %76 = load i32, i32* %15, align 4
  %77 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %78 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp sgt i32 %76, %79
  br i1 %80, label %81, label %99

81:                                               ; preds = %75, %68
  %82 = load %struct.atmel_hlcdc*, %struct.atmel_hlcdc** %9, align 8
  %83 = getelementptr inbounds %struct.atmel_hlcdc, %struct.atmel_hlcdc* %82, i32 0, i32 1
  %84 = load %struct.clk*, %struct.clk** %83, align 8
  store %struct.clk* %84, %struct.clk** %12, align 8
  %85 = load %struct.clk*, %struct.clk** %12, align 8
  %86 = call i64 @clk_get_rate(%struct.clk* %85)
  store i64 %86, i64* %14, align 8
  %87 = load i64, i64* %14, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %81
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %4, align 4
  br label %285

92:                                               ; preds = %81
  %93 = load i64, i64* @NSEC_PER_SEC, align 8
  %94 = trunc i64 %93 to i32
  %95 = mul nsw i32 %94, 256
  store i32 %95, i32* %15, align 4
  %96 = load i32, i32* %15, align 4
  %97 = load i64, i64* %14, align 8
  %98 = call i32 @do_div(i32 %96, i64 %97)
  br label %99

99:                                               ; preds = %92, %75
  store i32 0, i32* %17, align 4
  br label %100

100:                                              ; preds = %130, %99
  %101 = load i32, i32* %17, align 4
  %102 = load i32, i32* @ATMEL_HLCDC_PWMPS_MAX, align 4
  %103 = icmp sle i32 %101, %102
  br i1 %103, label %104, label %133

104:                                              ; preds = %100
  %105 = load i32, i32* %17, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %120, label %107

107:                                              ; preds = %104
  %108 = load %struct.atmel_hlcdc_pwm*, %struct.atmel_hlcdc_pwm** %8, align 8
  %109 = getelementptr inbounds %struct.atmel_hlcdc_pwm, %struct.atmel_hlcdc_pwm* %108, i32 0, i32 1
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = icmp ne %struct.TYPE_2__* %110, null
  br i1 %111, label %112, label %120

112:                                              ; preds = %107
  %113 = load %struct.atmel_hlcdc_pwm*, %struct.atmel_hlcdc_pwm** %8, align 8
  %114 = getelementptr inbounds %struct.atmel_hlcdc_pwm, %struct.atmel_hlcdc_pwm* %113, i32 0, i32 1
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %112
  br label %130

120:                                              ; preds = %112, %107, %104
  %121 = load i32, i32* %15, align 4
  %122 = load i32, i32* %17, align 4
  %123 = shl i32 %121, %122
  %124 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %125 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = icmp sge i32 %123, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %120
  br label %133

129:                                              ; preds = %120
  br label %130

130:                                              ; preds = %129, %119
  %131 = load i32, i32* %17, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %17, align 4
  br label %100

133:                                              ; preds = %128, %100
  %134 = load i32, i32* %17, align 4
  %135 = load i32, i32* @ATMEL_HLCDC_PWMPS_MAX, align 4
  %136 = icmp sgt i32 %134, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %133
  %138 = load i32, i32* @EINVAL, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %4, align 4
  br label %285

140:                                              ; preds = %133
  %141 = load i32, i32* %17, align 4
  %142 = call i32 @ATMEL_HLCDC_PWMPS(i32 %141)
  store i32 %142, i32* %16, align 4
  %143 = load %struct.clk*, %struct.clk** %12, align 8
  %144 = load %struct.atmel_hlcdc_pwm*, %struct.atmel_hlcdc_pwm** %8, align 8
  %145 = getelementptr inbounds %struct.atmel_hlcdc_pwm, %struct.atmel_hlcdc_pwm* %144, i32 0, i32 0
  %146 = load %struct.clk*, %struct.clk** %145, align 8
  %147 = icmp ne %struct.clk* %143, %146
  br i1 %147, label %148, label %183

148:                                              ; preds = %140
  store i32 0, i32* %18, align 4
  %149 = load %struct.clk*, %struct.clk** %12, align 8
  %150 = call i32 @clk_prepare_enable(%struct.clk* %149)
  store i32 %150, i32* %19, align 4
  %151 = load i32, i32* %19, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %148
  %154 = load i32, i32* %19, align 4
  store i32 %154, i32* %4, align 4
  br label %285

155:                                              ; preds = %148
  %156 = load %struct.atmel_hlcdc_pwm*, %struct.atmel_hlcdc_pwm** %8, align 8
  %157 = getelementptr inbounds %struct.atmel_hlcdc_pwm, %struct.atmel_hlcdc_pwm* %156, i32 0, i32 0
  %158 = load %struct.clk*, %struct.clk** %157, align 8
  %159 = call i32 @clk_disable_unprepare(%struct.clk* %158)
  %160 = load %struct.clk*, %struct.clk** %12, align 8
  %161 = load %struct.atmel_hlcdc_pwm*, %struct.atmel_hlcdc_pwm** %8, align 8
  %162 = getelementptr inbounds %struct.atmel_hlcdc_pwm, %struct.atmel_hlcdc_pwm* %161, i32 0, i32 0
  store %struct.clk* %160, %struct.clk** %162, align 8
  %163 = load %struct.clk*, %struct.clk** %12, align 8
  %164 = load %struct.atmel_hlcdc*, %struct.atmel_hlcdc** %9, align 8
  %165 = getelementptr inbounds %struct.atmel_hlcdc, %struct.atmel_hlcdc* %164, i32 0, i32 1
  %166 = load %struct.clk*, %struct.clk** %165, align 8
  %167 = icmp eq %struct.clk* %163, %166
  br i1 %167, label %168, label %170

168:                                              ; preds = %155
  %169 = load i32, i32* @ATMEL_HLCDC_CLKPWMSEL, align 4
  store i32 %169, i32* %18, align 4
  br label %170

170:                                              ; preds = %168, %155
  %171 = load %struct.atmel_hlcdc*, %struct.atmel_hlcdc** %9, align 8
  %172 = getelementptr inbounds %struct.atmel_hlcdc, %struct.atmel_hlcdc* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @ATMEL_HLCDC_CFG(i32 0)
  %175 = load i32, i32* @ATMEL_HLCDC_CLKPWMSEL, align 4
  %176 = load i32, i32* %18, align 4
  %177 = call i32 @regmap_update_bits(i32 %173, i32 %174, i32 %175, i32 %176)
  store i32 %177, i32* %19, align 4
  %178 = load i32, i32* %19, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %170
  %181 = load i32, i32* %19, align 4
  store i32 %181, i32* %4, align 4
  br label %285

182:                                              ; preds = %170
  br label %183

183:                                              ; preds = %182, %140
  %184 = load i32, i32* %13, align 4
  %185 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %186 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = sext i32 %187 to i64
  %189 = call i32 @do_div(i32 %184, i64 %188)
  %190 = load i32, i32* %13, align 4
  %191 = icmp sgt i32 %190, 255
  br i1 %191, label %192, label %193

192:                                              ; preds = %183
  store i32 255, i32* %13, align 4
  br label %193

193:                                              ; preds = %192, %183
  %194 = load i32, i32* %13, align 4
  %195 = call i32 @ATMEL_HLCDC_PWMCVAL(i32 %194)
  %196 = load i32, i32* %16, align 4
  %197 = or i32 %196, %195
  store i32 %197, i32* %16, align 4
  %198 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %199 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %198, i32 0, i32 2
  %200 = load i64, i64* %199, align 8
  %201 = load i64, i64* @PWM_POLARITY_NORMAL, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %207

203:                                              ; preds = %193
  %204 = load i32, i32* @ATMEL_HLCDC_PWMPOL, align 4
  %205 = load i32, i32* %16, align 4
  %206 = or i32 %205, %204
  store i32 %206, i32* %16, align 4
  br label %207

207:                                              ; preds = %203, %193
  %208 = load %struct.atmel_hlcdc*, %struct.atmel_hlcdc** %9, align 8
  %209 = getelementptr inbounds %struct.atmel_hlcdc, %struct.atmel_hlcdc* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = call i32 @ATMEL_HLCDC_CFG(i32 6)
  %212 = load i32, i32* @ATMEL_HLCDC_PWMCVAL_MASK, align 4
  %213 = load i32, i32* @ATMEL_HLCDC_PWMPS_MASK, align 4
  %214 = or i32 %212, %213
  %215 = load i32, i32* @ATMEL_HLCDC_PWMPOL, align 4
  %216 = or i32 %214, %215
  %217 = load i32, i32* %16, align 4
  %218 = call i32 @regmap_update_bits(i32 %210, i32 %211, i32 %216, i32 %217)
  store i32 %218, i32* %11, align 4
  %219 = load i32, i32* %11, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %223

221:                                              ; preds = %207
  %222 = load i32, i32* %11, align 4
  store i32 %222, i32* %4, align 4
  br label %285

223:                                              ; preds = %207
  %224 = load %struct.atmel_hlcdc*, %struct.atmel_hlcdc** %9, align 8
  %225 = getelementptr inbounds %struct.atmel_hlcdc, %struct.atmel_hlcdc* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load i32, i32* @ATMEL_HLCDC_EN, align 4
  %228 = load i32, i32* @ATMEL_HLCDC_PWM, align 4
  %229 = call i32 @regmap_write(i32 %226, i32 %227, i32 %228)
  store i32 %229, i32* %11, align 4
  %230 = load i32, i32* %11, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %234

232:                                              ; preds = %223
  %233 = load i32, i32* %11, align 4
  store i32 %233, i32* %4, align 4
  br label %285

234:                                              ; preds = %223
  %235 = load %struct.atmel_hlcdc*, %struct.atmel_hlcdc** %9, align 8
  %236 = getelementptr inbounds %struct.atmel_hlcdc, %struct.atmel_hlcdc* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* @ATMEL_HLCDC_SR, align 4
  %239 = load i32, i32* %10, align 4
  %240 = load i32, i32* %10, align 4
  %241 = load i32, i32* @ATMEL_HLCDC_PWM, align 4
  %242 = and i32 %240, %241
  %243 = call i32 @regmap_read_poll_timeout(i32 %237, i32 %238, i32 %239, i32 %242, i32 10, i32 0)
  store i32 %243, i32* %11, align 4
  %244 = load i32, i32* %11, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %248

246:                                              ; preds = %234
  %247 = load i32, i32* %11, align 4
  store i32 %247, i32* %4, align 4
  br label %285

248:                                              ; preds = %234
  br label %284

249:                                              ; preds = %3
  %250 = load %struct.atmel_hlcdc*, %struct.atmel_hlcdc** %9, align 8
  %251 = getelementptr inbounds %struct.atmel_hlcdc, %struct.atmel_hlcdc* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = load i32, i32* @ATMEL_HLCDC_DIS, align 4
  %254 = load i32, i32* @ATMEL_HLCDC_PWM, align 4
  %255 = call i32 @regmap_write(i32 %252, i32 %253, i32 %254)
  store i32 %255, i32* %11, align 4
  %256 = load i32, i32* %11, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %260

258:                                              ; preds = %249
  %259 = load i32, i32* %11, align 4
  store i32 %259, i32* %4, align 4
  br label %285

260:                                              ; preds = %249
  %261 = load %struct.atmel_hlcdc*, %struct.atmel_hlcdc** %9, align 8
  %262 = getelementptr inbounds %struct.atmel_hlcdc, %struct.atmel_hlcdc* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* @ATMEL_HLCDC_SR, align 4
  %265 = load i32, i32* %10, align 4
  %266 = load i32, i32* %10, align 4
  %267 = load i32, i32* @ATMEL_HLCDC_PWM, align 4
  %268 = and i32 %266, %267
  %269 = icmp ne i32 %268, 0
  %270 = xor i1 %269, true
  %271 = zext i1 %270 to i32
  %272 = call i32 @regmap_read_poll_timeout(i32 %263, i32 %264, i32 %265, i32 %271, i32 10, i32 0)
  store i32 %272, i32* %11, align 4
  %273 = load i32, i32* %11, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %277

275:                                              ; preds = %260
  %276 = load i32, i32* %11, align 4
  store i32 %276, i32* %4, align 4
  br label %285

277:                                              ; preds = %260
  %278 = load %struct.atmel_hlcdc_pwm*, %struct.atmel_hlcdc_pwm** %8, align 8
  %279 = getelementptr inbounds %struct.atmel_hlcdc_pwm, %struct.atmel_hlcdc_pwm* %278, i32 0, i32 0
  %280 = load %struct.clk*, %struct.clk** %279, align 8
  %281 = call i32 @clk_disable_unprepare(%struct.clk* %280)
  %282 = load %struct.atmel_hlcdc_pwm*, %struct.atmel_hlcdc_pwm** %8, align 8
  %283 = getelementptr inbounds %struct.atmel_hlcdc_pwm, %struct.atmel_hlcdc_pwm* %282, i32 0, i32 0
  store %struct.clk* null, %struct.clk** %283, align 8
  br label %284

284:                                              ; preds = %277, %248
  store i32 0, i32* %4, align 4
  br label %285

285:                                              ; preds = %284, %275, %258, %246, %232, %221, %180, %153, %137, %89, %53
  %286 = load i32, i32* %4, align 4
  ret i32 %286
}

declare dso_local %struct.atmel_hlcdc_pwm* @to_atmel_hlcdc_pwm(%struct.pwm_chip*) #1

declare dso_local i64 @clk_get_rate(%struct.clk*) #1

declare dso_local i32 @do_div(i32, i64) #1

declare dso_local i32 @ATMEL_HLCDC_PWMPS(i32) #1

declare dso_local i32 @clk_prepare_enable(%struct.clk*) #1

declare dso_local i32 @clk_disable_unprepare(%struct.clk*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @ATMEL_HLCDC_CFG(i32) #1

declare dso_local i32 @ATMEL_HLCDC_PWMCVAL(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @regmap_read_poll_timeout(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
