; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_apply.c_dss_ovl_get_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_apply.c_dss_ovl_get_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { i32 }
%struct.omap_overlay = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.omap_dss_device* (%struct.omap_overlay*)* @dss_ovl_get_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.omap_dss_device* @dss_ovl_get_device(%struct.omap_overlay* %0) #0 {
  %2 = alloca %struct.omap_overlay*, align 8
  store %struct.omap_overlay* %0, %struct.omap_overlay** %2, align 8
  %3 = load %struct.omap_overlay*, %struct.omap_overlay** %2, align 8
  %4 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.omap_overlay*, %struct.omap_overlay** %2, align 8
  %9 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = call %struct.omap_dss_device* @dss_mgr_get_device(i64 %10)
  br label %13

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %12, %7
  %14 = phi %struct.omap_dss_device* [ %11, %7 ], [ null, %12 ]
  ret %struct.omap_dss_device* %14
}

declare dso_local %struct.omap_dss_device* @dss_mgr_get_device(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
