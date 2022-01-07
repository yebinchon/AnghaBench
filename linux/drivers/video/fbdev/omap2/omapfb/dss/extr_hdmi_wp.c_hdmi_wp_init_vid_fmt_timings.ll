; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_hdmi_wp.c_hdmi_wp_init_vid_fmt_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_hdmi_wp.c_hdmi_wp_init_vid_fmt_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdmi_video_format = type { i32, i32, i32 }
%struct.omap_video_timings = type { i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hdmi_config = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"Enter hdmi_wp_video_init_format\0A\00", align 1
@HDMI_PACK_10b_RGB_YUV444 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hdmi_wp_init_vid_fmt_timings(%struct.hdmi_video_format* %0, %struct.omap_video_timings* %1, %struct.hdmi_config* %2) #0 {
  %4 = alloca %struct.hdmi_video_format*, align 8
  %5 = alloca %struct.omap_video_timings*, align 8
  %6 = alloca %struct.hdmi_config*, align 8
  store %struct.hdmi_video_format* %0, %struct.hdmi_video_format** %4, align 8
  store %struct.omap_video_timings* %1, %struct.omap_video_timings** %5, align 8
  store %struct.hdmi_config* %2, %struct.hdmi_config** %6, align 8
  %7 = call i32 @DSSDBG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @HDMI_PACK_10b_RGB_YUV444, align 4
  %9 = load %struct.hdmi_video_format*, %struct.hdmi_video_format** %4, align 8
  %10 = getelementptr inbounds %struct.hdmi_video_format, %struct.hdmi_video_format* %9, i32 0, i32 2
  store i32 %8, i32* %10, align 4
  %11 = load %struct.hdmi_config*, %struct.hdmi_config** %6, align 8
  %12 = getelementptr inbounds %struct.hdmi_config, %struct.hdmi_config* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.hdmi_video_format*, %struct.hdmi_video_format** %4, align 8
  %16 = getelementptr inbounds %struct.hdmi_video_format, %struct.hdmi_video_format* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.hdmi_config*, %struct.hdmi_config** %6, align 8
  %18 = getelementptr inbounds %struct.hdmi_config, %struct.hdmi_config* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 10
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.hdmi_video_format*, %struct.hdmi_video_format** %4, align 8
  %22 = getelementptr inbounds %struct.hdmi_video_format, %struct.hdmi_video_format* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.hdmi_config*, %struct.hdmi_config** %6, align 8
  %24 = getelementptr inbounds %struct.hdmi_config, %struct.hdmi_config* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %3
  %29 = load %struct.hdmi_video_format*, %struct.hdmi_video_format** %4, align 8
  %30 = getelementptr inbounds %struct.hdmi_video_format, %struct.hdmi_video_format* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sdiv i32 %31, 2
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %28, %3
  %34 = load %struct.hdmi_config*, %struct.hdmi_config** %6, align 8
  %35 = getelementptr inbounds %struct.hdmi_config, %struct.hdmi_config* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 9
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.omap_video_timings*, %struct.omap_video_timings** %5, align 8
  %39 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %38, i32 0, i32 8
  store i32 %37, i32* %39, align 4
  %40 = load %struct.hdmi_config*, %struct.hdmi_config** %6, align 8
  %41 = getelementptr inbounds %struct.hdmi_config, %struct.hdmi_config* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 8
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.omap_video_timings*, %struct.omap_video_timings** %5, align 8
  %45 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %44, i32 0, i32 7
  store i32 %43, i32* %45, align 8
  %46 = load %struct.hdmi_config*, %struct.hdmi_config** %6, align 8
  %47 = getelementptr inbounds %struct.hdmi_config, %struct.hdmi_config* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.omap_video_timings*, %struct.omap_video_timings** %5, align 8
  %51 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %50, i32 0, i32 6
  store i32 %49, i32* %51, align 4
  %52 = load %struct.hdmi_config*, %struct.hdmi_config** %6, align 8
  %53 = getelementptr inbounds %struct.hdmi_config, %struct.hdmi_config* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.omap_video_timings*, %struct.omap_video_timings** %5, align 8
  %57 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %56, i32 0, i32 5
  store i32 %55, i32* %57, align 8
  %58 = load %struct.hdmi_config*, %struct.hdmi_config** %6, align 8
  %59 = getelementptr inbounds %struct.hdmi_config, %struct.hdmi_config* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.omap_video_timings*, %struct.omap_video_timings** %5, align 8
  %63 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 4
  %64 = load %struct.hdmi_config*, %struct.hdmi_config** %6, align 8
  %65 = getelementptr inbounds %struct.hdmi_config, %struct.hdmi_config* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.omap_video_timings*, %struct.omap_video_timings** %5, align 8
  %69 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 8
  %70 = load %struct.hdmi_config*, %struct.hdmi_config** %6, align 8
  %71 = getelementptr inbounds %struct.hdmi_config, %struct.hdmi_config* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.omap_video_timings*, %struct.omap_video_timings** %5, align 8
  %75 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 4
  %76 = load %struct.hdmi_config*, %struct.hdmi_config** %6, align 8
  %77 = getelementptr inbounds %struct.hdmi_config, %struct.hdmi_config* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.omap_video_timings*, %struct.omap_video_timings** %5, align 8
  %81 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 8
  %82 = load %struct.hdmi_config*, %struct.hdmi_config** %6, align 8
  %83 = getelementptr inbounds %struct.hdmi_config, %struct.hdmi_config* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.omap_video_timings*, %struct.omap_video_timings** %5, align 8
  %87 = getelementptr inbounds %struct.omap_video_timings, %struct.omap_video_timings* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  ret void
}

declare dso_local i32 @DSSDBG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
