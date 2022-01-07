; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_overlay.c_dss_ovl_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_overlay.c_dss_ovl_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_overlay = type { i32, i32 }
%struct.omap_overlay_info = type { i64, i64, i64, i64, i64, i64 }
%struct.omap_video_timings = type { i64, i64 }

@OMAP_DSS_OVL_CAP_SCALE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"overlay %d horizontally not inside the display area (%d + %d >= %d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [67 x i8] c"overlay %d vertically not inside the display area (%d + %d >= %d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dss_ovl_check(%struct.omap_overlay* %0, %struct.omap_overlay_info* %1, %struct.omap_video_timings* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.omap_overlay*, align 8
  %6 = alloca %struct.omap_overlay_info*, align 8
  %7 = alloca %struct.omap_video_timings*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.omap_overlay* %0, %struct.omap_overlay** %5, align 8
  store %struct.omap_overlay_info* %1, %struct.omap_overlay_info** %6, align 8
  store %struct.omap_video_timings* %2, %struct.omap_video_timings** %7, align 8
  %12 = load %struct.omap_video_timings*, %struct.omap_video_timings** %7, align 8
  %13 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %10, align 8
  %15 = load %struct.omap_video_timings*, %struct.omap_video_timings** %7, align 8
  %16 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %11, align 8
  %18 = load %struct.omap_overlay*, %struct.omap_overlay** %5, align 8
  %19 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @OMAP_DSS_OVL_CAP_SCALE, align 4
  %22 = and i32 %20, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %3
  %25 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %6, align 8
  %26 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %8, align 8
  %28 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %6, align 8
  %29 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %9, align 8
  br label %58

31:                                               ; preds = %3
  %32 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %6, align 8
  %33 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %6, align 8
  %38 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %8, align 8
  br label %44

40:                                               ; preds = %31
  %41 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %6, align 8
  %42 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* %8, align 8
  br label %44

44:                                               ; preds = %40, %36
  %45 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %6, align 8
  %46 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %6, align 8
  %51 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %9, align 8
  br label %57

53:                                               ; preds = %44
  %54 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %6, align 8
  %55 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %9, align 8
  br label %57

57:                                               ; preds = %53, %49
  br label %58

58:                                               ; preds = %57, %24
  %59 = load i64, i64* %10, align 8
  %60 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %6, align 8
  %61 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* %8, align 8
  %64 = add nsw i64 %62, %63
  %65 = icmp slt i64 %59, %64
  br i1 %65, label %66, label %78

66:                                               ; preds = %58
  %67 = load %struct.omap_overlay*, %struct.omap_overlay** %5, align 8
  %68 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %6, align 8
  %71 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %70, i32 0, i32 4
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %8, align 8
  %74 = load i64, i64* %10, align 8
  %75 = call i32 @DSSERR(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %69, i64 %72, i64 %73, i64 %74)
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  br label %99

78:                                               ; preds = %58
  %79 = load i64, i64* %11, align 8
  %80 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %6, align 8
  %81 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %80, i32 0, i32 5
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %9, align 8
  %84 = add nsw i64 %82, %83
  %85 = icmp slt i64 %79, %84
  br i1 %85, label %86, label %98

86:                                               ; preds = %78
  %87 = load %struct.omap_overlay*, %struct.omap_overlay** %5, align 8
  %88 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.omap_overlay_info*, %struct.omap_overlay_info** %6, align 8
  %91 = getelementptr inbounds %struct.omap_overlay_info, %struct.omap_overlay_info* %90, i32 0, i32 5
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %9, align 8
  %94 = load i64, i64* %11, align 8
  %95 = call i32 @DSSERR(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %89, i64 %92, i64 %93, i64 %94)
  %96 = load i32, i32* @EINVAL, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %4, align 4
  br label %99

98:                                               ; preds = %78
  store i32 0, i32* %4, align 4
  br label %99

99:                                               ; preds = %98, %86, %66
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i32 @DSSERR(i8*, i32, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
