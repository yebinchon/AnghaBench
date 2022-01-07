; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_mgr_timings_ok.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_dispc.c_dispc_mgr_timings_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_video_timings = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dispc_mgr_timings_ok(i32 %0, %struct.omap_video_timings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.omap_video_timings*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.omap_video_timings* %1, %struct.omap_video_timings** %5, align 8
  %6 = load %struct.omap_video_timings*, %struct.omap_video_timings** %5, align 8
  %7 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %6, i32 0, i32 9
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.omap_video_timings*, %struct.omap_video_timings** %5, align 8
  %10 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %9, i32 0, i32 8
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @_dispc_mgr_size_ok(i32 %8, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %57

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.omap_video_timings*, %struct.omap_video_timings** %5, align 8
  %18 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @_dispc_mgr_pclk_ok(i32 %16, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %57

23:                                               ; preds = %15
  %24 = load i32, i32* %4, align 4
  %25 = call i64 @dss_mgr_is_lcd(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %56

27:                                               ; preds = %23
  %28 = load %struct.omap_video_timings*, %struct.omap_video_timings** %5, align 8
  %29 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %28, i32 0, i32 6
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %57

33:                                               ; preds = %27
  %34 = load %struct.omap_video_timings*, %struct.omap_video_timings** %5, align 8
  %35 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.omap_video_timings*, %struct.omap_video_timings** %5, align 8
  %38 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.omap_video_timings*, %struct.omap_video_timings** %5, align 8
  %41 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.omap_video_timings*, %struct.omap_video_timings** %5, align 8
  %44 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.omap_video_timings*, %struct.omap_video_timings** %5, align 8
  %47 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.omap_video_timings*, %struct.omap_video_timings** %5, align 8
  %50 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @_dispc_lcd_timings_ok(i32 %36, i32 %39, i32 %42, i32 %45, i32 %48, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %33
  store i32 0, i32* %3, align 4
  br label %57

55:                                               ; preds = %33
  br label %56

56:                                               ; preds = %55, %23
  store i32 1, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %54, %32, %22, %14
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @_dispc_mgr_size_ok(i32, i32) #1

declare dso_local i32 @_dispc_mgr_pclk_ok(i32, i32) #1

declare dso_local i64 @dss_mgr_is_lcd(i32) #1

declare dso_local i32 @_dispc_lcd_timings_ok(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
