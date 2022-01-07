; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_mach64_accel.c_atyfb_fillrect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/aty/extr_mach64_accel.c_atyfb_fillrect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_5__, i64, %struct.TYPE_4__, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.fb_fillrect = type { i32, i32, i64, i32, i32 }
%struct.atyfb_par = type { %struct.TYPE_6__, i32, i64 }
%struct.TYPE_6__ = type { i32 }

@FB_VISUAL_TRUECOLOR = common dso_local global i64 0, align 8
@FB_VISUAL_DIRECTCOLOR = common dso_local global i64 0, align 8
@DST_X_LEFT_TO_RIGHT = common dso_local global i32 0, align 4
@DP_PIX_WIDTH = common dso_local global i32 0, align 4
@DP_FRGD_CLR = common dso_local global i32 0, align 4
@DP_SRC = common dso_local global i32 0, align 4
@BKGD_SRC_BKGD_CLR = common dso_local global i32 0, align 4
@FRGD_SRC_FRGD_CLR = common dso_local global i32 0, align 4
@MONO_SRC_ONE = common dso_local global i32 0, align 4
@DST_CNTL = common dso_local global i32 0, align 4
@DST_LAST_PEL = common dso_local global i32 0, align 4
@DST_Y_TOP_TO_BOTTOM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @atyfb_fillrect(%struct.fb_info* %0, %struct.fb_fillrect* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_fillrect*, align 8
  %5 = alloca %struct.atyfb_par*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_fillrect* %1, %struct.fb_fillrect** %4, align 8
  %10 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %11 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.atyfb_par*
  store %struct.atyfb_par* %13, %struct.atyfb_par** %5, align 8
  %14 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %15 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  %17 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %18 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %20 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %21 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %130

25:                                               ; preds = %2
  %26 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %27 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %32 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30, %25
  br label %130

36:                                               ; preds = %30
  %37 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %38 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %36
  %42 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %43 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %44 = call i32 @cfb_fillrect(%struct.fb_info* %42, %struct.fb_fillrect* %43)
  br label %130

45:                                               ; preds = %36
  %46 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %47 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @FB_VISUAL_TRUECOLOR, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %59, label %52

52:                                               ; preds = %45
  %53 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %54 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @FB_VISUAL_DIRECTCOLOR, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %52, %45
  %60 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %61 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to i32*
  %64 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %65 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds i32, i32* %63, i64 %66
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %6, align 4
  br label %74

69:                                               ; preds = %52
  %70 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %71 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %69, %59
  %75 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %76 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp eq i32 %78, 24
  br i1 %79, label %80, label %88

80:                                               ; preds = %74
  %81 = load i32, i32* %7, align 4
  %82 = mul nsw i32 %81, 3
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %8, align 4
  %84 = mul nsw i32 %83, 3
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* @DST_X_LEFT_TO_RIGHT, align 4
  %87 = call i32 @rotation24bpp(i32 %85, i32 %86)
  store i32 %87, i32* %9, align 4
  br label %88

88:                                               ; preds = %80, %74
  %89 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %90 = call i32 @wait_for_fifo(i32 4, %struct.atyfb_par* %89)
  %91 = load i32, i32* @DP_PIX_WIDTH, align 4
  %92 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %93 = getelementptr inbounds %struct.atyfb_par, %struct.atyfb_par* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %97 = call i32 @aty_st_le32(i32 %91, i32 %95, %struct.atyfb_par* %96)
  %98 = load i32, i32* @DP_FRGD_CLR, align 4
  %99 = load i32, i32* %6, align 4
  %100 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %101 = call i32 @aty_st_le32(i32 %98, i32 %99, %struct.atyfb_par* %100)
  %102 = load i32, i32* @DP_SRC, align 4
  %103 = load i32, i32* @BKGD_SRC_BKGD_CLR, align 4
  %104 = load i32, i32* @FRGD_SRC_FRGD_CLR, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @MONO_SRC_ONE, align 4
  %107 = or i32 %105, %106
  %108 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %109 = call i32 @aty_st_le32(i32 %102, i32 %107, %struct.atyfb_par* %108)
  %110 = load i32, i32* @DST_CNTL, align 4
  %111 = load i32, i32* @DST_LAST_PEL, align 4
  %112 = load i32, i32* @DST_Y_TOP_TO_BOTTOM, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @DST_X_LEFT_TO_RIGHT, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* %9, align 4
  %117 = or i32 %115, %116
  %118 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %119 = call i32 @aty_st_le32(i32 %110, i32 %117, %struct.atyfb_par* %118)
  %120 = load i32, i32* %7, align 4
  %121 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %122 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %8, align 4
  %125 = load %struct.fb_fillrect*, %struct.fb_fillrect** %4, align 8
  %126 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.atyfb_par*, %struct.atyfb_par** %5, align 8
  %129 = call i32 @draw_rect(i32 %120, i32 %123, i32 %124, i32 %127, %struct.atyfb_par* %128)
  br label %130

130:                                              ; preds = %88, %41, %35, %24
  ret void
}

declare dso_local i32 @cfb_fillrect(%struct.fb_info*, %struct.fb_fillrect*) #1

declare dso_local i32 @rotation24bpp(i32, i32) #1

declare dso_local i32 @wait_for_fifo(i32, %struct.atyfb_par*) #1

declare dso_local i32 @aty_st_le32(i32, i32, %struct.atyfb_par*) #1

declare dso_local i32 @draw_rect(i32, i32, i32, i32, %struct.atyfb_par*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
