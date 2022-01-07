; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-main.c_omapfb_get_recommended_bpp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-main.c_omapfb_get_recommended_bpp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omapfb2_device = type { i32 }
%struct.omap_dss_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.omap_dss_device*)* }
%struct.omapfb_display_data = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omapfb2_device*, %struct.omap_dss_device*)* @omapfb_get_recommended_bpp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omapfb_get_recommended_bpp(%struct.omapfb2_device* %0, %struct.omap_dss_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.omapfb2_device*, align 8
  %5 = alloca %struct.omap_dss_device*, align 8
  %6 = alloca %struct.omapfb_display_data*, align 8
  store %struct.omapfb2_device* %0, %struct.omapfb2_device** %4, align 8
  store %struct.omap_dss_device* %1, %struct.omap_dss_device** %5, align 8
  %7 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %8 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)** %10, align 8
  %12 = icmp eq i32 (%struct.omap_dss_device*)* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load %struct.omapfb2_device*, %struct.omapfb2_device** %4, align 8
  %16 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %17 = call %struct.omapfb_display_data* @get_display_data(%struct.omapfb2_device* %15, %struct.omap_dss_device* %16)
  store %struct.omapfb_display_data* %17, %struct.omapfb_display_data** %6, align 8
  %18 = load %struct.omapfb_display_data*, %struct.omapfb_display_data** %6, align 8
  %19 = getelementptr inbounds %struct.omapfb_display_data, %struct.omapfb_display_data* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load %struct.omapfb_display_data*, %struct.omapfb_display_data** %6, align 8
  %24 = getelementptr inbounds %struct.omapfb_display_data, %struct.omapfb_display_data* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %3, align 4
  br label %35

27:                                               ; preds = %2
  %28 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %29 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)** %31, align 8
  %33 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %34 = call i32 %32(%struct.omap_dss_device* %33)
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %27, %22
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.omapfb_display_data* @get_display_data(%struct.omapfb2_device*, %struct.omap_dss_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
