; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_slg51000-regulator.c_slg51000_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_slg51000-regulator.c_slg51000_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.slg51000 = type { i32, i32*, %struct.regmap* }
%struct.regmap = type { i32 }

@SLG51000_MAX_EVT_REGISTER = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@es_reg = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [36 x i8] c"Failed to read event registers(%d)\0A\00", align 1
@SLG51000_OTP_EVENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Failed to read otp event registers(%d)\0A\00", align 1
@SLG51000_OTP_IRQ_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Failed to read otp mask register(%d)\0A\00", align 1
@SLG51000_EVT_CRC_MASK = common dso_local global i32 0, align 4
@SLG51000_IRQ_CRC_MASK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"OTP has been read or OTP crc is not zero\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@SLG51000_MAX_REGULATORS = common dso_local global i32 0, align 4
@SLG51000_IRQ_ILIM_FLAG_MASK = common dso_local global i32 0, align 4
@SLG51000_EVT_ILIM_FLAG_MASK = common dso_local global i32 0, align 4
@REGULATOR_EVENT_OVER_CURRENT = common dso_local global i32 0, align 4
@SLG51000_STA_ILIM_FLAG_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"Over-current limit(ldo%d)\0A\00", align 1
@SLG51000_SCTL_EVT = common dso_local global i64 0, align 8
@SLG51000_IRQ_HIGH_TEMP_WARN_MASK = common dso_local global i32 0, align 4
@SLG51000_EVT_HIGH_TEMP_WARN_MASK = common dso_local global i32 0, align 4
@SLG51000_STA_VOUT_OK_FLAG_MASK = common dso_local global i32 0, align 4
@REGULATOR_EVENT_OVER_TEMP = common dso_local global i32 0, align 4
@SLG51000_STA_HIGH_TEMP_WARN_MASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"High temperature warning!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @slg51000_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slg51000_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.slg51000*, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to %struct.slg51000*
  store %struct.slg51000* %17, %struct.slg51000** %6, align 8
  %18 = load %struct.slg51000*, %struct.slg51000** %6, align 8
  %19 = getelementptr inbounds %struct.slg51000, %struct.slg51000* %18, i32 0, i32 2
  %20 = load %struct.regmap*, %struct.regmap** %19, align 8
  store %struct.regmap* %20, %struct.regmap** %7, align 8
  %21 = load i32, i32* @SLG51000_MAX_EVT_REGISTER, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %8, align 8
  %24 = alloca [3 x i32], i64 %22, align 16
  store i64 %22, i64* %9, align 8
  %25 = load i32, i32* @IRQ_NONE, align 4
  store i32 %25, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %53, %2
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @SLG51000_MAX_EVT_REGISTER, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %56

30:                                               ; preds = %26
  %31 = load %struct.regmap*, %struct.regmap** %7, align 8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @es_reg, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [3 x i32], [3 x i32]* %24, i64 %39
  %41 = getelementptr inbounds [3 x i32], [3 x i32]* %40, i64 0, i64 0
  %42 = call i32 @regmap_bulk_read(%struct.regmap* %31, i32 %37, i32* %41, i32 3)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %30
  %46 = load %struct.slg51000*, %struct.slg51000** %6, align 8
  %47 = getelementptr inbounds %struct.slg51000, %struct.slg51000* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @dev_err(i32 %48, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* @IRQ_NONE, align 4
  store i32 %51, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %254

52:                                               ; preds = %30
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %11, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %11, align 4
  br label %26

56:                                               ; preds = %26
  %57 = load %struct.regmap*, %struct.regmap** %7, align 8
  %58 = load i32, i32* @SLG51000_OTP_EVENT, align 4
  %59 = call i32 @regmap_read(%struct.regmap* %57, i32 %58, i32* %13)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %56
  %63 = load %struct.slg51000*, %struct.slg51000** %6, align 8
  %64 = getelementptr inbounds %struct.slg51000, %struct.slg51000* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @dev_err(i32 %65, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* @IRQ_NONE, align 4
  store i32 %68, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %254

69:                                               ; preds = %56
  %70 = load %struct.regmap*, %struct.regmap** %7, align 8
  %71 = load i32, i32* @SLG51000_OTP_IRQ_MASK, align 4
  %72 = call i32 @regmap_read(%struct.regmap* %70, i32 %71, i32* %14)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %69
  %76 = load %struct.slg51000*, %struct.slg51000** %6, align 8
  %77 = getelementptr inbounds %struct.slg51000, %struct.slg51000* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @dev_err(i32 %78, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* @IRQ_NONE, align 4
  store i32 %81, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %254

82:                                               ; preds = %69
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* @SLG51000_EVT_CRC_MASK, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %82
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* @SLG51000_IRQ_CRC_MASK, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %98, label %92

92:                                               ; preds = %87
  %93 = load %struct.slg51000*, %struct.slg51000** %6, align 8
  %94 = getelementptr inbounds %struct.slg51000, %struct.slg51000* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @dev_info(i32 %95, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %97 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %97, i32* %12, align 4
  br label %98

98:                                               ; preds = %92, %87, %82
  store i32 0, i32* %11, align 4
  br label %99

99:                                               ; preds = %165, %98
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* @SLG51000_MAX_REGULATORS, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %168

103:                                              ; preds = %99
  %104 = load i32, i32* %11, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [3 x i32], [3 x i32]* %24, i64 %105
  %107 = getelementptr inbounds [3 x i32], [3 x i32]* %106, i64 0, i64 2
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @SLG51000_IRQ_ILIM_FLAG_MASK, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %164, label %112

112:                                              ; preds = %103
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [3 x i32], [3 x i32]* %24, i64 %114
  %116 = getelementptr inbounds [3 x i32], [3 x i32]* %115, i64 0, i64 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @SLG51000_EVT_ILIM_FLAG_MASK, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %164

121:                                              ; preds = %112
  %122 = load %struct.slg51000*, %struct.slg51000** %6, align 8
  %123 = getelementptr inbounds %struct.slg51000, %struct.slg51000* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = load i32, i32* %11, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %124, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @regulator_lock(i32 %128)
  %130 = load %struct.slg51000*, %struct.slg51000** %6, align 8
  %131 = getelementptr inbounds %struct.slg51000, %struct.slg51000* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %11, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @REGULATOR_EVENT_OVER_CURRENT, align 4
  %138 = call i32 @regulator_notifier_call_chain(i32 %136, i32 %137, i32* null)
  %139 = load %struct.slg51000*, %struct.slg51000** %6, align 8
  %140 = getelementptr inbounds %struct.slg51000, %struct.slg51000* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %11, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @regulator_unlock(i32 %145)
  %147 = load i32, i32* %11, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [3 x i32], [3 x i32]* %24, i64 %148
  %150 = getelementptr inbounds [3 x i32], [3 x i32]* %149, i64 0, i64 1
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @SLG51000_STA_ILIM_FLAG_MASK, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %162

155:                                              ; preds = %121
  %156 = load %struct.slg51000*, %struct.slg51000** %6, align 8
  %157 = getelementptr inbounds %struct.slg51000, %struct.slg51000* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* %11, align 4
  %160 = add nsw i32 %159, 1
  %161 = call i32 (i32, i8*, ...) @dev_warn(i32 %158, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %160)
  br label %162

162:                                              ; preds = %155, %121
  %163 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %163, i32* %12, align 4
  br label %164

164:                                              ; preds = %162, %112, %103
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %11, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %11, align 4
  br label %99

168:                                              ; preds = %99
  %169 = load i64, i64* @SLG51000_SCTL_EVT, align 8
  %170 = getelementptr inbounds [3 x i32], [3 x i32]* %24, i64 %169
  %171 = getelementptr inbounds [3 x i32], [3 x i32]* %170, i64 0, i64 2
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @SLG51000_IRQ_HIGH_TEMP_WARN_MASK, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %252, label %176

176:                                              ; preds = %168
  %177 = load i64, i64* @SLG51000_SCTL_EVT, align 8
  %178 = getelementptr inbounds [3 x i32], [3 x i32]* %24, i64 %177
  %179 = getelementptr inbounds [3 x i32], [3 x i32]* %178, i64 0, i64 0
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @SLG51000_EVT_HIGH_TEMP_WARN_MASK, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %252

184:                                              ; preds = %176
  store i32 0, i32* %11, align 4
  br label %185

185:                                              ; preds = %234, %184
  %186 = load i32, i32* %11, align 4
  %187 = load i32, i32* @SLG51000_MAX_REGULATORS, align 4
  %188 = icmp slt i32 %186, %187
  br i1 %188, label %189, label %237

189:                                              ; preds = %185
  %190 = load i32, i32* %11, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [3 x i32], [3 x i32]* %24, i64 %191
  %193 = getelementptr inbounds [3 x i32], [3 x i32]* %192, i64 0, i64 1
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* @SLG51000_STA_ILIM_FLAG_MASK, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %233, label %198

198:                                              ; preds = %189
  %199 = load i32, i32* %11, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [3 x i32], [3 x i32]* %24, i64 %200
  %202 = getelementptr inbounds [3 x i32], [3 x i32]* %201, i64 0, i64 1
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @SLG51000_STA_VOUT_OK_FLAG_MASK, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %233

207:                                              ; preds = %198
  %208 = load %struct.slg51000*, %struct.slg51000** %6, align 8
  %209 = getelementptr inbounds %struct.slg51000, %struct.slg51000* %208, i32 0, i32 1
  %210 = load i32*, i32** %209, align 8
  %211 = load i32, i32* %11, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @regulator_lock(i32 %214)
  %216 = load %struct.slg51000*, %struct.slg51000** %6, align 8
  %217 = getelementptr inbounds %struct.slg51000, %struct.slg51000* %216, i32 0, i32 1
  %218 = load i32*, i32** %217, align 8
  %219 = load i32, i32* %11, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %218, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* @REGULATOR_EVENT_OVER_TEMP, align 4
  %224 = call i32 @regulator_notifier_call_chain(i32 %222, i32 %223, i32* null)
  %225 = load %struct.slg51000*, %struct.slg51000** %6, align 8
  %226 = getelementptr inbounds %struct.slg51000, %struct.slg51000* %225, i32 0, i32 1
  %227 = load i32*, i32** %226, align 8
  %228 = load i32, i32* %11, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @regulator_unlock(i32 %231)
  br label %233

233:                                              ; preds = %207, %198, %189
  br label %234

234:                                              ; preds = %233
  %235 = load i32, i32* %11, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %11, align 4
  br label %185

237:                                              ; preds = %185
  %238 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %238, i32* %12, align 4
  %239 = load i64, i64* @SLG51000_SCTL_EVT, align 8
  %240 = getelementptr inbounds [3 x i32], [3 x i32]* %24, i64 %239
  %241 = getelementptr inbounds [3 x i32], [3 x i32]* %240, i64 0, i64 1
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* @SLG51000_STA_HIGH_TEMP_WARN_MASK, align 4
  %244 = and i32 %242, %243
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %251

246:                                              ; preds = %237
  %247 = load %struct.slg51000*, %struct.slg51000** %6, align 8
  %248 = getelementptr inbounds %struct.slg51000, %struct.slg51000* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = call i32 (i32, i8*, ...) @dev_warn(i32 %249, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %251

251:                                              ; preds = %246, %237
  br label %252

252:                                              ; preds = %251, %176, %168
  %253 = load i32, i32* %12, align 4
  store i32 %253, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %254

254:                                              ; preds = %252, %75, %62, %45
  %255 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %255)
  %256 = load i32, i32* %3, align 4
  ret i32 %256
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @regmap_bulk_read(%struct.regmap*, i32, i32*, i32) #2

declare dso_local i32 @dev_err(i32, i8*, i32) #2

declare dso_local i32 @regmap_read(%struct.regmap*, i32, i32*) #2

declare dso_local i32 @dev_info(i32, i8*) #2

declare dso_local i32 @regulator_lock(i32) #2

declare dso_local i32 @regulator_notifier_call_chain(i32, i32, i32*) #2

declare dso_local i32 @regulator_unlock(i32) #2

declare dso_local i32 @dev_warn(i32, i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
