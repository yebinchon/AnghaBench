; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_encoder-tfp410.c_tfp410_fix_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_encoder-tfp410.c_tfp410_fix_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_video_timings = type { i32, i8*, i8* }

@OMAPDSS_DRIVE_SIG_RISING_EDGE = common dso_local global i8* null, align 8
@OMAPDSS_SIG_ACTIVE_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_video_timings*)* @tfp410_fix_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tfp410_fix_timings(%struct.omap_video_timings* %0) #0 {
  %2 = alloca %struct.omap_video_timings*, align 8
  store %struct.omap_video_timings* %0, %struct.omap_video_timings** %2, align 8
  %3 = load i8*, i8** @OMAPDSS_DRIVE_SIG_RISING_EDGE, align 8
  %4 = load %struct.omap_video_timings*, %struct.omap_video_timings** %2, align 8
  %5 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %4, i32 0, i32 2
  store i8* %3, i8** %5, align 8
  %6 = load i8*, i8** @OMAPDSS_DRIVE_SIG_RISING_EDGE, align 8
  %7 = load %struct.omap_video_timings*, %struct.omap_video_timings** %2, align 8
  %8 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %7, i32 0, i32 1
  store i8* %6, i8** %8, align 8
  %9 = load i32, i32* @OMAPDSS_SIG_ACTIVE_HIGH, align 4
  %10 = load %struct.omap_video_timings*, %struct.omap_video_timings** %2, align 8
  %11 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
