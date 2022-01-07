; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_apply.c_dss_mgr_start_update_compat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_apply.c_dss_mgr_start_update_compat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.omap_overlay_manager = type { i32 }
%struct.mgr_priv_data = type { i32 }

@data_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"cannot start manual update: illegal configuration\0A\00", align 1
@dss_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_overlay_manager*)* @dss_mgr_start_update_compat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dss_mgr_start_update_compat(%struct.omap_overlay_manager* %0) #0 {
  %2 = alloca %struct.omap_overlay_manager*, align 8
  %3 = alloca %struct.mgr_priv_data*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.omap_overlay_manager* %0, %struct.omap_overlay_manager** %2, align 8
  %6 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %2, align 8
  %7 = call %struct.mgr_priv_data* @get_mgr_priv(%struct.omap_overlay_manager* %6)
  store %struct.mgr_priv_data* %7, %struct.mgr_priv_data** %3, align 8
  %8 = load i64, i64* %4, align 8
  %9 = call i32 @spin_lock_irqsave(i32* @data_lock, i64 %8)
  %10 = load %struct.mgr_priv_data*, %struct.mgr_priv_data** %3, align 8
  %11 = getelementptr inbounds %struct.mgr_priv_data, %struct.mgr_priv_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @WARN_ON(i32 %12)
  %14 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %2, align 8
  %15 = call i32 @dss_check_settings(%struct.omap_overlay_manager* %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = call i32 @DSSERR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @spin_unlock_irqrestore(i32* @data_lock, i64 %20)
  br label %43

22:                                               ; preds = %1
  %23 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %2, align 8
  %24 = call i32 @dss_mgr_write_regs(%struct.omap_overlay_manager* %23)
  %25 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %2, align 8
  %26 = call i32 @dss_mgr_write_regs_extra(%struct.omap_overlay_manager* %25)
  %27 = load %struct.mgr_priv_data*, %struct.mgr_priv_data** %3, align 8
  %28 = getelementptr inbounds %struct.mgr_priv_data, %struct.mgr_priv_data* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dss_data, i32 0, i32 0), align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %22
  %32 = call i64 (...) @need_isr()
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = call i32 (...) @dss_register_vsync_isr()
  br label %36

36:                                               ; preds = %34, %31, %22
  %37 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %2, align 8
  %38 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @dispc_mgr_enable_sync(i32 %39)
  %41 = load i64, i64* %4, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* @data_lock, i64 %41)
  br label %43

43:                                               ; preds = %36, %18
  ret void
}

declare dso_local %struct.mgr_priv_data* @get_mgr_priv(%struct.omap_overlay_manager*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @dss_check_settings(%struct.omap_overlay_manager*) #1

declare dso_local i32 @DSSERR(i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dss_mgr_write_regs(%struct.omap_overlay_manager*) #1

declare dso_local i32 @dss_mgr_write_regs_extra(%struct.omap_overlay_manager*) #1

declare dso_local i64 @need_isr(...) #1

declare dso_local i32 @dss_register_vsync_isr(...) #1

declare dso_local i32 @dispc_mgr_enable_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
