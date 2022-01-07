; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-stmpe.c_stmpe_24xx_pwm_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-stmpe.c_stmpe_24xx_pwm_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.stmpe_pwm = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@SMAX = common dso_local global i32 0, align 4
@GTS = common dso_local global i32 0, align 4
@STMPE2401 = common dso_local global i64 0, align 8
@STMPE2403 = common dso_local global i64 0, align 8
@STMPE_PWM_24XX_PINBASE = common dso_local global i64 0, align 8
@STMPE_BLOCK_PWM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"unable to connect PWM#%u to pin\0A\00", align 1
@STMPE24XX_PWMIC0 = common dso_local global i32 0, align 4
@STMPE24XX_PWMIC1 = common dso_local global i32 0, align 4
@STMPE24XX_PWMIC2 = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"PWM#%u: config duty %d ns, period %d ns\0A\00", align 1
@LOAD = common dso_local global i32 0, align 4
@SMIN = common dso_local global i32 0, align 4
@RAMPUP = common dso_local global i32 0, align 4
@RAMPDOWN = common dso_local global i32 0, align 4
@PRESCALE_512 = common dso_local global i32 0, align 4
@STEPTIME_1 = common dso_local global i32 0, align 4
@BRANCH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [64 x i8] c"PWM#%u: value = %02x, last_duty = %02x, program=%04x,%04x,%04x\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"error writing register %02x: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"programmed PWM#%u, %u bytes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*, i32, i32)* @stmpe_24xx_pwm_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmpe_24xx_pwm_config(%struct.pwm_chip* %0, %struct.pwm_device* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pwm_chip*, align 8
  %7 = alloca %struct.pwm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.stmpe_pwm*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [3 x i32], align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %6, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %21 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %22 = call %struct.stmpe_pwm* @to_stmpe_pwm(%struct.pwm_chip* %21)
  store %struct.stmpe_pwm* %22, %struct.stmpe_pwm** %10, align 8
  %23 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %24 = load i32, i32* @SMAX, align 4
  store i32 %24, i32* %23, align 4
  %25 = getelementptr inbounds i32, i32* %23, i64 1
  %26 = load i32, i32* @GTS, align 4
  store i32 %26, i32* %25, align 4
  %27 = getelementptr inbounds i32, i32* %25, i64 1
  %28 = load i32, i32* @GTS, align 4
  store i32 %28, i32* %27, align 4
  %29 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %30 = call i64 @pwm_is_enabled(%struct.pwm_device* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %4
  %33 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %34 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %35 = call i32 @stmpe_24xx_pwm_disable(%struct.pwm_chip* %33, %struct.pwm_device* %34)
  br label %81

36:                                               ; preds = %4
  %37 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %38 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %12, align 4
  %40 = load %struct.stmpe_pwm*, %struct.stmpe_pwm** %10, align 8
  %41 = getelementptr inbounds %struct.stmpe_pwm, %struct.stmpe_pwm* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @STMPE2401, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %55, label %47

47:                                               ; preds = %36
  %48 = load %struct.stmpe_pwm*, %struct.stmpe_pwm** %10, align 8
  %49 = getelementptr inbounds %struct.stmpe_pwm, %struct.stmpe_pwm* %48, i32 0, i32 1
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @STMPE2403, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %47, %36
  %56 = load i64, i64* @STMPE_PWM_24XX_PINBASE, align 8
  %57 = load i32, i32* %12, align 4
  %58 = zext i32 %57 to i64
  %59 = add nsw i64 %58, %56
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %12, align 4
  br label %61

61:                                               ; preds = %55, %47
  %62 = load %struct.stmpe_pwm*, %struct.stmpe_pwm** %10, align 8
  %63 = getelementptr inbounds %struct.stmpe_pwm, %struct.stmpe_pwm* %62, i32 0, i32 1
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @BIT(i32 %65)
  %67 = load i32, i32* @STMPE_BLOCK_PWM, align 4
  %68 = call i32 @stmpe_set_altfunc(%struct.TYPE_3__* %64, i32 %66, i32 %67)
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %15, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %61
  %72 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %73 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %76 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %74, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* %15, align 4
  store i32 %79, i32* %5, align 4
  br label %327

80:                                               ; preds = %61
  br label %81

81:                                               ; preds = %80, %32
  %82 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %83 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  switch i32 %84, label %91 [
    i32 0, label %85
    i32 1, label %87
    i32 2, label %89
  ]

85:                                               ; preds = %81
  %86 = load i32, i32* @STMPE24XX_PWMIC0, align 4
  store i32 %86, i32* %14, align 4
  br label %94

87:                                               ; preds = %81
  %88 = load i32, i32* @STMPE24XX_PWMIC1, align 4
  store i32 %88, i32* %14, align 4
  br label %94

89:                                               ; preds = %81
  %90 = load i32, i32* @STMPE24XX_PWMIC2, align 4
  store i32 %90, i32* %14, align 4
  br label %94

91:                                               ; preds = %81
  %92 = load i32, i32* @ENODEV, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %5, align 4
  br label %327

94:                                               ; preds = %89, %87, %85
  %95 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %96 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %99 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %8, align 4
  %102 = load i32, i32* %9, align 4
  %103 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %97, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %100, i32 %101, i32 %102)
  %104 = load i32, i32* %8, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %132

106:                                              ; preds = %94
  %107 = load %struct.stmpe_pwm*, %struct.stmpe_pwm** %10, align 8
  %108 = getelementptr inbounds %struct.stmpe_pwm, %struct.stmpe_pwm* %107, i32 0, i32 1
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @STMPE2401, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %106
  %115 = load i32, i32* @SMAX, align 4
  %116 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  store i32 %115, i32* %116, align 4
  br label %117

117:                                              ; preds = %114, %106
  %118 = load %struct.stmpe_pwm*, %struct.stmpe_pwm** %10, align 8
  %119 = getelementptr inbounds %struct.stmpe_pwm, %struct.stmpe_pwm* %118, i32 0, i32 1
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @STMPE2403, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %117
  %126 = load i32, i32* @LOAD, align 4
  %127 = or i32 %126, 255
  %128 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  store i32 %127, i32* %128, align 4
  br label %129

129:                                              ; preds = %125, %117
  %130 = load %struct.stmpe_pwm*, %struct.stmpe_pwm** %10, align 8
  %131 = getelementptr inbounds %struct.stmpe_pwm, %struct.stmpe_pwm* %130, i32 0, i32 0
  store i32 0, i32* %131, align 8
  br label %254

132:                                              ; preds = %94
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* %9, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %161

136:                                              ; preds = %132
  %137 = load %struct.stmpe_pwm*, %struct.stmpe_pwm** %10, align 8
  %138 = getelementptr inbounds %struct.stmpe_pwm, %struct.stmpe_pwm* %137, i32 0, i32 1
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @STMPE2401, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %136
  %145 = load i32, i32* @SMIN, align 4
  %146 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  store i32 %145, i32* %146, align 4
  br label %147

147:                                              ; preds = %144, %136
  %148 = load %struct.stmpe_pwm*, %struct.stmpe_pwm** %10, align 8
  %149 = getelementptr inbounds %struct.stmpe_pwm, %struct.stmpe_pwm* %148, i32 0, i32 1
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @STMPE2403, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %158

155:                                              ; preds = %147
  %156 = load i32, i32* @LOAD, align 4
  %157 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  store i32 %156, i32* %157, align 4
  br label %158

158:                                              ; preds = %155, %147
  %159 = load %struct.stmpe_pwm*, %struct.stmpe_pwm** %10, align 8
  %160 = getelementptr inbounds %struct.stmpe_pwm, %struct.stmpe_pwm* %159, i32 0, i32 0
  store i32 255, i32* %160, align 8
  br label %253

161:                                              ; preds = %132
  %162 = load %struct.stmpe_pwm*, %struct.stmpe_pwm** %10, align 8
  %163 = getelementptr inbounds %struct.stmpe_pwm, %struct.stmpe_pwm* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  store i32 %164, i32* %17, align 4
  %165 = load i32, i32* %8, align 4
  %166 = mul nsw i32 %165, 256
  %167 = sext i32 %166 to i64
  store i64 %167, i64* %18, align 8
  %168 = load i64, i64* %18, align 8
  %169 = load i32, i32* %9, align 4
  %170 = call i64 @DIV_ROUND_CLOSEST(i64 %168, i32 %169)
  store i64 %170, i64* %18, align 8
  %171 = load i64, i64* %18, align 8
  %172 = trunc i64 %171 to i32
  store i32 %172, i32* %16, align 4
  %173 = load i32, i32* %16, align 4
  %174 = load i32, i32* %17, align 4
  %175 = icmp eq i32 %173, %174
  br i1 %175, label %176, label %185

176:                                              ; preds = %161
  %177 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %178 = call i64 @pwm_is_enabled(%struct.pwm_device* %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %176
  %181 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %182 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %183 = call i32 @stmpe_24xx_pwm_enable(%struct.pwm_chip* %181, %struct.pwm_device* %182)
  br label %184

184:                                              ; preds = %180, %176
  store i32 0, i32* %5, align 4
  br label %327

185:                                              ; preds = %161
  %186 = load %struct.stmpe_pwm*, %struct.stmpe_pwm** %10, align 8
  %187 = getelementptr inbounds %struct.stmpe_pwm, %struct.stmpe_pwm* %186, i32 0, i32 1
  %188 = load %struct.TYPE_3__*, %struct.TYPE_3__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @STMPE2403, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %199

193:                                              ; preds = %185
  %194 = load i32, i32* @LOAD, align 4
  %195 = load i32, i32* %16, align 4
  %196 = or i32 %194, %195
  %197 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  store i32 %196, i32* %197, align 4
  %198 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 1
  store i32 0, i32* %198, align 4
  br label %233

199:                                              ; preds = %185
  %200 = load %struct.stmpe_pwm*, %struct.stmpe_pwm** %10, align 8
  %201 = getelementptr inbounds %struct.stmpe_pwm, %struct.stmpe_pwm* %200, i32 0, i32 1
  %202 = load %struct.TYPE_3__*, %struct.TYPE_3__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @STMPE2401, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %232

207:                                              ; preds = %199
  store i32 0, i32* %19, align 4
  %208 = load i32, i32* %17, align 4
  %209 = load i32, i32* %16, align 4
  %210 = icmp slt i32 %208, %209
  br i1 %210, label %211, label %217

211:                                              ; preds = %207
  %212 = load i32, i32* @RAMPUP, align 4
  %213 = load i32, i32* %16, align 4
  %214 = load i32, i32* %17, align 4
  %215 = sub nsw i32 %213, %214
  %216 = or i32 %212, %215
  store i32 %216, i32* %19, align 4
  br label %223

217:                                              ; preds = %207
  %218 = load i32, i32* @RAMPDOWN, align 4
  %219 = load i32, i32* %17, align 4
  %220 = load i32, i32* %16, align 4
  %221 = sub nsw i32 %219, %220
  %222 = or i32 %218, %221
  store i32 %222, i32* %19, align 4
  br label %223

223:                                              ; preds = %217, %211
  %224 = load i32, i32* @PRESCALE_512, align 4
  %225 = load i32, i32* @STEPTIME_1, align 4
  %226 = or i32 %224, %225
  %227 = load i32, i32* %19, align 4
  %228 = or i32 %226, %227
  %229 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  store i32 %228, i32* %229, align 4
  %230 = load i32, i32* @BRANCH, align 4
  %231 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 1
  store i32 %230, i32* %231, align 4
  br label %232

232:                                              ; preds = %223, %199
  br label %233

233:                                              ; preds = %232, %193
  br label %234

234:                                              ; preds = %233
  %235 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %236 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %239 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* %16, align 4
  %242 = load i32, i32* %17, align 4
  %243 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %244 = load i32, i32* %243, align 4
  %245 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 1
  %246 = load i32, i32* %245, align 4
  %247 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 2
  %248 = load i32, i32* %247, align 4
  %249 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %237, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i32 %240, i32 %241, i32 %242, i32 %244, i32 %246, i32 %248)
  %250 = load i32, i32* %16, align 4
  %251 = load %struct.stmpe_pwm*, %struct.stmpe_pwm** %10, align 8
  %252 = getelementptr inbounds %struct.stmpe_pwm, %struct.stmpe_pwm* %251, i32 0, i32 0
  store i32 %250, i32* %252, align 8
  br label %253

253:                                              ; preds = %234, %158
  br label %254

254:                                              ; preds = %253, %129
  store i32 0, i32* %11, align 4
  br label %255

255:                                              ; preds = %306, %254
  %256 = load i32, i32* %11, align 4
  %257 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %258 = call i32 @ARRAY_SIZE(i32* %257)
  %259 = icmp ult i32 %256, %258
  br i1 %259, label %260, label %309

260:                                              ; preds = %255
  %261 = load i32, i32* %11, align 4
  %262 = zext i32 %261 to i64
  %263 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = ashr i32 %264, 8
  %266 = and i32 %265, 255
  store i32 %266, i32* %20, align 4
  %267 = load %struct.stmpe_pwm*, %struct.stmpe_pwm** %10, align 8
  %268 = getelementptr inbounds %struct.stmpe_pwm, %struct.stmpe_pwm* %267, i32 0, i32 1
  %269 = load %struct.TYPE_3__*, %struct.TYPE_3__** %268, align 8
  %270 = load i32, i32* %14, align 4
  %271 = load i32, i32* %20, align 4
  %272 = call i32 @stmpe_reg_write(%struct.TYPE_3__* %269, i32 %270, i32 %271)
  store i32 %272, i32* %15, align 4
  %273 = load i32, i32* %15, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %283

275:                                              ; preds = %260
  %276 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %277 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = load i32, i32* %14, align 4
  %280 = load i32, i32* %15, align 4
  %281 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %278, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %279, i32 %280)
  %282 = load i32, i32* %15, align 4
  store i32 %282, i32* %5, align 4
  br label %327

283:                                              ; preds = %260
  %284 = load i32, i32* %11, align 4
  %285 = zext i32 %284 to i64
  %286 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 %285
  %287 = load i32, i32* %286, align 4
  %288 = and i32 %287, 255
  store i32 %288, i32* %20, align 4
  %289 = load %struct.stmpe_pwm*, %struct.stmpe_pwm** %10, align 8
  %290 = getelementptr inbounds %struct.stmpe_pwm, %struct.stmpe_pwm* %289, i32 0, i32 1
  %291 = load %struct.TYPE_3__*, %struct.TYPE_3__** %290, align 8
  %292 = load i32, i32* %14, align 4
  %293 = load i32, i32* %20, align 4
  %294 = call i32 @stmpe_reg_write(%struct.TYPE_3__* %291, i32 %292, i32 %293)
  store i32 %294, i32* %15, align 4
  %295 = load i32, i32* %15, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %305

297:                                              ; preds = %283
  %298 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %299 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 4
  %301 = load i32, i32* %14, align 4
  %302 = load i32, i32* %15, align 4
  %303 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %300, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %301, i32 %302)
  %304 = load i32, i32* %15, align 4
  store i32 %304, i32* %5, align 4
  br label %327

305:                                              ; preds = %283
  br label %306

306:                                              ; preds = %305
  %307 = load i32, i32* %11, align 4
  %308 = add i32 %307, 1
  store i32 %308, i32* %11, align 4
  br label %255

309:                                              ; preds = %255
  %310 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %311 = call i64 @pwm_is_enabled(%struct.pwm_device* %310)
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %317

313:                                              ; preds = %309
  %314 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %315 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %316 = call i32 @stmpe_24xx_pwm_enable(%struct.pwm_chip* %314, %struct.pwm_device* %315)
  br label %317

317:                                              ; preds = %313, %309
  %318 = call i32 @msleep(i32 200)
  %319 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %320 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 4
  %322 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %323 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %322, i32 0, i32 0
  %324 = load i32, i32* %323, align 4
  %325 = load i32, i32* %11, align 4
  %326 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %321, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %324, i32 %325)
  store i32 0, i32* %5, align 4
  br label %327

327:                                              ; preds = %317, %297, %275, %184, %91, %71
  %328 = load i32, i32* %5, align 4
  ret i32 %328
}

declare dso_local %struct.stmpe_pwm* @to_stmpe_pwm(%struct.pwm_chip*) #1

declare dso_local i64 @pwm_is_enabled(%struct.pwm_device*) #1

declare dso_local i32 @stmpe_24xx_pwm_disable(%struct.pwm_chip*, %struct.pwm_device*) #1

declare dso_local i32 @stmpe_set_altfunc(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, ...) #1

declare dso_local i64 @DIV_ROUND_CLOSEST(i64, i32) #1

declare dso_local i32 @stmpe_24xx_pwm_enable(%struct.pwm_chip*, %struct.pwm_device*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @stmpe_reg_write(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
