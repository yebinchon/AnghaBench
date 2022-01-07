; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_apply.c_dss_mgr_disable_compat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_apply.c_dss_mgr_disable_compat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_overlay_manager = type { i32 }
%struct.mgr_priv_data = type { i32, i32 }

@apply_lock = common dso_local global i32 0, align 4
@data_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_overlay_manager*)* @dss_mgr_disable_compat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dss_mgr_disable_compat(%struct.omap_overlay_manager* %0) #0 {
  %2 = alloca %struct.omap_overlay_manager*, align 8
  %3 = alloca %struct.mgr_priv_data*, align 8
  %4 = alloca i64, align 8
  store %struct.omap_overlay_manager* %0, %struct.omap_overlay_manager** %2, align 8
  %5 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %2, align 8
  %6 = call %struct.mgr_priv_data* @get_mgr_priv(%struct.omap_overlay_manager* %5)
  store %struct.mgr_priv_data* %6, %struct.mgr_priv_data** %3, align 8
  %7 = call i32 @mutex_lock(i32* @apply_lock)
  %8 = load %struct.mgr_priv_data*, %struct.mgr_priv_data** %3, align 8
  %9 = getelementptr inbounds %struct.mgr_priv_data, %struct.mgr_priv_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %32

13:                                               ; preds = %1
  %14 = call i32 (...) @wait_pending_extra_info_updates()
  %15 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %2, align 8
  %16 = call i32 @mgr_manual_update(%struct.omap_overlay_manager* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %2, align 8
  %20 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dispc_mgr_disable_sync(i32 %21)
  br label %23

23:                                               ; preds = %18, %13
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @spin_lock_irqsave(i32* @data_lock, i64 %24)
  %26 = load %struct.mgr_priv_data*, %struct.mgr_priv_data** %3, align 8
  %27 = getelementptr inbounds %struct.mgr_priv_data, %struct.mgr_priv_data* %26, i32 0, i32 1
  store i32 0, i32* %27, align 4
  %28 = load %struct.mgr_priv_data*, %struct.mgr_priv_data** %3, align 8
  %29 = getelementptr inbounds %struct.mgr_priv_data, %struct.mgr_priv_data* %28, i32 0, i32 0
  store i32 0, i32* %29, align 4
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* @data_lock, i64 %30)
  br label %32

32:                                               ; preds = %23, %12
  %33 = call i32 @mutex_unlock(i32* @apply_lock)
  ret void
}

declare dso_local %struct.mgr_priv_data* @get_mgr_priv(%struct.omap_overlay_manager*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wait_pending_extra_info_updates(...) #1

declare dso_local i32 @mgr_manual_update(%struct.omap_overlay_manager*) #1

declare dso_local i32 @dispc_mgr_disable_sync(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
