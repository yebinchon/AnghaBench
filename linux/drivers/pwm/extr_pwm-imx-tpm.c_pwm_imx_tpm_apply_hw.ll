; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-imx-tpm.c_pwm_imx_tpm_apply_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-imx-tpm.c_pwm_imx_tpm_apply_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.imx_tpm_pwm_param = type { i64, i64, i64 }
%struct.pwm_state = type { i32, i64, i64, i64 }
%struct.pwm_device = type { i32 }
%struct.imx_tpm_pwm_chip = type { i32, i32, i32, i64 }

@EBUSY = common dso_local global i32 0, align 4
@PWM_IMX_TPM_SC = common dso_local global i64 0, align 8
@PWM_IMX_TPM_SC_CMOD = common dso_local global i64 0, align 8
@PWM_IMX_TPM_SC_PS = common dso_local global i64 0, align 8
@PWM_IMX_TPM_MOD = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@NSEC_PER_MSEC = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4
@PWM_IMX_TPM_CnSC_ELS = common dso_local global i64 0, align 8
@PWM_IMX_TPM_CnSC_MSA = common dso_local global i64 0, align 8
@PWM_IMX_TPM_CnSC_MSB = common dso_local global i64 0, align 8
@PWM_POLARITY_NORMAL = common dso_local global i64 0, align 8
@PWM_IMX_TPM_CnSC_ELS_NORMAL = common dso_local global i64 0, align 8
@PWM_IMX_TPM_CnSC_ELS_INVERSED = common dso_local global i64 0, align 8
@PWM_IMX_TPM_SC_CMOD_INC_EVERY_CLK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.imx_tpm_pwm_param*, %struct.pwm_state*, %struct.pwm_device*)* @pwm_imx_tpm_apply_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm_imx_tpm_apply_hw(%struct.pwm_chip* %0, %struct.imx_tpm_pwm_param* %1, %struct.pwm_state* %2, %struct.pwm_device* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pwm_chip*, align 8
  %7 = alloca %struct.imx_tpm_pwm_param*, align 8
  %8 = alloca %struct.pwm_state*, align 8
  %9 = alloca %struct.pwm_device*, align 8
  %10 = alloca %struct.imx_tpm_pwm_chip*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.pwm_state, align 8
  store %struct.pwm_chip* %0, %struct.pwm_chip** %6, align 8
  store %struct.imx_tpm_pwm_param* %1, %struct.imx_tpm_pwm_param** %7, align 8
  store %struct.pwm_state* %2, %struct.pwm_state** %8, align 8
  store %struct.pwm_device* %3, %struct.pwm_device** %9, align 8
  %18 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %19 = call %struct.imx_tpm_pwm_chip* @to_imx_tpm_pwm_chip(%struct.pwm_chip* %18)
  store %struct.imx_tpm_pwm_chip* %19, %struct.imx_tpm_pwm_chip** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %20 = load %struct.pwm_state*, %struct.pwm_state** %8, align 8
  %21 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.imx_tpm_pwm_chip*, %struct.imx_tpm_pwm_chip** %10, align 8
  %24 = getelementptr inbounds %struct.imx_tpm_pwm_chip, %struct.imx_tpm_pwm_chip* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %22, %25
  br i1 %26, label %27, label %92

27:                                               ; preds = %4
  %28 = load %struct.imx_tpm_pwm_chip*, %struct.imx_tpm_pwm_chip** %10, align 8
  %29 = getelementptr inbounds %struct.imx_tpm_pwm_chip, %struct.imx_tpm_pwm_chip* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp sgt i32 %30, 1
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @EBUSY, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %5, align 4
  br label %282

35:                                               ; preds = %27
  %36 = load %struct.imx_tpm_pwm_chip*, %struct.imx_tpm_pwm_chip** %10, align 8
  %37 = getelementptr inbounds %struct.imx_tpm_pwm_chip, %struct.imx_tpm_pwm_chip* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PWM_IMX_TPM_SC, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i64 @readl(i64 %40)
  store i64 %41, i64* %13, align 8
  %42 = load i64, i64* @PWM_IMX_TPM_SC_CMOD, align 8
  %43 = load i64, i64* %13, align 8
  %44 = call i64 @FIELD_GET(i64 %42, i64 %43)
  store i64 %44, i64* %14, align 8
  %45 = load i64, i64* @PWM_IMX_TPM_SC_PS, align 8
  %46 = load i64, i64* %13, align 8
  %47 = call i64 @FIELD_GET(i64 %45, i64 %46)
  store i64 %47, i64* %15, align 8
  %48 = load i64, i64* %14, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %35
  %51 = load i64, i64* %15, align 8
  %52 = load %struct.imx_tpm_pwm_param*, %struct.imx_tpm_pwm_param** %7, align 8
  %53 = getelementptr inbounds %struct.imx_tpm_pwm_param, %struct.imx_tpm_pwm_param* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %51, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %50
  %57 = load i32, i32* @EBUSY, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %5, align 4
  br label %282

59:                                               ; preds = %50, %35
  %60 = load i64, i64* @PWM_IMX_TPM_SC_PS, align 8
  %61 = xor i64 %60, -1
  %62 = load i64, i64* %13, align 8
  %63 = and i64 %62, %61
  store i64 %63, i64* %13, align 8
  %64 = load i64, i64* @PWM_IMX_TPM_SC_PS, align 8
  %65 = load %struct.imx_tpm_pwm_param*, %struct.imx_tpm_pwm_param** %7, align 8
  %66 = getelementptr inbounds %struct.imx_tpm_pwm_param, %struct.imx_tpm_pwm_param* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i64 @FIELD_PREP(i64 %64, i64 %67)
  %69 = load i64, i64* %13, align 8
  %70 = or i64 %69, %68
  store i64 %70, i64* %13, align 8
  %71 = load i64, i64* %13, align 8
  %72 = load %struct.imx_tpm_pwm_chip*, %struct.imx_tpm_pwm_chip** %10, align 8
  %73 = getelementptr inbounds %struct.imx_tpm_pwm_chip, %struct.imx_tpm_pwm_chip* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @PWM_IMX_TPM_SC, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @writel(i64 %71, i64 %76)
  %78 = load %struct.imx_tpm_pwm_param*, %struct.imx_tpm_pwm_param** %7, align 8
  %79 = getelementptr inbounds %struct.imx_tpm_pwm_param, %struct.imx_tpm_pwm_param* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.imx_tpm_pwm_chip*, %struct.imx_tpm_pwm_chip** %10, align 8
  %82 = getelementptr inbounds %struct.imx_tpm_pwm_chip, %struct.imx_tpm_pwm_chip* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @PWM_IMX_TPM_MOD, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @writel(i64 %80, i64 %85)
  %87 = load %struct.pwm_state*, %struct.pwm_state** %8, align 8
  %88 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.imx_tpm_pwm_chip*, %struct.imx_tpm_pwm_chip** %10, align 8
  %91 = getelementptr inbounds %struct.imx_tpm_pwm_chip, %struct.imx_tpm_pwm_chip* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  store i32 1, i32* %11, align 4
  br label %92

92:                                               ; preds = %59, %4
  %93 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %94 = load %struct.pwm_device*, %struct.pwm_device** %9, align 8
  %95 = call i32 @pwm_imx_tpm_get_state(%struct.pwm_chip* %93, %struct.pwm_device* %94, %struct.pwm_state* %17)
  %96 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %17, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %92
  %100 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %17, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.pwm_state*, %struct.pwm_state** %8, align 8
  %103 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %101, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %99
  %107 = load i32, i32* @EBUSY, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %5, align 4
  br label %282

109:                                              ; preds = %99, %92
  %110 = load %struct.pwm_state*, %struct.pwm_state** %8, align 8
  %111 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %17, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %112, %114
  br i1 %115, label %116, label %129

116:                                              ; preds = %109
  %117 = load %struct.imx_tpm_pwm_param*, %struct.imx_tpm_pwm_param** %7, align 8
  %118 = getelementptr inbounds %struct.imx_tpm_pwm_param, %struct.imx_tpm_pwm_param* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.imx_tpm_pwm_chip*, %struct.imx_tpm_pwm_chip** %10, align 8
  %121 = getelementptr inbounds %struct.imx_tpm_pwm_chip, %struct.imx_tpm_pwm_chip* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.pwm_device*, %struct.pwm_device** %9, align 8
  %124 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i64 @PWM_IMX_TPM_CnV(i32 %125)
  %127 = add nsw i64 %122, %126
  %128 = call i32 @writel(i64 %119, i64 %127)
  store i32 1, i32* %12, align 4
  br label %129

129:                                              ; preds = %116, %109
  %130 = load i32, i32* %11, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %135, label %132

132:                                              ; preds = %129
  %133 = load i32, i32* %12, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %183

135:                                              ; preds = %132, %129
  %136 = load i64, i64* @jiffies, align 8
  %137 = load %struct.imx_tpm_pwm_chip*, %struct.imx_tpm_pwm_chip** %10, align 8
  %138 = getelementptr inbounds %struct.imx_tpm_pwm_chip, %struct.imx_tpm_pwm_chip* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load i32, i32* @NSEC_PER_MSEC, align 4
  %141 = sdiv i32 %139, %140
  %142 = add nsw i32 %141, 1
  %143 = call i64 @msecs_to_jiffies(i32 %142)
  %144 = add i64 %136, %143
  store i64 %144, i64* %16, align 8
  br label %145

145:                                              ; preds = %180, %135
  %146 = load %struct.imx_tpm_pwm_chip*, %struct.imx_tpm_pwm_chip** %10, align 8
  %147 = getelementptr inbounds %struct.imx_tpm_pwm_chip, %struct.imx_tpm_pwm_chip* %146, i32 0, i32 3
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @PWM_IMX_TPM_MOD, align 8
  %150 = add nsw i64 %148, %149
  %151 = call i64 @readl(i64 %150)
  %152 = load %struct.imx_tpm_pwm_param*, %struct.imx_tpm_pwm_param** %7, align 8
  %153 = getelementptr inbounds %struct.imx_tpm_pwm_param, %struct.imx_tpm_pwm_param* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %151, %154
  br i1 %155, label %170, label %156

156:                                              ; preds = %145
  %157 = load %struct.imx_tpm_pwm_chip*, %struct.imx_tpm_pwm_chip** %10, align 8
  %158 = getelementptr inbounds %struct.imx_tpm_pwm_chip, %struct.imx_tpm_pwm_chip* %157, i32 0, i32 3
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.pwm_device*, %struct.pwm_device** %9, align 8
  %161 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i64 @PWM_IMX_TPM_CnV(i32 %162)
  %164 = add nsw i64 %159, %163
  %165 = call i64 @readl(i64 %164)
  %166 = load %struct.imx_tpm_pwm_param*, %struct.imx_tpm_pwm_param** %7, align 8
  %167 = getelementptr inbounds %struct.imx_tpm_pwm_param, %struct.imx_tpm_pwm_param* %166, i32 0, i32 2
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %165, %168
  br label %170

170:                                              ; preds = %156, %145
  %171 = phi i1 [ true, %145 ], [ %169, %156 ]
  br i1 %171, label %172, label %182

172:                                              ; preds = %170
  %173 = load i64, i64* @jiffies, align 8
  %174 = load i64, i64* %16, align 8
  %175 = call i64 @time_after(i64 %173, i64 %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %172
  %178 = load i32, i32* @ETIME, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %5, align 4
  br label %282

180:                                              ; preds = %172
  %181 = call i32 (...) @cpu_relax()
  br label %145

182:                                              ; preds = %170
  br label %183

183:                                              ; preds = %182, %132
  %184 = load %struct.imx_tpm_pwm_chip*, %struct.imx_tpm_pwm_chip** %10, align 8
  %185 = getelementptr inbounds %struct.imx_tpm_pwm_chip, %struct.imx_tpm_pwm_chip* %184, i32 0, i32 3
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.pwm_device*, %struct.pwm_device** %9, align 8
  %188 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = call i64 @PWM_IMX_TPM_CnSC(i32 %189)
  %191 = add nsw i64 %186, %190
  %192 = call i64 @readl(i64 %191)
  store i64 %192, i64* %13, align 8
  %193 = load i64, i64* @PWM_IMX_TPM_CnSC_ELS, align 8
  %194 = load i64, i64* @PWM_IMX_TPM_CnSC_MSA, align 8
  %195 = or i64 %193, %194
  %196 = load i64, i64* @PWM_IMX_TPM_CnSC_MSB, align 8
  %197 = or i64 %195, %196
  %198 = xor i64 %197, -1
  %199 = load i64, i64* %13, align 8
  %200 = and i64 %199, %198
  store i64 %200, i64* %13, align 8
  %201 = load %struct.pwm_state*, %struct.pwm_state** %8, align 8
  %202 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %222

205:                                              ; preds = %183
  %206 = load i64, i64* @PWM_IMX_TPM_CnSC_MSB, align 8
  %207 = load i64, i64* %13, align 8
  %208 = or i64 %207, %206
  store i64 %208, i64* %13, align 8
  %209 = load %struct.pwm_state*, %struct.pwm_state** %8, align 8
  %210 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %209, i32 0, i32 2
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @PWM_POLARITY_NORMAL, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %216

214:                                              ; preds = %205
  %215 = load i64, i64* @PWM_IMX_TPM_CnSC_ELS_NORMAL, align 8
  br label %218

216:                                              ; preds = %205
  %217 = load i64, i64* @PWM_IMX_TPM_CnSC_ELS_INVERSED, align 8
  br label %218

218:                                              ; preds = %216, %214
  %219 = phi i64 [ %215, %214 ], [ %217, %216 ]
  %220 = load i64, i64* %13, align 8
  %221 = or i64 %220, %219
  store i64 %221, i64* %13, align 8
  br label %222

222:                                              ; preds = %218, %183
  %223 = load i64, i64* %13, align 8
  %224 = load %struct.imx_tpm_pwm_chip*, %struct.imx_tpm_pwm_chip** %10, align 8
  %225 = getelementptr inbounds %struct.imx_tpm_pwm_chip, %struct.imx_tpm_pwm_chip* %224, i32 0, i32 3
  %226 = load i64, i64* %225, align 8
  %227 = load %struct.pwm_device*, %struct.pwm_device** %9, align 8
  %228 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = call i64 @PWM_IMX_TPM_CnSC(i32 %229)
  %231 = add nsw i64 %226, %230
  %232 = call i32 @writel(i64 %223, i64 %231)
  %233 = load %struct.pwm_state*, %struct.pwm_state** %8, align 8
  %234 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %17, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %235, %237
  br i1 %238, label %239, label %281

239:                                              ; preds = %222
  %240 = load %struct.imx_tpm_pwm_chip*, %struct.imx_tpm_pwm_chip** %10, align 8
  %241 = getelementptr inbounds %struct.imx_tpm_pwm_chip, %struct.imx_tpm_pwm_chip* %240, i32 0, i32 3
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* @PWM_IMX_TPM_SC, align 8
  %244 = add nsw i64 %242, %243
  %245 = call i64 @readl(i64 %244)
  store i64 %245, i64* %13, align 8
  %246 = load %struct.pwm_state*, %struct.pwm_state** %8, align 8
  %247 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %246, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %261

250:                                              ; preds = %239
  %251 = load %struct.imx_tpm_pwm_chip*, %struct.imx_tpm_pwm_chip** %10, align 8
  %252 = getelementptr inbounds %struct.imx_tpm_pwm_chip, %struct.imx_tpm_pwm_chip* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 8
  %254 = add nsw i32 %253, 1
  store i32 %254, i32* %252, align 8
  %255 = icmp eq i32 %254, 1
  br i1 %255, label %256, label %260

256:                                              ; preds = %250
  %257 = load i64, i64* @PWM_IMX_TPM_SC_CMOD_INC_EVERY_CLK, align 8
  %258 = load i64, i64* %13, align 8
  %259 = or i64 %258, %257
  store i64 %259, i64* %13, align 8
  br label %260

260:                                              ; preds = %256, %250
  br label %273

261:                                              ; preds = %239
  %262 = load %struct.imx_tpm_pwm_chip*, %struct.imx_tpm_pwm_chip** %10, align 8
  %263 = getelementptr inbounds %struct.imx_tpm_pwm_chip, %struct.imx_tpm_pwm_chip* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 8
  %265 = add nsw i32 %264, -1
  store i32 %265, i32* %263, align 8
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %272

267:                                              ; preds = %261
  %268 = load i64, i64* @PWM_IMX_TPM_SC_CMOD, align 8
  %269 = xor i64 %268, -1
  %270 = load i64, i64* %13, align 8
  %271 = and i64 %270, %269
  store i64 %271, i64* %13, align 8
  br label %272

272:                                              ; preds = %267, %261
  br label %273

273:                                              ; preds = %272, %260
  %274 = load i64, i64* %13, align 8
  %275 = load %struct.imx_tpm_pwm_chip*, %struct.imx_tpm_pwm_chip** %10, align 8
  %276 = getelementptr inbounds %struct.imx_tpm_pwm_chip, %struct.imx_tpm_pwm_chip* %275, i32 0, i32 3
  %277 = load i64, i64* %276, align 8
  %278 = load i64, i64* @PWM_IMX_TPM_SC, align 8
  %279 = add nsw i64 %277, %278
  %280 = call i32 @writel(i64 %274, i64 %279)
  br label %281

281:                                              ; preds = %273, %222
  store i32 0, i32* %5, align 4
  br label %282

282:                                              ; preds = %281, %177, %106, %56, %32
  %283 = load i32, i32* %5, align 4
  ret i32 %283
}

declare dso_local %struct.imx_tpm_pwm_chip* @to_imx_tpm_pwm_chip(%struct.pwm_chip*) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i64 @FIELD_GET(i64, i64) #1

declare dso_local i64 @FIELD_PREP(i64, i64) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i32 @pwm_imx_tpm_get_state(%struct.pwm_chip*, %struct.pwm_device*, %struct.pwm_state*) #1

declare dso_local i64 @PWM_IMX_TPM_CnV(i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i64 @PWM_IMX_TPM_CnSC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
