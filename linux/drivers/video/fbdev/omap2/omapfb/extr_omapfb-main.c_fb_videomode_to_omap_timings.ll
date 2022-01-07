; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-main.c_fb_videomode_to_omap_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-main.c_fb_videomode_to_omap_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_videomode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.omap_dss_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.omap_dss_device*, %struct.omap_video_timings*)* }
%struct.omap_video_timings = type { i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32 }

@OMAPDSS_DRIVE_SIG_RISING_EDGE = common dso_local global i32 0, align 4
@OMAPDSS_SIG_ACTIVE_HIGH = common dso_local global i8* null, align 8
@OMAPDSS_DRIVE_SIG_FALLING_EDGE = common dso_local global i32 0, align 4
@FB_SYNC_HOR_HIGH_ACT = common dso_local global i32 0, align 4
@OMAPDSS_SIG_ACTIVE_LOW = common dso_local global i8* null, align 8
@FB_SYNC_VERT_HIGH_ACT = common dso_local global i32 0, align 4
@FB_VMODE_INTERLACED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_videomode*, %struct.omap_dss_device*, %struct.omap_video_timings*)* @fb_videomode_to_omap_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fb_videomode_to_omap_timings(%struct.fb_videomode* %0, %struct.omap_dss_device* %1, %struct.omap_video_timings* %2) #0 {
  %4 = alloca %struct.fb_videomode*, align 8
  %5 = alloca %struct.omap_dss_device*, align 8
  %6 = alloca %struct.omap_video_timings*, align 8
  store %struct.fb_videomode* %0, %struct.fb_videomode** %4, align 8
  store %struct.omap_dss_device* %1, %struct.omap_dss_device** %5, align 8
  store %struct.omap_video_timings* %2, %struct.omap_video_timings** %6, align 8
  %7 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %8 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32 (%struct.omap_dss_device*, %struct.omap_video_timings*)*, i32 (%struct.omap_dss_device*, %struct.omap_video_timings*)** %10, align 8
  %12 = icmp ne i32 (%struct.omap_dss_device*, %struct.omap_video_timings*)* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %3
  %14 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %15 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32 (%struct.omap_dss_device*, %struct.omap_video_timings*)*, i32 (%struct.omap_dss_device*, %struct.omap_video_timings*)** %17, align 8
  %19 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %20 = load %struct.omap_video_timings*, %struct.omap_video_timings** %6, align 8
  %21 = call i32 %18(%struct.omap_dss_device* %19, %struct.omap_video_timings* %20)
  br label %32

22:                                               ; preds = %3
  %23 = load i32, i32* @OMAPDSS_DRIVE_SIG_RISING_EDGE, align 4
  %24 = load %struct.omap_video_timings*, %struct.omap_video_timings** %6, align 8
  %25 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %24, i32 0, i32 14
  store i32 %23, i32* %25, align 8
  %26 = load i8*, i8** @OMAPDSS_SIG_ACTIVE_HIGH, align 8
  %27 = load %struct.omap_video_timings*, %struct.omap_video_timings** %6, align 8
  %28 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %27, i32 0, i32 13
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* @OMAPDSS_DRIVE_SIG_FALLING_EDGE, align 4
  %30 = load %struct.omap_video_timings*, %struct.omap_video_timings** %6, align 8
  %31 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %30, i32 0, i32 12
  store i32 %29, i32* %31, align 8
  br label %32

32:                                               ; preds = %22, %13
  %33 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %34 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %33, i32 0, i32 10
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.omap_video_timings*, %struct.omap_video_timings** %6, align 8
  %37 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %36, i32 0, i32 11
  store i32 %35, i32* %37, align 4
  %38 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %39 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %38, i32 0, i32 9
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.omap_video_timings*, %struct.omap_video_timings** %6, align 8
  %42 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %41, i32 0, i32 10
  store i32 %40, i32* %42, align 8
  %43 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %44 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %43, i32 0, i32 8
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @PICOS2KHZ(i32 %45)
  %47 = mul nsw i32 %46, 1000
  %48 = load %struct.omap_video_timings*, %struct.omap_video_timings** %6, align 8
  %49 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 8
  %50 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %51 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %50, i32 0, i32 7
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.omap_video_timings*, %struct.omap_video_timings** %6, align 8
  %54 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %53, i32 0, i32 9
  store i32 %52, i32* %54, align 4
  %55 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %56 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.omap_video_timings*, %struct.omap_video_timings** %6, align 8
  %59 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %58, i32 0, i32 8
  store i32 %57, i32* %59, align 8
  %60 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %61 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.omap_video_timings*, %struct.omap_video_timings** %6, align 8
  %64 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %63, i32 0, i32 7
  store i32 %62, i32* %64, align 4
  %65 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %66 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.omap_video_timings*, %struct.omap_video_timings** %6, align 8
  %69 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %68, i32 0, i32 6
  store i32 %67, i32* %69, align 8
  %70 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %71 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.omap_video_timings*, %struct.omap_video_timings** %6, align 8
  %74 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %73, i32 0, i32 5
  store i32 %72, i32* %74, align 4
  %75 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %76 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.omap_video_timings*, %struct.omap_video_timings** %6, align 8
  %79 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %78, i32 0, i32 4
  store i32 %77, i32* %79, align 8
  %80 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %81 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @FB_SYNC_HOR_HIGH_ACT, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %32
  %87 = load i8*, i8** @OMAPDSS_SIG_ACTIVE_HIGH, align 8
  br label %90

88:                                               ; preds = %32
  %89 = load i8*, i8** @OMAPDSS_SIG_ACTIVE_LOW, align 8
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi i8* [ %87, %86 ], [ %89, %88 ]
  %92 = load %struct.omap_video_timings*, %struct.omap_video_timings** %6, align 8
  %93 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %92, i32 0, i32 3
  store i8* %91, i8** %93, align 8
  %94 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %95 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @FB_SYNC_VERT_HIGH_ACT, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %90
  %101 = load i8*, i8** @OMAPDSS_SIG_ACTIVE_HIGH, align 8
  br label %104

102:                                              ; preds = %90
  %103 = load i8*, i8** @OMAPDSS_SIG_ACTIVE_LOW, align 8
  br label %104

104:                                              ; preds = %102, %100
  %105 = phi i8* [ %101, %100 ], [ %103, %102 ]
  %106 = load %struct.omap_video_timings*, %struct.omap_video_timings** %6, align 8
  %107 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %106, i32 0, i32 2
  store i8* %105, i8** %107, align 8
  %108 = load %struct.fb_videomode*, %struct.fb_videomode** %4, align 8
  %109 = getelementptr inbounds %struct.fb_videomode, %struct.fb_videomode* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @FB_VMODE_INTERLACED, align 4
  %112 = and i32 %110, %111
  %113 = load %struct.omap_video_timings*, %struct.omap_video_timings** %6, align 8
  %114 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  ret void
}

declare dso_local i32 @PICOS2KHZ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
