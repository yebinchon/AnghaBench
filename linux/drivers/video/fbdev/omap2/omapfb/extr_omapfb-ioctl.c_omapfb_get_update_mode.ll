; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-ioctl.c_omapfb_get_update_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-ioctl.c_omapfb_get_update_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32 }
%struct.omap_dss_device = type { i32 }
%struct.omapfb_info = type { %struct.omapfb2_device* }
%struct.omapfb2_device = type { i32 }
%struct.omapfb_display_data = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omapfb_get_update_mode(%struct.fb_info* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.omap_dss_device*, align 8
  %7 = alloca %struct.omapfb_info*, align 8
  %8 = alloca %struct.omapfb2_device*, align 8
  %9 = alloca %struct.omapfb_display_data*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %4, align 8
  store i32* %1, i32** %5, align 8
  %10 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %11 = call %struct.omap_dss_device* @fb2display(%struct.fb_info* %10)
  store %struct.omap_dss_device* %11, %struct.omap_dss_device** %6, align 8
  %12 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %13 = call %struct.omapfb_info* @FB2OFB(%struct.fb_info* %12)
  store %struct.omapfb_info* %13, %struct.omapfb_info** %7, align 8
  %14 = load %struct.omapfb_info*, %struct.omapfb_info** %7, align 8
  %15 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %14, i32 0, i32 0
  %16 = load %struct.omapfb2_device*, %struct.omapfb2_device** %15, align 8
  store %struct.omapfb2_device* %16, %struct.omapfb2_device** %8, align 8
  %17 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %18 = icmp ne %struct.omap_dss_device* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %34

22:                                               ; preds = %2
  %23 = load %struct.omapfb2_device*, %struct.omapfb2_device** %8, align 8
  %24 = call i32 @omapfb_lock(%struct.omapfb2_device* %23)
  %25 = load %struct.omapfb2_device*, %struct.omapfb2_device** %8, align 8
  %26 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %27 = call %struct.omapfb_display_data* @get_display_data(%struct.omapfb2_device* %25, %struct.omap_dss_device* %26)
  store %struct.omapfb_display_data* %27, %struct.omapfb_display_data** %9, align 8
  %28 = load %struct.omapfb_display_data*, %struct.omapfb_display_data** %9, align 8
  %29 = getelementptr inbounds %struct.omapfb_display_data, %struct.omapfb_display_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %5, align 8
  store i32 %30, i32* %31, align 4
  %32 = load %struct.omapfb2_device*, %struct.omapfb2_device** %8, align 8
  %33 = call i32 @omapfb_unlock(%struct.omapfb2_device* %32)
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %22, %19
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local %struct.omap_dss_device* @fb2display(%struct.fb_info*) #1

declare dso_local %struct.omapfb_info* @FB2OFB(%struct.fb_info*) #1

declare dso_local i32 @omapfb_lock(%struct.omapfb2_device*) #1

declare dso_local %struct.omapfb_display_data* @get_display_data(%struct.omapfb2_device*, %struct.omap_dss_device*) #1

declare dso_local i32 @omapfb_unlock(%struct.omapfb2_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
