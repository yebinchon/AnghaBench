; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_display.c_videomode_to_omap_video_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_display.c_videomode_to_omap_video_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videomode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.omap_video_timings = type { i32, i32, i8*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@DISPLAY_FLAGS_VSYNC_HIGH = common dso_local global i32 0, align 4
@OMAPDSS_SIG_ACTIVE_HIGH = common dso_local global i8* null, align 8
@OMAPDSS_SIG_ACTIVE_LOW = common dso_local global i8* null, align 8
@DISPLAY_FLAGS_HSYNC_HIGH = common dso_local global i32 0, align 4
@DISPLAY_FLAGS_DE_HIGH = common dso_local global i32 0, align 4
@DISPLAY_FLAGS_PIXDATA_POSEDGE = common dso_local global i32 0, align 4
@OMAPDSS_DRIVE_SIG_RISING_EDGE = common dso_local global i32 0, align 4
@OMAPDSS_DRIVE_SIG_FALLING_EDGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @videomode_to_omap_video_timings(%struct.videomode* %0, %struct.omap_video_timings* %1) #0 {
  %3 = alloca %struct.videomode*, align 8
  %4 = alloca %struct.omap_video_timings*, align 8
  store %struct.videomode* %0, %struct.videomode** %3, align 8
  store %struct.omap_video_timings* %1, %struct.omap_video_timings** %4, align 8
  %5 = load %struct.omap_video_timings*, %struct.omap_video_timings** %4, align 8
  %6 = call i32 @memset(%struct.omap_video_timings* %5, i32 0, i32 72)
  %7 = load %struct.videomode*, %struct.videomode** %3, align 8
  %8 = getelementptr inbounds %struct.videomode, %struct.videomode* %7, i32 0, i32 9
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.omap_video_timings*, %struct.omap_video_timings** %4, align 8
  %11 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %10, i32 0, i32 13
  store i32 %9, i32* %11, align 8
  %12 = load %struct.videomode*, %struct.videomode** %3, align 8
  %13 = getelementptr inbounds %struct.videomode, %struct.videomode* %12, i32 0, i32 8
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.omap_video_timings*, %struct.omap_video_timings** %4, align 8
  %16 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %15, i32 0, i32 12
  store i32 %14, i32* %16, align 4
  %17 = load %struct.videomode*, %struct.videomode** %3, align 8
  %18 = getelementptr inbounds %struct.videomode, %struct.videomode* %17, i32 0, i32 7
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.omap_video_timings*, %struct.omap_video_timings** %4, align 8
  %21 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %20, i32 0, i32 11
  store i32 %19, i32* %21, align 8
  %22 = load %struct.videomode*, %struct.videomode** %3, align 8
  %23 = getelementptr inbounds %struct.videomode, %struct.videomode* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.omap_video_timings*, %struct.omap_video_timings** %4, align 8
  %26 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %25, i32 0, i32 10
  store i32 %24, i32* %26, align 4
  %27 = load %struct.videomode*, %struct.videomode** %3, align 8
  %28 = getelementptr inbounds %struct.videomode, %struct.videomode* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.omap_video_timings*, %struct.omap_video_timings** %4, align 8
  %31 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %30, i32 0, i32 9
  store i32 %29, i32* %31, align 8
  %32 = load %struct.videomode*, %struct.videomode** %3, align 8
  %33 = getelementptr inbounds %struct.videomode, %struct.videomode* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.omap_video_timings*, %struct.omap_video_timings** %4, align 8
  %36 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %35, i32 0, i32 8
  store i32 %34, i32* %36, align 4
  %37 = load %struct.videomode*, %struct.videomode** %3, align 8
  %38 = getelementptr inbounds %struct.videomode, %struct.videomode* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.omap_video_timings*, %struct.omap_video_timings** %4, align 8
  %41 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %40, i32 0, i32 7
  store i32 %39, i32* %41, align 8
  %42 = load %struct.videomode*, %struct.videomode** %3, align 8
  %43 = getelementptr inbounds %struct.videomode, %struct.videomode* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.omap_video_timings*, %struct.omap_video_timings** %4, align 8
  %46 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %45, i32 0, i32 6
  store i32 %44, i32* %46, align 4
  %47 = load %struct.videomode*, %struct.videomode** %3, align 8
  %48 = getelementptr inbounds %struct.videomode, %struct.videomode* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.omap_video_timings*, %struct.omap_video_timings** %4, align 8
  %51 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 8
  %52 = load %struct.videomode*, %struct.videomode** %3, align 8
  %53 = getelementptr inbounds %struct.videomode, %struct.videomode* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @DISPLAY_FLAGS_VSYNC_HIGH, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %2
  %59 = load i8*, i8** @OMAPDSS_SIG_ACTIVE_HIGH, align 8
  br label %62

60:                                               ; preds = %2
  %61 = load i8*, i8** @OMAPDSS_SIG_ACTIVE_LOW, align 8
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i8* [ %59, %58 ], [ %61, %60 ]
  %64 = load %struct.omap_video_timings*, %struct.omap_video_timings** %4, align 8
  %65 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %64, i32 0, i32 4
  store i8* %63, i8** %65, align 8
  %66 = load %struct.videomode*, %struct.videomode** %3, align 8
  %67 = getelementptr inbounds %struct.videomode, %struct.videomode* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @DISPLAY_FLAGS_HSYNC_HIGH, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %62
  %73 = load i8*, i8** @OMAPDSS_SIG_ACTIVE_HIGH, align 8
  br label %76

74:                                               ; preds = %62
  %75 = load i8*, i8** @OMAPDSS_SIG_ACTIVE_LOW, align 8
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi i8* [ %73, %72 ], [ %75, %74 ]
  %78 = load %struct.omap_video_timings*, %struct.omap_video_timings** %4, align 8
  %79 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %78, i32 0, i32 3
  store i8* %77, i8** %79, align 8
  %80 = load %struct.videomode*, %struct.videomode** %3, align 8
  %81 = getelementptr inbounds %struct.videomode, %struct.videomode* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @DISPLAY_FLAGS_DE_HIGH, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %76
  %87 = load i8*, i8** @OMAPDSS_SIG_ACTIVE_HIGH, align 8
  br label %90

88:                                               ; preds = %76
  %89 = load i8*, i8** @OMAPDSS_SIG_ACTIVE_LOW, align 8
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi i8* [ %87, %86 ], [ %89, %88 ]
  %92 = load %struct.omap_video_timings*, %struct.omap_video_timings** %4, align 8
  %93 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %92, i32 0, i32 2
  store i8* %91, i8** %93, align 8
  %94 = load %struct.videomode*, %struct.videomode** %3, align 8
  %95 = getelementptr inbounds %struct.videomode, %struct.videomode* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @DISPLAY_FLAGS_PIXDATA_POSEDGE, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %90
  %101 = load i32, i32* @OMAPDSS_DRIVE_SIG_RISING_EDGE, align 4
  br label %104

102:                                              ; preds = %90
  %103 = load i32, i32* @OMAPDSS_DRIVE_SIG_FALLING_EDGE, align 4
  br label %104

104:                                              ; preds = %102, %100
  %105 = phi i32 [ %101, %100 ], [ %103, %102 ]
  %106 = load %struct.omap_video_timings*, %struct.omap_video_timings** %4, align 8
  %107 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  %108 = load %struct.omap_video_timings*, %struct.omap_video_timings** %4, align 8
  %109 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.omap_video_timings*, %struct.omap_video_timings** %4, align 8
  %112 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  ret void
}

declare dso_local i32 @memset(%struct.omap_video_timings*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
