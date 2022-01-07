; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_wm8505fb.c_wm8505fb_set_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_wm8505fb.c_wm8505fb_set_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.wm8505fb_info = type { i64 }

@WMT_GOVR_TG = common dso_local global i64 0, align 8
@WMT_GOVR_TIMING_H_START = common dso_local global i64 0, align 8
@WMT_GOVR_TIMING_H_END = common dso_local global i64 0, align 8
@WMT_GOVR_TIMING_H_ALL = common dso_local global i64 0, align 8
@WMT_GOVR_TIMING_H_SYNC = common dso_local global i64 0, align 8
@WMT_GOVR_TIMING_V_START = common dso_local global i64 0, align 8
@WMT_GOVR_TIMING_V_END = common dso_local global i64 0, align 8
@WMT_GOVR_TIMING_V_ALL = common dso_local global i64 0, align 8
@WMT_GOVR_TIMING_V_SYNC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @wm8505fb_set_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8505fb_set_timing(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.wm8505fb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %12 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %13 = call %struct.wm8505fb_info* @to_wm8505fb_info(%struct.fb_info* %12)
  store %struct.wm8505fb_info* %13, %struct.wm8505fb_info** %3, align 8
  %14 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %15 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %20 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %18, %22
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %26 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %24, %28
  store i32 %29, i32* %6, align 4
  %30 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %31 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %7, align 4
  %34 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %35 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %40 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %38, %42
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %46 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %44, %48
  store i32 %49, i32* %10, align 4
  %50 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %51 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 7
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %11, align 4
  %54 = load %struct.wm8505fb_info*, %struct.wm8505fb_info** %3, align 8
  %55 = getelementptr inbounds %struct.wm8505fb_info, %struct.wm8505fb_info* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @WMT_GOVR_TG, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @writel(i32 0, i64 %58)
  %60 = load i32, i32* %4, align 4
  %61 = load %struct.wm8505fb_info*, %struct.wm8505fb_info** %3, align 8
  %62 = getelementptr inbounds %struct.wm8505fb_info, %struct.wm8505fb_info* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @WMT_GOVR_TIMING_H_START, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @writel(i32 %60, i64 %65)
  %67 = load i32, i32* %5, align 4
  %68 = load %struct.wm8505fb_info*, %struct.wm8505fb_info** %3, align 8
  %69 = getelementptr inbounds %struct.wm8505fb_info, %struct.wm8505fb_info* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @WMT_GOVR_TIMING_H_END, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @writel(i32 %67, i64 %72)
  %74 = load i32, i32* %6, align 4
  %75 = load %struct.wm8505fb_info*, %struct.wm8505fb_info** %3, align 8
  %76 = getelementptr inbounds %struct.wm8505fb_info, %struct.wm8505fb_info* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @WMT_GOVR_TIMING_H_ALL, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @writel(i32 %74, i64 %79)
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.wm8505fb_info*, %struct.wm8505fb_info** %3, align 8
  %83 = getelementptr inbounds %struct.wm8505fb_info, %struct.wm8505fb_info* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @WMT_GOVR_TIMING_H_SYNC, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @writel(i32 %81, i64 %86)
  %88 = load i32, i32* %8, align 4
  %89 = load %struct.wm8505fb_info*, %struct.wm8505fb_info** %3, align 8
  %90 = getelementptr inbounds %struct.wm8505fb_info, %struct.wm8505fb_info* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @WMT_GOVR_TIMING_V_START, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @writel(i32 %88, i64 %93)
  %95 = load i32, i32* %9, align 4
  %96 = load %struct.wm8505fb_info*, %struct.wm8505fb_info** %3, align 8
  %97 = getelementptr inbounds %struct.wm8505fb_info, %struct.wm8505fb_info* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @WMT_GOVR_TIMING_V_END, align 8
  %100 = add nsw i64 %98, %99
  %101 = call i32 @writel(i32 %95, i64 %100)
  %102 = load i32, i32* %10, align 4
  %103 = load %struct.wm8505fb_info*, %struct.wm8505fb_info** %3, align 8
  %104 = getelementptr inbounds %struct.wm8505fb_info, %struct.wm8505fb_info* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @WMT_GOVR_TIMING_V_ALL, align 8
  %107 = add nsw i64 %105, %106
  %108 = call i32 @writel(i32 %102, i64 %107)
  %109 = load i32, i32* %11, align 4
  %110 = load %struct.wm8505fb_info*, %struct.wm8505fb_info** %3, align 8
  %111 = getelementptr inbounds %struct.wm8505fb_info, %struct.wm8505fb_info* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @WMT_GOVR_TIMING_V_SYNC, align 8
  %114 = add nsw i64 %112, %113
  %115 = call i32 @writel(i32 %109, i64 %114)
  %116 = load %struct.wm8505fb_info*, %struct.wm8505fb_info** %3, align 8
  %117 = getelementptr inbounds %struct.wm8505fb_info, %struct.wm8505fb_info* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @WMT_GOVR_TG, align 8
  %120 = add nsw i64 %118, %119
  %121 = call i32 @writel(i32 1, i64 %120)
  ret i32 0
}

declare dso_local %struct.wm8505fb_info* @to_wm8505fb_info(%struct.fb_info*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
