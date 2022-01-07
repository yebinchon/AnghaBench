; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_apply.c_omapdss_compat_uninit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_apply.c_omapdss_compat_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }

@compat_init_lock = common dso_local global i32 0, align 4
@compat_refcnt = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @omapdss_compat_uninit() #0 {
  %1 = alloca %struct.platform_device*, align 8
  %2 = call %struct.platform_device* (...) @dss_get_core_pdev()
  store %struct.platform_device* %2, %struct.platform_device** %1, align 8
  %3 = call i32 @mutex_lock(i32* @compat_init_lock)
  %4 = load i64, i64* @compat_refcnt, align 8
  %5 = add nsw i64 %4, -1
  store i64 %5, i64* @compat_refcnt, align 8
  %6 = icmp sgt i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  br label %17

8:                                                ; preds = %0
  %9 = call i32 (...) @dss_dispc_uninitialize_irq()
  %10 = load %struct.platform_device*, %struct.platform_device** %1, align 8
  %11 = call i32 @display_uninit_sysfs(%struct.platform_device* %10)
  %12 = call i32 (...) @dss_uninstall_mgr_ops()
  %13 = load %struct.platform_device*, %struct.platform_device** %1, align 8
  %14 = call i32 @dss_uninit_overlay_managers_sysfs(%struct.platform_device* %13)
  %15 = load %struct.platform_device*, %struct.platform_device** %1, align 8
  %16 = call i32 @dss_uninit_overlays(%struct.platform_device* %15)
  br label %17

17:                                               ; preds = %8, %7
  %18 = call i32 @mutex_unlock(i32* @compat_init_lock)
  ret void
}

declare dso_local %struct.platform_device* @dss_get_core_pdev(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dss_dispc_uninitialize_irq(...) #1

declare dso_local i32 @display_uninit_sysfs(%struct.platform_device*) #1

declare dso_local i32 @dss_uninstall_mgr_ops(...) #1

declare dso_local i32 @dss_uninit_overlay_managers_sysfs(%struct.platform_device*) #1

declare dso_local i32 @dss_uninit_overlays(%struct.platform_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
