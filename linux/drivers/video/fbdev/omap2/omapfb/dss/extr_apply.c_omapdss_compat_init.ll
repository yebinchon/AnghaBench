; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_apply.c_omapdss_compat_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_apply.c_omapdss_compat_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.omap_overlay_manager = type { i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.omap_overlay = type { i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }

@compat_init_lock = common dso_local global i32 0, align 4
@compat_refcnt = common dso_local global i32 0, align 4
@dss_mgr_set_output = common dso_local global i32 0, align 4
@dss_mgr_unset_output = common dso_local global i32 0, align 4
@omap_dss_mgr_apply = common dso_local global i32 0, align 4
@dss_mgr_set_info = common dso_local global i32 0, align 4
@dss_mgr_get_info = common dso_local global i32 0, align 4
@dss_mgr_wait_for_go = common dso_local global i32 0, align 4
@dss_mgr_wait_for_vsync = common dso_local global i32 0, align 4
@dss_mgr_get_device = common dso_local global i32 0, align 4
@dss_ovl_is_enabled = common dso_local global i32 0, align 4
@dss_ovl_enable = common dso_local global i32 0, align 4
@dss_ovl_disable = common dso_local global i32 0, align 4
@dss_ovl_set_manager = common dso_local global i32 0, align 4
@dss_ovl_unset_manager = common dso_local global i32 0, align 4
@dss_ovl_set_info = common dso_local global i32 0, align 4
@dss_ovl_get_info = common dso_local global i32 0, align 4
@dss_mgr_wait_for_go_ovl = common dso_local global i32 0, align 4
@dss_ovl_get_device = common dso_local global i32 0, align 4
@apply_mgr_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @omapdss_compat_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.omap_overlay_manager*, align 8
  %6 = alloca %struct.omap_overlay*, align 8
  %7 = call %struct.platform_device* (...) @dss_get_core_pdev()
  store %struct.platform_device* %7, %struct.platform_device** %2, align 8
  %8 = call i32 @mutex_lock(i32* @compat_init_lock)
  %9 = load i32, i32* @compat_refcnt, align 4
  %10 = add nsw i32 %9, 1
  store i32 %10, i32* @compat_refcnt, align 4
  %11 = icmp sgt i32 %9, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %0
  br label %93

13:                                               ; preds = %0
  %14 = call i32 (...) @apply_init_priv()
  %15 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %16 = call i32 @dss_init_overlay_managers_sysfs(%struct.platform_device* %15)
  %17 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %18 = call i32 @dss_init_overlays(%struct.platform_device* %17)
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %42, %13
  %20 = load i32, i32* %3, align 4
  %21 = call i32 (...) @omap_dss_get_num_overlay_managers()
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %45

23:                                               ; preds = %19
  %24 = load i32, i32* %3, align 4
  %25 = call %struct.omap_overlay_manager* @omap_dss_get_overlay_manager(i32 %24)
  store %struct.omap_overlay_manager* %25, %struct.omap_overlay_manager** %5, align 8
  %26 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %5, align 8
  %27 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %26, i32 0, i32 7
  store i32* @dss_mgr_set_output, i32** %27, align 8
  %28 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %5, align 8
  %29 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %28, i32 0, i32 6
  store i32* @dss_mgr_unset_output, i32** %29, align 8
  %30 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %5, align 8
  %31 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %30, i32 0, i32 5
  store i32* @omap_dss_mgr_apply, i32** %31, align 8
  %32 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %5, align 8
  %33 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %32, i32 0, i32 4
  store i32* @dss_mgr_set_info, i32** %33, align 8
  %34 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %5, align 8
  %35 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %34, i32 0, i32 3
  store i32* @dss_mgr_get_info, i32** %35, align 8
  %36 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %5, align 8
  %37 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %36, i32 0, i32 2
  store i32* @dss_mgr_wait_for_go, i32** %37, align 8
  %38 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %5, align 8
  %39 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %38, i32 0, i32 1
  store i32* @dss_mgr_wait_for_vsync, i32** %39, align 8
  %40 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %5, align 8
  %41 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %40, i32 0, i32 0
  store i32* @dss_mgr_get_device, i32** %41, align 8
  br label %42

42:                                               ; preds = %23
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %19

45:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %71, %45
  %47 = load i32, i32* %3, align 4
  %48 = call i32 (...) @omap_dss_get_num_overlays()
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %74

50:                                               ; preds = %46
  %51 = load i32, i32* %3, align 4
  %52 = call %struct.omap_overlay* @omap_dss_get_overlay(i32 %51)
  store %struct.omap_overlay* %52, %struct.omap_overlay** %6, align 8
  %53 = load %struct.omap_overlay*, %struct.omap_overlay** %6, align 8
  %54 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %53, i32 0, i32 8
  store i32* @dss_ovl_is_enabled, i32** %54, align 8
  %55 = load %struct.omap_overlay*, %struct.omap_overlay** %6, align 8
  %56 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %55, i32 0, i32 7
  store i32* @dss_ovl_enable, i32** %56, align 8
  %57 = load %struct.omap_overlay*, %struct.omap_overlay** %6, align 8
  %58 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %57, i32 0, i32 6
  store i32* @dss_ovl_disable, i32** %58, align 8
  %59 = load %struct.omap_overlay*, %struct.omap_overlay** %6, align 8
  %60 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %59, i32 0, i32 5
  store i32* @dss_ovl_set_manager, i32** %60, align 8
  %61 = load %struct.omap_overlay*, %struct.omap_overlay** %6, align 8
  %62 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %61, i32 0, i32 4
  store i32* @dss_ovl_unset_manager, i32** %62, align 8
  %63 = load %struct.omap_overlay*, %struct.omap_overlay** %6, align 8
  %64 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %63, i32 0, i32 3
  store i32* @dss_ovl_set_info, i32** %64, align 8
  %65 = load %struct.omap_overlay*, %struct.omap_overlay** %6, align 8
  %66 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %65, i32 0, i32 2
  store i32* @dss_ovl_get_info, i32** %66, align 8
  %67 = load %struct.omap_overlay*, %struct.omap_overlay** %6, align 8
  %68 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %67, i32 0, i32 1
  store i32* @dss_mgr_wait_for_go_ovl, i32** %68, align 8
  %69 = load %struct.omap_overlay*, %struct.omap_overlay** %6, align 8
  %70 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %69, i32 0, i32 0
  store i32* @dss_ovl_get_device, i32** %70, align 8
  br label %71

71:                                               ; preds = %50
  %72 = load i32, i32* %3, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %3, align 4
  br label %46

74:                                               ; preds = %46
  %75 = call i32 @dss_install_mgr_ops(i32* @apply_mgr_ops)
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  br label %101

79:                                               ; preds = %74
  %80 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %81 = call i32 @display_init_sysfs(%struct.platform_device* %80)
  store i32 %81, i32* %4, align 4
  %82 = load i32, i32* %4, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %99

85:                                               ; preds = %79
  %86 = call i32 (...) @dispc_runtime_get()
  %87 = call i32 (...) @dss_dispc_initialize_irq()
  store i32 %87, i32* %4, align 4
  %88 = load i32, i32* %4, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  br label %95

91:                                               ; preds = %85
  %92 = call i32 (...) @dispc_runtime_put()
  br label %93

93:                                               ; preds = %91, %12
  %94 = call i32 @mutex_unlock(i32* @compat_init_lock)
  store i32 0, i32* %1, align 4
  br label %110

95:                                               ; preds = %90
  %96 = call i32 (...) @dispc_runtime_put()
  %97 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %98 = call i32 @display_uninit_sysfs(%struct.platform_device* %97)
  br label %99

99:                                               ; preds = %95, %84
  %100 = call i32 (...) @dss_uninstall_mgr_ops()
  br label %101

101:                                              ; preds = %99, %78
  %102 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %103 = call i32 @dss_uninit_overlay_managers_sysfs(%struct.platform_device* %102)
  %104 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %105 = call i32 @dss_uninit_overlays(%struct.platform_device* %104)
  %106 = load i32, i32* @compat_refcnt, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* @compat_refcnt, align 4
  %108 = call i32 @mutex_unlock(i32* @compat_init_lock)
  %109 = load i32, i32* %4, align 4
  store i32 %109, i32* %1, align 4
  br label %110

110:                                              ; preds = %101, %93
  %111 = load i32, i32* %1, align 4
  ret i32 %111
}

declare dso_local %struct.platform_device* @dss_get_core_pdev(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @apply_init_priv(...) #1

declare dso_local i32 @dss_init_overlay_managers_sysfs(%struct.platform_device*) #1

declare dso_local i32 @dss_init_overlays(%struct.platform_device*) #1

declare dso_local i32 @omap_dss_get_num_overlay_managers(...) #1

declare dso_local %struct.omap_overlay_manager* @omap_dss_get_overlay_manager(i32) #1

declare dso_local i32 @omap_dss_get_num_overlays(...) #1

declare dso_local %struct.omap_overlay* @omap_dss_get_overlay(i32) #1

declare dso_local i32 @dss_install_mgr_ops(i32*) #1

declare dso_local i32 @display_init_sysfs(%struct.platform_device*) #1

declare dso_local i32 @dispc_runtime_get(...) #1

declare dso_local i32 @dss_dispc_initialize_irq(...) #1

declare dso_local i32 @dispc_runtime_put(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @display_uninit_sysfs(%struct.platform_device*) #1

declare dso_local i32 @dss_uninstall_mgr_ops(...) #1

declare dso_local i32 @dss_uninit_overlay_managers_sysfs(%struct.platform_device*) #1

declare dso_local i32 @dss_uninit_overlays(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
