; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb.h_get_display_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb.h_get_display_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omapfb_display_data = type { %struct.omap_dss_device* }
%struct.omapfb2_device = type { i32, %struct.omapfb_display_data* }
%struct.omap_dss_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.omapfb_display_data* (%struct.omapfb2_device*, %struct.omap_dss_device*)* @get_display_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.omapfb_display_data* @get_display_data(%struct.omapfb2_device* %0, %struct.omap_dss_device* %1) #0 {
  %3 = alloca %struct.omapfb_display_data*, align 8
  %4 = alloca %struct.omapfb2_device*, align 8
  %5 = alloca %struct.omap_dss_device*, align 8
  %6 = alloca i32, align 4
  store %struct.omapfb2_device* %0, %struct.omapfb2_device** %4, align 8
  store %struct.omap_dss_device* %1, %struct.omap_dss_device** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %32, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.omapfb2_device*, %struct.omapfb2_device** %4, align 8
  %10 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %35

13:                                               ; preds = %7
  %14 = load %struct.omapfb2_device*, %struct.omapfb2_device** %4, align 8
  %15 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %14, i32 0, i32 1
  %16 = load %struct.omapfb_display_data*, %struct.omapfb_display_data** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.omapfb_display_data, %struct.omapfb_display_data* %16, i64 %18
  %20 = getelementptr inbounds %struct.omapfb_display_data, %struct.omapfb_display_data* %19, i32 0, i32 0
  %21 = load %struct.omap_dss_device*, %struct.omap_dss_device** %20, align 8
  %22 = load %struct.omap_dss_device*, %struct.omap_dss_device** %5, align 8
  %23 = icmp eq %struct.omap_dss_device* %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %13
  %25 = load %struct.omapfb2_device*, %struct.omapfb2_device** %4, align 8
  %26 = getelementptr inbounds %struct.omapfb2_device, %struct.omapfb2_device* %25, i32 0, i32 1
  %27 = load %struct.omapfb_display_data*, %struct.omapfb_display_data** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.omapfb_display_data, %struct.omapfb_display_data* %27, i64 %29
  store %struct.omapfb_display_data* %30, %struct.omapfb_display_data** %3, align 8
  br label %37

31:                                               ; preds = %13
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %7

35:                                               ; preds = %7
  %36 = call i32 (...) @BUG()
  store %struct.omapfb_display_data* null, %struct.omapfb_display_data** %3, align 8
  br label %37

37:                                               ; preds = %35, %24
  %38 = load %struct.omapfb_display_data*, %struct.omapfb_display_data** %3, align 8
  ret %struct.omapfb_display_data* %38
}

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
