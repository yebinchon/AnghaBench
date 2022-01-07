; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_search_final_phase.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_sd_search_final_phase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i64, i64, %struct.sd_info }
%struct.sd_info = type { i32 }
%struct.timing_phase_path = type { i32, i32, i32, i32 }

@MAX_PHASE = common dso_local global i32 0, align 4
@TUNE_RX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"No continuous phase path\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"path[%d].start = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"path[%d].end = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"path[%d].len = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"path[%d].mid = %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@TUNE_TX = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [24 x i8] c"Final chosen phase: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.rtsx_chip*, i32, i64)* @sd_search_final_phase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sd_search_final_phase(%struct.rtsx_chip* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.rtsx_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.sd_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %23 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %24 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %23, i32 0, i32 2
  store %struct.sd_info* %24, %struct.sd_info** %7, align 8
  %25 = load i32, i32* @MAX_PHASE, align 4
  %26 = add nsw i32 %25, 1
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %8, align 8
  %29 = alloca %struct.timing_phase_path, i64 %27, align 16
  store i64 %27, i64* %9, align 8
  store i64 255, i64* %16, align 8
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %45

32:                                               ; preds = %3
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* @TUNE_RX, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %38 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %16, align 8
  br label %44

40:                                               ; preds = %32
  %41 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %42 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %16, align 8
  br label %44

44:                                               ; preds = %40, %36
  br label %369

45:                                               ; preds = %3
  store i32 0, i32* %12, align 4
  store i32 1, i32* %13, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %46

46:                                               ; preds = %120, %45
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @MAX_PHASE, align 4
  %49 = add nsw i32 %48, 1
  %50 = icmp slt i32 %47, %49
  br i1 %50, label %51, label %123

51:                                               ; preds = %46
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %10, align 4
  %54 = shl i32 1, %53
  %55 = and i32 %52, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %80

57:                                               ; preds = %51
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %57
  store i32 0, i32* %13, align 4
  %61 = load i32, i32* %12, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %12, align 4
  store i32 %61, i32* %11, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %11, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.timing_phase_path, %struct.timing_phase_path* %29, i64 %65
  %67 = getelementptr inbounds %struct.timing_phase_path, %struct.timing_phase_path* %66, i32 0, i32 0
  store i32 %63, i32* %67, align 16
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.timing_phase_path, %struct.timing_phase_path* %29, i64 %70
  %72 = getelementptr inbounds %struct.timing_phase_path, %struct.timing_phase_path* %71, i32 0, i32 1
  store i32 %68, i32* %72, align 4
  br label %79

73:                                               ; preds = %57
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.timing_phase_path, %struct.timing_phase_path* %29, i64 %76
  %78 = getelementptr inbounds %struct.timing_phase_path, %struct.timing_phase_path* %77, i32 0, i32 1
  store i32 %74, i32* %78, align 4
  br label %79

79:                                               ; preds = %73, %60
  br label %119

80:                                               ; preds = %51
  store i32 1, i32* %13, align 4
  %81 = load i32, i32* %12, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %118

83:                                               ; preds = %80
  %84 = load i32, i32* %12, align 4
  %85 = sub nsw i32 %84, 1
  store i32 %85, i32* %17, align 4
  %86 = load i32, i32* %17, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.timing_phase_path, %struct.timing_phase_path* %29, i64 %87
  %89 = getelementptr inbounds %struct.timing_phase_path, %struct.timing_phase_path* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %17, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.timing_phase_path, %struct.timing_phase_path* %29, i64 %92
  %94 = getelementptr inbounds %struct.timing_phase_path, %struct.timing_phase_path* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 16
  %96 = sub nsw i32 %90, %95
  %97 = add nsw i32 %96, 1
  %98 = load i32, i32* %17, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.timing_phase_path, %struct.timing_phase_path* %29, i64 %99
  %101 = getelementptr inbounds %struct.timing_phase_path, %struct.timing_phase_path* %100, i32 0, i32 2
  store i32 %97, i32* %101, align 8
  %102 = load i32, i32* %17, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.timing_phase_path, %struct.timing_phase_path* %29, i64 %103
  %105 = getelementptr inbounds %struct.timing_phase_path, %struct.timing_phase_path* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 16
  %107 = load i32, i32* %17, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.timing_phase_path, %struct.timing_phase_path* %29, i64 %108
  %110 = getelementptr inbounds %struct.timing_phase_path, %struct.timing_phase_path* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = sdiv i32 %111, 2
  %113 = add nsw i32 %106, %112
  %114 = load i32, i32* %17, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.timing_phase_path, %struct.timing_phase_path* %29, i64 %115
  %117 = getelementptr inbounds %struct.timing_phase_path, %struct.timing_phase_path* %116, i32 0, i32 3
  store i32 %113, i32* %117, align 4
  br label %118

118:                                              ; preds = %83, %80
  br label %119

119:                                              ; preds = %118, %79
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %10, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %10, align 4
  br label %46

123:                                              ; preds = %46
  %124 = load i32, i32* %12, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %123
  %127 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %128 = call i32 @rtsx_dev(%struct.rtsx_chip* %127)
  %129 = call i32 (i32, i8*, ...) @dev_dbg(i32 %128, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %369

130:                                              ; preds = %123
  %131 = load i32, i32* %12, align 4
  %132 = sub nsw i32 %131, 1
  store i32 %132, i32* %18, align 4
  %133 = load i32, i32* %18, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.timing_phase_path, %struct.timing_phase_path* %29, i64 %134
  %136 = getelementptr inbounds %struct.timing_phase_path, %struct.timing_phase_path* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %18, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.timing_phase_path, %struct.timing_phase_path* %29, i64 %139
  %141 = getelementptr inbounds %struct.timing_phase_path, %struct.timing_phase_path* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 16
  %143 = sub nsw i32 %137, %142
  %144 = add nsw i32 %143, 1
  %145 = load i32, i32* %18, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.timing_phase_path, %struct.timing_phase_path* %29, i64 %146
  %148 = getelementptr inbounds %struct.timing_phase_path, %struct.timing_phase_path* %147, i32 0, i32 2
  store i32 %144, i32* %148, align 8
  %149 = load i32, i32* %18, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds %struct.timing_phase_path, %struct.timing_phase_path* %29, i64 %150
  %152 = getelementptr inbounds %struct.timing_phase_path, %struct.timing_phase_path* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 16
  %154 = load i32, i32* %18, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.timing_phase_path, %struct.timing_phase_path* %29, i64 %155
  %157 = getelementptr inbounds %struct.timing_phase_path, %struct.timing_phase_path* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = sdiv i32 %158, 2
  %160 = add nsw i32 %153, %159
  %161 = load i32, i32* %18, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.timing_phase_path, %struct.timing_phase_path* %29, i64 %162
  %164 = getelementptr inbounds %struct.timing_phase_path, %struct.timing_phase_path* %163, i32 0, i32 3
  store i32 %160, i32* %164, align 4
  br label %165

165:                                              ; preds = %130
  %166 = getelementptr inbounds %struct.timing_phase_path, %struct.timing_phase_path* %29, i64 0
  %167 = getelementptr inbounds %struct.timing_phase_path, %struct.timing_phase_path* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 16
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %225

170:                                              ; preds = %165
  %171 = load i32, i32* %12, align 4
  %172 = sub nsw i32 %171, 1
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.timing_phase_path, %struct.timing_phase_path* %29, i64 %173
  %175 = getelementptr inbounds %struct.timing_phase_path, %struct.timing_phase_path* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @MAX_PHASE, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %225

179:                                              ; preds = %170
  %180 = load i32, i32* %12, align 4
  %181 = sub nsw i32 %180, 1
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.timing_phase_path, %struct.timing_phase_path* %29, i64 %182
  %184 = getelementptr inbounds %struct.timing_phase_path, %struct.timing_phase_path* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 16
  %186 = load i32, i32* @MAX_PHASE, align 4
  %187 = sub nsw i32 %185, %186
  %188 = sub nsw i32 %187, 1
  %189 = getelementptr inbounds %struct.timing_phase_path, %struct.timing_phase_path* %29, i64 0
  %190 = getelementptr inbounds %struct.timing_phase_path, %struct.timing_phase_path* %189, i32 0, i32 0
  store i32 %188, i32* %190, align 16
  %191 = load i32, i32* %12, align 4
  %192 = sub nsw i32 %191, 1
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.timing_phase_path, %struct.timing_phase_path* %29, i64 %193
  %195 = getelementptr inbounds %struct.timing_phase_path, %struct.timing_phase_path* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = getelementptr inbounds %struct.timing_phase_path, %struct.timing_phase_path* %29, i64 0
  %198 = getelementptr inbounds %struct.timing_phase_path, %struct.timing_phase_path* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = add nsw i32 %199, %196
  store i32 %200, i32* %198, align 8
  %201 = getelementptr inbounds %struct.timing_phase_path, %struct.timing_phase_path* %29, i64 0
  %202 = getelementptr inbounds %struct.timing_phase_path, %struct.timing_phase_path* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 16
  %204 = getelementptr inbounds %struct.timing_phase_path, %struct.timing_phase_path* %29, i64 0
  %205 = getelementptr inbounds %struct.timing_phase_path, %struct.timing_phase_path* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = sdiv i32 %206, 2
  %208 = add nsw i32 %203, %207
  %209 = getelementptr inbounds %struct.timing_phase_path, %struct.timing_phase_path* %29, i64 0
  %210 = getelementptr inbounds %struct.timing_phase_path, %struct.timing_phase_path* %209, i32 0, i32 3
  store i32 %208, i32* %210, align 4
  %211 = getelementptr inbounds %struct.timing_phase_path, %struct.timing_phase_path* %29, i64 0
  %212 = getelementptr inbounds %struct.timing_phase_path, %struct.timing_phase_path* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 4
  %214 = icmp slt i32 %213, 0
  br i1 %214, label %215, label %222

215:                                              ; preds = %179
  %216 = load i32, i32* @MAX_PHASE, align 4
  %217 = add nsw i32 %216, 1
  %218 = getelementptr inbounds %struct.timing_phase_path, %struct.timing_phase_path* %29, i64 0
  %219 = getelementptr inbounds %struct.timing_phase_path, %struct.timing_phase_path* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 4
  %221 = add nsw i32 %220, %217
  store i32 %221, i32* %219, align 4
  br label %222

222:                                              ; preds = %215, %179
  %223 = load i32, i32* %12, align 4
  %224 = add nsw i32 %223, -1
  store i32 %224, i32* %12, align 4
  br label %225

225:                                              ; preds = %222, %170, %165
  store i32 0, i32* %14, align 4
  store i64 0, i64* %16, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %10, align 4
  br label %226

226:                                              ; preds = %291, %225
  %227 = load i32, i32* %10, align 4
  %228 = load i32, i32* %12, align 4
  %229 = icmp slt i32 %227, %228
  br i1 %229, label %230, label %294

230:                                              ; preds = %226
  %231 = load i32, i32* %10, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.timing_phase_path, %struct.timing_phase_path* %29, i64 %232
  %234 = getelementptr inbounds %struct.timing_phase_path, %struct.timing_phase_path* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* %14, align 4
  %237 = icmp sgt i32 %235, %236
  br i1 %237, label %238, label %251

238:                                              ; preds = %230
  %239 = load i32, i32* %10, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.timing_phase_path, %struct.timing_phase_path* %29, i64 %240
  %242 = getelementptr inbounds %struct.timing_phase_path, %struct.timing_phase_path* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 8
  store i32 %243, i32* %14, align 4
  %244 = load i32, i32* %10, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.timing_phase_path, %struct.timing_phase_path* %29, i64 %245
  %247 = getelementptr inbounds %struct.timing_phase_path, %struct.timing_phase_path* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 4
  %249 = sext i32 %248 to i64
  store i64 %249, i64* %16, align 8
  %250 = load i32, i32* %10, align 4
  store i32 %250, i32* %15, align 4
  br label %251

251:                                              ; preds = %238, %230
  %252 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %253 = call i32 @rtsx_dev(%struct.rtsx_chip* %252)
  %254 = load i32, i32* %10, align 4
  %255 = load i32, i32* %10, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.timing_phase_path, %struct.timing_phase_path* %29, i64 %256
  %258 = getelementptr inbounds %struct.timing_phase_path, %struct.timing_phase_path* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 16
  %260 = call i32 (i32, i8*, ...) @dev_dbg(i32 %253, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %254, i32 %259)
  %261 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %262 = call i32 @rtsx_dev(%struct.rtsx_chip* %261)
  %263 = load i32, i32* %10, align 4
  %264 = load i32, i32* %10, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.timing_phase_path, %struct.timing_phase_path* %29, i64 %265
  %267 = getelementptr inbounds %struct.timing_phase_path, %struct.timing_phase_path* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = call i32 (i32, i8*, ...) @dev_dbg(i32 %262, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %263, i32 %268)
  %270 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %271 = call i32 @rtsx_dev(%struct.rtsx_chip* %270)
  %272 = load i32, i32* %10, align 4
  %273 = load i32, i32* %10, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.timing_phase_path, %struct.timing_phase_path* %29, i64 %274
  %276 = getelementptr inbounds %struct.timing_phase_path, %struct.timing_phase_path* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 8
  %278 = call i32 (i32, i8*, ...) @dev_dbg(i32 %271, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %272, i32 %277)
  %279 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %280 = call i32 @rtsx_dev(%struct.rtsx_chip* %279)
  %281 = load i32, i32* %10, align 4
  %282 = load i32, i32* %10, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.timing_phase_path, %struct.timing_phase_path* %29, i64 %283
  %285 = getelementptr inbounds %struct.timing_phase_path, %struct.timing_phase_path* %284, i32 0, i32 3
  %286 = load i32, i32* %285, align 4
  %287 = call i32 (i32, i8*, ...) @dev_dbg(i32 %280, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %281, i32 %286)
  %288 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %289 = call i32 @rtsx_dev(%struct.rtsx_chip* %288)
  %290 = call i32 (i32, i8*, ...) @dev_dbg(i32 %289, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  br label %291

291:                                              ; preds = %251
  %292 = load i32, i32* %10, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %10, align 4
  br label %226

294:                                              ; preds = %226
  %295 = load i64, i64* %6, align 8
  %296 = load i64, i64* @TUNE_TX, align 8
  %297 = icmp eq i64 %295, %296
  br i1 %297, label %298, label %368

298:                                              ; preds = %294
  %299 = load %struct.sd_info*, %struct.sd_info** %7, align 8
  %300 = call i64 @CHK_SD_SDR104(%struct.sd_info* %299)
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %332

302:                                              ; preds = %298
  %303 = load i32, i32* %14, align 4
  %304 = icmp sgt i32 %303, 15
  br i1 %304, label %305, label %331

305:                                              ; preds = %302
  %306 = load i32, i32* %14, align 4
  %307 = sub nsw i32 %306, 16
  %308 = sdiv i32 %307, 2
  store i32 %308, i32* %19, align 4
  %309 = load i32, i32* %15, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds %struct.timing_phase_path, %struct.timing_phase_path* %29, i64 %310
  %312 = getelementptr inbounds %struct.timing_phase_path, %struct.timing_phase_path* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 4
  %314 = load i32, i32* %14, align 4
  %315 = load i32, i32* %19, align 4
  %316 = add nsw i32 6, %315
  %317 = sub nsw i32 %314, %316
  %318 = sub nsw i32 %313, %317
  store i32 %318, i32* %20, align 4
  %319 = load i32, i32* %20, align 4
  %320 = icmp slt i32 %319, 0
  br i1 %320, label %321, label %327

321:                                              ; preds = %305
  %322 = load i32, i32* %20, align 4
  %323 = load i32, i32* @MAX_PHASE, align 4
  %324 = add nsw i32 %322, %323
  %325 = add nsw i32 %324, 1
  %326 = sext i32 %325 to i64
  store i64 %326, i64* %16, align 8
  br label %330

327:                                              ; preds = %305
  %328 = load i32, i32* %20, align 4
  %329 = sext i32 %328 to i64
  store i64 %329, i64* %16, align 8
  br label %330

330:                                              ; preds = %327, %321
  br label %331

331:                                              ; preds = %330, %302
  br label %367

332:                                              ; preds = %298
  %333 = load %struct.sd_info*, %struct.sd_info** %7, align 8
  %334 = call i64 @CHK_SD_SDR50(%struct.sd_info* %333)
  %335 = icmp ne i64 %334, 0
  br i1 %335, label %336, label %366

336:                                              ; preds = %332
  %337 = load i32, i32* %14, align 4
  %338 = icmp sgt i32 %337, 12
  br i1 %338, label %339, label %365

339:                                              ; preds = %336
  %340 = load i32, i32* %14, align 4
  %341 = sub nsw i32 %340, 13
  %342 = sdiv i32 %341, 2
  store i32 %342, i32* %21, align 4
  %343 = load i32, i32* %15, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds %struct.timing_phase_path, %struct.timing_phase_path* %29, i64 %344
  %346 = getelementptr inbounds %struct.timing_phase_path, %struct.timing_phase_path* %345, i32 0, i32 1
  %347 = load i32, i32* %346, align 4
  %348 = load i32, i32* %14, align 4
  %349 = load i32, i32* %21, align 4
  %350 = add nsw i32 3, %349
  %351 = sub nsw i32 %348, %350
  %352 = sub nsw i32 %347, %351
  store i32 %352, i32* %22, align 4
  %353 = load i32, i32* %22, align 4
  %354 = icmp slt i32 %353, 0
  br i1 %354, label %355, label %361

355:                                              ; preds = %339
  %356 = load i32, i32* %22, align 4
  %357 = load i32, i32* @MAX_PHASE, align 4
  %358 = add nsw i32 %356, %357
  %359 = add nsw i32 %358, 1
  %360 = sext i32 %359 to i64
  store i64 %360, i64* %16, align 8
  br label %364

361:                                              ; preds = %339
  %362 = load i32, i32* %22, align 4
  %363 = sext i32 %362 to i64
  store i64 %363, i64* %16, align 8
  br label %364

364:                                              ; preds = %361, %355
  br label %365

365:                                              ; preds = %364, %336
  br label %366

366:                                              ; preds = %365, %332
  br label %367

367:                                              ; preds = %366, %331
  br label %368

368:                                              ; preds = %367, %294
  br label %369

369:                                              ; preds = %368, %126, %44
  %370 = load %struct.rtsx_chip*, %struct.rtsx_chip** %4, align 8
  %371 = call i32 @rtsx_dev(%struct.rtsx_chip* %370)
  %372 = load i64, i64* %16, align 8
  %373 = call i32 (i32, i8*, ...) @dev_dbg(i32 %371, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i64 %372)
  %374 = load i64, i64* %16, align 8
  %375 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %375)
  ret i64 %374
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #2

declare dso_local i32 @rtsx_dev(%struct.rtsx_chip*) #2

declare dso_local i64 @CHK_SD_SDR104(%struct.sd_info*) #2

declare dso_local i64 @CHK_SD_SDR50(%struct.sd_info*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
