; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/i810/extr_i810_main.c_encode_fix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/i810/extr_i810_main.c_encode_fix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_fix_screeninfo = type { i32, i32, i32, i32, i32, i32, i64, i32, i64, i32, i32, i32, i32 }
%struct.fb_info = type { %struct.TYPE_4__, i32, %struct.i810fb_par* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.i810fb_par = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"I810\00", align 1
@FB_TYPE_PACKED_PIXELS = common dso_local global i32 0, align 4
@FB_VISUAL_PSEUDOCOLOR = common dso_local global i32 0, align 4
@FB_VISUAL_DIRECTCOLOR = common dso_local global i32 0, align 4
@FB_VISUAL_TRUECOLOR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MMIO_SIZE = common dso_local global i32 0, align 4
@FB_ACCEL_I810 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_fix_screeninfo*, %struct.fb_info*)* @encode_fix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @encode_fix(%struct.fb_fix_screeninfo* %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_fix_screeninfo*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.i810fb_par*, align 8
  store %struct.fb_fix_screeninfo* %0, %struct.fb_fix_screeninfo** %4, align 8
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %8 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %7, i32 0, i32 2
  %9 = load %struct.i810fb_par*, %struct.i810fb_par** %8, align 8
  store %struct.i810fb_par* %9, %struct.i810fb_par** %6, align 8
  %10 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %4, align 8
  %11 = call i32 @memset(%struct.fb_fix_screeninfo* %10, i32 0, i32 64)
  %12 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %4, align 8
  %13 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %12, i32 0, i32 12
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @strcpy(i32 %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %17 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %16, i32 0, i32 1
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.i810fb_par*, %struct.i810fb_par** %6, align 8
  %20 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %4, align 8
  %24 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %23, i32 0, i32 11
  store i32 %22, i32* %24, align 8
  %25 = load %struct.i810fb_par*, %struct.i810fb_par** %6, align 8
  %26 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %4, align 8
  %30 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %29, i32 0, i32 10
  store i32 %28, i32* %30, align 4
  %31 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %32 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %31, i32 0, i32 1
  %33 = call i32 @mutex_unlock(i32* %32)
  %34 = load i32, i32* @FB_TYPE_PACKED_PIXELS, align 4
  %35 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %4, align 8
  %36 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %35, i32 0, i32 9
  store i32 %34, i32* %36, align 8
  %37 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %4, align 8
  %38 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %37, i32 0, i32 8
  store i64 0, i64* %38, align 8
  %39 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %4, align 8
  %40 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %39, i32 0, i32 0
  store i32 8, i32* %40, align 8
  %41 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %4, align 8
  %42 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %41, i32 0, i32 1
  store i32 1, i32* %42, align 4
  %43 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %44 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  switch i32 %46, label %66 [
    i32 8, label %47
    i32 16, label %51
    i32 24, label %51
    i32 32, label %51
  ]

47:                                               ; preds = %2
  %48 = load i32, i32* @FB_VISUAL_PSEUDOCOLOR, align 4
  %49 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %4, align 8
  %50 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %49, i32 0, i32 7
  store i32 %48, i32* %50, align 8
  br label %69

51:                                               ; preds = %2, %2, %2
  %52 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %53 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load i32, i32* @FB_VISUAL_DIRECTCOLOR, align 4
  %59 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %4, align 8
  %60 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %59, i32 0, i32 7
  store i32 %58, i32* %60, align 8
  br label %65

61:                                               ; preds = %51
  %62 = load i32, i32* @FB_VISUAL_TRUECOLOR, align 4
  %63 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %4, align 8
  %64 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %63, i32 0, i32 7
  store i32 %62, i32* %64, align 8
  br label %65

65:                                               ; preds = %61, %57
  br label %69

66:                                               ; preds = %2
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %88

69:                                               ; preds = %65, %47
  %70 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %4, align 8
  %71 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %70, i32 0, i32 6
  store i64 0, i64* %71, align 8
  %72 = load %struct.i810fb_par*, %struct.i810fb_par** %6, align 8
  %73 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %4, align 8
  %76 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %75, i32 0, i32 5
  store i32 %74, i32* %76, align 4
  %77 = load %struct.i810fb_par*, %struct.i810fb_par** %6, align 8
  %78 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %4, align 8
  %81 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 8
  %82 = load i32, i32* @MMIO_SIZE, align 4
  %83 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %4, align 8
  %84 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* @FB_ACCEL_I810, align 4
  %86 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %4, align 8
  %87 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 8
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %69, %66
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @memset(%struct.fb_fix_screeninfo*, i32, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
