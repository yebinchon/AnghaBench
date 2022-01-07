; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_tps65910-regulator.c_tps65910_set_ext_sleep_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_tps65910-regulator.c_tps65910_set_ext_sleep_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tps65910_reg = type { i32*, i32*, i32 (i32)*, %struct.tps65910* }
%struct.tps65910 = type { i32 }

@EXT_SLEEP_CONTROL = common dso_local global i32 0, align 4
@TPS65910_SLEEP_CONTROL_EXT_INPUT_EN1 = common dso_local global i32 0, align 4
@TPS65910_SLEEP_CONTROL_EXT_INPUT_EN2 = common dso_local global i32 0, align 4
@TPS65910_SLEEP_CONTROL_EXT_INPUT_EN3 = common dso_local global i32 0, align 4
@TPS65911_SLEEP_CONTROL_EXT_INPUT_SLEEP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"External sleep control flag is not proper\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TPS65910_EN1_LDO_ASS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Error in configuring external control EN1\0A\00", align 1
@TPS65910_EN2_LDO_ASS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"Error in configuring external control EN2\0A\00", align 1
@TPS65910 = common dso_local global i64 0, align 8
@TPS65910_REG_VDIG1 = common dso_local global i32 0, align 4
@TPS65910_EN3_LDO_ASS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"Error in configuring external control EN3\0A\00", align 1
@TPS65910_SLEEP_KEEP_LDO_ON = common dso_local global i32 0, align 4
@TPS65910_SLEEP_SET_LDO_OFF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"Error in configuring SLEEP register\0A\00", align 1
@TPS65910_REG_VDD1 = common dso_local global i32 0, align 4
@TPS65910_REG_VDD2 = common dso_local global i32 0, align 4
@TPS65911_REG_VDDCTRL = common dso_local global i32 0, align 4
@TPS65911 = common dso_local global i64 0, align 8
@VDD1_OP_CMD_MASK = common dso_local global i32 0, align 4
@VDD1_OP_SEL_MASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"Error in configuring op register\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"Error in setting sr register\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tps65910_reg*, i32, i32)* @tps65910_set_ext_sleep_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps65910_set_ext_sleep_config(%struct.tps65910_reg* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tps65910_reg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tps65910*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.tps65910_reg* %0, %struct.tps65910_reg** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %18 = load %struct.tps65910_reg*, %struct.tps65910_reg** %5, align 8
  %19 = getelementptr inbounds %struct.tps65910_reg, %struct.tps65910_reg* %18, i32 0, i32 3
  %20 = load %struct.tps65910*, %struct.tps65910** %19, align 8
  store %struct.tps65910* %20, %struct.tps65910** %8, align 8
  %21 = load %struct.tps65910_reg*, %struct.tps65910_reg** %5, align 8
  %22 = getelementptr inbounds %struct.tps65910_reg, %struct.tps65910_reg* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = ashr i32 %27, 8
  %29 = and i32 %28, 255
  store i32 %29, i32* %9, align 4
  %30 = load %struct.tps65910_reg*, %struct.tps65910_reg** %5, align 8
  %31 = getelementptr inbounds %struct.tps65910_reg, %struct.tps65910_reg* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = shl i32 1, %36
  %38 = and i32 %37, 255
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @EXT_SLEEP_CONTROL, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %80

43:                                               ; preds = %3
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @TPS65910_SLEEP_CONTROL_EXT_INPUT_EN1, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @TPS65910_SLEEP_CONTROL_EXT_INPUT_EN2, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i32
  %54 = load i32, i32* %12, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @TPS65910_SLEEP_CONTROL_EXT_INPUT_EN3, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i32
  %61 = load i32, i32* %12, align 4
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @TPS65911_SLEEP_CONTROL_EXT_INPUT_SLEEP, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i32
  %68 = load i32, i32* %12, align 4
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %12, align 4
  %71 = icmp sgt i32 %70, 1
  br i1 %71, label %72, label %79

72:                                               ; preds = %43
  %73 = load %struct.tps65910*, %struct.tps65910** %8, align 8
  %74 = getelementptr inbounds %struct.tps65910, %struct.tps65910* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @dev_err(i32 %75, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %339

79:                                               ; preds = %43
  br label %80

80:                                               ; preds = %79, %3
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.tps65910_reg*, %struct.tps65910_reg** %5, align 8
  %83 = getelementptr inbounds %struct.tps65910_reg, %struct.tps65910_reg* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 %81, i32* %87, align 4
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @TPS65910_SLEEP_CONTROL_EXT_INPUT_EN1, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %99

92:                                               ; preds = %80
  %93 = load %struct.tps65910*, %struct.tps65910** %8, align 8
  %94 = load i32, i32* @TPS65910_EN1_LDO_ASS, align 4
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %94, %95
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @tps65910_reg_set_bits(%struct.tps65910* %93, i32 %96, i32 %97)
  store i32 %98, i32* %11, align 4
  br label %106

99:                                               ; preds = %80
  %100 = load %struct.tps65910*, %struct.tps65910** %8, align 8
  %101 = load i32, i32* @TPS65910_EN1_LDO_ASS, align 4
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %101, %102
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @tps65910_reg_clear_bits(%struct.tps65910* %100, i32 %103, i32 %104)
  store i32 %105, i32* %11, align 4
  br label %106

106:                                              ; preds = %99, %92
  %107 = load i32, i32* %11, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %106
  %110 = load %struct.tps65910*, %struct.tps65910** %8, align 8
  %111 = getelementptr inbounds %struct.tps65910, %struct.tps65910* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @dev_err(i32 %112, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %114 = load i32, i32* %11, align 4
  store i32 %114, i32* %4, align 4
  br label %339

115:                                              ; preds = %106
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* @TPS65910_SLEEP_CONTROL_EXT_INPUT_EN2, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %115
  %121 = load %struct.tps65910*, %struct.tps65910** %8, align 8
  %122 = load i32, i32* @TPS65910_EN2_LDO_ASS, align 4
  %123 = load i32, i32* %9, align 4
  %124 = add nsw i32 %122, %123
  %125 = load i32, i32* %10, align 4
  %126 = call i32 @tps65910_reg_set_bits(%struct.tps65910* %121, i32 %124, i32 %125)
  store i32 %126, i32* %11, align 4
  br label %134

127:                                              ; preds = %115
  %128 = load %struct.tps65910*, %struct.tps65910** %8, align 8
  %129 = load i32, i32* @TPS65910_EN2_LDO_ASS, align 4
  %130 = load i32, i32* %9, align 4
  %131 = add nsw i32 %129, %130
  %132 = load i32, i32* %10, align 4
  %133 = call i32 @tps65910_reg_clear_bits(%struct.tps65910* %128, i32 %131, i32 %132)
  store i32 %133, i32* %11, align 4
  br label %134

134:                                              ; preds = %127, %120
  %135 = load i32, i32* %11, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %134
  %138 = load %struct.tps65910*, %struct.tps65910** %8, align 8
  %139 = getelementptr inbounds %struct.tps65910, %struct.tps65910* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @dev_err(i32 %140, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  %142 = load i32, i32* %11, align 4
  store i32 %142, i32* %4, align 4
  br label %339

143:                                              ; preds = %134
  %144 = load %struct.tps65910*, %struct.tps65910** %8, align 8
  %145 = call i64 @tps65910_chip_id(%struct.tps65910* %144)
  %146 = load i64, i64* @TPS65910, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %181

148:                                              ; preds = %143
  %149 = load i32, i32* %6, align 4
  %150 = load i32, i32* @TPS65910_REG_VDIG1, align 4
  %151 = icmp sge i32 %149, %150
  br i1 %151, label %152, label %181

152:                                              ; preds = %148
  %153 = load i32, i32* %7, align 4
  %154 = load i32, i32* @TPS65910_SLEEP_CONTROL_EXT_INPUT_EN3, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %164

157:                                              ; preds = %152
  %158 = load %struct.tps65910*, %struct.tps65910** %8, align 8
  %159 = load i32, i32* @TPS65910_EN3_LDO_ASS, align 4
  %160 = load i32, i32* %9, align 4
  %161 = add nsw i32 %159, %160
  %162 = load i32, i32* %10, align 4
  %163 = call i32 @tps65910_reg_set_bits(%struct.tps65910* %158, i32 %161, i32 %162)
  store i32 %163, i32* %11, align 4
  br label %171

164:                                              ; preds = %152
  %165 = load %struct.tps65910*, %struct.tps65910** %8, align 8
  %166 = load i32, i32* @TPS65910_EN3_LDO_ASS, align 4
  %167 = load i32, i32* %9, align 4
  %168 = add nsw i32 %166, %167
  %169 = load i32, i32* %10, align 4
  %170 = call i32 @tps65910_reg_clear_bits(%struct.tps65910* %165, i32 %168, i32 %169)
  store i32 %170, i32* %11, align 4
  br label %171

171:                                              ; preds = %164, %157
  %172 = load i32, i32* %11, align 4
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %171
  %175 = load %struct.tps65910*, %struct.tps65910** %8, align 8
  %176 = getelementptr inbounds %struct.tps65910, %struct.tps65910* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @dev_err(i32 %177, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %179 = load i32, i32* %11, align 4
  store i32 %179, i32* %4, align 4
  br label %339

180:                                              ; preds = %171
  br label %181

181:                                              ; preds = %180, %148, %143
  %182 = load i32, i32* %7, align 4
  %183 = load i32, i32* @EXT_SLEEP_CONTROL, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %212, label %186

186:                                              ; preds = %181
  %187 = load %struct.tps65910*, %struct.tps65910** %8, align 8
  %188 = load i32, i32* @TPS65910_SLEEP_KEEP_LDO_ON, align 4
  %189 = load i32, i32* %9, align 4
  %190 = add nsw i32 %188, %189
  %191 = load i32, i32* %10, align 4
  %192 = call i32 @tps65910_reg_clear_bits(%struct.tps65910* %187, i32 %190, i32 %191)
  store i32 %192, i32* %11, align 4
  %193 = load i32, i32* %11, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %202, label %195

195:                                              ; preds = %186
  %196 = load %struct.tps65910*, %struct.tps65910** %8, align 8
  %197 = load i32, i32* @TPS65910_SLEEP_SET_LDO_OFF, align 4
  %198 = load i32, i32* %9, align 4
  %199 = add nsw i32 %197, %198
  %200 = load i32, i32* %10, align 4
  %201 = call i32 @tps65910_reg_clear_bits(%struct.tps65910* %196, i32 %199, i32 %200)
  store i32 %201, i32* %11, align 4
  br label %202

202:                                              ; preds = %195, %186
  %203 = load i32, i32* %11, align 4
  %204 = icmp slt i32 %203, 0
  br i1 %204, label %205, label %210

205:                                              ; preds = %202
  %206 = load %struct.tps65910*, %struct.tps65910** %8, align 8
  %207 = getelementptr inbounds %struct.tps65910, %struct.tps65910* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @dev_err(i32 %208, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  br label %210

210:                                              ; preds = %205, %202
  %211 = load i32, i32* %11, align 4
  store i32 %211, i32* %4, align 4
  br label %339

212:                                              ; preds = %181
  %213 = load i32, i32* %6, align 4
  %214 = load i32, i32* @TPS65910_REG_VDD1, align 4
  %215 = icmp eq i32 %213, %214
  br i1 %215, label %229, label %216

216:                                              ; preds = %212
  %217 = load i32, i32* %6, align 4
  %218 = load i32, i32* @TPS65910_REG_VDD2, align 4
  %219 = icmp eq i32 %217, %218
  br i1 %219, label %229, label %220

220:                                              ; preds = %216
  %221 = load i32, i32* %6, align 4
  %222 = load i32, i32* @TPS65911_REG_VDDCTRL, align 4
  %223 = icmp eq i32 %221, %222
  br i1 %223, label %224, label %300

224:                                              ; preds = %220
  %225 = load %struct.tps65910*, %struct.tps65910** %8, align 8
  %226 = call i64 @tps65910_chip_id(%struct.tps65910* %225)
  %227 = load i64, i64* @TPS65911, align 8
  %228 = icmp eq i64 %226, %227
  br i1 %228, label %229, label %300

229:                                              ; preds = %224, %216, %212
  %230 = load %struct.tps65910_reg*, %struct.tps65910_reg** %5, align 8
  %231 = getelementptr inbounds %struct.tps65910_reg, %struct.tps65910_reg* %230, i32 0, i32 2
  %232 = load i32 (i32)*, i32 (i32)** %231, align 8
  %233 = load i32, i32* %6, align 4
  %234 = call i32 %232(i32 %233)
  %235 = add nsw i32 %234, 1
  store i32 %235, i32* %13, align 4
  %236 = load %struct.tps65910_reg*, %struct.tps65910_reg** %5, align 8
  %237 = getelementptr inbounds %struct.tps65910_reg, %struct.tps65910_reg* %236, i32 0, i32 2
  %238 = load i32 (i32)*, i32 (i32)** %237, align 8
  %239 = load i32, i32* %6, align 4
  %240 = call i32 %238(i32 %239)
  %241 = add nsw i32 %240, 2
  store i32 %241, i32* %14, align 4
  %242 = load %struct.tps65910_reg*, %struct.tps65910_reg** %5, align 8
  %243 = getelementptr inbounds %struct.tps65910_reg, %struct.tps65910_reg* %242, i32 0, i32 3
  %244 = load %struct.tps65910*, %struct.tps65910** %243, align 8
  %245 = load i32, i32* %13, align 4
  %246 = call i32 @tps65910_reg_read(%struct.tps65910* %244, i32 %245, i32* %15)
  store i32 %246, i32* %11, align 4
  %247 = load i32, i32* %11, align 4
  %248 = icmp slt i32 %247, 0
  br i1 %248, label %249, label %251

249:                                              ; preds = %229
  %250 = load i32, i32* %11, align 4
  store i32 %250, i32* %4, align 4
  br label %339

251:                                              ; preds = %229
  %252 = load %struct.tps65910_reg*, %struct.tps65910_reg** %5, align 8
  %253 = getelementptr inbounds %struct.tps65910_reg, %struct.tps65910_reg* %252, i32 0, i32 3
  %254 = load %struct.tps65910*, %struct.tps65910** %253, align 8
  %255 = load i32, i32* %14, align 4
  %256 = call i32 @tps65910_reg_read(%struct.tps65910* %254, i32 %255, i32* %16)
  store i32 %256, i32* %11, align 4
  %257 = load i32, i32* %11, align 4
  %258 = icmp slt i32 %257, 0
  br i1 %258, label %259, label %261

259:                                              ; preds = %251
  %260 = load i32, i32* %11, align 4
  store i32 %260, i32* %4, align 4
  br label %339

261:                                              ; preds = %251
  %262 = load i32, i32* %15, align 4
  %263 = load i32, i32* @VDD1_OP_CMD_MASK, align 4
  %264 = and i32 %262, %263
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %285

266:                                              ; preds = %261
  %267 = load i32, i32* %16, align 4
  %268 = load i32, i32* @VDD1_OP_SEL_MASK, align 4
  %269 = and i32 %267, %268
  store i32 %269, i32* %17, align 4
  %270 = load %struct.tps65910_reg*, %struct.tps65910_reg** %5, align 8
  %271 = getelementptr inbounds %struct.tps65910_reg, %struct.tps65910_reg* %270, i32 0, i32 3
  %272 = load %struct.tps65910*, %struct.tps65910** %271, align 8
  %273 = load i32, i32* %13, align 4
  %274 = load i32, i32* %17, align 4
  %275 = call i32 @tps65910_reg_write(%struct.tps65910* %272, i32 %273, i32 %274)
  store i32 %275, i32* %11, align 4
  %276 = load i32, i32* %11, align 4
  %277 = icmp slt i32 %276, 0
  br i1 %277, label %278, label %284

278:                                              ; preds = %266
  %279 = load %struct.tps65910*, %struct.tps65910** %8, align 8
  %280 = getelementptr inbounds %struct.tps65910, %struct.tps65910* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = call i32 @dev_err(i32 %281, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %283 = load i32, i32* %11, align 4
  store i32 %283, i32* %4, align 4
  br label %339

284:                                              ; preds = %266
  br label %285

285:                                              ; preds = %284, %261
  %286 = load %struct.tps65910_reg*, %struct.tps65910_reg** %5, align 8
  %287 = getelementptr inbounds %struct.tps65910_reg, %struct.tps65910_reg* %286, i32 0, i32 3
  %288 = load %struct.tps65910*, %struct.tps65910** %287, align 8
  %289 = load i32, i32* %14, align 4
  %290 = call i32 @tps65910_reg_write(%struct.tps65910* %288, i32 %289, i32 0)
  store i32 %290, i32* %11, align 4
  %291 = load i32, i32* %11, align 4
  %292 = icmp slt i32 %291, 0
  br i1 %292, label %293, label %299

293:                                              ; preds = %285
  %294 = load %struct.tps65910*, %struct.tps65910** %8, align 8
  %295 = getelementptr inbounds %struct.tps65910, %struct.tps65910* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 4
  %297 = call i32 @dev_err(i32 %296, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %298 = load i32, i32* %11, align 4
  store i32 %298, i32* %4, align 4
  br label %339

299:                                              ; preds = %285
  br label %300

300:                                              ; preds = %299, %224, %220
  %301 = load %struct.tps65910*, %struct.tps65910** %8, align 8
  %302 = load i32, i32* @TPS65910_SLEEP_KEEP_LDO_ON, align 4
  %303 = load i32, i32* %9, align 4
  %304 = add nsw i32 %302, %303
  %305 = load i32, i32* %10, align 4
  %306 = call i32 @tps65910_reg_clear_bits(%struct.tps65910* %301, i32 %304, i32 %305)
  store i32 %306, i32* %11, align 4
  %307 = load i32, i32* %11, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %329, label %309

309:                                              ; preds = %300
  %310 = load i32, i32* %7, align 4
  %311 = load i32, i32* @TPS65911_SLEEP_CONTROL_EXT_INPUT_SLEEP, align 4
  %312 = and i32 %310, %311
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %321

314:                                              ; preds = %309
  %315 = load %struct.tps65910*, %struct.tps65910** %8, align 8
  %316 = load i32, i32* @TPS65910_SLEEP_SET_LDO_OFF, align 4
  %317 = load i32, i32* %9, align 4
  %318 = add nsw i32 %316, %317
  %319 = load i32, i32* %10, align 4
  %320 = call i32 @tps65910_reg_set_bits(%struct.tps65910* %315, i32 %318, i32 %319)
  store i32 %320, i32* %11, align 4
  br label %328

321:                                              ; preds = %309
  %322 = load %struct.tps65910*, %struct.tps65910** %8, align 8
  %323 = load i32, i32* @TPS65910_SLEEP_SET_LDO_OFF, align 4
  %324 = load i32, i32* %9, align 4
  %325 = add nsw i32 %323, %324
  %326 = load i32, i32* %10, align 4
  %327 = call i32 @tps65910_reg_clear_bits(%struct.tps65910* %322, i32 %325, i32 %326)
  store i32 %327, i32* %11, align 4
  br label %328

328:                                              ; preds = %321, %314
  br label %329

329:                                              ; preds = %328, %300
  %330 = load i32, i32* %11, align 4
  %331 = icmp slt i32 %330, 0
  br i1 %331, label %332, label %337

332:                                              ; preds = %329
  %333 = load %struct.tps65910*, %struct.tps65910** %8, align 8
  %334 = getelementptr inbounds %struct.tps65910, %struct.tps65910* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 4
  %336 = call i32 @dev_err(i32 %335, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  br label %337

337:                                              ; preds = %332, %329
  %338 = load i32, i32* %11, align 4
  store i32 %338, i32* %4, align 4
  br label %339

339:                                              ; preds = %337, %293, %278, %259, %249, %210, %174, %137, %109, %72
  %340 = load i32, i32* %4, align 4
  ret i32 %340
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @tps65910_reg_set_bits(%struct.tps65910*, i32, i32) #1

declare dso_local i32 @tps65910_reg_clear_bits(%struct.tps65910*, i32, i32) #1

declare dso_local i64 @tps65910_chip_id(%struct.tps65910*) #1

declare dso_local i32 @tps65910_reg_read(%struct.tps65910*, i32, i32*) #1

declare dso_local i32 @tps65910_reg_write(%struct.tps65910*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
