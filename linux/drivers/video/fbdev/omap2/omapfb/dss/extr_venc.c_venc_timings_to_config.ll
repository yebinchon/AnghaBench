; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_venc.c_venc_timings_to_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_venc.c_venc_timings_to_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venc_config = type { i32 }
%struct.omap_video_timings = type { i32 }

@omap_dss_pal_timings = common dso_local global i32 0, align 4
@venc_config_pal_trm = common dso_local global %struct.venc_config zeroinitializer, align 4
@omap_dss_ntsc_timings = common dso_local global i32 0, align 4
@venc_config_ntsc_trm = common dso_local global %struct.venc_config zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.venc_config* (%struct.omap_video_timings*)* @venc_timings_to_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.venc_config* @venc_timings_to_config(%struct.omap_video_timings* %0) #0 {
  %2 = alloca %struct.venc_config*, align 8
  %3 = alloca %struct.omap_video_timings*, align 8
  store %struct.omap_video_timings* %0, %struct.omap_video_timings** %3, align 8
  %4 = load %struct.omap_video_timings*, %struct.omap_video_timings** %3, align 8
  %5 = call i64 @memcmp(i32* @omap_dss_pal_timings, %struct.omap_video_timings* %4, i32 4)
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store %struct.venc_config* @venc_config_pal_trm, %struct.venc_config** %2, align 8
  br label %15

8:                                                ; preds = %1
  %9 = load %struct.omap_video_timings*, %struct.omap_video_timings** %3, align 8
  %10 = call i64 @memcmp(i32* @omap_dss_ntsc_timings, %struct.omap_video_timings* %9, i32 4)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  store %struct.venc_config* @venc_config_ntsc_trm, %struct.venc_config** %2, align 8
  br label %15

13:                                               ; preds = %8
  %14 = call i32 (...) @BUG()
  store %struct.venc_config* null, %struct.venc_config** %2, align 8
  br label %15

15:                                               ; preds = %13, %12, %7
  %16 = load %struct.venc_config*, %struct.venc_config** %2, align 8
  ret %struct.venc_config* %16
}

declare dso_local i64 @memcmp(i32*, %struct.omap_video_timings*, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
