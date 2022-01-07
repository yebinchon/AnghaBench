; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_ovl_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_ovl_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_overlay_info = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.omap_video_timings = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"adjusting for ilace: height %d, out_height %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dispc_ovl_check(i32 %0, i32 %1, %struct.omap_overlay_info* %2, %struct.omap_video_timings* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.omap_overlay_info*, align 8
  %11 = alloca %struct.omap_video_timings*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store %struct.omap_overlay_info* %2, %struct.omap_overlay_info** %10, align 8
  store %struct.omap_video_timings* %3, %struct.omap_video_timings** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @dss_feat_get_overlay_caps(i32 %25)
  store i32 %26, i32* %14, align 4
  store i32 1, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %27 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %10, align 8
  %28 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %17, align 4
  %30 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %10, align 8
  %31 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %18, align 4
  %33 = load %struct.omap_video_timings*, %struct.omap_video_timings** %11, align 8
  %34 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %19, align 4
  %36 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %10, align 8
  %37 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %22, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i64 @dispc_mgr_pclk_rate(i32 %39)
  store i64 %40, i64* %23, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i64 @dispc_mgr_lclk_rate(i32 %41)
  store i64 %42, i64* %24, align 8
  %43 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %10, align 8
  %44 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %6
  %48 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %10, align 8
  %49 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  br label %56

52:                                               ; preds = %6
  %53 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %10, align 8
  %54 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  br label %56

56:                                               ; preds = %52, %47
  %57 = phi i64 [ %51, %47 ], [ %55, %52 ]
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %20, align 4
  %59 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %10, align 8
  %60 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %56
  %64 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %10, align 8
  %65 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sext i32 %66 to i64
  br label %72

68:                                               ; preds = %56
  %69 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %10, align 8
  %70 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  br label %72

72:                                               ; preds = %68, %63
  %73 = phi i64 [ %67, %63 ], [ %71, %68 ]
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %21, align 4
  %75 = load i32, i32* %19, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %72
  %78 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %10, align 8
  %79 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %21, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  store i32 1, i32* %16, align 4
  br label %84

84:                                               ; preds = %83, %77, %72
  %85 = load i32, i32* %19, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %99

87:                                               ; preds = %84
  %88 = load i32, i32* %16, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87
  %91 = load i32, i32* %17, align 4
  %92 = sdiv i32 %91, 2
  store i32 %92, i32* %17, align 4
  br label %93

93:                                               ; preds = %90, %87
  %94 = load i32, i32* %21, align 4
  %95 = sdiv i32 %94, 2
  store i32 %95, i32* %21, align 4
  %96 = load i32, i32* %17, align 4
  %97 = load i32, i32* %21, align 4
  %98 = call i32 @DSSDBG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %93, %84
  %100 = load i32, i32* %8, align 4
  %101 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %10, align 8
  %102 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %101, i32 0, i32 6
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @dss_feat_color_mode_supported(i32 %100, i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %99
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %7, align 4
  br label %128

109:                                              ; preds = %99
  %110 = load i64, i64* %23, align 8
  %111 = load i64, i64* %24, align 8
  %112 = load i32, i32* %14, align 4
  %113 = load %struct.omap_video_timings*, %struct.omap_video_timings** %11, align 8
  %114 = load i32, i32* %18, align 4
  %115 = load i32, i32* %17, align 4
  %116 = load i32, i32* %20, align 4
  %117 = load i32, i32* %21, align 4
  %118 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %10, align 8
  %119 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %118, i32 0, i32 6
  %120 = load i32, i32* %119, align 4
  %121 = load i32*, i32** %12, align 8
  %122 = load i32*, i32** %13, align 8
  %123 = load i32, i32* %22, align 4
  %124 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %10, align 8
  %125 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %124, i32 0, i32 5
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @dispc_ovl_calc_scaling(i64 %110, i64 %111, i32 %112, %struct.omap_video_timings* %113, i32 %114, i32 %115, i32 %116, i32 %117, i32 %120, i32* %15, i32* %121, i32* %122, i32 %123, i32 %126, i32 0)
  store i32 %127, i32* %7, align 4
  br label %128

128:                                              ; preds = %109, %106
  %129 = load i32, i32* %7, align 4
  ret i32 %129
}

declare dso_local i32 @dss_feat_get_overlay_caps(i32) #1

declare dso_local i64 @dispc_mgr_pclk_rate(i32) #1

declare dso_local i64 @dispc_mgr_lclk_rate(i32) #1

declare dso_local i32 @DSSDBG(i8*, i32, i32) #1

declare dso_local i32 @dss_feat_color_mode_supported(i32, i32) #1

declare dso_local i32 @dispc_ovl_calc_scaling(i64, i64, i32, %struct.omap_video_timings*, i32, i32, i32, i32, i32, i32*, i32*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
