; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pxa168fb.c_pxa168fb_init_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pxa168fb.c_pxa168fb_init_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_2__, %struct.fb_var_screeninfo, i32, %struct.pxa168fb_info* }
%struct.TYPE_2__ = type { i32 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pxa168fb_info = type { i32 }
%struct.pxa168fb_mach_info = type { i32 }
%struct.fb_videomode = type { i32 }

@DEFAULT_REFRESH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"pxa168fb: find best mode: res = %dx%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, %struct.pxa168fb_mach_info*)* @pxa168fb_init_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa168fb_init_mode(%struct.fb_info* %0, %struct.pxa168fb_mach_info* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.pxa168fb_mach_info*, align 8
  %5 = alloca %struct.pxa168fb_info*, align 8
  %6 = alloca %struct.fb_var_screeninfo*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.fb_videomode*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.pxa168fb_mach_info* %1, %struct.pxa168fb_mach_info** %4, align 8
  %13 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %14 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %13, i32 0, i32 3
  %15 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %14, align 8
  store %struct.pxa168fb_info* %15, %struct.pxa168fb_info** %5, align 8
  %16 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %17 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %16, i32 0, i32 1
  store %struct.fb_var_screeninfo* %17, %struct.fb_var_screeninfo** %6, align 8
  store i32 0, i32* %7, align 4
  %18 = load i32, i32* @DEFAULT_REFRESH, align 4
  store i32 %18, i32* %10, align 4
  %19 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %20 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %19, i32 0, i32 1
  %21 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %22 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %21, i32 0, i32 2
  %23 = call %struct.fb_videomode* @fb_find_best_mode(%struct.fb_var_screeninfo* %20, i32* %22)
  store %struct.fb_videomode* %23, %struct.fb_videomode** %12, align 8
  %24 = load %struct.fb_videomode*, %struct.fb_videomode** %12, align 8
  %25 = icmp ne %struct.fb_videomode* %24, null
  br i1 %25, label %26, label %31

26:                                               ; preds = %2
  %27 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %28 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %27, i32 0, i32 1
  %29 = load %struct.fb_videomode*, %struct.fb_videomode** %12, align 8
  %30 = call i32 @fb_videomode_to_var(%struct.fb_var_screeninfo* %28, %struct.fb_videomode* %29)
  br label %31

31:                                               ; preds = %26, %2
  %32 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %33 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %36 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %38 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %42 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %45 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = ashr i32 %46, 3
  %48 = mul nsw i32 %43, %47
  %49 = sdiv i32 %40, %48
  %50 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %51 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load %struct.pxa168fb_info*, %struct.pxa168fb_info** %5, align 8
  %53 = getelementptr inbounds %struct.pxa168fb_info, %struct.pxa168fb_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %56 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %59 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @dev_dbg(i32 %54, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %57, i32 %60)
  %62 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %63 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %66 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %64, %67
  %69 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %70 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %69, i32 0, i32 6
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %68, %71
  %73 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %74 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %73, i32 0, i32 7
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %72, %75
  store i32 %76, i32* %8, align 4
  %77 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %78 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %81 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %80, i32 0, i32 8
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %79, %82
  %84 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %85 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %84, i32 0, i32 9
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %83, %86
  %88 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %89 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %88, i32 0, i32 10
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %87, %90
  store i32 %91, i32* %9, align 4
  store i64 1000000000000, i64* %11, align 8
  %92 = load i64, i64* %11, align 8
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* %9, align 4
  %95 = mul nsw i32 %93, %94
  %96 = load i32, i32* %10, align 4
  %97 = mul nsw i32 %95, %96
  %98 = call i32 @do_div(i64 %92, i32 %97)
  %99 = load i64, i64* %11, align 8
  %100 = trunc i64 %99 to i32
  %101 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %6, align 8
  %102 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %101, i32 0, i32 11
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* %7, align 4
  ret i32 %103
}

declare dso_local %struct.fb_videomode* @fb_find_best_mode(%struct.fb_var_screeninfo*, i32*) #1

declare dso_local i32 @fb_videomode_to_var(%struct.fb_var_screeninfo*, %struct.fb_videomode*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @do_div(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
