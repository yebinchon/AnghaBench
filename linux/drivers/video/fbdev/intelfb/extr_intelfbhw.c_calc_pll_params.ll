; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/intelfb/extr_intelfbhw.c_calc_pll_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/intelfb/extr_intelfbhw.c_calc_pll_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pll_min_max = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@plls = common dso_local global %struct.pll_min_max* null, align 8
@.str = private unnamed_addr constant [13 x i8] c"Clock is %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"p range is %d-%d (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"cannot split p = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"cannot split m = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"cannot find parameters for clock %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [63 x i8] c"m, n, p: %d (%d,%d), %d (%d), %d (%d,%d), f: %d (%d), VCO: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32*, i32*, i32*, i32*, i32*)* @calc_pll_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calc_pll_params(i32 %0, i32 %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca %struct.pll_min_max*, align 8
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32 0, i32* %27, align 4
  store i32 0, i32* %29, align 4
  store i32 10000000, i32* %30, align 4
  store i32 0, i32* %31, align 4
  store i32 0, i32* %32, align 4
  %39 = load %struct.pll_min_max*, %struct.pll_min_max** @plls, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.pll_min_max, %struct.pll_min_max* %39, i64 %41
  store %struct.pll_min_max* %42, %struct.pll_min_max** %38, align 8
  %43 = load i32, i32* %11, align 4
  %44 = call i32 (i8*, i32, ...) @DBG_MSG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load %struct.pll_min_max*, %struct.pll_min_max** %38, align 8
  %46 = getelementptr inbounds %struct.pll_min_max, %struct.pll_min_max* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %11, align 4
  %49 = sdiv i32 %47, %48
  store i32 %49, i32* %37, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.pll_min_max*, %struct.pll_min_max** %38, align 8
  %52 = getelementptr inbounds %struct.pll_min_max, %struct.pll_min_max* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp sle i32 %50, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %8
  %56 = load %struct.pll_min_max*, %struct.pll_min_max** %38, align 8
  %57 = getelementptr inbounds %struct.pll_min_max, %struct.pll_min_max* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  br label %63

59:                                               ; preds = %8
  %60 = load %struct.pll_min_max*, %struct.pll_min_max** %38, align 8
  %61 = getelementptr inbounds %struct.pll_min_max, %struct.pll_min_max* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  br label %63

63:                                               ; preds = %59, %55
  %64 = phi i32 [ %58, %55 ], [ %62, %59 ]
  store i32 %64, i32* %36, align 4
  %65 = load i32, i32* %36, align 4
  store i32 %65, i32* %34, align 4
  %66 = load i32, i32* %37, align 4
  %67 = load i32, i32* %36, align 4
  %68 = call i32 @ROUND_DOWN_TO(i32 %66, i32 %67)
  store i32 %68, i32* %35, align 4
  %69 = load i32, i32* %34, align 4
  %70 = load %struct.pll_min_max*, %struct.pll_min_max** %38, align 8
  %71 = getelementptr inbounds %struct.pll_min_max, %struct.pll_min_max* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %63
  %75 = load %struct.pll_min_max*, %struct.pll_min_max** %38, align 8
  %76 = getelementptr inbounds %struct.pll_min_max, %struct.pll_min_max* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %34, align 4
  br label %78

78:                                               ; preds = %74, %63
  %79 = load i32, i32* %35, align 4
  %80 = load %struct.pll_min_max*, %struct.pll_min_max** %38, align 8
  %81 = getelementptr inbounds %struct.pll_min_max, %struct.pll_min_max* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 4
  %83 = icmp sgt i32 %79, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = load %struct.pll_min_max*, %struct.pll_min_max** %38, align 8
  %86 = getelementptr inbounds %struct.pll_min_max, %struct.pll_min_max* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %35, align 4
  br label %88

88:                                               ; preds = %84, %78
  %89 = load i32, i32* %34, align 4
  %90 = load i32, i32* %35, align 4
  %91 = load i32, i32* %36, align 4
  %92 = call i32 (i8*, i32, ...) @DBG_MSG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %89, i32 %90, i32 %91)
  %93 = load i32, i32* %34, align 4
  store i32 %93, i32* %26, align 4
  br label %94

94:                                               ; preds = %210, %88
  %95 = load i32, i32* %10, align 4
  %96 = load i32, i32* %26, align 4
  %97 = call i64 @splitp(i32 %95, i32 %96, i32* %21, i32* %22)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %94
  %100 = load i32, i32* %26, align 4
  %101 = call i32 @WRN_MSG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* %36, align 4
  %103 = load i32, i32* %26, align 4
  %104 = add nsw i32 %103, %102
  store i32 %104, i32* %26, align 4
  br label %210

105:                                              ; preds = %94
  %106 = load %struct.pll_min_max*, %struct.pll_min_max** %38, align 8
  %107 = getelementptr inbounds %struct.pll_min_max, %struct.pll_min_max* %106, i32 0, i32 6
  %108 = load i32, i32* %107, align 4
  store i32 %108, i32* %20, align 4
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* %26, align 4
  %111 = mul nsw i32 %109, %110
  store i32 %111, i32* %25, align 4
  br label %112

112:                                              ; preds = %204, %105
  %113 = load i32, i32* %25, align 4
  %114 = load i32, i32* %20, align 4
  %115 = mul nsw i32 %113, %114
  %116 = load %struct.pll_min_max*, %struct.pll_min_max** %38, align 8
  %117 = getelementptr inbounds %struct.pll_min_max, %struct.pll_min_max* %116, i32 0, i32 8
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @ROUND_UP_TO(i32 %115, i32 %118)
  %120 = load %struct.pll_min_max*, %struct.pll_min_max** %38, align 8
  %121 = getelementptr inbounds %struct.pll_min_max, %struct.pll_min_max* %120, i32 0, i32 8
  %122 = load i32, i32* %121, align 4
  %123 = sdiv i32 %119, %122
  store i32 %123, i32* %28, align 4
  %124 = load i32, i32* %28, align 4
  %125 = load %struct.pll_min_max*, %struct.pll_min_max** %38, align 8
  %126 = getelementptr inbounds %struct.pll_min_max, %struct.pll_min_max* %125, i32 0, i32 9
  %127 = load i32, i32* %126, align 4
  %128 = icmp slt i32 %124, %127
  br i1 %128, label %129, label %134

129:                                              ; preds = %112
  %130 = load %struct.pll_min_max*, %struct.pll_min_max** %38, align 8
  %131 = getelementptr inbounds %struct.pll_min_max, %struct.pll_min_max* %130, i32 0, i32 9
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %28, align 4
  br label %134

134:                                              ; preds = %129, %112
  %135 = load i32, i32* %28, align 4
  %136 = load %struct.pll_min_max*, %struct.pll_min_max** %38, align 8
  %137 = getelementptr inbounds %struct.pll_min_max, %struct.pll_min_max* %136, i32 0, i32 10
  %138 = load i32, i32* %137, align 4
  %139 = icmp sgt i32 %135, %138
  br i1 %139, label %140, label %145

140:                                              ; preds = %134
  %141 = load %struct.pll_min_max*, %struct.pll_min_max** %38, align 8
  %142 = getelementptr inbounds %struct.pll_min_max, %struct.pll_min_max* %141, i32 0, i32 10
  %143 = load i32, i32* %142, align 4
  %144 = sub nsw i32 %143, 1
  store i32 %144, i32* %28, align 4
  br label %145

145:                                              ; preds = %140, %134
  %146 = load i32, i32* %28, align 4
  %147 = sub nsw i32 %146, 1
  store i32 %147, i32* %24, align 4
  br label %148

148:                                              ; preds = %188, %145
  %149 = load i32, i32* %24, align 4
  %150 = load i32, i32* %28, align 4
  %151 = icmp sle i32 %149, %150
  br i1 %151, label %152, label %191

152:                                              ; preds = %148
  %153 = load i32, i32* %10, align 4
  %154 = load i32, i32* %24, align 4
  %155 = load i32, i32* %20, align 4
  %156 = load i32, i32* %26, align 4
  %157 = call i32 @calc_vclock3(i32 %153, i32 %154, i32 %155, i32 %156)
  store i32 %157, i32* %29, align 4
  %158 = load i32, i32* %10, align 4
  %159 = load i32, i32* %24, align 4
  %160 = call i64 @splitm(i32 %158, i32 %159, i32* %18, i32* %19)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %152
  %163 = load i32, i32* %24, align 4
  %164 = call i32 @WRN_MSG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %163)
  br label %188

165:                                              ; preds = %152
  %166 = load i32, i32* %11, align 4
  %167 = load i32, i32* %29, align 4
  %168 = icmp sgt i32 %166, %167
  br i1 %168, label %169, label %173

169:                                              ; preds = %165
  %170 = load i32, i32* %11, align 4
  %171 = load i32, i32* %29, align 4
  %172 = sub nsw i32 %170, %171
  store i32 %172, i32* %33, align 4
  br label %178

173:                                              ; preds = %165
  %174 = load i32, i32* %29, align 4
  %175 = load i32, i32* %11, align 4
  %176 = sub nsw i32 %174, %175
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %33, align 4
  br label %178

178:                                              ; preds = %173, %169
  %179 = load i32, i32* %33, align 4
  %180 = load i32, i32* %30, align 4
  %181 = icmp slt i32 %179, %180
  br i1 %181, label %182, label %187

182:                                              ; preds = %178
  %183 = load i32, i32* %24, align 4
  store i32 %183, i32* %32, align 4
  %184 = load i32, i32* %20, align 4
  store i32 %184, i32* %31, align 4
  %185 = load i32, i32* %26, align 4
  store i32 %185, i32* %27, align 4
  %186 = load i32, i32* %33, align 4
  store i32 %186, i32* %30, align 4
  br label %187

187:                                              ; preds = %182, %178
  br label %188

188:                                              ; preds = %187, %162
  %189 = load i32, i32* %24, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %24, align 4
  br label %148

191:                                              ; preds = %148
  %192 = load i32, i32* %20, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %20, align 4
  br label %194

194:                                              ; preds = %191
  %195 = load i32, i32* %20, align 4
  %196 = load %struct.pll_min_max*, %struct.pll_min_max** %38, align 8
  %197 = getelementptr inbounds %struct.pll_min_max, %struct.pll_min_max* %196, i32 0, i32 7
  %198 = load i32, i32* %197, align 4
  %199 = icmp sle i32 %195, %198
  br i1 %199, label %200, label %204

200:                                              ; preds = %194
  %201 = load i32, i32* %29, align 4
  %202 = load i32, i32* %11, align 4
  %203 = icmp sge i32 %201, %202
  br label %204

204:                                              ; preds = %200, %194
  %205 = phi i1 [ false, %194 ], [ %203, %200 ]
  br i1 %205, label %112, label %206

206:                                              ; preds = %204
  %207 = load i32, i32* %36, align 4
  %208 = load i32, i32* %26, align 4
  %209 = add nsw i32 %208, %207
  store i32 %209, i32* %26, align 4
  br label %210

210:                                              ; preds = %206, %99
  %211 = load i32, i32* %26, align 4
  %212 = load i32, i32* %35, align 4
  %213 = icmp sle i32 %211, %212
  br i1 %213, label %94, label %214

214:                                              ; preds = %210
  %215 = load i32, i32* %32, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %220, label %217

217:                                              ; preds = %214
  %218 = load i32, i32* %11, align 4
  %219 = call i32 @WRN_MSG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i32 %218)
  store i32 1, i32* %9, align 4
  br label %278

220:                                              ; preds = %214
  %221 = load i32, i32* %32, align 4
  store i32 %221, i32* %28, align 4
  %222 = load i32, i32* %31, align 4
  store i32 %222, i32* %20, align 4
  %223 = load i32, i32* %27, align 4
  store i32 %223, i32* %26, align 4
  %224 = load i32, i32* %10, align 4
  %225 = load i32, i32* %28, align 4
  %226 = call i64 @splitm(i32 %224, i32 %225, i32* %18, i32* %19)
  %227 = load i32, i32* %10, align 4
  %228 = load i32, i32* %26, align 4
  %229 = call i64 @splitp(i32 %227, i32 %228, i32* %21, i32* %22)
  %230 = load i32, i32* %20, align 4
  %231 = sub nsw i32 %230, 2
  store i32 %231, i32* %23, align 4
  %232 = load i32, i32* %28, align 4
  %233 = load i32, i32* %18, align 4
  %234 = load i32, i32* %19, align 4
  %235 = load i32, i32* %20, align 4
  %236 = load i32, i32* %23, align 4
  %237 = load i32, i32* %26, align 4
  %238 = load i32, i32* %21, align 4
  %239 = load i32, i32* %22, align 4
  %240 = load i32, i32* %10, align 4
  %241 = load i32, i32* %28, align 4
  %242 = load i32, i32* %20, align 4
  %243 = load i32, i32* %26, align 4
  %244 = call i32 @calc_vclock3(i32 %240, i32 %241, i32 %242, i32 %243)
  %245 = load i32, i32* %10, align 4
  %246 = load i32, i32* %18, align 4
  %247 = load i32, i32* %19, align 4
  %248 = load i32, i32* %23, align 4
  %249 = load i32, i32* %21, align 4
  %250 = load i32, i32* %22, align 4
  %251 = call i32 @calc_vclock(i32 %245, i32 %246, i32 %247, i32 %248, i32 %249, i32 %250, i32 0)
  %252 = load i32, i32* %10, align 4
  %253 = load i32, i32* %28, align 4
  %254 = load i32, i32* %20, align 4
  %255 = load i32, i32* %26, align 4
  %256 = call i32 @calc_vclock3(i32 %252, i32 %253, i32 %254, i32 %255)
  %257 = load i32, i32* %26, align 4
  %258 = mul nsw i32 %256, %257
  %259 = call i32 (i8*, i32, ...) @DBG_MSG(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.5, i64 0, i64 0), i32 %232, i32 %233, i32 %234, i32 %235, i32 %236, i32 %237, i32 %238, i32 %239, i32 %244, i32 %251, i32 %258)
  %260 = load i32, i32* %18, align 4
  %261 = load i32*, i32** %12, align 8
  store i32 %260, i32* %261, align 4
  %262 = load i32, i32* %19, align 4
  %263 = load i32*, i32** %13, align 8
  store i32 %262, i32* %263, align 4
  %264 = load i32, i32* %23, align 4
  %265 = load i32*, i32** %14, align 8
  store i32 %264, i32* %265, align 4
  %266 = load i32, i32* %21, align 4
  %267 = load i32*, i32** %15, align 8
  store i32 %266, i32* %267, align 4
  %268 = load i32, i32* %22, align 4
  %269 = load i32*, i32** %16, align 8
  store i32 %268, i32* %269, align 4
  %270 = load i32, i32* %10, align 4
  %271 = load i32, i32* %18, align 4
  %272 = load i32, i32* %19, align 4
  %273 = load i32, i32* %23, align 4
  %274 = load i32, i32* %21, align 4
  %275 = load i32, i32* %22, align 4
  %276 = call i32 @calc_vclock(i32 %270, i32 %271, i32 %272, i32 %273, i32 %274, i32 %275, i32 0)
  %277 = load i32*, i32** %17, align 8
  store i32 %276, i32* %277, align 4
  store i32 0, i32* %9, align 4
  br label %278

278:                                              ; preds = %220, %217
  %279 = load i32, i32* %9, align 4
  ret i32 %279
}

declare dso_local i32 @DBG_MSG(i8*, i32, ...) #1

declare dso_local i32 @ROUND_DOWN_TO(i32, i32) #1

declare dso_local i64 @splitp(i32, i32, i32*, i32*) #1

declare dso_local i32 @WRN_MSG(i8*, i32) #1

declare dso_local i32 @ROUND_UP_TO(i32, i32) #1

declare dso_local i32 @calc_vclock3(i32, i32, i32, i32) #1

declare dso_local i64 @splitm(i32, i32, i32*, i32*) #1

declare dso_local i32 @calc_vclock(i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
