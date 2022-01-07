; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_hw.c_var_to_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_hw.c_var_to_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.via_display_timing = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @var_to_timing(%struct.via_display_timing* noalias sret %0, %struct.fb_var_screeninfo* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.fb_var_screeninfo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.fb_var_screeninfo* %1, %struct.fb_var_screeninfo** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 %3, i32* %7, align 4
  %10 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %11 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %6, align 4
  %14 = sub nsw i32 %12, %13
  %15 = sdiv i32 %14, 2
  store i32 %15, i32* %8, align 4
  %16 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %17 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %7, align 4
  %20 = sub nsw i32 %18, %19
  %21 = sdiv i32 %20, 2
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %6, align 4
  %23 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %0, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %0, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %27 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %25, %28
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 %29, %30
  %32 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %0, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %0, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %36 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %34, %37
  %39 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %0, i32 0, i32 2
  store i32 %38, i32* %39, align 4
  %40 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %0, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %43 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %41, %44
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %45, %46
  %48 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %0, i32 0, i32 3
  store i32 %47, i32* %48, align 4
  %49 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %0, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %8, align 4
  %52 = add nsw i32 %50, %51
  %53 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %0, i32 0, i32 4
  store i32 %52, i32* %53, align 4
  %54 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %0, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %8, align 4
  %57 = sub nsw i32 %55, %56
  %58 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %0, i32 0, i32 5
  store i32 %57, i32* %58, align 4
  %59 = load i32, i32* %7, align 4
  %60 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %0, i32 0, i32 6
  store i32 %59, i32* %60, align 4
  %61 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %0, i32 0, i32 6
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %64 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %62, %65
  %67 = load i32, i32* %9, align 4
  %68 = add nsw i32 %66, %67
  %69 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %0, i32 0, i32 7
  store i32 %68, i32* %69, align 4
  %70 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %0, i32 0, i32 7
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %73 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %71, %74
  %76 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %0, i32 0, i32 8
  store i32 %75, i32* %76, align 4
  %77 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %0, i32 0, i32 8
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %5, align 8
  %80 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %78, %81
  %83 = load i32, i32* %9, align 4
  %84 = add nsw i32 %82, %83
  %85 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %0, i32 0, i32 9
  store i32 %84, i32* %85, align 4
  %86 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %0, i32 0, i32 6
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %9, align 4
  %89 = add nsw i32 %87, %88
  %90 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %0, i32 0, i32 10
  store i32 %89, i32* %90, align 4
  %91 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %0, i32 0, i32 9
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %9, align 4
  %94 = sub nsw i32 %92, %93
  %95 = getelementptr inbounds %struct.via_display_timing, %struct.via_display_timing* %0, i32 0, i32 11
  store i32 %94, i32* %95, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
