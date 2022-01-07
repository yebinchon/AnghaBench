; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-ioctl.c_omapfb_wait_for_go.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-ioctl.c_omapfb_wait_for_go.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }
%struct.omapfb_info = type { i32, %struct.omap_overlay** }
%struct.omap_overlay = type { i32 (%struct.omap_overlay*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @omapfb_wait_for_go to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omapfb_wait_for_go(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca %struct.omapfb_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.omap_overlay*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  %7 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %8 = call %struct.omapfb_info* @FB2OFB(%struct.fb_info* %7)
  store %struct.omapfb_info* %8, %struct.omapfb_info** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %32, %1
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.omapfb_info*, %struct.omapfb_info** %3, align 8
  %12 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %35

15:                                               ; preds = %9
  %16 = load %struct.omapfb_info*, %struct.omapfb_info** %3, align 8
  %17 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %16, i32 0, i32 1
  %18 = load %struct.omap_overlay**, %struct.omap_overlay*** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.omap_overlay*, %struct.omap_overlay** %18, i64 %20
  %22 = load %struct.omap_overlay*, %struct.omap_overlay** %21, align 8
  store %struct.omap_overlay* %22, %struct.omap_overlay** %6, align 8
  %23 = load %struct.omap_overlay*, %struct.omap_overlay** %6, align 8
  %24 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %23, i32 0, i32 0
  %25 = load i32 (%struct.omap_overlay*)*, i32 (%struct.omap_overlay*)** %24, align 8
  %26 = load %struct.omap_overlay*, %struct.omap_overlay** %6, align 8
  %27 = call i32 %25(%struct.omap_overlay* %26)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %15
  br label %35

31:                                               ; preds = %15
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %9

35:                                               ; preds = %30, %9
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local %struct.omapfb_info* @FB2OFB(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
