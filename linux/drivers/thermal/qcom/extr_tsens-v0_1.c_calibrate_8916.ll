; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/qcom/extr_tsens-v0_1.c_calibrate_8916.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/qcom/extr_tsens-v0_1.c_calibrate_8916.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsens_priv = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"calib\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"calib_sel\00", align 1
@MSM8916_CAL_SEL_MASK = common dso_local global i32 0, align 4
@MSM8916_CAL_SEL_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"calibration mode is %d\0A\00", align 1
@MSM8916_BASE1_MASK = common dso_local global i32 0, align 4
@MSM8916_BASE1_SHIFT = common dso_local global i32 0, align 4
@MSM8916_S0_P2_MASK = common dso_local global i32 0, align 4
@MSM8916_S0_P2_SHIFT = common dso_local global i32 0, align 4
@MSM8916_S1_P2_MASK = common dso_local global i32 0, align 4
@MSM8916_S1_P2_SHIFT = common dso_local global i32 0, align 4
@MSM8916_S2_P2_MASK = common dso_local global i32 0, align 4
@MSM8916_S2_P2_SHIFT = common dso_local global i32 0, align 4
@MSM8916_S3_P2_MASK = common dso_local global i32 0, align 4
@MSM8916_S3_P2_SHIFT = common dso_local global i32 0, align 4
@MSM8916_S4_P2_MASK = common dso_local global i32 0, align 4
@MSM8916_S4_P2_SHIFT = common dso_local global i32 0, align 4
@MSM8916_BASE0_MASK = common dso_local global i32 0, align 4
@MSM8916_S0_P1_MASK = common dso_local global i32 0, align 4
@MSM8916_S0_P1_SHIFT = common dso_local global i32 0, align 4
@MSM8916_S1_P1_MASK = common dso_local global i32 0, align 4
@MSM8916_S1_P1_SHIFT = common dso_local global i32 0, align 4
@MSM8916_S2_P1_MASK = common dso_local global i32 0, align 4
@MSM8916_S2_P1_SHIFT = common dso_local global i32 0, align 4
@MSM8916_S3_P1_MASK = common dso_local global i32 0, align 4
@MSM8916_S3_P1_SHIFT = common dso_local global i32 0, align 4
@MSM8916_S4_P1_MASK = common dso_local global i32 0, align 4
@MSM8916_S4_P1_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tsens_priv*)* @calibrate_8916 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @calibrate_8916(%struct.tsens_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tsens_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [5 x i32], align 16
  %8 = alloca [5 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.tsens_priv* %0, %struct.tsens_priv** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %9, align 4
  %12 = load %struct.tsens_priv*, %struct.tsens_priv** %3, align 8
  %13 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @qfprom_read(i32 %14, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %16 = inttoptr i64 %15 to i32*
  store i32* %16, i32** %10, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = call i64 @IS_ERR(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32*, i32** %10, align 8
  %22 = call i32 @PTR_ERR(i32* %21)
  store i32 %22, i32* %2, align 4
  br label %215

23:                                               ; preds = %1
  %24 = load %struct.tsens_priv*, %struct.tsens_priv** %3, align 8
  %25 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @qfprom_read(i32 %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %28 = inttoptr i64 %27 to i32*
  store i32* %28, i32** %11, align 8
  %29 = load i32*, i32** %11, align 8
  %30 = call i64 @IS_ERR(i32* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %23
  %33 = load i32*, i32** %10, align 8
  %34 = call i32 @kfree(i32* %33)
  %35 = load i32*, i32** %11, align 8
  %36 = call i32 @PTR_ERR(i32* %35)
  store i32 %36, i32* %2, align 4
  br label %215

37:                                               ; preds = %23
  %38 = load i32*, i32** %11, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @MSM8916_CAL_SEL_MASK, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* @MSM8916_CAL_SEL_SHIFT, align 4
  %44 = ashr i32 %42, %43
  store i32 %44, i32* %9, align 4
  %45 = load %struct.tsens_priv*, %struct.tsens_priv** %3, align 8
  %46 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @dev_dbg(i32 %47, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %9, align 4
  switch i32 %50, label %187 [
    i32 128, label %51
    i32 129, label %120
  ]

51:                                               ; preds = %37
  %52 = load i32*, i32** %10, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @MSM8916_BASE1_MASK, align 4
  %56 = and i32 %54, %55
  %57 = load i32, i32* @MSM8916_BASE1_SHIFT, align 4
  %58 = ashr i32 %56, %57
  store i32 %58, i32* %5, align 4
  %59 = load i32*, i32** %10, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @MSM8916_S0_P2_MASK, align 4
  %63 = and i32 %61, %62
  %64 = load i32, i32* @MSM8916_S0_P2_SHIFT, align 4
  %65 = ashr i32 %63, %64
  %66 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 0
  store i32 %65, i32* %66, align 16
  %67 = load i32*, i32** %10, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @MSM8916_S1_P2_MASK, align 4
  %71 = and i32 %69, %70
  %72 = load i32, i32* @MSM8916_S1_P2_SHIFT, align 4
  %73 = ashr i32 %71, %72
  %74 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 1
  store i32 %73, i32* %74, align 4
  %75 = load i32*, i32** %10, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @MSM8916_S2_P2_MASK, align 4
  %79 = and i32 %77, %78
  %80 = load i32, i32* @MSM8916_S2_P2_SHIFT, align 4
  %81 = ashr i32 %79, %80
  %82 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 2
  store i32 %81, i32* %82, align 8
  %83 = load i32*, i32** %10, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @MSM8916_S3_P2_MASK, align 4
  %87 = and i32 %85, %86
  %88 = load i32, i32* @MSM8916_S3_P2_SHIFT, align 4
  %89 = ashr i32 %87, %88
  %90 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 3
  store i32 %89, i32* %90, align 4
  %91 = load i32*, i32** %10, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @MSM8916_S4_P2_MASK, align 4
  %95 = and i32 %93, %94
  %96 = load i32, i32* @MSM8916_S4_P2_SHIFT, align 4
  %97 = ashr i32 %95, %96
  %98 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 4
  store i32 %97, i32* %98, align 16
  store i32 0, i32* %6, align 4
  br label %99

99:                                               ; preds = %116, %51
  %100 = load i32, i32* %6, align 4
  %101 = load %struct.tsens_priv*, %struct.tsens_priv** %3, align 8
  %102 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = icmp slt i32 %100, %103
  br i1 %104, label %105, label %119

105:                                              ; preds = %99
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %106, %110
  %112 = shl i32 %111, 3
  %113 = load i32, i32* %6, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 %114
  store i32 %112, i32* %115, align 4
  br label %116

116:                                              ; preds = %105
  %117 = load i32, i32* %6, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %6, align 4
  br label %99

119:                                              ; preds = %99
  br label %120

120:                                              ; preds = %37, %119
  %121 = load i32*, i32** %10, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @MSM8916_BASE0_MASK, align 4
  %125 = and i32 %123, %124
  store i32 %125, i32* %4, align 4
  %126 = load i32*, i32** %10, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @MSM8916_S0_P1_MASK, align 4
  %130 = and i32 %128, %129
  %131 = load i32, i32* @MSM8916_S0_P1_SHIFT, align 4
  %132 = ashr i32 %130, %131
  %133 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  store i32 %132, i32* %133, align 16
  %134 = load i32*, i32** %10, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @MSM8916_S1_P1_MASK, align 4
  %138 = and i32 %136, %137
  %139 = load i32, i32* @MSM8916_S1_P1_SHIFT, align 4
  %140 = ashr i32 %138, %139
  %141 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 1
  store i32 %140, i32* %141, align 4
  %142 = load i32*, i32** %10, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @MSM8916_S2_P1_MASK, align 4
  %146 = and i32 %144, %145
  %147 = load i32, i32* @MSM8916_S2_P1_SHIFT, align 4
  %148 = ashr i32 %146, %147
  %149 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 2
  store i32 %148, i32* %149, align 8
  %150 = load i32*, i32** %10, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 1
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @MSM8916_S3_P1_MASK, align 4
  %154 = and i32 %152, %153
  %155 = load i32, i32* @MSM8916_S3_P1_SHIFT, align 4
  %156 = ashr i32 %154, %155
  %157 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 3
  store i32 %156, i32* %157, align 4
  %158 = load i32*, i32** %10, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 1
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @MSM8916_S4_P1_MASK, align 4
  %162 = and i32 %160, %161
  %163 = load i32, i32* @MSM8916_S4_P1_SHIFT, align 4
  %164 = ashr i32 %162, %163
  %165 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 4
  store i32 %164, i32* %165, align 16
  store i32 0, i32* %6, align 4
  br label %166

166:                                              ; preds = %183, %120
  %167 = load i32, i32* %6, align 4
  %168 = load %struct.tsens_priv*, %struct.tsens_priv** %3, align 8
  %169 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = icmp slt i32 %167, %170
  br i1 %171, label %172, label %186

172:                                              ; preds = %166
  %173 = load i32, i32* %4, align 4
  %174 = load i32, i32* %6, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = add nsw i32 %173, %177
  %179 = shl i32 %178, 3
  %180 = load i32, i32* %6, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 %181
  store i32 %179, i32* %182, align 4
  br label %183

183:                                              ; preds = %172
  %184 = load i32, i32* %6, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %6, align 4
  br label %166

186:                                              ; preds = %166
  br label %205

187:                                              ; preds = %37
  store i32 0, i32* %6, align 4
  br label %188

188:                                              ; preds = %201, %187
  %189 = load i32, i32* %6, align 4
  %190 = load %struct.tsens_priv*, %struct.tsens_priv** %3, align 8
  %191 = getelementptr inbounds %struct.tsens_priv, %struct.tsens_priv* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = icmp slt i32 %189, %192
  br i1 %193, label %194, label %204

194:                                              ; preds = %188
  %195 = load i32, i32* %6, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 %196
  store i32 500, i32* %197, align 4
  %198 = load i32, i32* %6, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 %199
  store i32 780, i32* %200, align 4
  br label %201

201:                                              ; preds = %194
  %202 = load i32, i32* %6, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %6, align 4
  br label %188

204:                                              ; preds = %188
  br label %205

205:                                              ; preds = %204, %186
  %206 = load %struct.tsens_priv*, %struct.tsens_priv** %3, align 8
  %207 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %208 = getelementptr inbounds [5 x i32], [5 x i32]* %8, i64 0, i64 0
  %209 = load i32, i32* %9, align 4
  %210 = call i32 @compute_intercept_slope(%struct.tsens_priv* %206, i32* %207, i32* %208, i32 %209)
  %211 = load i32*, i32** %10, align 8
  %212 = call i32 @kfree(i32* %211)
  %213 = load i32*, i32** %11, align 8
  %214 = call i32 @kfree(i32* %213)
  store i32 0, i32* %2, align 4
  br label %215

215:                                              ; preds = %205, %32, %20
  %216 = load i32, i32* %2, align 4
  ret i32 %216
}

declare dso_local i64 @qfprom_read(i32, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @compute_intercept_slope(%struct.tsens_priv*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
