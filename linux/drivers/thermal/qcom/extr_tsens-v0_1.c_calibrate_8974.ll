; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/qcom/extr_tsens-v0_1.c_calibrate_8974.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/qcom/extr_tsens-v0_1.c_calibrate_8974.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsens_priv = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"calib\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"calib_backup\00", align 1
@BKP_REDUN_SEL = common dso_local global i32 0, align 4
@BKP_REDUN_SHIFT = common dso_local global i32 0, align 4
@BKP_SEL = common dso_local global i32 0, align 4
@CAL_SEL_0_1 = common dso_local global i32 0, align 4
@CAL_SEL_SHIFT = common dso_local global i32 0, align 4
@CAL_SEL_2 = common dso_local global i32 0, align 4
@CAL_SEL_SHIFT_2 = common dso_local global i32 0, align 4
@BASE2_BKP_MASK = common dso_local global i32 0, align 4
@BASE2_BKP_SHIFT = common dso_local global i32 0, align 4
@S0_P2_BKP_MASK = common dso_local global i32 0, align 4
@S0_P2_BKP_SHIFT = common dso_local global i32 0, align 4
@S1_P2_BKP_MASK = common dso_local global i32 0, align 4
@S2_P2_BKP_MASK = common dso_local global i32 0, align 4
@S2_P2_BKP_SHIFT = common dso_local global i32 0, align 4
@S3_P2_BKP_MASK = common dso_local global i32 0, align 4
@S3_P2_BKP_SHIFT = common dso_local global i32 0, align 4
@S4_P2_BKP_MASK = common dso_local global i32 0, align 4
@S4_P2_BKP_SHIFT = common dso_local global i32 0, align 4
@S5_P2_BKP_MASK = common dso_local global i32 0, align 4
@S5_P2_BKP_SHIFT = common dso_local global i32 0, align 4
@S6_P2_BKP_MASK = common dso_local global i32 0, align 4
@S7_P2_BKP_MASK = common dso_local global i32 0, align 4
@S7_P2_BKP_SHIFT = common dso_local global i32 0, align 4
@S8_P2_BKP_MASK = common dso_local global i32 0, align 4
@S8_P2_BKP_SHIFT = common dso_local global i32 0, align 4
@S9_P2_BKP_MASK = common dso_local global i32 0, align 4
@S9_P2_BKP_SHIFT = common dso_local global i32 0, align 4
@S10_P2_BKP_MASK = common dso_local global i32 0, align 4
@S10_P2_BKP_SHIFT = common dso_local global i32 0, align 4
@BASE1_MASK = common dso_local global i32 0, align 4
@S0_P1_MASK = common dso_local global i32 0, align 4
@S0_P1_SHIFT = common dso_local global i32 0, align 4
@S1_P1_MASK = common dso_local global i32 0, align 4
@S1_P1_SHIFT = common dso_local global i32 0, align 4
@S2_P1_MASK = common dso_local global i32 0, align 4
@S2_P1_SHIFT = common dso_local global i32 0, align 4
@S3_P1_MASK = common dso_local global i32 0, align 4
@S3_P1_SHIFT = common dso_local global i32 0, align 4
@S4_P1_MASK = common dso_local global i32 0, align 4
@S5_P1_MASK = common dso_local global i32 0, align 4
@S5_P1_SHIFT = common dso_local global i32 0, align 4
@S6_P1_MASK = common dso_local global i32 0, align 4
@S6_P1_SHIFT = common dso_local global i32 0, align 4
@S7_P1_MASK = common dso_local global i32 0, align 4
@S7_P1_SHIFT = common dso_local global i32 0, align 4
@S8_P1_MASK_BKP = common dso_local global i32 0, align 4
@S8_P1_SHIFT = common dso_local global i32 0, align 4
@S9_P1_MASK_BKP = common dso_local global i32 0, align 4
@S9_P1_BKP_SHIFT = common dso_local global i32 0, align 4
@S10_P1_MASK_BKP = common dso_local global i32 0, align 4
@S10_P1_BKP_SHIFT = common dso_local global i32 0, align 4
@BASE2_MASK = common dso_local global i32 0, align 4
@BASE2_SHIFT = common dso_local global i32 0, align 4
@S0_P2_MASK = common dso_local global i32 0, align 4
@S0_P2_SHIFT = common dso_local global i32 0, align 4
@S1_P2_MASK = common dso_local global i32 0, align 4
@S1_P2_SHIFT = common dso_local global i32 0, align 4
@S2_P2_MASK = common dso_local global i32 0, align 4
@S3_P2_MASK = common dso_local global i32 0, align 4
@S3_P2_SHIFT = common dso_local global i32 0, align 4
@S4_P2_MASK = common dso_local global i32 0, align 4
@S4_P2_SHIFT = common dso_local global i32 0, align 4
@S5_P2_MASK = common dso_local global i32 0, align 4
@S5_P2_SHIFT = common dso_local global i32 0, align 4
@S6_P2_MASK = common dso_local global i32 0, align 4
@S6_P2_SHIFT = common dso_local global i32 0, align 4
@S7_P2_MASK = common dso_local global i32 0, align 4
@S8_P2_MASK = common dso_local global i32 0, align 4
@S8_P2_SHIFT = common dso_local global i32 0, align 4
@S9_P2_MASK = common dso_local global i32 0, align 4
@S9_P2_SHIFT = common dso_local global i32 0, align 4
@S10_P2_MASK = common dso_local global i32 0, align 4
@S10_P2_SHIFT = common dso_local global i32 0, align 4
@S8_P1_MASK = common dso_local global i32 0, align 4
@S9_P1_MASK = common dso_local global i32 0, align 4
@S10_P1_MASK = common dso_local global i32 0, align 4
@S10_P1_SHIFT = common dso_local global i32 0, align 4
@BIT_APPEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tsens_priv*)* @calibrate_8974 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calibrate_8974(%struct.tsens_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tsens_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [11 x i32], align 16
  %8 = alloca [11 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.tsens_priv* %0, %struct.tsens_priv** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %9, align 4
  %13 = load %struct.tsens_priv*, %struct.tsens_priv** %3, align 8
  %14 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @qfprom_read(i32 %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %17 = inttoptr i64 %16 to i32*
  store i32* %17, i32** %10, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = call i64 @IS_ERR(i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i32*, i32** %10, align 8
  %23 = call i32 @PTR_ERR(i32* %22)
  store i32 %23, i32* %2, align 4
  br label %571

24:                                               ; preds = %1
  %25 = load %struct.tsens_priv*, %struct.tsens_priv** %3, align 8
  %26 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @qfprom_read(i32 %27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %29 = inttoptr i64 %28 to i32*
  store i32* %29, i32** %11, align 8
  %30 = load i32*, i32** %11, align 8
  %31 = call i64 @IS_ERR(i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %24
  %34 = load i32*, i32** %10, align 8
  %35 = call i32 @kfree(i32* %34)
  %36 = load i32*, i32** %11, align 8
  %37 = call i32 @PTR_ERR(i32* %36)
  store i32 %37, i32* %2, align 4
  br label %571

38:                                               ; preds = %24
  %39 = load i32*, i32** %11, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @BKP_REDUN_SEL, align 4
  %43 = and i32 %41, %42
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* @BKP_REDUN_SHIFT, align 4
  %45 = load i32, i32* %12, align 4
  %46 = ashr i32 %45, %44
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* @BKP_SEL, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %253

50:                                               ; preds = %38
  %51 = load i32*, i32** %10, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 4
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @CAL_SEL_0_1, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* @CAL_SEL_SHIFT, align 4
  %57 = ashr i32 %55, %56
  store i32 %57, i32* %9, align 4
  %58 = load i32*, i32** %10, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 5
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @CAL_SEL_2, align 4
  %62 = and i32 %60, %61
  %63 = load i32, i32* @CAL_SEL_SHIFT_2, align 4
  %64 = ashr i32 %62, %63
  %65 = load i32, i32* %9, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  switch i32 %67, label %252 [
    i32 128, label %68
    i32 130, label %160
    i32 129, label %160
  ]

68:                                               ; preds = %50
  %69 = load i32*, i32** %11, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 2
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @BASE2_BKP_MASK, align 4
  %73 = and i32 %71, %72
  %74 = load i32, i32* @BASE2_BKP_SHIFT, align 4
  %75 = ashr i32 %73, %74
  store i32 %75, i32* %5, align 4
  %76 = load i32*, i32** %11, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 2
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @S0_P2_BKP_MASK, align 4
  %80 = and i32 %78, %79
  %81 = load i32, i32* @S0_P2_BKP_SHIFT, align 4
  %82 = ashr i32 %80, %81
  %83 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 0
  store i32 %82, i32* %83, align 16
  %84 = load i32*, i32** %11, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 3
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @S1_P2_BKP_MASK, align 4
  %88 = and i32 %86, %87
  %89 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 1
  store i32 %88, i32* %89, align 4
  %90 = load i32*, i32** %11, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 3
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @S2_P2_BKP_MASK, align 4
  %94 = and i32 %92, %93
  %95 = load i32, i32* @S2_P2_BKP_SHIFT, align 4
  %96 = ashr i32 %94, %95
  %97 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 2
  store i32 %96, i32* %97, align 8
  %98 = load i32*, i32** %11, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 3
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @S3_P2_BKP_MASK, align 4
  %102 = and i32 %100, %101
  %103 = load i32, i32* @S3_P2_BKP_SHIFT, align 4
  %104 = ashr i32 %102, %103
  %105 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 3
  store i32 %104, i32* %105, align 4
  %106 = load i32*, i32** %11, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 3
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @S4_P2_BKP_MASK, align 4
  %110 = and i32 %108, %109
  %111 = load i32, i32* @S4_P2_BKP_SHIFT, align 4
  %112 = ashr i32 %110, %111
  %113 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 4
  store i32 %112, i32* %113, align 16
  %114 = load i32*, i32** %10, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 4
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @S5_P2_BKP_MASK, align 4
  %118 = and i32 %116, %117
  %119 = load i32, i32* @S5_P2_BKP_SHIFT, align 4
  %120 = ashr i32 %118, %119
  %121 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 5
  store i32 %120, i32* %121, align 4
  %122 = load i32*, i32** %10, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 5
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @S6_P2_BKP_MASK, align 4
  %126 = and i32 %124, %125
  %127 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 6
  store i32 %126, i32* %127, align 8
  %128 = load i32*, i32** %10, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 5
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @S7_P2_BKP_MASK, align 4
  %132 = and i32 %130, %131
  %133 = load i32, i32* @S7_P2_BKP_SHIFT, align 4
  %134 = ashr i32 %132, %133
  %135 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 7
  store i32 %134, i32* %135, align 4
  %136 = load i32*, i32** %10, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 5
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @S8_P2_BKP_MASK, align 4
  %140 = and i32 %138, %139
  %141 = load i32, i32* @S8_P2_BKP_SHIFT, align 4
  %142 = ashr i32 %140, %141
  %143 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 8
  store i32 %142, i32* %143, align 16
  %144 = load i32*, i32** %10, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 5
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @S9_P2_BKP_MASK, align 4
  %148 = and i32 %146, %147
  %149 = load i32, i32* @S9_P2_BKP_SHIFT, align 4
  %150 = ashr i32 %148, %149
  %151 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 9
  store i32 %150, i32* %151, align 4
  %152 = load i32*, i32** %10, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 5
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @S10_P2_BKP_MASK, align 4
  %156 = and i32 %154, %155
  %157 = load i32, i32* @S10_P2_BKP_SHIFT, align 4
  %158 = ashr i32 %156, %157
  %159 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 10
  store i32 %158, i32* %159, align 8
  br label %160

160:                                              ; preds = %50, %50, %68
  %161 = load i32*, i32** %11, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @BASE1_MASK, align 4
  %165 = and i32 %163, %164
  store i32 %165, i32* %4, align 4
  %166 = load i32*, i32** %11, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @S0_P1_MASK, align 4
  %170 = and i32 %168, %169
  %171 = load i32, i32* @S0_P1_SHIFT, align 4
  %172 = ashr i32 %170, %171
  %173 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 0
  store i32 %172, i32* %173, align 16
  %174 = load i32*, i32** %11, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 0
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @S1_P1_MASK, align 4
  %178 = and i32 %176, %177
  %179 = load i32, i32* @S1_P1_SHIFT, align 4
  %180 = ashr i32 %178, %179
  %181 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 1
  store i32 %180, i32* %181, align 4
  %182 = load i32*, i32** %11, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 0
  %184 = load i32, i32* %183, align 4
  %185 = load i32, i32* @S2_P1_MASK, align 4
  %186 = and i32 %184, %185
  %187 = load i32, i32* @S2_P1_SHIFT, align 4
  %188 = ashr i32 %186, %187
  %189 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 2
  store i32 %188, i32* %189, align 8
  %190 = load i32*, i32** %11, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 0
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @S3_P1_MASK, align 4
  %194 = and i32 %192, %193
  %195 = load i32, i32* @S3_P1_SHIFT, align 4
  %196 = ashr i32 %194, %195
  %197 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 3
  store i32 %196, i32* %197, align 4
  %198 = load i32*, i32** %11, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 1
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @S4_P1_MASK, align 4
  %202 = and i32 %200, %201
  %203 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 4
  store i32 %202, i32* %203, align 16
  %204 = load i32*, i32** %11, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 1
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @S5_P1_MASK, align 4
  %208 = and i32 %206, %207
  %209 = load i32, i32* @S5_P1_SHIFT, align 4
  %210 = ashr i32 %208, %209
  %211 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 5
  store i32 %210, i32* %211, align 4
  %212 = load i32*, i32** %11, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 1
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @S6_P1_MASK, align 4
  %216 = and i32 %214, %215
  %217 = load i32, i32* @S6_P1_SHIFT, align 4
  %218 = ashr i32 %216, %217
  %219 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 6
  store i32 %218, i32* %219, align 8
  %220 = load i32*, i32** %11, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 1
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* @S7_P1_MASK, align 4
  %224 = and i32 %222, %223
  %225 = load i32, i32* @S7_P1_SHIFT, align 4
  %226 = ashr i32 %224, %225
  %227 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 7
  store i32 %226, i32* %227, align 4
  %228 = load i32*, i32** %11, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 2
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* @S8_P1_MASK_BKP, align 4
  %232 = and i32 %230, %231
  %233 = load i32, i32* @S8_P1_SHIFT, align 4
  %234 = ashr i32 %232, %233
  %235 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 8
  store i32 %234, i32* %235, align 16
  %236 = load i32*, i32** %11, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 2
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* @S9_P1_MASK_BKP, align 4
  %240 = and i32 %238, %239
  %241 = load i32, i32* @S9_P1_BKP_SHIFT, align 4
  %242 = ashr i32 %240, %241
  %243 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 9
  store i32 %242, i32* %243, align 4
  %244 = load i32*, i32** %11, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 2
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* @S10_P1_MASK_BKP, align 4
  %248 = and i32 %246, %247
  %249 = load i32, i32* @S10_P1_BKP_SHIFT, align 4
  %250 = ashr i32 %248, %249
  %251 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 10
  store i32 %250, i32* %251, align 8
  br label %252

252:                                              ; preds = %50, %160
  br label %454

253:                                              ; preds = %38
  %254 = load i32*, i32** %10, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 1
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* @CAL_SEL_0_1, align 4
  %258 = and i32 %256, %257
  %259 = load i32, i32* @CAL_SEL_SHIFT, align 4
  %260 = ashr i32 %258, %259
  store i32 %260, i32* %9, align 4
  %261 = load i32*, i32** %10, align 8
  %262 = getelementptr inbounds i32, i32* %261, i64 3
  %263 = load i32, i32* %262, align 4
  %264 = load i32, i32* @CAL_SEL_2, align 4
  %265 = and i32 %263, %264
  %266 = load i32, i32* @CAL_SEL_SHIFT_2, align 4
  %267 = ashr i32 %265, %266
  %268 = load i32, i32* %9, align 4
  %269 = or i32 %268, %267
  store i32 %269, i32* %9, align 4
  %270 = load i32, i32* %9, align 4
  switch i32 %270, label %453 [
    i32 128, label %271
    i32 130, label %363
    i32 129, label %363
  ]

271:                                              ; preds = %253
  %272 = load i32*, i32** %10, align 8
  %273 = getelementptr inbounds i32, i32* %272, i64 2
  %274 = load i32, i32* %273, align 4
  %275 = load i32, i32* @BASE2_MASK, align 4
  %276 = and i32 %274, %275
  %277 = load i32, i32* @BASE2_SHIFT, align 4
  %278 = ashr i32 %276, %277
  store i32 %278, i32* %5, align 4
  %279 = load i32*, i32** %10, align 8
  %280 = getelementptr inbounds i32, i32* %279, i64 2
  %281 = load i32, i32* %280, align 4
  %282 = load i32, i32* @S0_P2_MASK, align 4
  %283 = and i32 %281, %282
  %284 = load i32, i32* @S0_P2_SHIFT, align 4
  %285 = ashr i32 %283, %284
  %286 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 0
  store i32 %285, i32* %286, align 16
  %287 = load i32*, i32** %10, align 8
  %288 = getelementptr inbounds i32, i32* %287, i64 2
  %289 = load i32, i32* %288, align 4
  %290 = load i32, i32* @S1_P2_MASK, align 4
  %291 = and i32 %289, %290
  %292 = load i32, i32* @S1_P2_SHIFT, align 4
  %293 = ashr i32 %291, %292
  %294 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 1
  store i32 %293, i32* %294, align 4
  %295 = load i32*, i32** %10, align 8
  %296 = getelementptr inbounds i32, i32* %295, i64 3
  %297 = load i32, i32* %296, align 4
  %298 = load i32, i32* @S2_P2_MASK, align 4
  %299 = and i32 %297, %298
  %300 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 2
  store i32 %299, i32* %300, align 8
  %301 = load i32*, i32** %10, align 8
  %302 = getelementptr inbounds i32, i32* %301, i64 3
  %303 = load i32, i32* %302, align 4
  %304 = load i32, i32* @S3_P2_MASK, align 4
  %305 = and i32 %303, %304
  %306 = load i32, i32* @S3_P2_SHIFT, align 4
  %307 = ashr i32 %305, %306
  %308 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 3
  store i32 %307, i32* %308, align 4
  %309 = load i32*, i32** %10, align 8
  %310 = getelementptr inbounds i32, i32* %309, i64 3
  %311 = load i32, i32* %310, align 4
  %312 = load i32, i32* @S4_P2_MASK, align 4
  %313 = and i32 %311, %312
  %314 = load i32, i32* @S4_P2_SHIFT, align 4
  %315 = ashr i32 %313, %314
  %316 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 4
  store i32 %315, i32* %316, align 16
  %317 = load i32*, i32** %10, align 8
  %318 = getelementptr inbounds i32, i32* %317, i64 3
  %319 = load i32, i32* %318, align 4
  %320 = load i32, i32* @S5_P2_MASK, align 4
  %321 = and i32 %319, %320
  %322 = load i32, i32* @S5_P2_SHIFT, align 4
  %323 = ashr i32 %321, %322
  %324 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 5
  store i32 %323, i32* %324, align 4
  %325 = load i32*, i32** %10, align 8
  %326 = getelementptr inbounds i32, i32* %325, i64 3
  %327 = load i32, i32* %326, align 4
  %328 = load i32, i32* @S6_P2_MASK, align 4
  %329 = and i32 %327, %328
  %330 = load i32, i32* @S6_P2_SHIFT, align 4
  %331 = ashr i32 %329, %330
  %332 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 6
  store i32 %331, i32* %332, align 8
  %333 = load i32*, i32** %10, align 8
  %334 = getelementptr inbounds i32, i32* %333, i64 4
  %335 = load i32, i32* %334, align 4
  %336 = load i32, i32* @S7_P2_MASK, align 4
  %337 = and i32 %335, %336
  %338 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 7
  store i32 %337, i32* %338, align 4
  %339 = load i32*, i32** %10, align 8
  %340 = getelementptr inbounds i32, i32* %339, i64 4
  %341 = load i32, i32* %340, align 4
  %342 = load i32, i32* @S8_P2_MASK, align 4
  %343 = and i32 %341, %342
  %344 = load i32, i32* @S8_P2_SHIFT, align 4
  %345 = ashr i32 %343, %344
  %346 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 8
  store i32 %345, i32* %346, align 16
  %347 = load i32*, i32** %10, align 8
  %348 = getelementptr inbounds i32, i32* %347, i64 4
  %349 = load i32, i32* %348, align 4
  %350 = load i32, i32* @S9_P2_MASK, align 4
  %351 = and i32 %349, %350
  %352 = load i32, i32* @S9_P2_SHIFT, align 4
  %353 = ashr i32 %351, %352
  %354 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 9
  store i32 %353, i32* %354, align 4
  %355 = load i32*, i32** %10, align 8
  %356 = getelementptr inbounds i32, i32* %355, i64 4
  %357 = load i32, i32* %356, align 4
  %358 = load i32, i32* @S10_P2_MASK, align 4
  %359 = and i32 %357, %358
  %360 = load i32, i32* @S10_P2_SHIFT, align 4
  %361 = ashr i32 %359, %360
  %362 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 10
  store i32 %361, i32* %362, align 8
  br label %363

363:                                              ; preds = %253, %253, %271
  %364 = load i32*, i32** %10, align 8
  %365 = getelementptr inbounds i32, i32* %364, i64 0
  %366 = load i32, i32* %365, align 4
  %367 = load i32, i32* @BASE1_MASK, align 4
  %368 = and i32 %366, %367
  store i32 %368, i32* %4, align 4
  %369 = load i32*, i32** %10, align 8
  %370 = getelementptr inbounds i32, i32* %369, i64 0
  %371 = load i32, i32* %370, align 4
  %372 = load i32, i32* @S0_P1_MASK, align 4
  %373 = and i32 %371, %372
  %374 = load i32, i32* @S0_P1_SHIFT, align 4
  %375 = ashr i32 %373, %374
  %376 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 0
  store i32 %375, i32* %376, align 16
  %377 = load i32*, i32** %10, align 8
  %378 = getelementptr inbounds i32, i32* %377, i64 0
  %379 = load i32, i32* %378, align 4
  %380 = load i32, i32* @S1_P1_MASK, align 4
  %381 = and i32 %379, %380
  %382 = load i32, i32* @S1_P1_SHIFT, align 4
  %383 = ashr i32 %381, %382
  %384 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 1
  store i32 %383, i32* %384, align 4
  %385 = load i32*, i32** %10, align 8
  %386 = getelementptr inbounds i32, i32* %385, i64 0
  %387 = load i32, i32* %386, align 4
  %388 = load i32, i32* @S2_P1_MASK, align 4
  %389 = and i32 %387, %388
  %390 = load i32, i32* @S2_P1_SHIFT, align 4
  %391 = ashr i32 %389, %390
  %392 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 2
  store i32 %391, i32* %392, align 8
  %393 = load i32*, i32** %10, align 8
  %394 = getelementptr inbounds i32, i32* %393, i64 0
  %395 = load i32, i32* %394, align 4
  %396 = load i32, i32* @S3_P1_MASK, align 4
  %397 = and i32 %395, %396
  %398 = load i32, i32* @S3_P1_SHIFT, align 4
  %399 = ashr i32 %397, %398
  %400 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 3
  store i32 %399, i32* %400, align 4
  %401 = load i32*, i32** %10, align 8
  %402 = getelementptr inbounds i32, i32* %401, i64 1
  %403 = load i32, i32* %402, align 4
  %404 = load i32, i32* @S4_P1_MASK, align 4
  %405 = and i32 %403, %404
  %406 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 4
  store i32 %405, i32* %406, align 16
  %407 = load i32*, i32** %10, align 8
  %408 = getelementptr inbounds i32, i32* %407, i64 1
  %409 = load i32, i32* %408, align 4
  %410 = load i32, i32* @S5_P1_MASK, align 4
  %411 = and i32 %409, %410
  %412 = load i32, i32* @S5_P1_SHIFT, align 4
  %413 = ashr i32 %411, %412
  %414 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 5
  store i32 %413, i32* %414, align 4
  %415 = load i32*, i32** %10, align 8
  %416 = getelementptr inbounds i32, i32* %415, i64 1
  %417 = load i32, i32* %416, align 4
  %418 = load i32, i32* @S6_P1_MASK, align 4
  %419 = and i32 %417, %418
  %420 = load i32, i32* @S6_P1_SHIFT, align 4
  %421 = ashr i32 %419, %420
  %422 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 6
  store i32 %421, i32* %422, align 8
  %423 = load i32*, i32** %10, align 8
  %424 = getelementptr inbounds i32, i32* %423, i64 1
  %425 = load i32, i32* %424, align 4
  %426 = load i32, i32* @S7_P1_MASK, align 4
  %427 = and i32 %425, %426
  %428 = load i32, i32* @S7_P1_SHIFT, align 4
  %429 = ashr i32 %427, %428
  %430 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 7
  store i32 %429, i32* %430, align 4
  %431 = load i32*, i32** %10, align 8
  %432 = getelementptr inbounds i32, i32* %431, i64 1
  %433 = load i32, i32* %432, align 4
  %434 = load i32, i32* @S8_P1_MASK, align 4
  %435 = and i32 %433, %434
  %436 = load i32, i32* @S8_P1_SHIFT, align 4
  %437 = ashr i32 %435, %436
  %438 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 8
  store i32 %437, i32* %438, align 16
  %439 = load i32*, i32** %10, align 8
  %440 = getelementptr inbounds i32, i32* %439, i64 2
  %441 = load i32, i32* %440, align 4
  %442 = load i32, i32* @S9_P1_MASK, align 4
  %443 = and i32 %441, %442
  %444 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 9
  store i32 %443, i32* %444, align 4
  %445 = load i32*, i32** %10, align 8
  %446 = getelementptr inbounds i32, i32* %445, i64 2
  %447 = load i32, i32* %446, align 4
  %448 = load i32, i32* @S10_P1_MASK, align 4
  %449 = and i32 %447, %448
  %450 = load i32, i32* @S10_P1_SHIFT, align 4
  %451 = ashr i32 %449, %450
  %452 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 10
  store i32 %451, i32* %452, align 8
  br label %453

453:                                              ; preds = %253, %363
  br label %454

454:                                              ; preds = %453, %252
  %455 = load i32, i32* %9, align 4
  switch i32 %455, label %535 [
    i32 130, label %456
    i32 128, label %477
    i32 129, label %506
  ]

456:                                              ; preds = %454
  store i32 0, i32* %6, align 4
  br label %457

457:                                              ; preds = %473, %456
  %458 = load i32, i32* %6, align 4
  %459 = load %struct.tsens_priv*, %struct.tsens_priv** %3, align 8
  %460 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %459, i32 0, i32 0
  %461 = load i32, i32* %460, align 4
  %462 = icmp slt i32 %458, %461
  br i1 %462, label %463, label %476

463:                                              ; preds = %457
  %464 = load i32, i32* %4, align 4
  %465 = shl i32 %464, 2
  %466 = load i32, i32* @BIT_APPEND, align 4
  %467 = or i32 %465, %466
  %468 = load i32, i32* %6, align 4
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 %469
  %471 = load i32, i32* %470, align 4
  %472 = add nsw i32 %471, %467
  store i32 %472, i32* %470, align 4
  br label %473

473:                                              ; preds = %463
  %474 = load i32, i32* %6, align 4
  %475 = add nsw i32 %474, 1
  store i32 %475, i32* %6, align 4
  br label %457

476:                                              ; preds = %457
  br label %561

477:                                              ; preds = %454
  store i32 0, i32* %6, align 4
  br label %478

478:                                              ; preds = %502, %477
  %479 = load i32, i32* %6, align 4
  %480 = load %struct.tsens_priv*, %struct.tsens_priv** %3, align 8
  %481 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %480, i32 0, i32 0
  %482 = load i32, i32* %481, align 4
  %483 = icmp slt i32 %479, %482
  br i1 %483, label %484, label %505

484:                                              ; preds = %478
  %485 = load i32, i32* %5, align 4
  %486 = load i32, i32* %6, align 4
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 %487
  %489 = load i32, i32* %488, align 4
  %490 = add nsw i32 %489, %485
  store i32 %490, i32* %488, align 4
  %491 = load i32, i32* %6, align 4
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 %492
  %494 = load i32, i32* %493, align 4
  %495 = shl i32 %494, 2
  store i32 %495, i32* %493, align 4
  %496 = load i32, i32* @BIT_APPEND, align 4
  %497 = load i32, i32* %6, align 4
  %498 = sext i32 %497 to i64
  %499 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 %498
  %500 = load i32, i32* %499, align 4
  %501 = or i32 %500, %496
  store i32 %501, i32* %499, align 4
  br label %502

502:                                              ; preds = %484
  %503 = load i32, i32* %6, align 4
  %504 = add nsw i32 %503, 1
  store i32 %504, i32* %6, align 4
  br label %478

505:                                              ; preds = %478
  br label %506

506:                                              ; preds = %454, %505
  store i32 0, i32* %6, align 4
  br label %507

507:                                              ; preds = %531, %506
  %508 = load i32, i32* %6, align 4
  %509 = load %struct.tsens_priv*, %struct.tsens_priv** %3, align 8
  %510 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %509, i32 0, i32 0
  %511 = load i32, i32* %510, align 4
  %512 = icmp slt i32 %508, %511
  br i1 %512, label %513, label %534

513:                                              ; preds = %507
  %514 = load i32, i32* %4, align 4
  %515 = load i32, i32* %6, align 4
  %516 = sext i32 %515 to i64
  %517 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 %516
  %518 = load i32, i32* %517, align 4
  %519 = add nsw i32 %518, %514
  store i32 %519, i32* %517, align 4
  %520 = load i32, i32* %6, align 4
  %521 = sext i32 %520 to i64
  %522 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 %521
  %523 = load i32, i32* %522, align 4
  %524 = shl i32 %523, 2
  store i32 %524, i32* %522, align 4
  %525 = load i32, i32* @BIT_APPEND, align 4
  %526 = load i32, i32* %6, align 4
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 %527
  %529 = load i32, i32* %528, align 4
  %530 = or i32 %529, %525
  store i32 %530, i32* %528, align 4
  br label %531

531:                                              ; preds = %513
  %532 = load i32, i32* %6, align 4
  %533 = add nsw i32 %532, 1
  store i32 %533, i32* %6, align 4
  br label %507

534:                                              ; preds = %507
  br label %561

535:                                              ; preds = %454
  store i32 0, i32* %6, align 4
  br label %536

536:                                              ; preds = %546, %535
  %537 = load i32, i32* %6, align 4
  %538 = load %struct.tsens_priv*, %struct.tsens_priv** %3, align 8
  %539 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %538, i32 0, i32 0
  %540 = load i32, i32* %539, align 4
  %541 = icmp slt i32 %537, %540
  br i1 %541, label %542, label %549

542:                                              ; preds = %536
  %543 = load i32, i32* %6, align 4
  %544 = sext i32 %543 to i64
  %545 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 %544
  store i32 780, i32* %545, align 4
  br label %546

546:                                              ; preds = %542
  %547 = load i32, i32* %6, align 4
  %548 = add nsw i32 %547, 1
  store i32 %548, i32* %6, align 4
  br label %536

549:                                              ; preds = %536
  %550 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 0
  store i32 502, i32* %550, align 16
  %551 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 1
  store i32 509, i32* %551, align 4
  %552 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 2
  store i32 503, i32* %552, align 8
  %553 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 3
  store i32 509, i32* %553, align 4
  %554 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 4
  store i32 505, i32* %554, align 16
  %555 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 5
  store i32 509, i32* %555, align 4
  %556 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 6
  store i32 507, i32* %556, align 8
  %557 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 7
  store i32 510, i32* %557, align 4
  %558 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 8
  store i32 508, i32* %558, align 16
  %559 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 9
  store i32 509, i32* %559, align 4
  %560 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 10
  store i32 508, i32* %560, align 8
  br label %561

561:                                              ; preds = %549, %534, %476
  %562 = load %struct.tsens_priv*, %struct.tsens_priv** %3, align 8
  %563 = getelementptr inbounds [11 x i32], [11 x i32]* %7, i64 0, i64 0
  %564 = getelementptr inbounds [11 x i32], [11 x i32]* %8, i64 0, i64 0
  %565 = load i32, i32* %9, align 4
  %566 = call i32 @compute_intercept_slope(%struct.tsens_priv* %562, i32* %563, i32* %564, i32 %565)
  %567 = load i32*, i32** %10, align 8
  %568 = call i32 @kfree(i32* %567)
  %569 = load i32*, i32** %11, align 8
  %570 = call i32 @kfree(i32* %569)
  store i32 0, i32* %2, align 4
  br label %571

571:                                              ; preds = %561, %33, %21
  %572 = load i32, i32* %2, align 4
  ret i32 %572
}

declare dso_local i64 @qfprom_read(i32, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @compute_intercept_slope(%struct.tsens_priv*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
