; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_ovl_calc_scaling_24xx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_ovl_calc_scaling_24xx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 (i64, i32, i32, i32, i32, i32)* }
%struct.omap_video_timings = type { i32 }

@FEAT_PARAM_LINEWIDTH = common dso_local global i32 0, align 4
@dispc = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@.str = private unnamed_addr constant [33 x i8] c"failed to find scaling settings\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Cannot scale max input width exceeded\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, %struct.omap_video_timings*, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32*, i32*, i32, i64*, i32)* @dispc_ovl_calc_scaling_24xx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dispc_ovl_calc_scaling_24xx(i64 %0, i64 %1, %struct.omap_video_timings* %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32* %8, i32* %9, i32* %10, i32* %11, i32* %12, i32 %13, i64* %14, i32 %15) #0 {
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
  %39 = load i32*, i32** %29, align 8
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %30, align 8
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @min(i32 %40, i32 %42)
  store i32 %43, i32* %37, align 4
  %44 = load i32, i32* @FEAT_PARAM_LINEWIDTH, align 4
  %45 = call i32 @dss_feat_get_param_max(i32 %44)
  store i32 %45, i32* %38, align 4
  %46 = load i32*, i32** %26, align 8
  store i32 0, i32* %46, align 4
  br label %47

47:                                               ; preds = %129, %16
  %48 = load i32, i32* %22, align 4
  %49 = load i32*, i32** %30, align 8
  %50 = load i32, i32* %49, align 4
  %51 = sdiv i32 %48, %50
  store i32 %51, i32* %36, align 4
  %52 = load i32, i32* %21, align 4
  %53 = load i32*, i32** %29, align 8
  %54 = load i32, i32* %53, align 4
  %55 = sdiv i32 %52, %54
  store i32 %55, i32* %35, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @dispc, i32 0, i32 0), align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i64 (i64, i32, i32, i32, i32, i32)*, i64 (i64, i32, i32, i32, i32, i32)** %57, align 8
  %59 = load i64, i64* %18, align 8
  %60 = load i32, i32* %35, align 4
  %61 = load i32, i32* %36, align 4
  %62 = load i32, i32* %23, align 4
  %63 = load i32, i32* %24, align 4
  %64 = load i32, i32* %33, align 4
  %65 = call i64 %58(i64 %59, i32 %60, i32 %61, i32 %62, i32 %63, i32 %64)
  %66 = load i64*, i64** %32, align 8
  store i64 %65, i64* %66, align 8
  %67 = load i32, i32* %35, align 4
  %68 = load i32, i32* %38, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %79, label %70

70:                                               ; preds = %47
  %71 = load i64*, i64** %32, align 8
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %70
  %75 = load i64*, i64** %32, align 8
  %76 = load i64, i64* %75, align 8
  %77 = call i64 (...) @dispc_core_clk_rate()
  %78 = icmp ugt i64 %76, %77
  br label %79

79:                                               ; preds = %74, %70, %47
  %80 = phi i1 [ true, %70 ], [ true, %47 ], [ %78, %74 ]
  %81 = zext i1 %80 to i32
  store i32 %81, i32* %34, align 4
  %82 = load i32, i32* %34, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %113

84:                                               ; preds = %79
  %85 = load i32*, i32** %29, align 8
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %30, align 8
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %86, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %84
  %91 = load i32, i32* %37, align 4
  %92 = load i32*, i32** %29, align 8
  store i32 %91, i32* %92, align 4
  %93 = load i32*, i32** %30, align 8
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 4
  br label %112

96:                                               ; preds = %84
  %97 = load i32*, i32** %29, align 8
  %98 = load i32, i32* %97, align 4
  %99 = load i32*, i32** %30, align 8
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @swap(i32 %98, i32 %100)
  %102 = load i32*, i32** %29, align 8
  %103 = load i32, i32* %102, align 4
  %104 = load i32*, i32** %30, align 8
  %105 = load i32, i32* %104, align 4
  %106 = icmp slt i32 %103, %105
  br i1 %106, label %107, label %111

107:                                              ; preds = %96
  %108 = load i32*, i32** %29, align 8
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %107, %96
  br label %112

112:                                              ; preds = %111, %90
  br label %113

113:                                              ; preds = %112, %79
  br label %114

114:                                              ; preds = %113
  %115 = load i32*, i32** %29, align 8
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** %27, align 8
  %118 = load i32, i32* %117, align 4
  %119 = icmp sle i32 %116, %118
  br i1 %119, label %120, label %129

120:                                              ; preds = %114
  %121 = load i32*, i32** %30, align 8
  %122 = load i32, i32* %121, align 4
  %123 = load i32*, i32** %28, align 8
  %124 = load i32, i32* %123, align 4
  %125 = icmp sle i32 %122, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %120
  %127 = load i32, i32* %34, align 4
  %128 = icmp ne i32 %127, 0
  br label %129

129:                                              ; preds = %126, %120, %114
  %130 = phi i1 [ false, %120 ], [ false, %114 ], [ %128, %126 ]
  br i1 %130, label %47, label %131

131:                                              ; preds = %129
  %132 = load i32, i32* %34, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %131
  %135 = call i32 @DSSERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %136 = load i32, i32* @EINVAL, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %17, align 4
  br label %147

138:                                              ; preds = %131
  %139 = load i32, i32* %35, align 4
  %140 = load i32, i32* %38, align 4
  %141 = icmp sgt i32 %139, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %138
  %143 = call i32 @DSSERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %144 = load i32, i32* @EINVAL, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %17, align 4
  br label %147

146:                                              ; preds = %138
  store i32 0, i32* %17, align 4
  br label %147

147:                                              ; preds = %146, %142, %134
  %148 = load i32, i32* %17, align 4
  ret i32 %148
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @dss_feat_get_param_max(i32) #1

declare dso_local i64 @dispc_core_clk_rate(...) #1

declare dso_local i32 @swap(i32, i32) #1

declare dso_local i32 @DSSERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
