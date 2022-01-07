; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_radeon_base.c_radeon_calc_pll_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_radeon_base.c_radeon_calc_pll_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anon = type { i32, i32 }
%struct.radeonfb_info = type { i64, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i64, i64, i32, i32 }
%struct.radeon_regs = type { i32, i32 }

@radeon_calc_pll_regs.post_div = internal global %struct.anon* null, align 8
@radeon_calc_pll_regs.post_divs = internal constant [9 x %struct.anon] [%struct.anon { i32 1, i32 0 }, %struct.anon { i32 2, i32 1 }, %struct.anon { i32 4, i32 2 }, %struct.anon { i32 8, i32 3 }, %struct.anon { i32 3, i32 4 }, %struct.anon { i32 16, i32 5 }, %struct.anon { i32 6, i32 6 }, %struct.anon { i32 12, i32 7 }, %struct.anon zeroinitializer], align 16
@FP2_GEN_CNTL = common dso_local global i32 0, align 4
@FP2_ON = common dso_local global i32 0, align 4
@CHIP_FAMILY_R200 = common dso_local global i64 0, align 8
@DISP_OUTPUT_CNTL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"freq = %lu, PLL min = %u, PLL max = %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"ref_div = %d, ref_clk = %d, output_freq = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"post div = 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"fb_div = 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"ppll_div_3 = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeonfb_info*, %struct.radeon_regs*, i64)* @radeon_calc_pll_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_calc_pll_regs(%struct.radeonfb_info* %0, %struct.radeon_regs* %1, i64 %2) #0 {
  %4 = alloca %struct.radeonfb_info*, align 8
  %5 = alloca %struct.radeon_regs*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.radeonfb_info* %0, %struct.radeonfb_info** %4, align 8
  store %struct.radeon_regs* %1, %struct.radeon_regs** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %3
  %14 = load %struct.radeonfb_info*, %struct.radeonfb_info** %4, align 8
  %15 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %58

18:                                               ; preds = %13
  %19 = load i32, i32* @FP2_GEN_CNTL, align 4
  %20 = call i32 @INREG(i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @FP2_ON, align 4
  %23 = and i32 %21, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %58

26:                                               ; preds = %18
  %27 = load %struct.radeonfb_info*, %struct.radeonfb_info** %4, align 8
  %28 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @CHIP_FAMILY_R200, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %26
  %33 = load %struct.radeonfb_info*, %struct.radeonfb_info** %4, align 8
  %34 = call i64 @IS_R300_VARIANT(%struct.radeonfb_info* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %32, %26
  %37 = load i32, i32* %10, align 4
  %38 = ashr i32 %37, 10
  %39 = and i32 %38, 3
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp eq i32 %40, 3
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load i32, i32* @DISP_OUTPUT_CNTL, align 4
  %44 = call i32 @INREG(i32 %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = ashr i32 %45, 12
  %47 = and i32 %46, 3
  store i32 %47, i32* %12, align 4
  br label %48

48:                                               ; preds = %42, %36
  br label %53

49:                                               ; preds = %32
  %50 = load i32, i32* %10, align 4
  %51 = ashr i32 %50, 13
  %52 = and i32 %51, 1
  store i32 %52, i32* %12, align 4
  br label %53

53:                                               ; preds = %49, %48
  %54 = load i32, i32* %12, align 4
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  br label %58

57:                                               ; preds = %53
  store i32 1, i32* %9, align 4
  br label %58

58:                                               ; preds = %57, %56, %25, %13
  %59 = load i64, i64* %6, align 8
  %60 = load %struct.radeonfb_info*, %struct.radeonfb_info** %4, align 8
  %61 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ugt i64 %59, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %58
  %66 = load %struct.radeonfb_info*, %struct.radeonfb_info** %4, align 8
  %67 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %6, align 8
  br label %70

70:                                               ; preds = %65, %58
  %71 = load i64, i64* %6, align 8
  %72 = mul i64 %71, 12
  %73 = load %struct.radeonfb_info*, %struct.radeonfb_info** %4, align 8
  %74 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ult i64 %72, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %70
  %79 = load %struct.radeonfb_info*, %struct.radeonfb_info** %4, align 8
  %80 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = udiv i64 %82, 12
  store i64 %83, i64* %6, align 8
  br label %84

84:                                               ; preds = %78, %70
  %85 = load i64, i64* %6, align 8
  %86 = trunc i64 %85 to i32
  %87 = load %struct.radeonfb_info*, %struct.radeonfb_info** %4, align 8
  %88 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.radeonfb_info*, %struct.radeonfb_info** %4, align 8
  %92 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %86, i64 %90, i64 %94)
  store %struct.anon* getelementptr inbounds ([9 x %struct.anon], [9 x %struct.anon]* @radeon_calc_pll_regs.post_divs, i64 0, i64 0), %struct.anon** @radeon_calc_pll_regs.post_div, align 8
  br label %96

96:                                               ; preds = %136, %84
  %97 = load %struct.anon*, %struct.anon** @radeon_calc_pll_regs.post_div, align 8
  %98 = getelementptr inbounds %struct.anon, %struct.anon* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %139

101:                                              ; preds = %96
  %102 = load %struct.anon*, %struct.anon** @radeon_calc_pll_regs.post_div, align 8
  %103 = getelementptr inbounds %struct.anon, %struct.anon* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = sext i32 %104 to i64
  %106 = load i64, i64* %6, align 8
  %107 = mul i64 %105, %106
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* %9, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %101
  %112 = load %struct.anon*, %struct.anon** @radeon_calc_pll_regs.post_div, align 8
  %113 = getelementptr inbounds %struct.anon, %struct.anon* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = and i32 %114, 1
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %111
  br label %136

118:                                              ; preds = %111, %101
  %119 = load i32, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = load %struct.radeonfb_info*, %struct.radeonfb_info** %4, align 8
  %122 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp uge i64 %120, %124
  br i1 %125, label %126, label %135

126:                                              ; preds = %118
  %127 = load i32, i32* %8, align 4
  %128 = sext i32 %127 to i64
  %129 = load %struct.radeonfb_info*, %struct.radeonfb_info** %4, align 8
  %130 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = icmp ule i64 %128, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %126
  br label %139

135:                                              ; preds = %126, %118
  br label %136

136:                                              ; preds = %135, %117
  %137 = load %struct.anon*, %struct.anon** @radeon_calc_pll_regs.post_div, align 8
  %138 = getelementptr inbounds %struct.anon, %struct.anon* %137, i32 1
  store %struct.anon* %138, %struct.anon** @radeon_calc_pll_regs.post_div, align 8
  br label %96

139:                                              ; preds = %134, %96
  %140 = load %struct.anon*, %struct.anon** @radeon_calc_pll_regs.post_div, align 8
  %141 = getelementptr inbounds %struct.anon, %struct.anon* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %157, label %144

144:                                              ; preds = %139
  %145 = load %struct.anon*, %struct.anon** @radeon_calc_pll_regs.post_div, align 8
  %146 = getelementptr inbounds %struct.anon, %struct.anon* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds [9 x %struct.anon], [9 x %struct.anon]* @radeon_calc_pll_regs.post_divs, i64 0, i64 %148
  store %struct.anon* %149, %struct.anon** @radeon_calc_pll_regs.post_div, align 8
  %150 = load %struct.anon*, %struct.anon** @radeon_calc_pll_regs.post_div, align 8
  %151 = getelementptr inbounds %struct.anon, %struct.anon* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = sext i32 %152 to i64
  %154 = load i64, i64* %6, align 8
  %155 = mul i64 %153, %154
  %156 = trunc i64 %155 to i32
  store i32 %156, i32* %8, align 4
  br label %157

157:                                              ; preds = %144, %139
  %158 = load %struct.radeonfb_info*, %struct.radeonfb_info** %4, align 8
  %159 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.radeonfb_info*, %struct.radeonfb_info** %4, align 8
  %163 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %8, align 4
  %167 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %161, i32 %165, i32 %166)
  %168 = load %struct.anon*, %struct.anon** @radeon_calc_pll_regs.post_div, align 8
  %169 = getelementptr inbounds %struct.anon, %struct.anon* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %185, label %172

172:                                              ; preds = %157
  %173 = load %struct.anon*, %struct.anon** @radeon_calc_pll_regs.post_div, align 8
  %174 = getelementptr inbounds %struct.anon, %struct.anon* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [9 x %struct.anon], [9 x %struct.anon]* @radeon_calc_pll_regs.post_divs, i64 0, i64 %176
  store %struct.anon* %177, %struct.anon** @radeon_calc_pll_regs.post_div, align 8
  %178 = load %struct.anon*, %struct.anon** @radeon_calc_pll_regs.post_div, align 8
  %179 = getelementptr inbounds %struct.anon, %struct.anon* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = sext i32 %180 to i64
  %182 = load i64, i64* %6, align 8
  %183 = mul i64 %181, %182
  %184 = trunc i64 %183 to i32
  store i32 %184, i32* %8, align 4
  br label %185

185:                                              ; preds = %172, %157
  %186 = load %struct.radeonfb_info*, %struct.radeonfb_info** %4, align 8
  %187 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.radeonfb_info*, %struct.radeonfb_info** %4, align 8
  %191 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* %8, align 4
  %195 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %189, i32 %193, i32 %194)
  %196 = load %struct.radeonfb_info*, %struct.radeonfb_info** %4, align 8
  %197 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* %8, align 4
  %201 = mul nsw i32 %199, %200
  %202 = load %struct.radeonfb_info*, %struct.radeonfb_info** %4, align 8
  %203 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @round_div(i32 %201, i32 %205)
  store i32 %206, i32* %7, align 4
  %207 = load %struct.radeonfb_info*, %struct.radeonfb_info** %4, align 8
  %208 = getelementptr inbounds %struct.radeonfb_info, %struct.radeonfb_info* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.radeon_regs*, %struct.radeon_regs** %5, align 8
  %212 = getelementptr inbounds %struct.radeon_regs, %struct.radeon_regs* %211, i32 0, i32 0
  store i32 %210, i32* %212, align 4
  %213 = load i32, i32* %7, align 4
  %214 = load %struct.anon*, %struct.anon** @radeon_calc_pll_regs.post_div, align 8
  %215 = getelementptr inbounds %struct.anon, %struct.anon* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = shl i32 %216, 16
  %218 = or i32 %213, %217
  %219 = load %struct.radeon_regs*, %struct.radeon_regs** %5, align 8
  %220 = getelementptr inbounds %struct.radeon_regs, %struct.radeon_regs* %219, i32 0, i32 1
  store i32 %218, i32* %220, align 4
  %221 = load %struct.anon*, %struct.anon** @radeon_calc_pll_regs.post_div, align 8
  %222 = getelementptr inbounds %struct.anon, %struct.anon* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %223)
  %225 = load i32, i32* %7, align 4
  %226 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i32 %225)
  %227 = load %struct.radeon_regs*, %struct.radeon_regs** %5, align 8
  %228 = getelementptr inbounds %struct.radeon_regs, %struct.radeon_regs* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %229)
  ret void
}

declare dso_local i32 @INREG(i32) #1

declare dso_local i64 @IS_R300_VARIANT(%struct.radeonfb_info*) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @round_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
