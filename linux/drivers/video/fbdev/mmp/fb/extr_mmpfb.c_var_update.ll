; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/mmp/fb/extr_mmpfb.c_var_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/mmp/fb/extr_mmpfb.c_var_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_2__, i32, %struct.fb_var_screeninfo, %struct.mmpfb_info* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32 }
%struct.mmpfb_info = type { i32, i32, i32 }
%struct.fb_videomode = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"set par: no match mode, use best mode\0A\00", align 1
@PIXFMT_PSEUDOCOLOR = common dso_local global i32 0, align 4
@FB_VISUAL_PSEUDOCOLOR = common dso_local global i32 0, align 4
@FB_VISUAL_TRUECOLOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @var_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @var_update(%struct.fb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.mmpfb_info*, align 8
  %5 = alloca %struct.fb_var_screeninfo*, align 8
  %6 = alloca %struct.fb_videomode*, align 8
  %7 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  %8 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %9 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %8, i32 0, i32 3
  %10 = load %struct.mmpfb_info*, %struct.mmpfb_info** %9, align 8
  store %struct.mmpfb_info* %10, %struct.mmpfb_info** %4, align 8
  %11 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %12 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %11, i32 0, i32 2
  store %struct.fb_var_screeninfo* %12, %struct.fb_var_screeninfo** %5, align 8
  %13 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %14 = call i32 @var_to_pixfmt(%struct.fb_var_screeninfo* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %87

20:                                               ; preds = %1
  %21 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @pixfmt_to_var(%struct.fb_var_screeninfo* %21, i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.mmpfb_info*, %struct.mmpfb_info** %4, align 8
  %26 = getelementptr inbounds %struct.mmpfb_info, %struct.mmpfb_info* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %28 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %29 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %28, i32 0, i32 1
  %30 = call i64 @fb_match_mode(%struct.fb_var_screeninfo* %27, i32* %29)
  %31 = inttoptr i64 %30 to %struct.fb_videomode*
  store %struct.fb_videomode* %31, %struct.fb_videomode** %6, align 8
  %32 = load %struct.fb_videomode*, %struct.fb_videomode** %6, align 8
  %33 = icmp ne %struct.fb_videomode* %32, null
  br i1 %33, label %47, label %34

34:                                               ; preds = %20
  %35 = load %struct.mmpfb_info*, %struct.mmpfb_info** %4, align 8
  %36 = getelementptr inbounds %struct.mmpfb_info, %struct.mmpfb_info* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %40 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %41 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %40, i32 0, i32 1
  %42 = call i64 @fb_find_best_mode(%struct.fb_var_screeninfo* %39, i32* %41)
  %43 = inttoptr i64 %42 to %struct.fb_videomode*
  store %struct.fb_videomode* %43, %struct.fb_videomode** %6, align 8
  %44 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %45 = load %struct.fb_videomode*, %struct.fb_videomode** %6, align 8
  %46 = call i32 @fb_videomode_to_var(%struct.fb_var_screeninfo* %44, %struct.fb_videomode* %45)
  br label %47

47:                                               ; preds = %34, %20
  %48 = load %struct.mmpfb_info*, %struct.mmpfb_info** %4, align 8
  %49 = getelementptr inbounds %struct.mmpfb_info, %struct.mmpfb_info* %48, i32 0, i32 1
  %50 = load %struct.fb_videomode*, %struct.fb_videomode** %6, align 8
  %51 = call i32 @memcpy(i32* %49, %struct.fb_videomode* %50, i32 4)
  %52 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %53 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 %54, 2
  %56 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %57 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @PIXFMT_PSEUDOCOLOR, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %47
  %62 = load i32, i32* @FB_VISUAL_PSEUDOCOLOR, align 4
  br label %65

63:                                               ; preds = %47
  %64 = load i32, i32* @FB_VISUAL_TRUECOLOR, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = phi i32 [ %62, %61 ], [ %64, %63 ]
  %67 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %68 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  store i32 %66, i32* %69, align 8
  %70 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %71 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %74 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = mul nsw i32 %72, %75
  %77 = sdiv i32 %76, 8
  %78 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %79 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  store i32 %77, i32* %80, align 8
  %81 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %82 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %85 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  store i32 %83, i32* %86, align 4
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %65, %17
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @var_to_pixfmt(%struct.fb_var_screeninfo*) #1

declare dso_local i32 @pixfmt_to_var(%struct.fb_var_screeninfo*, i32) #1

declare dso_local i64 @fb_match_mode(%struct.fb_var_screeninfo*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @fb_find_best_mode(%struct.fb_var_screeninfo*, i32*) #1

declare dso_local i32 @fb_videomode_to_var(%struct.fb_var_screeninfo*, %struct.fb_videomode*) #1

declare dso_local i32 @memcpy(i32*, %struct.fb_videomode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
