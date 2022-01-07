; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-sysfs.c_get_overlay_fb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-sysfs.c_get_overlay_fb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omapfb_info = type { i32, %struct.omap_overlay** }
%struct.omapfb2_device = type { i32, i32* }
%struct.omap_overlay = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.omapfb_info* (%struct.omapfb2_device*, %struct.omap_overlay*)* @get_overlay_fb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.omapfb_info* @get_overlay_fb(%struct.omapfb2_device* %0, %struct.omap_overlay* %1) #0 {
  %3 = alloca %struct.omapfb_info*, align 8
  %4 = alloca %struct.omapfb2_device*, align 8
  %5 = alloca %struct.omap_overlay*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.omapfb_info*, align 8
  store %struct.omapfb2_device* %0, %struct.omapfb2_device** %4, align 8
  store %struct.omap_overlay* %1, %struct.omap_overlay** %5, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %47, %2
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.omapfb2_device*, %struct.omapfb2_device** %4, align 8
  %12 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %50

15:                                               ; preds = %9
  %16 = load %struct.omapfb2_device*, %struct.omapfb2_device** %4, align 8
  %17 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.omapfb_info* @FB2OFB(i32 %22)
  store %struct.omapfb_info* %23, %struct.omapfb_info** %8, align 8
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %43, %15
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.omapfb_info*, %struct.omapfb_info** %8, align 8
  %27 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %46

30:                                               ; preds = %24
  %31 = load %struct.omapfb_info*, %struct.omapfb_info** %8, align 8
  %32 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %31, i32 0, i32 1
  %33 = load %struct.omap_overlay**, %struct.omap_overlay*** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.omap_overlay*, %struct.omap_overlay** %33, i64 %35
  %37 = load %struct.omap_overlay*, %struct.omap_overlay** %36, align 8
  %38 = load %struct.omap_overlay*, %struct.omap_overlay** %5, align 8
  %39 = icmp eq %struct.omap_overlay* %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = load %struct.omapfb_info*, %struct.omapfb_info** %8, align 8
  store %struct.omapfb_info* %41, %struct.omapfb_info** %3, align 8
  br label %51

42:                                               ; preds = %30
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %24

46:                                               ; preds = %24
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  br label %9

50:                                               ; preds = %9
  store %struct.omapfb_info* null, %struct.omapfb_info** %3, align 8
  br label %51

51:                                               ; preds = %50, %40
  %52 = load %struct.omapfb_info*, %struct.omapfb_info** %3, align 8
  ret %struct.omapfb_info* %52
}

declare dso_local %struct.omapfb_info* @FB2OFB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
