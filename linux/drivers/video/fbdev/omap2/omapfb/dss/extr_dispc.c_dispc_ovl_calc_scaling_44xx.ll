; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_ovl_calc_scaling_44xx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_ovl_calc_scaling_44xx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 (i64, i32, i32, i32, i32, i32)* }
%struct.omap_video_timings = type { i32 }

@FEAT_PARAM_LINEWIDTH = common dso_local global i32 0, align 4
@FEAT_PARAM_DOWNSCALE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Cannot scale width exceeds max line width\00", align 1
@dispc = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, %struct.omap_video_timings*, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32, i64*, i32)* @dispc_ovl_calc_scaling_44xx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dispc_ovl_calc_scaling_44xx(i64 %0, i64 %1, %struct.omap_video_timings* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32* %8, i32* %9, i32* %10, i32* %11, i32* %12, i32 %13, i64* %14, i32 %15) #0 {
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.omap_video_timings*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32, align 4
  %32 = alloca i64*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  store i64 %0, i64* %18, align 8
  store i64 %1, i64* %19, align 8
  store %struct.omap_video_timings* %2, %struct.omap_video_timings** %20, align 8
  store i32 %3, i32* %21, align 4
  store i32 %4, i32* %22, align 4
  store i32 %5, i32* %23, align 4
  store i32 %6, i32* %24, align 4
  store i32 %7, i32* %25, align 4
  store i32* %8, i32** %26, align 8
  store i32* %9, i32** %27, align 8
  store i32* %10, i32** %28, align 8
  store i32* %11, i32** %29, align 8
  store i32* %12, i32** %30, align 8
  store i32 %13, i32* %31, align 4
  store i64* %14, i64** %32, align 8
  store i32 %15, i32* %33, align 4
  %40 = load i32*, i32** %29, align 8
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %36, align 4
  %42 = load i32, i32* %22, align 4
  %43 = load i32*, i32** %30, align 8
  %44 = load i32, i32* %43, align 4
  %45 = sdiv i32 %42, %44
  store i32 %45, i32* %37, align 4
  %46 = load i32, i32* @FEAT_PARAM_LINEWIDTH, align 4
  %47 = call i32 @dss_feat_get_param_max(i32 %46)
  store i32 %47, i32* %38, align 4
  %48 = load i32, i32* @FEAT_PARAM_DOWNSCALE, align 4
  %49 = call i32 @dss_feat_get_param_max(i32 %48)
  store i32 %49, i32* %39, align 4
  %50 = load i32, i32* %33, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %16
  %53 = load i32, i32* %23, align 4
  %54 = load i32, i32* %39, align 4
  %55 = mul nsw i32 %53, %54
  store i32 %55, i32* %35, align 4
  br label %63

56:                                               ; preds = %16
  %57 = call i32 (...) @dispc_core_clk_rate()
  %58 = load i64, i64* %18, align 8
  %59 = trunc i64 %58 to i32
  %60 = load i32, i32* %23, align 4
  %61 = call i32 @DIV_ROUND_UP(i32 %59, i32 %60)
  %62 = sdiv i32 %57, %61
  store i32 %62, i32* %35, align 4
  br label %63

63:                                               ; preds = %56, %52
  %64 = load i32, i32* %21, align 4
  %65 = load i32, i32* %35, align 4
  %66 = call i32 @DIV_ROUND_UP(i32 %64, i32 %65)
  %67 = load i32*, i32** %29, align 8
  store i32 %66, i32* %67, align 4
  %68 = load i32*, i32** %29, align 8
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %36, align 4
  %71 = icmp sgt i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %63
  %73 = load i32*, i32** %29, align 8
  %74 = load i32, i32* %73, align 4
  br label %77

75:                                               ; preds = %63
  %76 = load i32, i32* %36, align 4
  br label %77

77:                                               ; preds = %75, %72
  %78 = phi i32 [ %74, %72 ], [ %76, %75 ]
  %79 = load i32*, i32** %29, align 8
  store i32 %78, i32* %79, align 4
  %80 = load i32*, i32** %29, align 8
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %27, align 8
  %83 = load i32, i32* %82, align 4
  %84 = icmp sgt i32 %81, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %77
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %17, align 4
  br label %131

88:                                               ; preds = %77
  br label %89

89:                                               ; preds = %109, %88
  %90 = load i32, i32* %21, align 4
  %91 = load i32*, i32** %29, align 8
  %92 = load i32, i32* %91, align 4
  %93 = sdiv i32 %90, %92
  store i32 %93, i32* %34, align 4
  br label %94

94:                                               ; preds = %89
  %95 = load i32*, i32** %29, align 8
  %96 = load i32, i32* %95, align 4
  %97 = load i32*, i32** %27, align 8
  %98 = load i32, i32* %97, align 4
  %99 = icmp sle i32 %96, %98
  br i1 %99, label %100, label %109

100:                                              ; preds = %94
  %101 = load i32, i32* %34, align 4
  %102 = load i32, i32* %38, align 4
  %103 = icmp sgt i32 %101, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %100
  %105 = load i32*, i32** %29, align 8
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 4
  %108 = icmp ne i32 %107, 0
  br label %109

109:                                              ; preds = %104, %100, %94
  %110 = phi i1 [ false, %100 ], [ false, %94 ], [ %108, %104 ]
  br i1 %110, label %89, label %111

111:                                              ; preds = %109
  %112 = load i32, i32* %34, align 4
  %113 = load i32, i32* %38, align 4
  %114 = icmp sgt i32 %112, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %111
  %116 = call i32 @DSSERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %17, align 4
  br label %131

119:                                              ; preds = %111
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dispc, i32 0, i32 0), align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load i64 (i64, i32, i32, i32, i32, i32)*, i64 (i64, i32, i32, i32, i32, i32)** %121, align 8
  %123 = load i64, i64* %18, align 8
  %124 = load i32, i32* %34, align 4
  %125 = load i32, i32* %37, align 4
  %126 = load i32, i32* %23, align 4
  %127 = load i32, i32* %24, align 4
  %128 = load i32, i32* %33, align 4
  %129 = call i64 %122(i64 %123, i32 %124, i32 %125, i32 %126, i32 %127, i32 %128)
  %130 = load i64*, i64** %32, align 8
  store i64 %129, i64* %130, align 8
  store i32 0, i32* %17, align 4
  br label %131

131:                                              ; preds = %119, %115, %85
  %132 = load i32, i32* %17, align 4
  ret i32 %132
}

declare dso_local i32 @dss_feat_get_param_max(i32) #1

declare dso_local i32 @dispc_core_clk_rate(...) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @DSSERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
