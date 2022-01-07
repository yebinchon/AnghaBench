; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_display.c_omap_video_timings_to_videomode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_display.c_omap_video_timings_to_videomode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_video_timings = type { i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.videomode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@OMAPDSS_SIG_ACTIVE_HIGH = common dso_local global i64 0, align 8
@DISPLAY_FLAGS_HSYNC_HIGH = common dso_local global i32 0, align 4
@DISPLAY_FLAGS_HSYNC_LOW = common dso_local global i32 0, align 4
@DISPLAY_FLAGS_VSYNC_HIGH = common dso_local global i32 0, align 4
@DISPLAY_FLAGS_VSYNC_LOW = common dso_local global i32 0, align 4
@DISPLAY_FLAGS_DE_HIGH = common dso_local global i32 0, align 4
@DISPLAY_FLAGS_DE_LOW = common dso_local global i32 0, align 4
@OMAPDSS_DRIVE_SIG_RISING_EDGE = common dso_local global i64 0, align 8
@DISPLAY_FLAGS_PIXDATA_POSEDGE = common dso_local global i32 0, align 4
@DISPLAY_FLAGS_PIXDATA_NEGEDGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omap_video_timings_to_videomode(%struct.omap_video_timings* %0, %struct.videomode* %1) #0 {
  %3 = alloca %struct.omap_video_timings*, align 8
  %4 = alloca %struct.videomode*, align 8
  store %struct.omap_video_timings* %0, %struct.omap_video_timings** %3, align 8
  store %struct.videomode* %1, %struct.videomode** %4, align 8
  %5 = load %struct.videomode*, %struct.videomode** %4, align 8
  %6 = call i32 @memset(%struct.videomode* %5, i32 0, i32 40)
  %7 = load %struct.omap_video_timings*, %struct.omap_video_timings** %3, align 8
  %8 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %7, i32 0, i32 12
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.videomode*, %struct.videomode** %4, align 8
  %11 = getelementptr inbounds %struct.videomode, %struct.videomode* %10, i32 0, i32 9
  store i32 %9, i32* %11, align 4
  %12 = load %struct.omap_video_timings*, %struct.omap_video_timings** %3, align 8
  %13 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %12, i32 0, i32 11
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.videomode*, %struct.videomode** %4, align 8
  %16 = getelementptr inbounds %struct.videomode, %struct.videomode* %15, i32 0, i32 8
  store i32 %14, i32* %16, align 4
  %17 = load %struct.omap_video_timings*, %struct.omap_video_timings** %3, align 8
  %18 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %17, i32 0, i32 10
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.videomode*, %struct.videomode** %4, align 8
  %21 = getelementptr inbounds %struct.videomode, %struct.videomode* %20, i32 0, i32 7
  store i32 %19, i32* %21, align 4
  %22 = load %struct.omap_video_timings*, %struct.omap_video_timings** %3, align 8
  %23 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %22, i32 0, i32 9
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.videomode*, %struct.videomode** %4, align 8
  %26 = getelementptr inbounds %struct.videomode, %struct.videomode* %25, i32 0, i32 6
  store i32 %24, i32* %26, align 4
  %27 = load %struct.omap_video_timings*, %struct.omap_video_timings** %3, align 8
  %28 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %27, i32 0, i32 8
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.videomode*, %struct.videomode** %4, align 8
  %31 = getelementptr inbounds %struct.videomode, %struct.videomode* %30, i32 0, i32 5
  store i32 %29, i32* %31, align 4
  %32 = load %struct.omap_video_timings*, %struct.omap_video_timings** %3, align 8
  %33 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.videomode*, %struct.videomode** %4, align 8
  %36 = getelementptr inbounds %struct.videomode, %struct.videomode* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 4
  %37 = load %struct.omap_video_timings*, %struct.omap_video_timings** %3, align 8
  %38 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.videomode*, %struct.videomode** %4, align 8
  %41 = getelementptr inbounds %struct.videomode, %struct.videomode* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load %struct.omap_video_timings*, %struct.omap_video_timings** %3, align 8
  %43 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.videomode*, %struct.videomode** %4, align 8
  %46 = getelementptr inbounds %struct.videomode, %struct.videomode* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load %struct.omap_video_timings*, %struct.omap_video_timings** %3, align 8
  %48 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.videomode*, %struct.videomode** %4, align 8
  %51 = getelementptr inbounds %struct.videomode, %struct.videomode* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.omap_video_timings*, %struct.omap_video_timings** %3, align 8
  %53 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @OMAPDSS_SIG_ACTIVE_HIGH, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %2
  %58 = load i32, i32* @DISPLAY_FLAGS_HSYNC_HIGH, align 4
  %59 = load %struct.videomode*, %struct.videomode** %4, align 8
  %60 = getelementptr inbounds %struct.videomode, %struct.videomode* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %69

63:                                               ; preds = %2
  %64 = load i32, i32* @DISPLAY_FLAGS_HSYNC_LOW, align 4
  %65 = load %struct.videomode*, %struct.videomode** %4, align 8
  %66 = getelementptr inbounds %struct.videomode, %struct.videomode* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %63, %57
  %70 = load %struct.omap_video_timings*, %struct.omap_video_timings** %3, align 8
  %71 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @OMAPDSS_SIG_ACTIVE_HIGH, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %69
  %76 = load i32, i32* @DISPLAY_FLAGS_VSYNC_HIGH, align 4
  %77 = load %struct.videomode*, %struct.videomode** %4, align 8
  %78 = getelementptr inbounds %struct.videomode, %struct.videomode* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 4
  br label %87

81:                                               ; preds = %69
  %82 = load i32, i32* @DISPLAY_FLAGS_VSYNC_LOW, align 4
  %83 = load %struct.videomode*, %struct.videomode** %4, align 8
  %84 = getelementptr inbounds %struct.videomode, %struct.videomode* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 4
  br label %87

87:                                               ; preds = %81, %75
  %88 = load %struct.omap_video_timings*, %struct.omap_video_timings** %3, align 8
  %89 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @OMAPDSS_SIG_ACTIVE_HIGH, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %87
  %94 = load i32, i32* @DISPLAY_FLAGS_DE_HIGH, align 4
  %95 = load %struct.videomode*, %struct.videomode** %4, align 8
  %96 = getelementptr inbounds %struct.videomode, %struct.videomode* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 4
  br label %105

99:                                               ; preds = %87
  %100 = load i32, i32* @DISPLAY_FLAGS_DE_LOW, align 4
  %101 = load %struct.videomode*, %struct.videomode** %4, align 8
  %102 = getelementptr inbounds %struct.videomode, %struct.videomode* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %99, %93
  %106 = load %struct.omap_video_timings*, %struct.omap_video_timings** %3, align 8
  %107 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @OMAPDSS_DRIVE_SIG_RISING_EDGE, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %105
  %112 = load i32, i32* @DISPLAY_FLAGS_PIXDATA_POSEDGE, align 4
  %113 = load %struct.videomode*, %struct.videomode** %4, align 8
  %114 = getelementptr inbounds %struct.videomode, %struct.videomode* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 4
  br label %123

117:                                              ; preds = %105
  %118 = load i32, i32* @DISPLAY_FLAGS_PIXDATA_NEGEDGE, align 4
  %119 = load %struct.videomode*, %struct.videomode** %4, align 8
  %120 = getelementptr inbounds %struct.videomode, %struct.videomode* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = or i32 %121, %118
  store i32 %122, i32* %120, align 4
  br label %123

123:                                              ; preds = %117, %111
  ret void
}

declare dso_local i32 @memset(%struct.videomode*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
