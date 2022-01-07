; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-ioctl.c_omapfb_set_color_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-ioctl.c_omapfb_set_color_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }
%struct.omapfb_color_key = type { i32 }
%struct.omapfb_info = type { i32, %struct.TYPE_2__**, %struct.omapfb2_device* }
%struct.TYPE_2__ = type { %struct.omap_overlay_manager* }
%struct.omap_overlay_manager = type { i32 }
%struct.omapfb2_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, %struct.omapfb_color_key*)* @omapfb_set_color_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omapfb_set_color_key(%struct.fb_info* %0, %struct.omapfb_color_key* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.omapfb_color_key*, align 8
  %5 = alloca %struct.omapfb_info*, align 8
  %6 = alloca %struct.omapfb2_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.omap_overlay_manager*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.omapfb_color_key* %1, %struct.omapfb_color_key** %4, align 8
  %10 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %11 = call %struct.omapfb_info* @FB2OFB(%struct.fb_info* %10)
  store %struct.omapfb_info* %11, %struct.omapfb_info** %5, align 8
  %12 = load %struct.omapfb_info*, %struct.omapfb_info** %5, align 8
  %13 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %12, i32 0, i32 2
  %14 = load %struct.omapfb2_device*, %struct.omapfb2_device** %13, align 8
  store %struct.omapfb2_device* %14, %struct.omapfb2_device** %6, align 8
  store %struct.omap_overlay_manager* null, %struct.omap_overlay_manager** %9, align 8
  %15 = load %struct.omapfb2_device*, %struct.omapfb2_device** %6, align 8
  %16 = call i32 @omapfb_lock(%struct.omapfb2_device* %15)
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %45, %2
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.omapfb_info*, %struct.omapfb_info** %5, align 8
  %20 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %48

23:                                               ; preds = %17
  %24 = load %struct.omapfb_info*, %struct.omapfb_info** %5, align 8
  %25 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %26, i64 %28
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %31, align 8
  %33 = icmp ne %struct.omap_overlay_manager* %32, null
  br i1 %33, label %34, label %44

34:                                               ; preds = %23
  %35 = load %struct.omapfb_info*, %struct.omapfb_info** %5, align 8
  %36 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %37, i64 %39
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %42, align 8
  store %struct.omap_overlay_manager* %43, %struct.omap_overlay_manager** %9, align 8
  br label %48

44:                                               ; preds = %23
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %8, align 4
  br label %17

48:                                               ; preds = %34, %17
  %49 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %9, align 8
  %50 = icmp ne %struct.omap_overlay_manager* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %7, align 4
  br label %58

54:                                               ; preds = %48
  %55 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %9, align 8
  %56 = load %struct.omapfb_color_key*, %struct.omapfb_color_key** %4, align 8
  %57 = call i32 @_omapfb_set_color_key(%struct.omap_overlay_manager* %55, %struct.omapfb_color_key* %56)
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %54, %51
  %59 = load %struct.omapfb2_device*, %struct.omapfb2_device** %6, align 8
  %60 = call i32 @omapfb_unlock(%struct.omapfb2_device* %59)
  %61 = load i32, i32* %7, align 4
  ret i32 %61
}

declare dso_local %struct.omapfb_info* @FB2OFB(%struct.fb_info*) #1

declare dso_local i32 @omapfb_lock(%struct.omapfb2_device*) #1

declare dso_local i32 @_omapfb_set_color_key(%struct.omap_overlay_manager*, %struct.omapfb_color_key*) #1

declare dso_local i32 @omapfb_unlock(%struct.omapfb2_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
