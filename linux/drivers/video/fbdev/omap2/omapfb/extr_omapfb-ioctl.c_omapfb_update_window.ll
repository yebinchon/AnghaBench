; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-ioctl.c_omapfb_update_window.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-ioctl.c_omapfb_update_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }
%struct.omap_dss_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.omap_dss_device*, i64, i64, i64, i64)*, i32 (%struct.omap_dss_device*, i64*, i64*)* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, i64, i64, i64, i64)* @omapfb_update_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omapfb_update_window(%struct.fb_info* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.fb_info*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.omap_dss_device*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.fb_info* %0, %struct.fb_info** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load %struct.fb_info*, %struct.fb_info** %7, align 8
  %16 = call %struct.omap_dss_device* @fb2display(%struct.fb_info* %15)
  store %struct.omap_dss_device* %16, %struct.omap_dss_device** %12, align 8
  %17 = load %struct.omap_dss_device*, %struct.omap_dss_device** %12, align 8
  %18 = icmp ne %struct.omap_dss_device* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %61

20:                                               ; preds = %5
  %21 = load i64, i64* %10, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i64, i64* %11, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23, %20
  store i32 0, i32* %6, align 4
  br label %61

27:                                               ; preds = %23
  %28 = load %struct.omap_dss_device*, %struct.omap_dss_device** %12, align 8
  %29 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32 (%struct.omap_dss_device*, i64*, i64*)*, i32 (%struct.omap_dss_device*, i64*, i64*)** %31, align 8
  %33 = load %struct.omap_dss_device*, %struct.omap_dss_device** %12, align 8
  %34 = call i32 %32(%struct.omap_dss_device* %33, i64* %13, i64* %14)
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* %10, align 8
  %37 = add nsw i64 %35, %36
  %38 = load i64, i64* %13, align 8
  %39 = icmp sgt i64 %37, %38
  br i1 %39, label %46, label %40

40:                                               ; preds = %27
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* %11, align 8
  %43 = add nsw i64 %41, %42
  %44 = load i64, i64* %14, align 8
  %45 = icmp sgt i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40, %27
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %61

49:                                               ; preds = %40
  %50 = load %struct.omap_dss_device*, %struct.omap_dss_device** %12, align 8
  %51 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32 (%struct.omap_dss_device*, i64, i64, i64, i64)*, i32 (%struct.omap_dss_device*, i64, i64, i64, i64)** %53, align 8
  %55 = load %struct.omap_dss_device*, %struct.omap_dss_device** %12, align 8
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* %10, align 8
  %59 = load i64, i64* %11, align 8
  %60 = call i32 %54(%struct.omap_dss_device* %55, i64 %56, i64 %57, i64 %58, i64 %59)
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %49, %46, %26, %19
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local %struct.omap_dss_device* @fb2display(%struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
