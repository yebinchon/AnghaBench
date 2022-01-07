; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-css-params.c_imgu_css_scaler_setup_lut.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-css-params.c_imgu_css_scaler_setup_lut.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imgu_css_scaler_info = type { i32, i32, i32, i32, i32, i32, i64 }

@IMGU_SCALER_PHASES = common dso_local global i32 0, align 4
@IMGU_SCALER_FILTER_TAPS = common dso_local global i32 0, align 4
@IMGU_SCALER_PHASE_COUNTER_PREC_REF = common dso_local global i32 0, align 4
@IMGU_SCALER_COEFF_BITS = common dso_local global i32 0, align 4
@IMGU_SCALER_MAX_EXPONENT_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32*, i32, i32*, %struct.imgu_css_scaler_info*)* @imgu_css_scaler_setup_lut to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imgu_css_scaler_setup_lut(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5, i32* %6, %struct.imgu_css_scaler_info* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.imgu_css_scaler_info*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store %struct.imgu_css_scaler_info* %7, %struct.imgu_css_scaler_info** %16, align 8
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @imgu_css_scaler_get_exp(i32 %25, i32 %26)
  store i32 %27, i32* %21, align 4
  %28 = load i32, i32* %21, align 4
  %29 = shl i32 1, %28
  %30 = load i32, i32* %11, align 4
  %31 = mul i32 %29, %30
  store i32 %31, i32* %22, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %80

35:                                               ; preds = %8
  store i32 0, i32* %18, align 4
  br label %36

36:                                               ; preds = %58, %35
  %37 = load i32, i32* %18, align 4
  %38 = load i32, i32* @IMGU_SCALER_PHASES, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %61

40:                                               ; preds = %36
  store i32 0, i32* %17, align 4
  br label %41

41:                                               ; preds = %54, %40
  %42 = load i32, i32* %17, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %41
  %46 = load i32*, i32** %15, align 8
  %47 = load i32, i32* %18, align 4
  %48 = load i32, i32* @IMGU_SCALER_FILTER_TAPS, align 4
  %49 = mul nsw i32 %47, %48
  %50 = load i32, i32* %17, align 4
  %51 = add nsw i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %46, i64 %52
  store i32 0, i32* %53, align 4
  br label %54

54:                                               ; preds = %45
  %55 = load i32, i32* %17, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %17, align 4
  br label %41

57:                                               ; preds = %41
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %18, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %18, align 4
  br label %36

61:                                               ; preds = %36
  %62 = load i32, i32* @IMGU_SCALER_PHASES, align 4
  %63 = load i32, i32* @IMGU_SCALER_PHASE_COUNTER_PREC_REF, align 4
  %64 = shl i32 1, %63
  %65 = mul nsw i32 %62, %64
  %66 = load %struct.imgu_css_scaler_info*, %struct.imgu_css_scaler_info** %16, align 8
  %67 = getelementptr inbounds %struct.imgu_css_scaler_info, %struct.imgu_css_scaler_info* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.imgu_css_scaler_info*, %struct.imgu_css_scaler_info** %16, align 8
  %69 = getelementptr inbounds %struct.imgu_css_scaler_info, %struct.imgu_css_scaler_info* %68, i32 0, i32 6
  store i64 0, i64* %69, align 8
  %70 = load %struct.imgu_css_scaler_info*, %struct.imgu_css_scaler_info** %16, align 8
  %71 = getelementptr inbounds %struct.imgu_css_scaler_info, %struct.imgu_css_scaler_info* %70, i32 0, i32 1
  store i32 0, i32* %71, align 4
  %72 = load %struct.imgu_css_scaler_info*, %struct.imgu_css_scaler_info** %16, align 8
  %73 = getelementptr inbounds %struct.imgu_css_scaler_info, %struct.imgu_css_scaler_info* %72, i32 0, i32 2
  store i32 0, i32* %73, align 8
  %74 = load %struct.imgu_css_scaler_info*, %struct.imgu_css_scaler_info** %16, align 8
  %75 = getelementptr inbounds %struct.imgu_css_scaler_info, %struct.imgu_css_scaler_info* %74, i32 0, i32 3
  store i32 0, i32* %75, align 4
  %76 = load %struct.imgu_css_scaler_info*, %struct.imgu_css_scaler_info** %16, align 8
  %77 = getelementptr inbounds %struct.imgu_css_scaler_info, %struct.imgu_css_scaler_info* %76, i32 0, i32 4
  store i32 0, i32* %77, align 8
  %78 = load %struct.imgu_css_scaler_info*, %struct.imgu_css_scaler_info** %16, align 8
  %79 = getelementptr inbounds %struct.imgu_css_scaler_info, %struct.imgu_css_scaler_info* %78, i32 0, i32 5
  store i32 0, i32* %79, align 4
  br label %229

80:                                               ; preds = %8
  store i32 0, i32* %18, align 4
  br label %81

81:                                               ; preds = %132, %80
  %82 = load i32, i32* %18, align 4
  %83 = load i32, i32* @IMGU_SCALER_PHASES, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %135

85:                                               ; preds = %81
  store i32 0, i32* %17, align 4
  br label %86

86:                                               ; preds = %128, %85
  %87 = load i32, i32* %17, align 4
  %88 = load i32, i32* %9, align 4
  %89 = icmp ult i32 %87, %88
  br i1 %89, label %90, label %131

90:                                               ; preds = %86
  %91 = load i32*, i32** %13, align 8
  %92 = load i32, i32* %14, align 4
  %93 = load i32, i32* %17, align 4
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* %9, align 4
  %96 = udiv i32 %94, %95
  %97 = mul i32 %93, %96
  %98 = load i32, i32* %18, align 4
  %99 = add i32 %97, %98
  %100 = sub i32 %92, %99
  %101 = sub i32 %100, 1
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %91, i64 %102
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %24, align 4
  %105 = load i32, i32* %22, align 4
  %106 = load i32, i32* %24, align 4
  %107 = mul nsw i32 %106, %105
  store i32 %107, i32* %24, align 4
  %108 = load i32, i32* %24, align 4
  %109 = load i32, i32* %10, align 4
  %110 = call i32 @div64_long(i32 %108, i32 %109)
  store i32 %110, i32* %24, align 4
  %111 = load i32, i32* @IMGU_SCALER_COEFF_BITS, align 4
  %112 = sub nsw i32 %111, 1
  %113 = shl i32 1, %112
  %114 = load i32, i32* %24, align 4
  %115 = add nsw i32 %114, %113
  store i32 %115, i32* %24, align 4
  %116 = load i32, i32* @IMGU_SCALER_COEFF_BITS, align 4
  %117 = load i32, i32* %24, align 4
  %118 = ashr i32 %117, %116
  store i32 %118, i32* %24, align 4
  %119 = load i32, i32* %24, align 4
  %120 = load i32*, i32** %15, align 8
  %121 = load i32, i32* %18, align 4
  %122 = load i32, i32* @IMGU_SCALER_FILTER_TAPS, align 4
  %123 = mul nsw i32 %121, %122
  %124 = load i32, i32* %17, align 4
  %125 = add nsw i32 %123, %124
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %120, i64 %126
  store i32 %119, i32* %127, align 4
  br label %128

128:                                              ; preds = %90
  %129 = load i32, i32* %17, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %17, align 4
  br label %86

131:                                              ; preds = %86
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %18, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %18, align 4
  br label %81

135:                                              ; preds = %81
  %136 = load i32, i32* @IMGU_SCALER_PHASES, align 4
  %137 = load i32, i32* @IMGU_SCALER_PHASE_COUNTER_PREC_REF, align 4
  %138 = shl i32 1, %137
  %139 = mul nsw i32 %136, %138
  %140 = load i32, i32* %11, align 4
  %141 = mul i32 %139, %140
  %142 = load i32, i32* %10, align 4
  %143 = udiv i32 %141, %142
  store i32 %143, i32* %23, align 4
  %144 = load i32, i32* %12, align 4
  %145 = load i32, i32* %23, align 4
  %146 = add i32 %145, %144
  store i32 %146, i32* %23, align 4
  %147 = load i32, i32* %9, align 4
  %148 = udiv i32 %147, 2
  %149 = load i32, i32* @IMGU_SCALER_PHASES, align 4
  %150 = mul i32 %148, %149
  %151 = load i32, i32* @IMGU_SCALER_PHASE_COUNTER_PREC_REF, align 4
  %152 = shl i32 1, %151
  %153 = mul i32 %150, %152
  %154 = load i32, i32* @IMGU_SCALER_PHASE_COUNTER_PREC_REF, align 4
  %155 = sub nsw i32 %154, 1
  %156 = shl i32 1, %155
  %157 = sub i32 %153, %156
  store i32 %157, i32* %19, align 4
  %158 = load i32, i32* %9, align 4
  %159 = udiv i32 %158, 2
  %160 = load i32, i32* @IMGU_SCALER_PHASES, align 4
  %161 = mul i32 %159, %160
  %162 = load i32, i32* @IMGU_SCALER_PHASE_COUNTER_PREC_REF, align 4
  %163 = shl i32 1, %162
  %164 = mul i32 %161, %163
  %165 = load i32, i32* @IMGU_SCALER_PHASE_COUNTER_PREC_REF, align 4
  %166 = sub nsw i32 %165, 1
  %167 = shl i32 1, %166
  %168 = add i32 %164, %167
  store i32 %168, i32* %20, align 4
  %169 = load i64, i64* @IMGU_SCALER_MAX_EXPONENT_SHIFT, align 8
  %170 = load i32, i32* %21, align 4
  %171 = sext i32 %170 to i64
  %172 = sub nsw i64 %169, %171
  %173 = load %struct.imgu_css_scaler_info*, %struct.imgu_css_scaler_info** %16, align 8
  %174 = getelementptr inbounds %struct.imgu_css_scaler_info, %struct.imgu_css_scaler_info* %173, i32 0, i32 6
  store i64 %172, i64* %174, align 8
  %175 = load i32, i32* %19, align 4
  %176 = load i32, i32* %23, align 4
  %177 = urem i32 %175, %176
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %135
  %180 = load i32, i32* %19, align 4
  %181 = load i32, i32* %23, align 4
  %182 = udiv i32 %180, %181
  %183 = sub i32 %182, 1
  br label %188

184:                                              ; preds = %135
  %185 = load i32, i32* %19, align 4
  %186 = load i32, i32* %23, align 4
  %187 = udiv i32 %185, %186
  br label %188

188:                                              ; preds = %184, %179
  %189 = phi i32 [ %183, %179 ], [ %187, %184 ]
  %190 = load %struct.imgu_css_scaler_info*, %struct.imgu_css_scaler_info** %16, align 8
  %191 = getelementptr inbounds %struct.imgu_css_scaler_info, %struct.imgu_css_scaler_info* %190, i32 0, i32 1
  store i32 %189, i32* %191, align 4
  %192 = load i32, i32* %20, align 4
  %193 = load i32, i32* %23, align 4
  %194 = urem i32 %192, %193
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %196, label %201

196:                                              ; preds = %188
  %197 = load i32, i32* %20, align 4
  %198 = load i32, i32* %23, align 4
  %199 = udiv i32 %197, %198
  %200 = sub i32 %199, 1
  br label %205

201:                                              ; preds = %188
  %202 = load i32, i32* %20, align 4
  %203 = load i32, i32* %23, align 4
  %204 = udiv i32 %202, %203
  br label %205

205:                                              ; preds = %201, %196
  %206 = phi i32 [ %200, %196 ], [ %204, %201 ]
  %207 = load %struct.imgu_css_scaler_info*, %struct.imgu_css_scaler_info** %16, align 8
  %208 = getelementptr inbounds %struct.imgu_css_scaler_info, %struct.imgu_css_scaler_info* %207, i32 0, i32 2
  store i32 %206, i32* %208, align 8
  %209 = load i32, i32* %19, align 4
  %210 = load i32, i32* %23, align 4
  %211 = load %struct.imgu_css_scaler_info*, %struct.imgu_css_scaler_info** %16, align 8
  %212 = getelementptr inbounds %struct.imgu_css_scaler_info, %struct.imgu_css_scaler_info* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = mul i32 %210, %213
  %215 = sub i32 %209, %214
  %216 = load %struct.imgu_css_scaler_info*, %struct.imgu_css_scaler_info** %16, align 8
  %217 = getelementptr inbounds %struct.imgu_css_scaler_info, %struct.imgu_css_scaler_info* %216, i32 0, i32 3
  store i32 %215, i32* %217, align 4
  %218 = load i32, i32* %23, align 4
  %219 = load %struct.imgu_css_scaler_info*, %struct.imgu_css_scaler_info** %16, align 8
  %220 = getelementptr inbounds %struct.imgu_css_scaler_info, %struct.imgu_css_scaler_info* %219, i32 0, i32 0
  store i32 %218, i32* %220, align 8
  %221 = load i32, i32* %9, align 4
  %222 = sub i32 %221, 1
  %223 = load %struct.imgu_css_scaler_info*, %struct.imgu_css_scaler_info** %16, align 8
  %224 = getelementptr inbounds %struct.imgu_css_scaler_info, %struct.imgu_css_scaler_info* %223, i32 0, i32 4
  store i32 %222, i32* %224, align 8
  %225 = load i32, i32* %9, align 4
  %226 = sub i32 %225, 1
  %227 = load %struct.imgu_css_scaler_info*, %struct.imgu_css_scaler_info** %16, align 8
  %228 = getelementptr inbounds %struct.imgu_css_scaler_info, %struct.imgu_css_scaler_info* %227, i32 0, i32 5
  store i32 %226, i32* %228, align 4
  br label %229

229:                                              ; preds = %205, %61
  ret void
}

declare dso_local i32 @imgu_css_scaler_get_exp(i32, i32) #1

declare dso_local i32 @div64_long(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
