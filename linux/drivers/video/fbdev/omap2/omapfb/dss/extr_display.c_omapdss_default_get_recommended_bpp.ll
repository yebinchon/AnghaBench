; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_display.c_omapdss_default_get_recommended_bpp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_display.c_omapdss_default_get_recommended_bpp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omapdss_default_get_recommended_bpp(%struct.omap_dss_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_dss_device*, align 8
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %3, align 8
  %4 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %5 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %34 [
    i32 133, label %7
    i32 134, label %16
    i32 132, label %24
    i32 128, label %33
    i32 129, label %33
    i32 130, label %33
    i32 131, label %33
  ]

7:                                                ; preds = %1
  %8 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %9 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 24
  br i1 %13, label %14, label %15

14:                                               ; preds = %7
  store i32 24, i32* %2, align 4
  br label %36

15:                                               ; preds = %7
  store i32 16, i32* %2, align 4
  br label %36

16:                                               ; preds = %1
  %17 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %18 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 24
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 24, i32* %2, align 4
  br label %36

23:                                               ; preds = %16
  store i32 16, i32* %2, align 4
  br label %36

24:                                               ; preds = %1
  %25 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %26 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dsi_get_pixel_size(i32 %28)
  %30 = icmp sgt i32 %29, 16
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 24, i32* %2, align 4
  br label %36

32:                                               ; preds = %24
  store i32 16, i32* %2, align 4
  br label %36

33:                                               ; preds = %1, %1, %1, %1
  store i32 24, i32* %2, align 4
  br label %36

34:                                               ; preds = %1
  %35 = call i32 (...) @BUG()
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %34, %33, %32, %31, %23, %22, %15, %14
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @dsi_get_pixel_size(i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
