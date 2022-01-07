; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_main.c_ssb_calc_clock_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_main.c_ssb_calc_clock_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SSB_CHIPCO_CLK_N1 = common dso_local global i32 0, align 4
@SSB_CHIPCO_CLK_N2 = common dso_local global i32 0, align 4
@SSB_CHIPCO_CLK_N2_SHIFT = common dso_local global i32 0, align 4
@SSB_CHIPCO_CLK_T6_MMASK = common dso_local global i32 0, align 4
@SSB_CHIPCO_CLK_T6_M1 = common dso_local global i32 0, align 4
@SSB_CHIPCO_CLK_T6_M0 = common dso_local global i32 0, align 4
@SSB_CHIPCO_CLK_F5_BIAS = common dso_local global i32 0, align 4
@SSB_CHIPCO_CLK_T2_BIAS = common dso_local global i32 0, align 4
@SSB_CHIPCO_CLK_BASE2 = common dso_local global i32 0, align 4
@SSB_CHIPCO_CLK_BASE1 = common dso_local global i32 0, align 4
@SSB_CHIPCO_CLK_M1 = common dso_local global i32 0, align 4
@SSB_CHIPCO_CLK_M2 = common dso_local global i32 0, align 4
@SSB_CHIPCO_CLK_M2_SHIFT = common dso_local global i32 0, align 4
@SSB_CHIPCO_CLK_M3 = common dso_local global i32 0, align 4
@SSB_CHIPCO_CLK_M3_SHIFT = common dso_local global i32 0, align 4
@SSB_CHIPCO_CLK_MC = common dso_local global i32 0, align 4
@SSB_CHIPCO_CLK_MC_SHIFT = common dso_local global i32 0, align 4
@SSB_CHIPCO_CLK_T2M2_BIAS = common dso_local global i32 0, align 4
@SSB_CHIPCO_CLK_T2MC_M1BYP = common dso_local global i32 0, align 4
@SSB_CHIPCO_CLK_T2MC_M2BYP = common dso_local global i32 0, align 4
@SSB_CHIPCO_CLK_T2MC_M3BYP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssb_calc_clock_rate(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @SSB_CHIPCO_CLK_N1, align 4
  %17 = and i32 %15, %16
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @SSB_CHIPCO_CLK_N2, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @SSB_CHIPCO_CLK_N2_SHIFT, align 4
  %22 = ashr i32 %20, %21
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %5, align 4
  switch i32 %23, label %67 [
    i32 129, label %24
    i32 134, label %33
    i32 132, label %33
    i32 131, label %33
    i32 128, label %33
    i32 133, label %39
    i32 130, label %66
  ]

24:                                               ; preds = %3
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @SSB_CHIPCO_CLK_T6_MMASK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @SSB_CHIPCO_CLK_T6_M1, align 4
  store i32 %30, i32* %4, align 4
  br label %224

31:                                               ; preds = %24
  %32 = load i32, i32* @SSB_CHIPCO_CLK_T6_M0, align 4
  store i32 %32, i32* %4, align 4
  br label %224

33:                                               ; preds = %3, %3, %3, %3
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @clkfactor_f6_resolve(i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* @SSB_CHIPCO_CLK_F5_BIAS, align 4
  %37 = load i32, i32* %9, align 4
  %38 = add nsw i32 %37, %36
  store i32 %38, i32* %9, align 4
  br label %69

39:                                               ; preds = %3
  %40 = load i32, i32* @SSB_CHIPCO_CLK_T2_BIAS, align 4
  %41 = load i32, i32* %8, align 4
  %42 = add nsw i32 %41, %40
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* @SSB_CHIPCO_CLK_T2_BIAS, align 4
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %44, %43
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp sge i32 %46, 2
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load i32, i32* %8, align 4
  %50 = icmp sle i32 %49, 7
  br label %51

51:                                               ; preds = %48, %39
  %52 = phi i1 [ false, %39 ], [ %50, %48 ]
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i32 @WARN_ON(i32 %54)
  %56 = load i32, i32* %9, align 4
  %57 = icmp sge i32 %56, 5
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load i32, i32* %9, align 4
  %60 = icmp sle i32 %59, 23
  br label %61

61:                                               ; preds = %58, %51
  %62 = phi i1 [ false, %51 ], [ %60, %58 ]
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = call i32 @WARN_ON(i32 %64)
  br label %69

66:                                               ; preds = %3
  store i32 100000000, i32* %4, align 4
  br label %224

67:                                               ; preds = %3
  %68 = call i32 @WARN_ON(i32 1)
  br label %69

69:                                               ; preds = %67, %61, %33
  %70 = load i32, i32* %5, align 4
  switch i32 %70, label %77 [
    i32 132, label %71
    i32 128, label %71
  ]

71:                                               ; preds = %69, %69
  %72 = load i32, i32* @SSB_CHIPCO_CLK_BASE2, align 4
  %73 = load i32, i32* %8, align 4
  %74 = mul nsw i32 %72, %73
  %75 = load i32, i32* %9, align 4
  %76 = mul nsw i32 %74, %75
  store i32 %76, i32* %10, align 4
  br label %83

77:                                               ; preds = %69
  %78 = load i32, i32* @SSB_CHIPCO_CLK_BASE1, align 4
  %79 = load i32, i32* %8, align 4
  %80 = mul nsw i32 %78, %79
  %81 = load i32, i32* %9, align 4
  %82 = mul nsw i32 %80, %81
  store i32 %82, i32* %10, align 4
  br label %83

83:                                               ; preds = %77, %71
  %84 = load i32, i32* %10, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %87, label %86

86:                                               ; preds = %83
  store i32 0, i32* %4, align 4
  br label %224

87:                                               ; preds = %83
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* @SSB_CHIPCO_CLK_M1, align 4
  %90 = and i32 %88, %89
  store i32 %90, i32* %11, align 4
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @SSB_CHIPCO_CLK_M2, align 4
  %93 = and i32 %91, %92
  %94 = load i32, i32* @SSB_CHIPCO_CLK_M2_SHIFT, align 4
  %95 = ashr i32 %93, %94
  store i32 %95, i32* %12, align 4
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* @SSB_CHIPCO_CLK_M3, align 4
  %98 = and i32 %96, %97
  %99 = load i32, i32* @SSB_CHIPCO_CLK_M3_SHIFT, align 4
  %100 = ashr i32 %98, %99
  store i32 %100, i32* %13, align 4
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @SSB_CHIPCO_CLK_MC, align 4
  %103 = and i32 %101, %102
  %104 = load i32, i32* @SSB_CHIPCO_CLK_MC_SHIFT, align 4
  %105 = ashr i32 %103, %104
  store i32 %105, i32* %14, align 4
  %106 = load i32, i32* %5, align 4
  switch i32 %106, label %221 [
    i32 134, label %107
    i32 132, label %107
    i32 131, label %107
    i32 128, label %107
    i32 133, label %153
  ]

107:                                              ; preds = %87, %87, %87, %87
  %108 = load i32, i32* %11, align 4
  %109 = call i32 @clkfactor_f6_resolve(i32 %108)
  store i32 %109, i32* %11, align 4
  %110 = load i32, i32* %5, align 4
  %111 = icmp eq i32 %110, 134
  br i1 %111, label %115, label %112

112:                                              ; preds = %107
  %113 = load i32, i32* %5, align 4
  %114 = icmp eq i32 %113, 132
  br i1 %114, label %115, label %119

115:                                              ; preds = %112, %107
  %116 = load i32, i32* @SSB_CHIPCO_CLK_F5_BIAS, align 4
  %117 = load i32, i32* %12, align 4
  %118 = add nsw i32 %117, %116
  store i32 %118, i32* %12, align 4
  br label %122

119:                                              ; preds = %112
  %120 = load i32, i32* %12, align 4
  %121 = call i32 @clkfactor_f6_resolve(i32 %120)
  store i32 %121, i32* %12, align 4
  br label %122

122:                                              ; preds = %119, %115
  %123 = load i32, i32* %13, align 4
  %124 = call i32 @clkfactor_f6_resolve(i32 %123)
  store i32 %124, i32* %13, align 4
  %125 = load i32, i32* %14, align 4
  switch i32 %125, label %152 [
    i32 139, label %126
    i32 138, label %128
    i32 137, label %132
    i32 136, label %138
    i32 135, label %146
  ]

126:                                              ; preds = %122
  %127 = load i32, i32* %10, align 4
  store i32 %127, i32* %4, align 4
  br label %224

128:                                              ; preds = %122
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* %11, align 4
  %131 = sdiv i32 %129, %130
  store i32 %131, i32* %4, align 4
  br label %224

132:                                              ; preds = %122
  %133 = load i32, i32* %10, align 4
  %134 = load i32, i32* %11, align 4
  %135 = load i32, i32* %12, align 4
  %136 = mul nsw i32 %134, %135
  %137 = sdiv i32 %133, %136
  store i32 %137, i32* %4, align 4
  br label %224

138:                                              ; preds = %122
  %139 = load i32, i32* %10, align 4
  %140 = load i32, i32* %11, align 4
  %141 = load i32, i32* %12, align 4
  %142 = mul nsw i32 %140, %141
  %143 = load i32, i32* %13, align 4
  %144 = mul nsw i32 %142, %143
  %145 = sdiv i32 %139, %144
  store i32 %145, i32* %4, align 4
  br label %224

146:                                              ; preds = %122
  %147 = load i32, i32* %10, align 4
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* %13, align 4
  %150 = mul nsw i32 %148, %149
  %151 = sdiv i32 %147, %150
  store i32 %151, i32* %4, align 4
  br label %224

152:                                              ; preds = %122
  store i32 0, i32* %4, align 4
  br label %224

153:                                              ; preds = %87
  %154 = load i32, i32* @SSB_CHIPCO_CLK_T2_BIAS, align 4
  %155 = load i32, i32* %11, align 4
  %156 = add nsw i32 %155, %154
  store i32 %156, i32* %11, align 4
  %157 = load i32, i32* @SSB_CHIPCO_CLK_T2M2_BIAS, align 4
  %158 = load i32, i32* %12, align 4
  %159 = add nsw i32 %158, %157
  store i32 %159, i32* %12, align 4
  %160 = load i32, i32* @SSB_CHIPCO_CLK_T2_BIAS, align 4
  %161 = load i32, i32* %13, align 4
  %162 = add nsw i32 %161, %160
  store i32 %162, i32* %13, align 4
  %163 = load i32, i32* %11, align 4
  %164 = icmp sge i32 %163, 2
  br i1 %164, label %165, label %168

165:                                              ; preds = %153
  %166 = load i32, i32* %11, align 4
  %167 = icmp sle i32 %166, 7
  br label %168

168:                                              ; preds = %165, %153
  %169 = phi i1 [ false, %153 ], [ %167, %165 ]
  %170 = xor i1 %169, true
  %171 = zext i1 %170 to i32
  %172 = call i32 @WARN_ON(i32 %171)
  %173 = load i32, i32* %12, align 4
  %174 = icmp sge i32 %173, 3
  br i1 %174, label %175, label %178

175:                                              ; preds = %168
  %176 = load i32, i32* %12, align 4
  %177 = icmp sle i32 %176, 10
  br label %178

178:                                              ; preds = %175, %168
  %179 = phi i1 [ false, %168 ], [ %177, %175 ]
  %180 = xor i1 %179, true
  %181 = zext i1 %180 to i32
  %182 = call i32 @WARN_ON(i32 %181)
  %183 = load i32, i32* %13, align 4
  %184 = icmp sge i32 %183, 2
  br i1 %184, label %185, label %188

185:                                              ; preds = %178
  %186 = load i32, i32* %13, align 4
  %187 = icmp sle i32 %186, 7
  br label %188

188:                                              ; preds = %185, %178
  %189 = phi i1 [ false, %178 ], [ %187, %185 ]
  %190 = xor i1 %189, true
  %191 = zext i1 %190 to i32
  %192 = call i32 @WARN_ON(i32 %191)
  %193 = load i32, i32* %14, align 4
  %194 = load i32, i32* @SSB_CHIPCO_CLK_T2MC_M1BYP, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %201, label %197

197:                                              ; preds = %188
  %198 = load i32, i32* %11, align 4
  %199 = load i32, i32* %10, align 4
  %200 = sdiv i32 %199, %198
  store i32 %200, i32* %10, align 4
  br label %201

201:                                              ; preds = %197, %188
  %202 = load i32, i32* %14, align 4
  %203 = load i32, i32* @SSB_CHIPCO_CLK_T2MC_M2BYP, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %210, label %206

206:                                              ; preds = %201
  %207 = load i32, i32* %12, align 4
  %208 = load i32, i32* %10, align 4
  %209 = sdiv i32 %208, %207
  store i32 %209, i32* %10, align 4
  br label %210

210:                                              ; preds = %206, %201
  %211 = load i32, i32* %14, align 4
  %212 = load i32, i32* @SSB_CHIPCO_CLK_T2MC_M3BYP, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %219, label %215

215:                                              ; preds = %210
  %216 = load i32, i32* %13, align 4
  %217 = load i32, i32* %10, align 4
  %218 = sdiv i32 %217, %216
  store i32 %218, i32* %10, align 4
  br label %219

219:                                              ; preds = %215, %210
  %220 = load i32, i32* %10, align 4
  store i32 %220, i32* %4, align 4
  br label %224

221:                                              ; preds = %87
  %222 = call i32 @WARN_ON(i32 1)
  br label %223

223:                                              ; preds = %221
  store i32 0, i32* %4, align 4
  br label %224

224:                                              ; preds = %223, %219, %152, %146, %138, %132, %128, %126, %86, %66, %31, %29
  %225 = load i32, i32* %4, align 4
  ret i32 %225
}

declare dso_local i32 @clkfactor_f6_resolve(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
