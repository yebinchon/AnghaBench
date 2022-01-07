; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_print_constraints.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_print_constraints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_dev = type { %struct.regulation_constraints* }
%struct.regulation_constraints = type { i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"%d mV \00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"%d <--> %d mV \00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"at %d mV \00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"%dmV offset \00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%d mA \00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"%d <--> %d mA \00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"at %d mA \00", align 1
@REGULATOR_MODE_FAST = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"fast \00", align 1
@REGULATOR_MODE_NORMAL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c"normal \00", align 1
@REGULATOR_MODE_IDLE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"idle \00", align 1
@REGULATOR_MODE_STANDBY = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [8 x i8] c"standby\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"no parameters\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@REGULATOR_CHANGE_VOLTAGE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [47 x i8] c"Voltage range but no REGULATOR_CHANGE_VOLTAGE\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.regulator_dev*)* @print_constraints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_constraints(%struct.regulator_dev* %0) #0 {
  %2 = alloca %struct.regulator_dev*, align 8
  %3 = alloca %struct.regulation_constraints*, align 8
  %4 = alloca [160 x i8], align 16
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.regulator_dev* %0, %struct.regulator_dev** %2, align 8
  %8 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %9 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %8, i32 0, i32 0
  %10 = load %struct.regulation_constraints*, %struct.regulation_constraints** %9, align 8
  store %struct.regulation_constraints* %10, %struct.regulation_constraints** %3, align 8
  %11 = bitcast [160 x i8]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 160, i1 false)
  store i64 159, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.regulation_constraints*, %struct.regulation_constraints** %3, align 8
  %13 = getelementptr inbounds %struct.regulation_constraints, %struct.regulation_constraints* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %70

16:                                               ; preds = %1
  %17 = load %struct.regulation_constraints*, %struct.regulation_constraints** %3, align 8
  %18 = getelementptr inbounds %struct.regulation_constraints, %struct.regulation_constraints* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %70

21:                                               ; preds = %16
  %22 = load %struct.regulation_constraints*, %struct.regulation_constraints** %3, align 8
  %23 = getelementptr inbounds %struct.regulation_constraints, %struct.regulation_constraints* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.regulation_constraints*, %struct.regulation_constraints** %3, align 8
  %26 = getelementptr inbounds %struct.regulation_constraints, %struct.regulation_constraints* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %24, %27
  br i1 %28, label %29, label %47

29:                                               ; preds = %21
  %30 = getelementptr inbounds [160 x i8], [160 x i8]* %4, i64 0, i64 0
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i64, i64* %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = sub i64 %34, %36
  %38 = load %struct.regulation_constraints*, %struct.regulation_constraints** %3, align 8
  %39 = getelementptr inbounds %struct.regulation_constraints, %struct.regulation_constraints* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sdiv i32 %40, 1000
  %42 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %33, i64 %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %6, align 4
  br label %69

47:                                               ; preds = %21
  %48 = getelementptr inbounds [160 x i8], [160 x i8]* %4, i64 0, i64 0
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i64, i64* %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = sub i64 %52, %54
  %56 = load %struct.regulation_constraints*, %struct.regulation_constraints** %3, align 8
  %57 = getelementptr inbounds %struct.regulation_constraints, %struct.regulation_constraints* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = sdiv i32 %58, 1000
  %60 = load %struct.regulation_constraints*, %struct.regulation_constraints** %3, align 8
  %61 = getelementptr inbounds %struct.regulation_constraints, %struct.regulation_constraints* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = sdiv i32 %62, 1000
  %64 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %51, i64 %55, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %59, i32 %63)
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %66, %64
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %47, %29
  br label %70

70:                                               ; preds = %69, %16, %1
  %71 = load %struct.regulation_constraints*, %struct.regulation_constraints** %3, align 8
  %72 = getelementptr inbounds %struct.regulation_constraints, %struct.regulation_constraints* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %70
  %76 = load %struct.regulation_constraints*, %struct.regulation_constraints** %3, align 8
  %77 = getelementptr inbounds %struct.regulation_constraints, %struct.regulation_constraints* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.regulation_constraints*, %struct.regulation_constraints** %3, align 8
  %80 = getelementptr inbounds %struct.regulation_constraints, %struct.regulation_constraints* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %78, %81
  br i1 %82, label %83, label %105

83:                                               ; preds = %75, %70
  %84 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %85 = call i32 @regulator_get_voltage_rdev(%struct.regulator_dev* %84)
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* %7, align 4
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %104

88:                                               ; preds = %83
  %89 = getelementptr inbounds [160 x i8], [160 x i8]* %4, i64 0, i64 0
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i8, i8* %89, i64 %91
  %93 = load i64, i64* %5, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = sub i64 %93, %95
  %97 = load i32, i32* %7, align 4
  %98 = sdiv i32 %97, 1000
  %99 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %92, i64 %96, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* %6, align 4
  %101 = sext i32 %100 to i64
  %102 = add nsw i64 %101, %99
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %6, align 4
  br label %104

104:                                              ; preds = %88, %83
  br label %105

105:                                              ; preds = %104, %75
  %106 = load %struct.regulation_constraints*, %struct.regulation_constraints** %3, align 8
  %107 = getelementptr inbounds %struct.regulation_constraints, %struct.regulation_constraints* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %128

110:                                              ; preds = %105
  %111 = getelementptr inbounds [160 x i8], [160 x i8]* %4, i64 0, i64 0
  %112 = load i32, i32* %6, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %111, i64 %113
  %115 = load i64, i64* %5, align 8
  %116 = load i32, i32* %6, align 4
  %117 = sext i32 %116 to i64
  %118 = sub i64 %115, %117
  %119 = load %struct.regulation_constraints*, %struct.regulation_constraints** %3, align 8
  %120 = getelementptr inbounds %struct.regulation_constraints, %struct.regulation_constraints* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = sdiv i32 %121, 1000
  %123 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %114, i64 %118, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %122)
  %124 = load i32, i32* %6, align 4
  %125 = sext i32 %124 to i64
  %126 = add nsw i64 %125, %123
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %6, align 4
  br label %128

128:                                              ; preds = %110, %105
  %129 = load %struct.regulation_constraints*, %struct.regulation_constraints** %3, align 8
  %130 = getelementptr inbounds %struct.regulation_constraints, %struct.regulation_constraints* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %187

133:                                              ; preds = %128
  %134 = load %struct.regulation_constraints*, %struct.regulation_constraints** %3, align 8
  %135 = getelementptr inbounds %struct.regulation_constraints, %struct.regulation_constraints* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %187

138:                                              ; preds = %133
  %139 = load %struct.regulation_constraints*, %struct.regulation_constraints** %3, align 8
  %140 = getelementptr inbounds %struct.regulation_constraints, %struct.regulation_constraints* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.regulation_constraints*, %struct.regulation_constraints** %3, align 8
  %143 = getelementptr inbounds %struct.regulation_constraints, %struct.regulation_constraints* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 4
  %145 = icmp eq i32 %141, %144
  br i1 %145, label %146, label %164

146:                                              ; preds = %138
  %147 = getelementptr inbounds [160 x i8], [160 x i8]* %4, i64 0, i64 0
  %148 = load i32, i32* %6, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i8, i8* %147, i64 %149
  %151 = load i64, i64* %5, align 8
  %152 = load i32, i32* %6, align 4
  %153 = sext i32 %152 to i64
  %154 = sub i64 %151, %153
  %155 = load %struct.regulation_constraints*, %struct.regulation_constraints** %3, align 8
  %156 = getelementptr inbounds %struct.regulation_constraints, %struct.regulation_constraints* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = sdiv i32 %157, 1000
  %159 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %150, i64 %154, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %158)
  %160 = load i32, i32* %6, align 4
  %161 = sext i32 %160 to i64
  %162 = add nsw i64 %161, %159
  %163 = trunc i64 %162 to i32
  store i32 %163, i32* %6, align 4
  br label %186

164:                                              ; preds = %138
  %165 = getelementptr inbounds [160 x i8], [160 x i8]* %4, i64 0, i64 0
  %166 = load i32, i32* %6, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8, i8* %165, i64 %167
  %169 = load i64, i64* %5, align 8
  %170 = load i32, i32* %6, align 4
  %171 = sext i32 %170 to i64
  %172 = sub i64 %169, %171
  %173 = load %struct.regulation_constraints*, %struct.regulation_constraints** %3, align 8
  %174 = getelementptr inbounds %struct.regulation_constraints, %struct.regulation_constraints* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = sdiv i32 %175, 1000
  %177 = load %struct.regulation_constraints*, %struct.regulation_constraints** %3, align 8
  %178 = getelementptr inbounds %struct.regulation_constraints, %struct.regulation_constraints* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 4
  %180 = sdiv i32 %179, 1000
  %181 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %168, i64 %172, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %176, i32 %180)
  %182 = load i32, i32* %6, align 4
  %183 = sext i32 %182 to i64
  %184 = add nsw i64 %183, %181
  %185 = trunc i64 %184 to i32
  store i32 %185, i32* %6, align 4
  br label %186

186:                                              ; preds = %164, %146
  br label %187

187:                                              ; preds = %186, %133, %128
  %188 = load %struct.regulation_constraints*, %struct.regulation_constraints** %3, align 8
  %189 = getelementptr inbounds %struct.regulation_constraints, %struct.regulation_constraints* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %200

192:                                              ; preds = %187
  %193 = load %struct.regulation_constraints*, %struct.regulation_constraints** %3, align 8
  %194 = getelementptr inbounds %struct.regulation_constraints, %struct.regulation_constraints* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.regulation_constraints*, %struct.regulation_constraints** %3, align 8
  %197 = getelementptr inbounds %struct.regulation_constraints, %struct.regulation_constraints* %196, i32 0, i32 4
  %198 = load i32, i32* %197, align 4
  %199 = icmp ne i32 %195, %198
  br i1 %199, label %200, label %222

200:                                              ; preds = %192, %187
  %201 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %202 = call i32 @_regulator_get_current_limit(%struct.regulator_dev* %201)
  store i32 %202, i32* %7, align 4
  %203 = load i32, i32* %7, align 4
  %204 = icmp sgt i32 %203, 0
  br i1 %204, label %205, label %221

205:                                              ; preds = %200
  %206 = getelementptr inbounds [160 x i8], [160 x i8]* %4, i64 0, i64 0
  %207 = load i32, i32* %6, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i8, i8* %206, i64 %208
  %210 = load i64, i64* %5, align 8
  %211 = load i32, i32* %6, align 4
  %212 = sext i32 %211 to i64
  %213 = sub i64 %210, %212
  %214 = load i32, i32* %7, align 4
  %215 = sdiv i32 %214, 1000
  %216 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %209, i64 %213, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %215)
  %217 = load i32, i32* %6, align 4
  %218 = sext i32 %217 to i64
  %219 = add nsw i64 %218, %216
  %220 = trunc i64 %219 to i32
  store i32 %220, i32* %6, align 4
  br label %221

221:                                              ; preds = %205, %200
  br label %222

222:                                              ; preds = %221, %192
  %223 = load %struct.regulation_constraints*, %struct.regulation_constraints** %3, align 8
  %224 = getelementptr inbounds %struct.regulation_constraints, %struct.regulation_constraints* %223, i32 0, i32 5
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* @REGULATOR_MODE_FAST, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %243

229:                                              ; preds = %222
  %230 = getelementptr inbounds [160 x i8], [160 x i8]* %4, i64 0, i64 0
  %231 = load i32, i32* %6, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i8, i8* %230, i64 %232
  %234 = load i64, i64* %5, align 8
  %235 = load i32, i32* %6, align 4
  %236 = sext i32 %235 to i64
  %237 = sub i64 %234, %236
  %238 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %233, i64 %237, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %239 = load i32, i32* %6, align 4
  %240 = sext i32 %239 to i64
  %241 = add nsw i64 %240, %238
  %242 = trunc i64 %241 to i32
  store i32 %242, i32* %6, align 4
  br label %243

243:                                              ; preds = %229, %222
  %244 = load %struct.regulation_constraints*, %struct.regulation_constraints** %3, align 8
  %245 = getelementptr inbounds %struct.regulation_constraints, %struct.regulation_constraints* %244, i32 0, i32 5
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* @REGULATOR_MODE_NORMAL, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %264

250:                                              ; preds = %243
  %251 = getelementptr inbounds [160 x i8], [160 x i8]* %4, i64 0, i64 0
  %252 = load i32, i32* %6, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i8, i8* %251, i64 %253
  %255 = load i64, i64* %5, align 8
  %256 = load i32, i32* %6, align 4
  %257 = sext i32 %256 to i64
  %258 = sub i64 %255, %257
  %259 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %254, i64 %258, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %260 = load i32, i32* %6, align 4
  %261 = sext i32 %260 to i64
  %262 = add nsw i64 %261, %259
  %263 = trunc i64 %262 to i32
  store i32 %263, i32* %6, align 4
  br label %264

264:                                              ; preds = %250, %243
  %265 = load %struct.regulation_constraints*, %struct.regulation_constraints** %3, align 8
  %266 = getelementptr inbounds %struct.regulation_constraints, %struct.regulation_constraints* %265, i32 0, i32 5
  %267 = load i32, i32* %266, align 4
  %268 = load i32, i32* @REGULATOR_MODE_IDLE, align 4
  %269 = and i32 %267, %268
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %285

271:                                              ; preds = %264
  %272 = getelementptr inbounds [160 x i8], [160 x i8]* %4, i64 0, i64 0
  %273 = load i32, i32* %6, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i8, i8* %272, i64 %274
  %276 = load i64, i64* %5, align 8
  %277 = load i32, i32* %6, align 4
  %278 = sext i32 %277 to i64
  %279 = sub i64 %276, %278
  %280 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %275, i64 %279, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %281 = load i32, i32* %6, align 4
  %282 = sext i32 %281 to i64
  %283 = add nsw i64 %282, %280
  %284 = trunc i64 %283 to i32
  store i32 %284, i32* %6, align 4
  br label %285

285:                                              ; preds = %271, %264
  %286 = load %struct.regulation_constraints*, %struct.regulation_constraints** %3, align 8
  %287 = getelementptr inbounds %struct.regulation_constraints, %struct.regulation_constraints* %286, i32 0, i32 5
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* @REGULATOR_MODE_STANDBY, align 4
  %290 = and i32 %288, %289
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %306

292:                                              ; preds = %285
  %293 = getelementptr inbounds [160 x i8], [160 x i8]* %4, i64 0, i64 0
  %294 = load i32, i32* %6, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i8, i8* %293, i64 %295
  %297 = load i64, i64* %5, align 8
  %298 = load i32, i32* %6, align 4
  %299 = sext i32 %298 to i64
  %300 = sub i64 %297, %299
  %301 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %296, i64 %300, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %302 = load i32, i32* %6, align 4
  %303 = sext i32 %302 to i64
  %304 = add nsw i64 %303, %301
  %305 = trunc i64 %304 to i32
  store i32 %305, i32* %6, align 4
  br label %306

306:                                              ; preds = %292, %285
  %307 = load i32, i32* %6, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %313, label %309

309:                                              ; preds = %306
  %310 = getelementptr inbounds [160 x i8], [160 x i8]* %4, i64 0, i64 0
  %311 = load i64, i64* %5, align 8
  %312 = call i64 (i8*, i64, i8*, ...) @scnprintf(i8* %310, i64 %311, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  br label %313

313:                                              ; preds = %309, %306
  %314 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %315 = getelementptr inbounds [160 x i8], [160 x i8]* %4, i64 0, i64 0
  %316 = call i32 @rdev_dbg(%struct.regulator_dev* %314, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i8* %315)
  %317 = load %struct.regulation_constraints*, %struct.regulation_constraints** %3, align 8
  %318 = getelementptr inbounds %struct.regulation_constraints, %struct.regulation_constraints* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 4
  %320 = load %struct.regulation_constraints*, %struct.regulation_constraints** %3, align 8
  %321 = getelementptr inbounds %struct.regulation_constraints, %struct.regulation_constraints* %320, i32 0, i32 1
  %322 = load i32, i32* %321, align 4
  %323 = icmp ne i32 %319, %322
  br i1 %323, label %324, label %332

324:                                              ; preds = %313
  %325 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %326 = load i32, i32* @REGULATOR_CHANGE_VOLTAGE, align 4
  %327 = call i32 @regulator_ops_is_valid(%struct.regulator_dev* %325, i32 %326)
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %332, label %329

329:                                              ; preds = %324
  %330 = load %struct.regulator_dev*, %struct.regulator_dev** %2, align 8
  %331 = call i32 @rdev_warn(%struct.regulator_dev* %330, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.13, i64 0, i64 0))
  br label %332

332:                                              ; preds = %329, %324, %313
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @scnprintf(i8*, i64, i8*, ...) #2

declare dso_local i32 @regulator_get_voltage_rdev(%struct.regulator_dev*) #2

declare dso_local i32 @_regulator_get_current_limit(%struct.regulator_dev*) #2

declare dso_local i32 @rdev_dbg(%struct.regulator_dev*, i8*, i8*) #2

declare dso_local i32 @regulator_ops_is_valid(%struct.regulator_dev*, i32) #2

declare dso_local i32 @rdev_warn(%struct.regulator_dev*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
