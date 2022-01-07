; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb.h_fb2display.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb.h_fb2display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { i32 }
%struct.fb_info = type { i32 }
%struct.omapfb_info = type { i64, %struct.omap_overlay** }
%struct.omap_overlay = type { %struct.omap_dss_device* (%struct.omap_overlay*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.omap_dss_device* (%struct.fb_info*)* @fb2display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.omap_dss_device* @fb2display(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.omap_dss_device*, align 8
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.omapfb_info*, align 8
  %5 = alloca %struct.omap_overlay*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  %6 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %7 = call %struct.omapfb_info* @FB2OFB(%struct.fb_info* %6)
  store %struct.omapfb_info* %7, %struct.omapfb_info** %4, align 8
  %8 = load %struct.omapfb_info*, %struct.omapfb_info** %4, align 8
  %9 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store %struct.omap_dss_device* null, %struct.omap_dss_device** %2, align 8
  br label %24

13:                                               ; preds = %1
  %14 = load %struct.omapfb_info*, %struct.omapfb_info** %4, align 8
  %15 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %14, i32 0, i32 1
  %16 = load %struct.omap_overlay**, %struct.omap_overlay*** %15, align 8
  %17 = getelementptr inbounds %struct.omap_overlay*, %struct.omap_overlay** %16, i64 0
  %18 = load %struct.omap_overlay*, %struct.omap_overlay** %17, align 8
  store %struct.omap_overlay* %18, %struct.omap_overlay** %5, align 8
  %19 = load %struct.omap_overlay*, %struct.omap_overlay** %5, align 8
  %20 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %19, i32 0, i32 0
  %21 = load %struct.omap_dss_device* (%struct.omap_overlay*)*, %struct.omap_dss_device* (%struct.omap_overlay*)** %20, align 8
  %22 = load %struct.omap_overlay*, %struct.omap_overlay** %5, align 8
  %23 = call %struct.omap_dss_device* %21(%struct.omap_overlay* %22)
  store %struct.omap_dss_device* %23, %struct.omap_dss_device** %2, align 8
  br label %24

24:                                               ; preds = %13, %12
  %25 = load %struct.omap_dss_device*, %struct.omap_dss_device** %2, align 8
  ret %struct.omap_dss_device* %25
}

declare dso_local %struct.omapfb_info* @FB2OFB(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
