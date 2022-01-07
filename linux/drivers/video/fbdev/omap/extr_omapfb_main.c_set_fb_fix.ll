; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_omapfb_main.c_set_fb_fix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_omapfb_main.c_set_fb_fix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32, i32, %struct.omapfb_plane_struct*, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo }
%struct.omapfb_plane_struct = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.omapfb_mem_region* }
%struct.omapfb_mem_region = type { i32, i32, i32 }
%struct.fb_var_screeninfo = type { i32, i32, i64 }
%struct.fb_fix_screeninfo = type { i32, i32, i8*, i32, i32, i32 }

@FB_TYPE_PACKED_PIXELS = common dso_local global i32 0, align 4
@FB_VISUAL_PSEUDOCOLOR = common dso_local global i8* null, align 8
@FB_VISUAL_TRUECOLOR = common dso_local global i8* null, align 8
@FB_ACCEL_OMAP1610 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, i32)* @set_fb_fix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_fb_fix(%struct.fb_info* %0, i32 %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fb_fix_screeninfo*, align 8
  %6 = alloca %struct.fb_var_screeninfo*, align 8
  %7 = alloca %struct.omapfb_plane_struct*, align 8
  %8 = alloca %struct.omapfb_mem_region*, align 8
  %9 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %11 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %10, i32 0, i32 4
  store %struct.fb_fix_screeninfo* %11, %struct.fb_fix_screeninfo** %5, align 8
  %12 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %13 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %12, i32 0, i32 3
  store %struct.fb_var_screeninfo* %13, %struct.fb_var_screeninfo** %6, align 8
  %14 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %15 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %14, i32 0, i32 2
  %16 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %15, align 8
  store %struct.omapfb_plane_struct* %16, %struct.omapfb_plane_struct** %7, align 8
  %17 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %7, align 8
  %18 = getelementptr inbounds %struct.omapfb_plane_struct, %struct.omapfb_plane_struct* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.omapfb_mem_region*, %struct.omapfb_mem_region** %21, align 8
  %23 = load %struct.omapfb_plane_struct*, %struct.omapfb_plane_struct** %7, align 8
  %24 = getelementptr inbounds %struct.omapfb_plane_struct, %struct.omapfb_plane_struct* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.omapfb_mem_region, %struct.omapfb_mem_region* %22, i64 %25
  store %struct.omapfb_mem_region* %26, %struct.omapfb_mem_region** %8, align 8
  %27 = load %struct.omapfb_mem_region*, %struct.omapfb_mem_region** %8, align 8
  %28 = getelementptr inbounds %struct.omapfb_mem_region, %struct.omapfb_mem_region* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %31 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %51, label %34

34:                                               ; preds = %2
  %35 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %36 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %35, i32 0, i32 0
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load %struct.omapfb_mem_region*, %struct.omapfb_mem_region** %8, align 8
  %39 = getelementptr inbounds %struct.omapfb_mem_region, %struct.omapfb_mem_region* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %5, align 8
  %42 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %41, i32 0, i32 5
  store i32 %40, i32* %42, align 8
  %43 = load %struct.omapfb_mem_region*, %struct.omapfb_mem_region** %8, align 8
  %44 = getelementptr inbounds %struct.omapfb_mem_region, %struct.omapfb_mem_region* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %5, align 8
  %47 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 4
  %48 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %49 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %48, i32 0, i32 0
  %50 = call i32 @mutex_unlock(i32* %49)
  br label %62

51:                                               ; preds = %2
  %52 = load %struct.omapfb_mem_region*, %struct.omapfb_mem_region** %8, align 8
  %53 = getelementptr inbounds %struct.omapfb_mem_region, %struct.omapfb_mem_region* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %5, align 8
  %56 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %55, i32 0, i32 5
  store i32 %54, i32* %56, align 8
  %57 = load %struct.omapfb_mem_region*, %struct.omapfb_mem_region** %8, align 8
  %58 = getelementptr inbounds %struct.omapfb_mem_region, %struct.omapfb_mem_region* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %5, align 8
  %61 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %51, %34
  %63 = load i32, i32* @FB_TYPE_PACKED_PIXELS, align 4
  %64 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %5, align 8
  %65 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 8
  %66 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %67 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %9, align 4
  %69 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %70 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %62
  %74 = load i8*, i8** @FB_VISUAL_PSEUDOCOLOR, align 8
  %75 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %5, align 8
  %76 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %75, i32 0, i32 2
  store i8* %74, i8** %76, align 8
  br label %90

77:                                               ; preds = %62
  %78 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %79 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  switch i32 %80, label %89 [
    i32 16, label %81
    i32 12, label %81
    i32 1, label %85
    i32 2, label %85
    i32 4, label %85
    i32 8, label %85
  ]

81:                                               ; preds = %77, %77
  %82 = load i8*, i8** @FB_VISUAL_TRUECOLOR, align 8
  %83 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %5, align 8
  %84 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %83, i32 0, i32 2
  store i8* %82, i8** %84, align 8
  store i32 16, i32* %9, align 4
  br label %89

85:                                               ; preds = %77, %77, %77, %77
  %86 = load i8*, i8** @FB_VISUAL_PSEUDOCOLOR, align 8
  %87 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %5, align 8
  %88 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %87, i32 0, i32 2
  store i8* %86, i8** %88, align 8
  br label %89

89:                                               ; preds = %77, %85, %81
  br label %90

90:                                               ; preds = %89, %73
  %91 = load i32, i32* @FB_ACCEL_OMAP1610, align 4
  %92 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %5, align 8
  %93 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  %94 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %95 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %9, align 4
  %98 = mul nsw i32 %96, %97
  %99 = sdiv i32 %98, 8
  %100 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %5, align 8
  %101 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
