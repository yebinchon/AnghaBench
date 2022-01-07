; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/qcom/extr_tsens-v1.c_calibrate_v1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/qcom/extr_tsens-v1.c_calibrate_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsens_priv = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"calib\00", align 1
@CAL_SEL_MASK = common dso_local global i32 0, align 4
@CAL_SEL_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"calibration mode is %d\0A\00", align 1
@BASE1_MASK = common dso_local global i32 0, align 4
@BASE1_SHIFT = common dso_local global i32 0, align 4
@S0_P2_MASK = common dso_local global i32 0, align 4
@S0_P2_SHIFT = common dso_local global i32 0, align 4
@S1_P2_MASK = common dso_local global i32 0, align 4
@S1_P2_SHIFT = common dso_local global i32 0, align 4
@S2_P2_MASK_1_0 = common dso_local global i32 0, align 4
@S2_P2_SHIFT_1_0 = common dso_local global i32 0, align 4
@S2_P2_MASK_5_2 = common dso_local global i32 0, align 4
@S2_P2_SHIFT_5_2 = common dso_local global i32 0, align 4
@S3_P2_MASK = common dso_local global i32 0, align 4
@S3_P2_SHIFT = common dso_local global i32 0, align 4
@S4_P2_MASK = common dso_local global i32 0, align 4
@S4_P2_SHIFT = common dso_local global i32 0, align 4
@S5_P2_MASK = common dso_local global i32 0, align 4
@S5_P2_SHIFT = common dso_local global i32 0, align 4
@S6_P2_MASK = common dso_local global i32 0, align 4
@S6_P2_SHIFT = common dso_local global i32 0, align 4
@S7_P2_MASK_1_0 = common dso_local global i32 0, align 4
@S7_P2_SHIFT_1_0 = common dso_local global i32 0, align 4
@S7_P2_MASK_5_2 = common dso_local global i32 0, align 4
@S7_P2_SHIFT_5_2 = common dso_local global i32 0, align 4
@S8_P2_MASK = common dso_local global i32 0, align 4
@S8_P2_SHIFT = common dso_local global i32 0, align 4
@S9_P2_MASK = common dso_local global i32 0, align 4
@S9_P2_SHIFT = common dso_local global i32 0, align 4
@BASE0_MASK = common dso_local global i32 0, align 4
@BASE0_SHIFT = common dso_local global i32 0, align 4
@S0_P1_MASK = common dso_local global i32 0, align 4
@S0_P1_SHIFT = common dso_local global i32 0, align 4
@S1_P1_MASK = common dso_local global i32 0, align 4
@S1_P1_SHIFT = common dso_local global i32 0, align 4
@S2_P1_MASK = common dso_local global i32 0, align 4
@S2_P1_SHIFT = common dso_local global i32 0, align 4
@S3_P1_MASK = common dso_local global i32 0, align 4
@S3_P1_SHIFT = common dso_local global i32 0, align 4
@S4_P1_MASK = common dso_local global i32 0, align 4
@S4_P1_SHIFT = common dso_local global i32 0, align 4
@S5_P1_MASK = common dso_local global i32 0, align 4
@S5_P1_SHIFT = common dso_local global i32 0, align 4
@S6_P1_MASK = common dso_local global i32 0, align 4
@S6_P1_SHIFT = common dso_local global i32 0, align 4
@S7_P1_MASK = common dso_local global i32 0, align 4
@S7_P1_SHIFT = common dso_local global i32 0, align 4
@S8_P1_MASK = common dso_local global i32 0, align 4
@S8_P1_SHIFT = common dso_local global i32 0, align 4
@S9_P1_MASK = common dso_local global i32 0, align 4
@S9_P1_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tsens_priv*)* @calibrate_v1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calibrate_v1(%struct.tsens_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tsens_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [10 x i32], align 16
  %7 = alloca [10 x i32], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.tsens_priv* %0, %struct.tsens_priv** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.tsens_priv*, %struct.tsens_priv** %3, align 8
  %14 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @qfprom_read(i32 %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %17 = inttoptr i64 %16 to i32*
  store i32* %17, i32** %11, align 8
  %18 = load i32*, i32** %11, align 8
  %19 = call i64 @IS_ERR(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i32*, i32** %11, align 8
  %23 = call i32 @PTR_ERR(i32* %22)
  store i32 %23, i32* %2, align 4
  br label %304

24:                                               ; preds = %1
  %25 = load i32*, i32** %11, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 4
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @CAL_SEL_MASK, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @CAL_SEL_SHIFT, align 4
  %31 = ashr i32 %29, %30
  store i32 %31, i32* %8, align 4
  %32 = load %struct.tsens_priv*, %struct.tsens_priv** %3, align 8
  %33 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @dev_dbg(i32 %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %8, align 4
  switch i32 %37, label %278 [
    i32 128, label %38
    i32 129, label %169
  ]

38:                                               ; preds = %24
  %39 = load i32*, i32** %11, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 4
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @BASE1_MASK, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* @BASE1_SHIFT, align 4
  %45 = ashr i32 %43, %44
  store i32 %45, i32* %5, align 4
  %46 = load i32*, i32** %11, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @S0_P2_MASK, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* @S0_P2_SHIFT, align 4
  %52 = ashr i32 %50, %51
  %53 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 0
  store i32 %52, i32* %53, align 16
  %54 = load i32*, i32** %11, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @S1_P2_MASK, align 4
  %58 = and i32 %56, %57
  %59 = load i32, i32* @S1_P2_SHIFT, align 4
  %60 = ashr i32 %58, %59
  %61 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 1
  store i32 %60, i32* %61, align 4
  %62 = load i32*, i32** %11, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @S2_P2_MASK_1_0, align 4
  %66 = and i32 %64, %65
  %67 = load i32, i32* @S2_P2_SHIFT_1_0, align 4
  %68 = ashr i32 %66, %67
  store i32 %68, i32* %9, align 4
  %69 = load i32*, i32** %11, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @S2_P2_MASK_5_2, align 4
  %73 = and i32 %71, %72
  %74 = load i32, i32* @S2_P2_SHIFT_5_2, align 4
  %75 = ashr i32 %73, %74
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %10, align 4
  %77 = shl i32 %76, 2
  %78 = load i32, i32* %9, align 4
  %79 = or i32 %77, %78
  %80 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 2
  store i32 %79, i32* %80, align 8
  %81 = load i32*, i32** %11, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @S3_P2_MASK, align 4
  %85 = and i32 %83, %84
  %86 = load i32, i32* @S3_P2_SHIFT, align 4
  %87 = ashr i32 %85, %86
  %88 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 3
  store i32 %87, i32* %88, align 4
  %89 = load i32*, i32** %11, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @S4_P2_MASK, align 4
  %93 = and i32 %91, %92
  %94 = load i32, i32* @S4_P2_SHIFT, align 4
  %95 = ashr i32 %93, %94
  %96 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 4
  store i32 %95, i32* %96, align 16
  %97 = load i32*, i32** %11, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 2
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @S5_P2_MASK, align 4
  %101 = and i32 %99, %100
  %102 = load i32, i32* @S5_P2_SHIFT, align 4
  %103 = ashr i32 %101, %102
  %104 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 5
  store i32 %103, i32* %104, align 4
  %105 = load i32*, i32** %11, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 2
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @S6_P2_MASK, align 4
  %109 = and i32 %107, %108
  %110 = load i32, i32* @S6_P2_SHIFT, align 4
  %111 = ashr i32 %109, %110
  %112 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 6
  store i32 %111, i32* %112, align 8
  %113 = load i32*, i32** %11, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 2
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @S7_P2_MASK_1_0, align 4
  %117 = and i32 %115, %116
  %118 = load i32, i32* @S7_P2_SHIFT_1_0, align 4
  %119 = ashr i32 %117, %118
  store i32 %119, i32* %9, align 4
  %120 = load i32*, i32** %11, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 3
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @S7_P2_MASK_5_2, align 4
  %124 = and i32 %122, %123
  %125 = load i32, i32* @S7_P2_SHIFT_5_2, align 4
  %126 = ashr i32 %124, %125
  store i32 %126, i32* %10, align 4
  %127 = load i32, i32* %10, align 4
  %128 = shl i32 %127, 2
  %129 = load i32, i32* %9, align 4
  %130 = or i32 %128, %129
  %131 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 7
  store i32 %130, i32* %131, align 4
  %132 = load i32*, i32** %11, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 3
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @S8_P2_MASK, align 4
  %136 = and i32 %134, %135
  %137 = load i32, i32* @S8_P2_SHIFT, align 4
  %138 = ashr i32 %136, %137
  %139 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 8
  store i32 %138, i32* %139, align 16
  %140 = load i32*, i32** %11, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 3
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @S9_P2_MASK, align 4
  %144 = and i32 %142, %143
  %145 = load i32, i32* @S9_P2_SHIFT, align 4
  %146 = ashr i32 %144, %145
  %147 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 9
  store i32 %146, i32* %147, align 4
  store i32 0, i32* %12, align 4
  br label %148

148:                                              ; preds = %165, %38
  %149 = load i32, i32* %12, align 4
  %150 = load %struct.tsens_priv*, %struct.tsens_priv** %3, align 8
  %151 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = icmp slt i32 %149, %152
  br i1 %153, label %154, label %168

154:                                              ; preds = %148
  %155 = load i32, i32* %5, align 4
  %156 = load i32, i32* %12, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = add nsw i32 %155, %159
  %161 = shl i32 %160, 2
  %162 = load i32, i32* %12, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 %163
  store i32 %161, i32* %164, align 4
  br label %165

165:                                              ; preds = %154
  %166 = load i32, i32* %12, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %12, align 4
  br label %148

168:                                              ; preds = %148
  br label %169

169:                                              ; preds = %24, %168
  %170 = load i32*, i32** %11, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 4
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @BASE0_MASK, align 4
  %174 = and i32 %172, %173
  %175 = load i32, i32* @BASE0_SHIFT, align 4
  %176 = ashr i32 %174, %175
  store i32 %176, i32* %4, align 4
  %177 = load i32*, i32** %11, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 0
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @S0_P1_MASK, align 4
  %181 = and i32 %179, %180
  %182 = load i32, i32* @S0_P1_SHIFT, align 4
  %183 = ashr i32 %181, %182
  %184 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 0, i64 0
  store i32 %183, i32* %184, align 16
  %185 = load i32*, i32** %11, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 0
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @S1_P1_MASK, align 4
  %189 = and i32 %187, %188
  %190 = load i32, i32* @S1_P1_SHIFT, align 4
  %191 = ashr i32 %189, %190
  %192 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 0, i64 1
  store i32 %191, i32* %192, align 4
  %193 = load i32*, i32** %11, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 0
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @S2_P1_MASK, align 4
  %197 = and i32 %195, %196
  %198 = load i32, i32* @S2_P1_SHIFT, align 4
  %199 = ashr i32 %197, %198
  %200 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 0, i64 2
  store i32 %199, i32* %200, align 8
  %201 = load i32*, i32** %11, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 1
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @S3_P1_MASK, align 4
  %205 = and i32 %203, %204
  %206 = load i32, i32* @S3_P1_SHIFT, align 4
  %207 = ashr i32 %205, %206
  %208 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 0, i64 3
  store i32 %207, i32* %208, align 4
  %209 = load i32*, i32** %11, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 1
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @S4_P1_MASK, align 4
  %213 = and i32 %211, %212
  %214 = load i32, i32* @S4_P1_SHIFT, align 4
  %215 = ashr i32 %213, %214
  %216 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 0, i64 4
  store i32 %215, i32* %216, align 16
  %217 = load i32*, i32** %11, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 2
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @S5_P1_MASK, align 4
  %221 = and i32 %219, %220
  %222 = load i32, i32* @S5_P1_SHIFT, align 4
  %223 = ashr i32 %221, %222
  %224 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 0, i64 5
  store i32 %223, i32* %224, align 4
  %225 = load i32*, i32** %11, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 2
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* @S6_P1_MASK, align 4
  %229 = and i32 %227, %228
  %230 = load i32, i32* @S6_P1_SHIFT, align 4
  %231 = ashr i32 %229, %230
  %232 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 0, i64 6
  store i32 %231, i32* %232, align 8
  %233 = load i32*, i32** %11, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 2
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* @S7_P1_MASK, align 4
  %237 = and i32 %235, %236
  %238 = load i32, i32* @S7_P1_SHIFT, align 4
  %239 = ashr i32 %237, %238
  %240 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 0, i64 7
  store i32 %239, i32* %240, align 4
  %241 = load i32*, i32** %11, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 3
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @S8_P1_MASK, align 4
  %245 = and i32 %243, %244
  %246 = load i32, i32* @S8_P1_SHIFT, align 4
  %247 = ashr i32 %245, %246
  %248 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 0, i64 8
  store i32 %247, i32* %248, align 16
  %249 = load i32*, i32** %11, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 3
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* @S9_P1_MASK, align 4
  %253 = and i32 %251, %252
  %254 = load i32, i32* @S9_P1_SHIFT, align 4
  %255 = ashr i32 %253, %254
  %256 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 0, i64 9
  store i32 %255, i32* %256, align 4
  store i32 0, i32* %12, align 4
  br label %257

257:                                              ; preds = %274, %169
  %258 = load i32, i32* %12, align 4
  %259 = load %struct.tsens_priv*, %struct.tsens_priv** %3, align 8
  %260 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = icmp slt i32 %258, %261
  br i1 %262, label %263, label %277

263:                                              ; preds = %257
  %264 = load i32, i32* %4, align 4
  %265 = load i32, i32* %12, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 0, i64 %266
  %268 = load i32, i32* %267, align 4
  %269 = add nsw i32 %264, %268
  %270 = shl i32 %269, 2
  %271 = load i32, i32* %12, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 0, i64 %272
  store i32 %270, i32* %273, align 4
  br label %274

274:                                              ; preds = %263
  %275 = load i32, i32* %12, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %12, align 4
  br label %257

277:                                              ; preds = %257
  br label %296

278:                                              ; preds = %24
  store i32 0, i32* %12, align 4
  br label %279

279:                                              ; preds = %292, %278
  %280 = load i32, i32* %12, align 4
  %281 = load %struct.tsens_priv*, %struct.tsens_priv** %3, align 8
  %282 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 4
  %284 = icmp slt i32 %280, %283
  br i1 %284, label %285, label %295

285:                                              ; preds = %279
  %286 = load i32, i32* %12, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 0, i64 %287
  store i32 500, i32* %288, align 4
  %289 = load i32, i32* %12, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 %290
  store i32 780, i32* %291, align 4
  br label %292

292:                                              ; preds = %285
  %293 = load i32, i32* %12, align 4
  %294 = add nsw i32 %293, 1
  store i32 %294, i32* %12, align 4
  br label %279

295:                                              ; preds = %279
  br label %296

296:                                              ; preds = %295, %277
  %297 = load %struct.tsens_priv*, %struct.tsens_priv** %3, align 8
  %298 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 0, i64 0
  %299 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 0, i64 0
  %300 = load i32, i32* %8, align 4
  %301 = call i32 @compute_intercept_slope(%struct.tsens_priv* %297, i32* %298, i32* %299, i32 %300)
  %302 = load i32*, i32** %11, align 8
  %303 = call i32 @kfree(i32* %302)
  store i32 0, i32* %2, align 4
  br label %304

304:                                              ; preds = %296, %21
  %305 = load i32, i32* %2, align 4
  ret i32 %305
}

declare dso_local i64 @qfprom_read(i32, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @compute_intercept_slope(%struct.tsens_priv*, i32*, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
