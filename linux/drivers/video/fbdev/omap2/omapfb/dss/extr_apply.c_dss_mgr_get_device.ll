; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_apply.c_dss_mgr_get_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_apply.c_dss_mgr_get_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { i64, %struct.omap_dss_device* }
%struct.omap_overlay_manager = type { %struct.omap_dss_device* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.omap_dss_device* (%struct.omap_overlay_manager*)* @dss_mgr_get_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.omap_dss_device* @dss_mgr_get_device(%struct.omap_overlay_manager* %0) #0 {
  %2 = alloca %struct.omap_dss_device*, align 8
  %3 = alloca %struct.omap_overlay_manager*, align 8
  %4 = alloca %struct.omap_dss_device*, align 8
  store %struct.omap_overlay_manager* %0, %struct.omap_overlay_manager** %3, align 8
  %5 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %3, align 8
  %6 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %5, i32 0, i32 0
  %7 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  store %struct.omap_dss_device* %7, %struct.omap_dss_device** %4, align 8
  %8 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %9 = icmp eq %struct.omap_dss_device* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store %struct.omap_dss_device* null, %struct.omap_dss_device** %2, align 8
  br label %29

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %17, %11
  %13 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %14 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %13, i32 0, i32 1
  %15 = load %struct.omap_dss_device*, %struct.omap_dss_device** %14, align 8
  %16 = icmp ne %struct.omap_dss_device* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %19 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %18, i32 0, i32 1
  %20 = load %struct.omap_dss_device*, %struct.omap_dss_device** %19, align 8
  store %struct.omap_dss_device* %20, %struct.omap_dss_device** %4, align 8
  br label %12

21:                                               ; preds = %12
  %22 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %23 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  store %struct.omap_dss_device* %27, %struct.omap_dss_device** %2, align 8
  br label %29

28:                                               ; preds = %21
  store %struct.omap_dss_device* null, %struct.omap_dss_device** %2, align 8
  br label %29

29:                                               ; preds = %28, %26, %10
  %30 = load %struct.omap_dss_device*, %struct.omap_dss_device** %2, align 8
  ret %struct.omap_dss_device* %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
