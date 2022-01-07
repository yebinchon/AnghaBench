; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_apply.c_dss_mgr_enable_compat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_apply.c_dss_mgr_enable_compat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.omap_overlay_manager = type { i32 }
%struct.mgr_priv_data = type { i32, i32 }

@apply_lock = common dso_local global i32 0, align 4
@data_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"failed to enable manager %d: check_settings failed\0A\00", align 1
@dss_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_overlay_manager*)* @dss_mgr_enable_compat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dss_mgr_enable_compat(%struct.omap_overlay_manager* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_overlay_manager*, align 8
  %4 = alloca %struct.mgr_priv_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.omap_overlay_manager* %0, %struct.omap_overlay_manager** %3, align 8
  %7 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %3, align 8
  %8 = call %struct.mgr_priv_data* @get_mgr_priv(%struct.omap_overlay_manager* %7)
  store %struct.mgr_priv_data* %8, %struct.mgr_priv_data** %4, align 8
  %9 = call i32 @mutex_lock(i32* @apply_lock)
  %10 = load %struct.mgr_priv_data*, %struct.mgr_priv_data** %4, align 8
  %11 = getelementptr inbounds %struct.mgr_priv_data, %struct.mgr_priv_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %59

15:                                               ; preds = %1
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @spin_lock_irqsave(i32* @data_lock, i64 %16)
  %18 = load %struct.mgr_priv_data*, %struct.mgr_priv_data** %4, align 8
  %19 = getelementptr inbounds %struct.mgr_priv_data, %struct.mgr_priv_data* %18, i32 0, i32 0
  store i32 1, i32* %19, align 4
  %20 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %3, align 8
  %21 = call i32 @dss_check_settings(%struct.omap_overlay_manager* %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %15
  %25 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %3, align 8
  %26 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @DSSERR(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %61

29:                                               ; preds = %15
  %30 = call i32 (...) @dss_setup_fifos()
  %31 = call i32 (...) @dss_write_regs()
  %32 = call i32 (...) @dss_set_go_bits()
  %33 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %3, align 8
  %34 = call i32 @mgr_manual_update(%struct.omap_overlay_manager* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %29
  %37 = load %struct.mgr_priv_data*, %struct.mgr_priv_data** %4, align 8
  %38 = getelementptr inbounds %struct.mgr_priv_data, %struct.mgr_priv_data* %37, i32 0, i32 1
  store i32 1, i32* %38, align 4
  br label %39

39:                                               ; preds = %36, %29
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dss_data, i32 0, i32 0), align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %39
  %43 = call i64 (...) @need_isr()
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = call i32 (...) @dss_register_vsync_isr()
  br label %47

47:                                               ; preds = %45, %42, %39
  %48 = load i64, i64* %5, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* @data_lock, i64 %48)
  %50 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %3, align 8
  %51 = call i32 @mgr_manual_update(%struct.omap_overlay_manager* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %47
  %54 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %3, align 8
  %55 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @dispc_mgr_enable_sync(i32 %56)
  br label %58

58:                                               ; preds = %53, %47
  br label %59

59:                                               ; preds = %58, %14
  %60 = call i32 @mutex_unlock(i32* @apply_lock)
  store i32 0, i32* %2, align 4
  br label %68

61:                                               ; preds = %24
  %62 = load %struct.mgr_priv_data*, %struct.mgr_priv_data** %4, align 8
  %63 = getelementptr inbounds %struct.mgr_priv_data, %struct.mgr_priv_data* %62, i32 0, i32 0
  store i32 0, i32* %63, align 4
  %64 = load i64, i64* %5, align 8
  %65 = call i32 @spin_unlock_irqrestore(i32* @data_lock, i64 %64)
  %66 = call i32 @mutex_unlock(i32* @apply_lock)
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %61, %59
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local %struct.mgr_priv_data* @get_mgr_priv(%struct.omap_overlay_manager*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dss_check_settings(%struct.omap_overlay_manager*) #1

declare dso_local i32 @DSSERR(i8*, i32) #1

declare dso_local i32 @dss_setup_fifos(...) #1

declare dso_local i32 @dss_write_regs(...) #1

declare dso_local i32 @dss_set_go_bits(...) #1

declare dso_local i32 @mgr_manual_update(%struct.omap_overlay_manager*) #1

declare dso_local i64 @need_isr(...) #1

declare dso_local i32 @dss_register_vsync_isr(...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dispc_mgr_enable_sync(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
