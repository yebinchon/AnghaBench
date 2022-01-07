; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_svgalib.c_svga_match_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_svgalib.c_svga_match_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svga_fb_format = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32 }
%struct.fb_fix_screeninfo = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svga_match_format(%struct.svga_fb_format* %0, %struct.fb_var_screeninfo* %1, %struct.fb_fix_screeninfo* %2) #0 {
  %4 = alloca %struct.svga_fb_format*, align 8
  %5 = alloca %struct.fb_var_screeninfo*, align 8
  %6 = alloca %struct.fb_fix_screeninfo*, align 8
  %7 = alloca i32, align 4
  store %struct.svga_fb_format* %0, %struct.svga_fb_format** %4, align 8
  store %struct.fb_var_screeninfo* %1, %struct.fb_var_screeninfo** %5, align 8
  store %struct.fb_fix_screeninfo* %2, %struct.fb_fix_screeninfo** %6, align 8
  %8 = load %struct.svga_fb_format*, %struct.svga_fb_format** %4, align 8
  %9 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %10 = call i32 @match_format(%struct.svga_fb_format* %8, %struct.fb_var_screeninfo* %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %98

13:                                               ; preds = %3
  %14 = load %struct.svga_fb_format*, %struct.svga_fb_format** %4, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.svga_fb_format, %struct.svga_fb_format* %14, i64 %16
  %18 = getelementptr inbounds %struct.svga_fb_format, %struct.svga_fb_format* %17, i32 0, i32 9
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %21 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %20, i32 0, i32 5
  store i32 %19, i32* %21, align 4
  %22 = load %struct.svga_fb_format*, %struct.svga_fb_format** %4, align 8
  %23 = load i32, i32* %7, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.svga_fb_format, %struct.svga_fb_format* %22, i64 %24
  %26 = getelementptr inbounds %struct.svga_fb_format, %struct.svga_fb_format* %25, i32 0, i32 8
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %29 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 4
  %30 = load %struct.svga_fb_format*, %struct.svga_fb_format** %4, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.svga_fb_format, %struct.svga_fb_format* %30, i64 %32
  %34 = getelementptr inbounds %struct.svga_fb_format, %struct.svga_fb_format* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %37 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load %struct.svga_fb_format*, %struct.svga_fb_format** %4, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.svga_fb_format, %struct.svga_fb_format* %38, i64 %40
  %42 = getelementptr inbounds %struct.svga_fb_format, %struct.svga_fb_format* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %45 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load %struct.svga_fb_format*, %struct.svga_fb_format** %4, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.svga_fb_format, %struct.svga_fb_format* %46, i64 %48
  %50 = getelementptr inbounds %struct.svga_fb_format, %struct.svga_fb_format* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %53 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.svga_fb_format*, %struct.svga_fb_format** %4, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.svga_fb_format, %struct.svga_fb_format* %54, i64 %56
  %58 = getelementptr inbounds %struct.svga_fb_format, %struct.svga_fb_format* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %61 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %6, align 8
  %63 = icmp ne %struct.fb_fix_screeninfo* %62, null
  br i1 %63, label %64, label %97

64:                                               ; preds = %13
  %65 = load %struct.svga_fb_format*, %struct.svga_fb_format** %4, align 8
  %66 = load i32, i32* %7, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.svga_fb_format, %struct.svga_fb_format* %65, i64 %67
  %69 = getelementptr inbounds %struct.svga_fb_format, %struct.svga_fb_format* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %6, align 8
  %72 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 4
  %73 = load %struct.svga_fb_format*, %struct.svga_fb_format** %4, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.svga_fb_format, %struct.svga_fb_format* %73, i64 %75
  %77 = getelementptr inbounds %struct.svga_fb_format, %struct.svga_fb_format* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %6, align 8
  %80 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 4
  %81 = load %struct.svga_fb_format*, %struct.svga_fb_format** %4, align 8
  %82 = load i32, i32* %7, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.svga_fb_format, %struct.svga_fb_format* %81, i64 %83
  %85 = getelementptr inbounds %struct.svga_fb_format, %struct.svga_fb_format* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %6, align 8
  %88 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load %struct.svga_fb_format*, %struct.svga_fb_format** %4, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.svga_fb_format, %struct.svga_fb_format* %89, i64 %91
  %93 = getelementptr inbounds %struct.svga_fb_format, %struct.svga_fb_format* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.fb_fix_screeninfo*, %struct.fb_fix_screeninfo** %6, align 8
  %96 = getelementptr inbounds %struct.fb_fix_screeninfo, %struct.fb_fix_screeninfo* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 4
  br label %97

97:                                               ; preds = %64, %13
  br label %98

98:                                               ; preds = %97, %3
  %99 = load i32, i32* %7, align 4
  ret i32 %99
}

declare dso_local i32 @match_format(%struct.svga_fb_format*, %struct.fb_var_screeninfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
