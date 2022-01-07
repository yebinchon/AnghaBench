; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_display-sysfs.c_display_timings_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_display-sysfs.c_display_timings_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.omap_dss_device*, %struct.omap_video_timings*)* }
%struct.omap_video_timings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%u,%u/%u/%u/%u,%u/%u/%u/%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_dss_device*, i8*)* @display_timings_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @display_timings_show(%struct.omap_dss_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.omap_dss_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.omap_video_timings, align 4
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %8 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32 (%struct.omap_dss_device*, %struct.omap_video_timings*)*, i32 (%struct.omap_dss_device*, %struct.omap_video_timings*)** %10, align 8
  %12 = icmp ne i32 (%struct.omap_dss_device*, %struct.omap_video_timings*)* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOENT, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %45

16:                                               ; preds = %2
  %17 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %18 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.omap_dss_device*, %struct.omap_video_timings*)*, i32 (%struct.omap_dss_device*, %struct.omap_video_timings*)** %20, align 8
  %22 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %23 = call i32 %21(%struct.omap_dss_device* %22, %struct.omap_video_timings* %6)
  %24 = load i8*, i8** %5, align 8
  %25 = load i32, i32* @PAGE_SIZE, align 4
  %26 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %6, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %6, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %6, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %6, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %6, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %6, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %6, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %6, i32 0, i32 7
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %6, i32 0, i32 8
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @snprintf(i8* %24, i32 %25, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %29, i32 %31, i32 %33, i32 %35, i32 %37, i32 %39, i32 %41, i32 %43)
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %16, %13
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
