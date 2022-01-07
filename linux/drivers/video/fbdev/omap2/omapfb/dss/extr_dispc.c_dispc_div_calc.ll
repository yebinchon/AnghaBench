; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_div_calc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_div_calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FEAT_PARAM_DSS_PCD = common dso_local global i32 0, align 4
@FEAT_PARAM_DSS_FCK = common dso_local global i32 0, align 4
@ULONG_MAX = common dso_local global i64 0, align 8
@FEAT_CORE_CLK_DIV = common dso_local global i32 0, align 4
@CONFIG_FB_OMAP2_DSS_MIN_FCK_PER_PCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dispc_div_calc(i64 %0, i64 %1, i64 %2, i64 (i32, i32, i64, i64, i8*)* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64 (i32, i32, i64, i64, i8*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 (i32, i32, i64, i64, i8*)* %3, i64 (i32, i32, i64, i64, i8*)** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 0, i32* %23, align 4
  %25 = load i32, i32* @FEAT_PARAM_DSS_PCD, align 4
  %26 = call i64 @dss_feat_get_param_min(i32 %25)
  store i64 %26, i64* %21, align 8
  %27 = load i32, i32* @FEAT_PARAM_DSS_PCD, align 4
  %28 = call i64 @dss_feat_get_param_max(i32 %27)
  store i64 %28, i64* %22, align 8
  %29 = load i32, i32* @FEAT_PARAM_DSS_FCK, align 4
  %30 = call i64 @dss_feat_get_param_max(i32 %29)
  store i64 %30, i64* %20, align 8
  %31 = load i64, i64* %8, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %5
  %34 = load i64, i64* %8, align 8
  br label %36

35:                                               ; preds = %5
  br label %36

36:                                               ; preds = %35, %33
  %37 = phi i64 [ %34, %33 ], [ 1, %35 ]
  store i64 %37, i64* %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i64, i64* %9, align 8
  br label %44

42:                                               ; preds = %36
  %43 = load i64, i64* @ULONG_MAX, align 8
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi i64 [ %41, %40 ], [ %43, %42 ]
  store i64 %45, i64* %9, align 8
  %46 = load i64, i64* %7, align 8
  %47 = load i64, i64* %20, align 8
  %48 = call i32 @DIV_ROUND_UP(i64 %46, i64 %47)
  %49 = call i32 @max(i32 %48, i64 1)
  store i32 %49, i32* %13, align 4
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* %8, align 8
  %52 = udiv i64 %50, %51
  %53 = call i32 @min(i64 %52, i64 255)
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %13, align 4
  store i32 %54, i32* %12, align 4
  br label %55

55:                                               ; preds = %114, %44
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %14, align 4
  %58 = icmp sle i32 %56, %57
  br i1 %58, label %59, label %117

59:                                               ; preds = %55
  %60 = load i64, i64* %7, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = udiv i64 %60, %62
  store i64 %63, i64* %19, align 8
  %64 = load i64, i64* %19, align 8
  %65 = load i64, i64* %9, align 8
  %66 = call i32 @DIV_ROUND_UP(i64 %64, i64 %65)
  %67 = load i64, i64* %21, align 8
  %68 = call i32 @max(i32 %66, i64 %67)
  store i32 %68, i32* %16, align 4
  %69 = load i64, i64* %19, align 8
  %70 = load i64, i64* %8, align 8
  %71 = udiv i64 %69, %70
  %72 = load i64, i64* %22, align 8
  %73 = call i32 @min(i64 %71, i64 %72)
  store i32 %73, i32* %17, align 4
  %74 = load i32, i32* %16, align 4
  store i32 %74, i32* %15, align 4
  br label %75

75:                                               ; preds = %110, %59
  %76 = load i32, i32* %15, align 4
  %77 = load i32, i32* %17, align 4
  %78 = icmp sle i32 %76, %77
  br i1 %78, label %79, label %113

79:                                               ; preds = %75
  %80 = load i64, i64* %19, align 8
  %81 = load i32, i32* %15, align 4
  %82 = sext i32 %81 to i64
  %83 = udiv i64 %80, %82
  store i64 %83, i64* %18, align 8
  %84 = load i32, i32* @FEAT_CORE_CLK_DIV, align 4
  %85 = call i64 @dss_has_feature(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %79
  %88 = call i64 (...) @dispc_core_clk_rate()
  store i64 %88, i64* %24, align 8
  br label %91

89:                                               ; preds = %79
  %90 = load i64, i64* %19, align 8
  store i64 %90, i64* %24, align 8
  br label %91

91:                                               ; preds = %89, %87
  %92 = load i64, i64* %24, align 8
  %93 = load i64, i64* %18, align 8
  %94 = load i32, i32* %23, align 4
  %95 = zext i32 %94 to i64
  %96 = mul i64 %93, %95
  %97 = icmp ult i64 %92, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %91
  br label %110

99:                                               ; preds = %91
  %100 = load i64 (i32, i32, i64, i64, i8*)*, i64 (i32, i32, i64, i64, i8*)** %10, align 8
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* %15, align 4
  %103 = load i64, i64* %19, align 8
  %104 = load i64, i64* %18, align 8
  %105 = load i8*, i8** %11, align 8
  %106 = call i64 %100(i32 %101, i32 %102, i64 %103, i64 %104, i8* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %99
  store i32 1, i32* %6, align 4
  br label %118

109:                                              ; preds = %99
  br label %110

110:                                              ; preds = %109, %98
  %111 = load i32, i32* %15, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %15, align 4
  br label %75

113:                                              ; preds = %75
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %12, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %12, align 4
  br label %55

117:                                              ; preds = %55
  store i32 0, i32* %6, align 4
  br label %118

118:                                              ; preds = %117, %108
  %119 = load i32, i32* %6, align 4
  ret i32 %119
}

declare dso_local i64 @dss_feat_get_param_min(i32) #1

declare dso_local i64 @dss_feat_get_param_max(i32) #1

declare dso_local i32 @max(i32, i64) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i64) #1

declare dso_local i32 @min(i64, i64) #1

declare dso_local i64 @dss_has_feature(i32) #1

declare dso_local i64 @dispc_core_clk_rate(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
