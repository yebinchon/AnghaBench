; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_i740fb.c_i740_calc_vclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_i740fb.c_i740_calc_vclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i740fb_par = type { i32, i32, i32, i32 }

@I740_RFREQ = common dso_local global i32 0, align 4
@I740_FFIX = common dso_local global i32 0, align 4
@I740_MAX_VCO_FREQ = common dso_local global i32 0, align 4
@I740_RFREQ_FIX = common dso_local global i32 0, align 4
@I740_REF_FREQ = common dso_local global i32 0, align 4
@TARGET_MAX_N = common dso_local global i32 0, align 4
@VCO_N_MSBS = common dso_local global i32 0, align 4
@VCO_M_MSBS = common dso_local global i32 0, align 4
@REF_DIV_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.i740fb_par*)* @i740_calc_vclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i740_calc_vclk(i32 %0, %struct.i740fb_par* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i740fb_par*, align 8
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
  %15 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.i740fb_par* %1, %struct.i740fb_par** %4, align 8
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @I740_RFREQ, align 4
  %18 = mul nsw i32 200, %17
  %19 = load i32, i32* @I740_FFIX, align 4
  %20 = sdiv i32 %18, %19
  %21 = sdiv i32 %16, %20
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @I740_RFREQ, align 4
  %24 = mul nsw i32 1000, %23
  %25 = load i32, i32* @I740_FFIX, align 4
  %26 = sdiv i32 %24, %25
  %27 = sdiv i32 %22, %26
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* @I740_FFIX, align 4
  %29 = mul nsw i32 512, %28
  store i32 %29, i32* %7, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %30 = load i32, i32* @I740_MAX_VCO_FREQ, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @I740_RFREQ_FIX, align 4
  %33 = sdiv i32 %31, %32
  %34 = sdiv i32 %30, %33
  %35 = call i32 @ilog2(i32 %34)
  %36 = call i32 @min(i32 15, i32 %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* %12, align 4
  %39 = shl i32 1, %38
  %40 = mul nsw i32 %37, %39
  %41 = load i32, i32* @I740_RFREQ_FIX, align 4
  %42 = sdiv i32 %40, %41
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @I740_RFREQ_FIX, align 4
  %45 = sdiv i32 %43, %44
  store i32 %45, i32* %3, align 4
  store i32 2, i32* %14, align 4
  br label %46

46:                                               ; preds = %101, %2
  %47 = load i32, i32* %14, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %14, align 4
  %51 = mul nsw i32 %49, %50
  %52 = load i32, i32* @I740_REF_FREQ, align 4
  %53 = sdiv i32 %51, %52
  %54 = add nsw i32 %53, 2
  %55 = sdiv i32 %54, 4
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp slt i32 %56, 3
  br i1 %57, label %58, label %59

58:                                               ; preds = %46
  store i32 3, i32* %13, align 4
  br label %59

59:                                               ; preds = %58, %46
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* @I740_REF_FREQ, align 4
  %62 = mul nsw i32 %60, %61
  %63 = mul nsw i32 %62, 4
  %64 = load i32, i32* %14, align 4
  %65 = sdiv i32 %63, %64
  %66 = load i32, i32* %12, align 4
  %67 = shl i32 1, %66
  %68 = sdiv i32 %67, 2
  %69 = add nsw i32 %65, %68
  %70 = load i32, i32* %12, align 4
  %71 = shl i32 1, %70
  %72 = sdiv i32 %69, %71
  store i32 %72, i32* %15, align 4
  %73 = load i32, i32* %3, align 4
  %74 = load i32, i32* %15, align 4
  %75 = sub nsw i32 %73, %74
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @abs(i32 %76)
  %78 = load i32, i32* %5, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %59
  %81 = load i32, i32* %13, align 4
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %14, align 4
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %80, %59
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @abs(i32 %86)
  %88 = load i32, i32* %6, align 4
  %89 = icmp sge i32 %87, %88
  br i1 %89, label %90, label %101

90:                                               ; preds = %85
  %91 = load i32, i32* %14, align 4
  %92 = load i32, i32* @TARGET_MAX_N, align 4
  %93 = icmp sle i32 %91, %92
  br i1 %93, label %99, label %94

94:                                               ; preds = %90
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @abs(i32 %95)
  %97 = load i32, i32* %5, align 4
  %98 = icmp sgt i32 %96, %97
  br label %99

99:                                               ; preds = %94, %90
  %100 = phi i1 [ true, %90 ], [ %98, %94 ]
  br label %101

101:                                              ; preds = %99, %85
  %102 = phi i1 [ false, %85 ], [ %100, %99 ]
  br i1 %102, label %46, label %103

103:                                              ; preds = %101
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @abs(i32 %104)
  %106 = load i32, i32* %6, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load i32, i32* %13, align 4
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %14, align 4
  store i32 %110, i32* %11, align 4
  br label %111

111:                                              ; preds = %108, %103
  %112 = load i32, i32* %10, align 4
  %113 = sub nsw i32 %112, 2
  %114 = and i32 %113, 255
  %115 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %116 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* %11, align 4
  %118 = sub nsw i32 %117, 2
  %119 = and i32 %118, 255
  %120 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %121 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  %122 = load i32, i32* %11, align 4
  %123 = sub nsw i32 %122, 2
  %124 = ashr i32 %123, 4
  %125 = load i32, i32* @VCO_N_MSBS, align 4
  %126 = and i32 %124, %125
  %127 = load i32, i32* %10, align 4
  %128 = sub nsw i32 %127, 2
  %129 = ashr i32 %128, 8
  %130 = load i32, i32* @VCO_M_MSBS, align 4
  %131 = and i32 %129, %130
  %132 = or i32 %126, %131
  %133 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %134 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %133, i32 0, i32 2
  store i32 %132, i32* %134, align 4
  %135 = load i32, i32* %12, align 4
  %136 = shl i32 %135, 4
  %137 = load i32, i32* @REF_DIV_1, align 4
  %138 = or i32 %136, %137
  %139 = load %struct.i740fb_par*, %struct.i740fb_par** %4, align 8
  %140 = getelementptr inbounds %struct.i740fb_par, %struct.i740fb_par* %139, i32 0, i32 3
  store i32 %138, i32* %140, align 4
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @abs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
